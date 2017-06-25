using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FilterModule {
    public interface IPageProcessor {
        string Process(string beDisposed);
        FilterContext Context { get; set; }
    }
}
