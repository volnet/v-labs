using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FilterModule {
    public class FilterContext: IDisposable {
        public static FilterContext Create() {
            return new FilterContext(new StringBuilder(), new StringBuilder());
        }

        public FilterContext(StringBuilder originalBuilder, StringBuilder outputBuilder) {
            _originalBuilder = originalBuilder;
            _outputBuilder = outputBuilder;
        }

        public string CurrentContent { get; set; }

        public string OriginalContent {
            get {
                if (_originalBuilder != null)
                    return _originalBuilder.ToString();
                return null;
            }
            set {
                lock (OriginalSyncRoot) {
                    _originalBuilder = _originalBuilder.Remove(0, _originalBuilder.ToString().Length);
                }
                _originalBuilder.Append(value);
            }
        }

        private StringBuilder _originalBuilder;
        public StringBuilder OriginalBuilder {
            internal get {
                return _originalBuilder;
            }
            set {
                _originalBuilder = value;
            }
        }


        private static Object _originalSyncRoot;
        private static Object OriginalSyncRoot {
            get {
                if (_originalSyncRoot == null) {
                    _originalSyncRoot = new object();
                }
                return _originalSyncRoot;
            }
        }

        internal bool isOutputContentAvailable = true;
        public string OutputContent {
            get {
                if (_outputBuilder != null)
                    return _outputBuilder.ToString();
                return null;
            }
            set {
                if (!isOutputContentAvailable)
                    throw new ArgumentException(Exceptions.OutputInvalidException);

                lock (OriginalSyncRoot) {
                    _outputBuilder = _outputBuilder.Remove(0, _outputBuilder.ToString().Length);
                }
                _outputBuilder.Append(value);
            }
        }

        private StringBuilder _outputBuilder;
        public StringBuilder OutputBuilder {
            get {
                return _outputBuilder;
            }
            set {
                _outputBuilder = value;
            }
        }


        private static Object _ouputSyncRoot;
        private static Object OutputSyncRoot {
            get {
                if (_ouputSyncRoot == null) {
                    _ouputSyncRoot = new object();
                }
                return _ouputSyncRoot;
            }
        }

        public void Dispose() {
            _originalSyncRoot = null;
            _ouputSyncRoot = null;
        }
    }
}
