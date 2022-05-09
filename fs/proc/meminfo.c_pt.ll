; ModuleID = '/llk/IR_all_yes/fs/proc/meminfo.c_pt.bc'
source_filename = "../fs/proc/meminfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }

@__initcall__kmod_proc__288_161_proc_meminfo_init5 = internal global ptr @proc_meminfo_init, section ".initcall5.init", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"meminfo\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MemTotal:       \00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MemFree:        \00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MemAvailable:   \00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Buffers:        \00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Cached:         \00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SwapCached:     \00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Active:         \00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Inactive:       \00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Active(anon):   \00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Inactive(anon): \00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Active(file):   \00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Inactive(file): \00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unevictable:    \00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mlocked:        \00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HighTotal:      \00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HighFree:       \00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LowTotal:       \00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LowFree:        \00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SwapTotal:      \00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SwapFree:       \00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dirty:          \00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Writeback:      \00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AnonPages:      \00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mapped:         \00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Shmem:          \00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"KReclaimable:   \00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Slab:           \00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SReclaimable:   \00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SUnreclaim:     \00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"KernelStack:    %8lu kB\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PageTables:     \00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NFS_Unstable:   \00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bounce:         \00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WritebackTmp:   \00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CommitLimit:    \00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Committed_AS:   \00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VmallocTotal:   %8lu kB\0A\00", [39 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VmallocUsed:    \00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VmallocChunk:   \00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Percpu:         \00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CmaTotal:       \00", [47 x i8] zeroinitializer }, align 32
@totalcma_pages = external dso_local local_unnamed_addr global i32, align 4
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CmaFree:        \00", [47 x i8] zeroinitializer }, align 32
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" kB\0A\00", [27 x i8] zeroinitializer }, align 32
@vm_zone_stat = external dso_local global [11 x %struct.atomic_t], align 4
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 158, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 58, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 59, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 60, i32 17 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 61, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 62, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 63, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 64, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 66, i32 17 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 68, i32 17 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 69, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 70, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 71, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 72, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 73, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 76, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 77, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 78, i32 17 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 79, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 87, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 88, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 89, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 91, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 93, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 95, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 97, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 98, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 100, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 101, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 102, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 103, i32 16 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 109, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 112, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 113, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 115, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 117, i32 17 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 118, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 119, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 121, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 122, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 123, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 144, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 145, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [21 x i8] c"../fs/proc/meminfo.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 29, i32 15 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__initcall__kmod_proc__288_161_proc_meminfo_init5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_report_meminfo(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_meminfo_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @meminfo_proc_show, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meminfo_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %i = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %i) #5
  %0 = call ptr @memset(ptr %i, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %i) #5
  call void @si_swapinfo(ptr noundef nonnull %i) #5
  %call = call i32 @vm_memory_committed() #5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19) to i32))
  %1 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19), align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39) to i32))
  %2 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), align 4
  %bufferram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 5
  %3 = ptrtoint ptr %bufferram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bufferram, align 4
  %call.i.i.i.i96 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vm_node_stat, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_node_stat to i32))
  %5 = load volatile i32, ptr @vm_node_stat, align 4
  %6 = call i32 @llvm.smax.i32(i32 %5, i32 0) #5
  %call.i.i.i.i96.1 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1) to i32))
  %7 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 0) #5
  %call.i.i.i.i96.2 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2) to i32))
  %9 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %10 = call i32 @llvm.smax.i32(i32 %9, i32 0) #5
  %call.i.i.i.i96.3 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3) to i32))
  %11 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 0) #5
  %call.i.i.i.i96.4 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4) to i32))
  %13 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 0) #5
  %15 = call i32 @llvm.smax.i32(i32 %2, i32 0) #5
  %16 = call i32 @llvm.smax.i32(i32 %1, i32 0) #5
  %17 = add i32 %4, %15
  %sub3 = sub i32 %16, %17
  %18 = call i32 @llvm.smax.i32(i32 %sub3, i32 0)
  %call6 = call i32 @si_mem_available() #5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5) to i32))
  %19 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), align 4
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 0) #5
  %call.i.i.i97 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6) to i32))
  %21 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), align 4
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 0) #5
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 2
  %23 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %totalram, align 4
  %shl.i = shl i32 %24, 2
  %conv.i = zext i32 %shl.i to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.1, i64 noundef %conv.i, i32 noundef 8) #5
  %call.i = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 3
  %25 = ptrtoint ptr %freeram to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %freeram, align 4
  %shl.i98 = shl i32 %26, 2
  %conv.i99 = zext i32 %shl.i98 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.2, i64 noundef %conv.i99, i32 noundef 8) #5
  %call.i100 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i101 = shl i32 %call6, 2
  %conv.i102 = zext i32 %shl.i101 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.3, i64 noundef %conv.i102, i32 noundef 8) #5
  %call.i103 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %27 = ptrtoint ptr %bufferram to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bufferram, align 4
  %shl.i104 = shl i32 %28, 2
  %conv.i105 = zext i32 %shl.i104 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv.i105, i32 noundef 8) #5
  %call.i106 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i107 = shl i32 %18, 2
  %conv.i108 = zext i32 %shl.i107 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.5, i64 noundef %conv.i108, i32 noundef 8) #5
  %call.i109 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i.i110 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39) to i32))
  %29 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), align 4
  %30 = call i32 @llvm.smax.i32(i32 %29, i32 0) #5
  %shl.i111 = shl i32 %30, 2
  %conv.i112 = zext i32 %shl.i111 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.6, i64 noundef %conv.i112, i32 noundef 8) #5
  %call.i113 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %add13 = add nuw i32 %12, %8
  %shl.i114 = shl i32 %add13, 2
  %conv.i115 = zext i32 %shl.i114 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.7, i64 noundef %conv.i115, i32 noundef 8) #5
  %call.i116 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %add16 = add nuw i32 %10, %6
  %shl.i117 = shl i32 %add16, 2
  %conv.i118 = zext i32 %shl.i117 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv.i118, i32 noundef 8) #5
  %call.i119 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i120 = shl i32 %8, 2
  %conv.i121 = zext i32 %shl.i120 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.9, i64 noundef %conv.i121, i32 noundef 8) #5
  %call.i122 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i123 = shl i32 %6, 2
  %conv.i124 = zext i32 %shl.i123 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.10, i64 noundef %conv.i124, i32 noundef 8) #5
  %call.i125 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i126 = shl i32 %12, 2
  %conv.i127 = zext i32 %shl.i126 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.11, i64 noundef %conv.i127, i32 noundef 8) #5
  %call.i128 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i129 = shl i32 %10, 2
  %conv.i130 = zext i32 %shl.i129 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.12, i64 noundef %conv.i130, i32 noundef 8) #5
  %call.i131 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i132 = shl i32 %14, 2
  %conv.i133 = zext i32 %shl.i132 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.13, i64 noundef %conv.i133, i32 noundef 8) #5
  %call.i134 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i135 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7) to i32))
  %31 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 7), align 4
  %32 = call i32 @llvm.smax.i32(i32 %31, i32 0) #5
  %shl.i136 = shl i32 %32, 2
  %conv.i137 = zext i32 %shl.i136 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.14, i64 noundef %conv.i137, i32 noundef 8) #5
  %call.i138 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %totalhigh = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 10
  %33 = ptrtoint ptr %totalhigh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %totalhigh, align 4
  %shl.i139 = shl i32 %34, 2
  %conv.i140 = zext i32 %shl.i139 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.15, i64 noundef %conv.i140, i32 noundef 8) #5
  %call.i141 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %freehigh = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 11
  %35 = ptrtoint ptr %freehigh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %freehigh, align 4
  %shl.i142 = shl i32 %36, 2
  %conv.i143 = zext i32 %shl.i142 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.16, i64 noundef %conv.i143, i32 noundef 8) #5
  %call.i144 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %37 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %totalram, align 4
  %39 = ptrtoint ptr %totalhigh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %totalhigh, align 4
  %sub25 = sub i32 %38, %40
  %shl.i145 = shl i32 %sub25, 2
  %conv.i146 = zext i32 %shl.i145 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.17, i64 noundef %conv.i146, i32 noundef 8) #5
  %call.i147 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %41 = ptrtoint ptr %freeram to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %freeram, align 4
  %43 = ptrtoint ptr %freehigh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %freehigh, align 4
  %sub28 = sub i32 %42, %44
  %shl.i148 = shl i32 %sub28, 2
  %conv.i149 = zext i32 %shl.i148 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.18, i64 noundef %conv.i149, i32 noundef 8) #5
  %call.i150 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %totalswap = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 6
  %45 = ptrtoint ptr %totalswap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %totalswap, align 4
  %shl.i151 = shl i32 %46, 2
  %conv.i152 = zext i32 %shl.i151 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.19, i64 noundef %conv.i152, i32 noundef 8) #5
  %call.i153 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %freeswap = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 7
  %47 = ptrtoint ptr %freeswap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %freeswap, align 4
  %shl.i154 = shl i32 %48, 2
  %conv.i155 = zext i32 %shl.i154 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.20, i64 noundef %conv.i155, i32 noundef 8) #5
  %call.i156 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i157 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20) to i32))
  %49 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 0) #5
  %shl.i158 = shl i32 %50, 2
  %conv.i159 = zext i32 %shl.i158 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.21, i64 noundef %conv.i159, i32 noundef 8) #5
  %call.i160 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i161 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21) to i32))
  %51 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %52 = call i32 @llvm.smax.i32(i32 %51, i32 0) #5
  %shl.i162 = shl i32 %52, 2
  %conv.i163 = zext i32 %shl.i162 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.22, i64 noundef %conv.i163, i32 noundef 8) #5
  %call.i164 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i165 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 17), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 17) to i32))
  %53 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 17), align 4
  %54 = call i32 @llvm.smax.i32(i32 %53, i32 0) #5
  %shl.i166 = shl i32 %54, 2
  %conv.i167 = zext i32 %shl.i166 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.23, i64 noundef %conv.i167, i32 noundef 8) #5
  %call.i168 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i169 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 18), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 18) to i32))
  %55 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 18), align 4
  %56 = call i32 @llvm.smax.i32(i32 %55, i32 0) #5
  %shl.i170 = shl i32 %56, 2
  %conv.i171 = zext i32 %shl.i170 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.24, i64 noundef %conv.i171, i32 noundef 8) #5
  %call.i172 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %sharedram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 4
  %57 = ptrtoint ptr %sharedram to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sharedram, align 4
  %shl.i173 = shl i32 %58, 2
  %conv.i174 = zext i32 %shl.i173 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.25, i64 noundef %conv.i174, i32 noundef 8) #5
  %call.i175 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i176 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 34), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 34) to i32))
  %59 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 34), align 4
  %60 = call i32 @llvm.smax.i32(i32 %59, i32 0) #5
  %add34 = add nuw i32 %60, %20
  %shl.i177 = shl i32 %add34, 2
  %conv.i178 = zext i32 %shl.i177 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.26, i64 noundef %conv.i178, i32 noundef 8) #5
  %call.i179 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %add35 = add nuw i32 %22, %20
  %shl.i180 = shl i32 %add35, 2
  %conv.i181 = zext i32 %shl.i180 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.27, i64 noundef %conv.i181, i32 noundef 8) #5
  %call.i182 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i183 = shl i32 %20, 2
  %conv.i184 = zext i32 %shl.i183 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.28, i64 noundef %conv.i184, i32 noundef 8) #5
  %call.i185 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i186 = shl i32 %22, 2
  %conv.i187 = zext i32 %shl.i186 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.29, i64 noundef %conv.i187, i32 noundef 8) #5
  %call.i188 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i189 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 37), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 37) to i32))
  %61 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 37), align 4
  %62 = call i32 @llvm.smax.i32(i32 %61, i32 0) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %62) #5
  %call.i.i.i.i190 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 38), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 38) to i32))
  %63 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 38), align 4
  %64 = call i32 @llvm.smax.i32(i32 %63, i32 0) #5
  %shl.i191 = shl i32 %64, 2
  %conv.i192 = zext i32 %shl.i191 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.31, i64 noundef %conv.i192, i32 noundef 8) #5
  %call.i193 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.32, i64 noundef 0, i32 noundef 8) #5
  %call.i194 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i195 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8) to i32))
  %65 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), align 4
  %66 = call i32 @llvm.smax.i32(i32 %65, i32 0) #5
  %shl.i196 = shl i32 %66, 2
  %conv.i197 = zext i32 %shl.i196 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.33, i64 noundef %conv.i197, i32 noundef 8) #5
  %call.i198 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i.i199 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 22), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 22) to i32))
  %67 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 22), align 4
  %68 = call i32 @llvm.smax.i32(i32 %67, i32 0) #5
  %shl.i200 = shl i32 %68, 2
  %conv.i201 = zext i32 %shl.i200 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.34, i64 noundef %conv.i201, i32 noundef 8) #5
  %call.i202 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call40 = call i32 @vm_commit_limit() #5
  %shl.i203 = shl i32 %call40, 2
  %conv.i204 = zext i32 %shl.i203 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.35, i64 noundef %conv.i204, i32 noundef 8) #5
  %call.i205 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %shl.i206 = shl i32 %call, 2
  %conv.i207 = zext i32 %shl.i206 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.36, i64 noundef %conv.i207, i32 noundef 8) #5
  %call.i208 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %69 = load ptr, ptr @high_memory, align 4
  %70 = ptrtoint ptr %69 to i32
  %add41.not = sub i32 -8388609, %70
  %sub42 = lshr i32 %add41.not, 10
  %shr = and i32 %sub42, 4186112
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef %shr) #5
  %call43 = call i32 @vmalloc_nr_pages() #5
  %shl.i209 = shl i32 %call43, 2
  %conv.i210 = zext i32 %shl.i209 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.38, i64 noundef %conv.i210, i32 noundef 8) #5
  %call.i211 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.39, i64 noundef 0, i32 noundef 8) #5
  %call.i212 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call44 = call i32 @pcpu_nr_pages() #5
  %shl.i213 = shl i32 %call44, 2
  %conv.i214 = zext i32 %shl.i213 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.40, i64 noundef %conv.i214, i32 noundef 8) #5
  %call.i215 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totalcma_pages to i32))
  %71 = load i32, ptr @totalcma_pages, align 4
  %shl.i216 = shl i32 %71, 2
  %conv.i217 = zext i32 %shl.i216 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.41, i64 noundef %conv.i217, i32 noundef 8) #5
  %call.i218 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  %call.i.i.i219 = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 10), i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 10) to i32))
  %72 = load volatile i32, ptr getelementptr inbounds ([11 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 10), align 4
  %73 = call i32 @llvm.smax.i32(i32 %72, i32 0) #5
  %shl.i220 = shl i32 %73, 2
  %conv.i221 = zext i32 %shl.i220 to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.42, i64 noundef %conv.i221, i32 noundef 8) #5
  %call.i222 = call i32 @seq_write(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 4) #5
  call void @arch_report_meminfo(ptr noundef %m)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %i) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_swapinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_memory_committed() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_mem_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_commit_limit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmalloc_nr_pages() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcpu_nr_pages() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull_width(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_proc__288_161_proc_meminfo_init5, !1, !"__initcall__kmod_proc__288_161_proc_meminfo_init5", i1 false, i1 false}
!1 = !{!"../fs/proc/meminfo.c", i32 161, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/meminfo.c", i32 158, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/proc/meminfo.c", i32 58, i32 17}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/proc/meminfo.c", i32 59, i32 17}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/meminfo.c", i32 60, i32 17}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/meminfo.c", i32 61, i32 17}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/meminfo.c", i32 62, i32 17}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/proc/meminfo.c", i32 63, i32 17}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/proc/meminfo.c", i32 64, i32 17}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/proc/meminfo.c", i32 66, i32 17}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/proc/meminfo.c", i32 68, i32 17}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/proc/meminfo.c", i32 69, i32 17}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/proc/meminfo.c", i32 70, i32 17}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/proc/meminfo.c", i32 71, i32 17}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/proc/meminfo.c", i32 72, i32 17}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc/meminfo.c", i32 73, i32 17}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/proc/meminfo.c", i32 76, i32 17}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/proc/meminfo.c", i32 77, i32 17}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/proc/meminfo.c", i32 78, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/proc/meminfo.c", i32 79, i32 17}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/proc/meminfo.c", i32 87, i32 17}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/proc/meminfo.c", i32 88, i32 17}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/proc/meminfo.c", i32 89, i32 17}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/proc/meminfo.c", i32 91, i32 17}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/proc/meminfo.c", i32 93, i32 17}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/proc/meminfo.c", i32 95, i32 17}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/proc/meminfo.c", i32 97, i32 17}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/proc/meminfo.c", i32 98, i32 17}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/proc/meminfo.c", i32 100, i32 17}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/proc/meminfo.c", i32 101, i32 17}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/proc/meminfo.c", i32 102, i32 17}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/proc/meminfo.c", i32 103, i32 16}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/proc/meminfo.c", i32 109, i32 17}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/proc/meminfo.c", i32 112, i32 17}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/proc/meminfo.c", i32 113, i32 17}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/proc/meminfo.c", i32 115, i32 17}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/proc/meminfo.c", i32 117, i32 17}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/proc/meminfo.c", i32 118, i32 17}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/proc/meminfo.c", i32 119, i32 16}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/proc/meminfo.c", i32 121, i32 17}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/proc/meminfo.c", i32 122, i32 17}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/proc/meminfo.c", i32 123, i32 17}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/proc/meminfo.c", i32 144, i32 17}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/proc/meminfo.c", i32 145, i32 17}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!90 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/proc/meminfo.c", i32 29, i32 15}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
