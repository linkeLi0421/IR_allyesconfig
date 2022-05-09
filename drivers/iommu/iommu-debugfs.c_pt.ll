; ModuleID = '/llk/IR_all_yes/drivers/iommu/iommu-debugfs.c_pt.bc'
source_filename = "../drivers/iommu/iommu-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iommu_debugfs_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_iommu_debugfs_dir\09\09\09\09"
module asm "\09.long\09__crc_iommu_debugfs_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_debugfs_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_debugfs_dir\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_debugfs_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@iommu_debugfs_dir = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_iommu_debugfs_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_debugfs_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_debugfs_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_debugfs_dir to i32), ptr @__kstrtab_iommu_debugfs_dir, ptr @__kstrtabns_iommu_debugfs_dir }, section "___ksymtab_gpl+iommu_debugfs_dir", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iommu\00", [26 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\014\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iommu_debugfs_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iommu/iommu-debugfs.c\00", [34 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr = internal global ptr @iommu_debugfs_setup._entry, section ".printk_index", align 4
@iommu_debugfs_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014*************************************************************\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.6 = internal global ptr @iommu_debugfs_setup._entry.4, section ".printk_index", align 4
@iommu_debugfs_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014**     NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE    **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.9 = internal global ptr @iommu_debugfs_setup._entry.7, section ".printk_index", align 4
@iommu_debugfs_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014**                                                         **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.12 = internal global ptr @iommu_debugfs_setup._entry.10, section ".printk_index", align 4
@iommu_debugfs_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014**  IOMMU DebugFS SUPPORT HAS BEEN ENABLED IN THIS KERNEL  **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.15 = internal global ptr @iommu_debugfs_setup._entry.13, section ".printk_index", align 4
@iommu_debugfs_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.17 = internal global ptr @iommu_debugfs_setup._entry.16, section ".printk_index", align 4
@iommu_debugfs_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014** This means that this kernel is built to expose internal **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.20 = internal global ptr @iommu_debugfs_setup._entry.18, section ".printk_index", align 4
@iommu_debugfs_setup._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014** IOMMU data structures, which may compromise security on **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.23 = internal global ptr @iommu_debugfs_setup._entry.21, section ".printk_index", align 4
@iommu_debugfs_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014** your system.                                            **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.26 = internal global ptr @iommu_debugfs_setup._entry.24, section ".printk_index", align 4
@iommu_debugfs_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.28 = internal global ptr @iommu_debugfs_setup._entry.27, section ".printk_index", align 4
@iommu_debugfs_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014** If you see this message and you are not debugging the   **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.31 = internal global ptr @iommu_debugfs_setup._entry.29, section ".printk_index", align 4
@iommu_debugfs_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014** kernel, report this immediately to your vendor!         **\0A\00", [63 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.34 = internal global ptr @iommu_debugfs_setup._entry.32, section ".printk_index", align 4
@iommu_debugfs_setup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.36 = internal global ptr @iommu_debugfs_setup._entry.35, section ".printk_index", align 4
@iommu_debugfs_setup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.38 = internal global ptr @iommu_debugfs_setup._entry.37, section ".printk_index", align 4
@iommu_debugfs_setup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iommu_debugfs_setup._entry_ptr.40 = internal global ptr @iommu_debugfs_setup._entry.39, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"iommu_debugfs_dir\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 14, i32 16 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 34, i32 42 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 35, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 36, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 37, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 38, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 39, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 40, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 41, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 42, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 43, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 44, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 45, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 46, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 47, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 48, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private constant [33 x i8] c"../drivers/iommu/iommu-debugfs.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 49, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_iommu_debugfs_dir, ptr @iommu_debugfs_setup._entry, ptr @iommu_debugfs_setup._entry.10, ptr @iommu_debugfs_setup._entry.13, ptr @iommu_debugfs_setup._entry.16, ptr @iommu_debugfs_setup._entry.18, ptr @iommu_debugfs_setup._entry.21, ptr @iommu_debugfs_setup._entry.24, ptr @iommu_debugfs_setup._entry.27, ptr @iommu_debugfs_setup._entry.29, ptr @iommu_debugfs_setup._entry.32, ptr @iommu_debugfs_setup._entry.35, ptr @iommu_debugfs_setup._entry.37, ptr @iommu_debugfs_setup._entry.39, ptr @iommu_debugfs_setup._entry.4, ptr @iommu_debugfs_setup._entry.7, ptr @iommu_debugfs_setup._entry_ptr, ptr @iommu_debugfs_setup._entry_ptr.12, ptr @iommu_debugfs_setup._entry_ptr.15, ptr @iommu_debugfs_setup._entry_ptr.17, ptr @iommu_debugfs_setup._entry_ptr.20, ptr @iommu_debugfs_setup._entry_ptr.23, ptr @iommu_debugfs_setup._entry_ptr.26, ptr @iommu_debugfs_setup._entry_ptr.28, ptr @iommu_debugfs_setup._entry_ptr.31, ptr @iommu_debugfs_setup._entry_ptr.34, ptr @iommu_debugfs_setup._entry_ptr.36, ptr @iommu_debugfs_setup._entry_ptr.38, ptr @iommu_debugfs_setup._entry_ptr.40, ptr @iommu_debugfs_setup._entry_ptr.6, ptr @iommu_debugfs_setup._entry_ptr.9, ptr @iommu_debugfs_dir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debugfs_setup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iommu_debugfs_setup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iommu_debugfs_dir, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #3
  store ptr %call, ptr @iommu_debugfs_dir, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #6
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #6
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #6
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #6
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__ksymtab_iommu_debugfs_dir, !1, !"__ksymtab_iommu_debugfs_dir", i1 false, i1 false}
!1 = !{!"../drivers/iommu/iommu-debugfs.c", i32 15, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iommu/iommu-debugfs.c", i32 34, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iommu/iommu-debugfs.c", i32 35, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @iommu_debugfs_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @iommu_debugfs_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iommu/iommu-debugfs.c", i32 36, i32 3}
!12 = !{ptr @iommu_debugfs_setup._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @iommu_debugfs_setup._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/iommu-debugfs.c", i32 37, i32 3}
!16 = !{ptr @iommu_debugfs_setup._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @iommu_debugfs_setup._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iommu/iommu-debugfs.c", i32 38, i32 3}
!20 = !{ptr @iommu_debugfs_setup._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @iommu_debugfs_setup._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iommu/iommu-debugfs.c", i32 39, i32 3}
!24 = !{ptr @iommu_debugfs_setup._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iommu_debugfs_setup._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @iommu_debugfs_setup._entry.16, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/iommu/iommu-debugfs.c", i32 40, i32 3}
!28 = !{ptr @iommu_debugfs_setup._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iommu/iommu-debugfs.c", i32 41, i32 3}
!31 = !{ptr @iommu_debugfs_setup._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @iommu_debugfs_setup._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iommu/iommu-debugfs.c", i32 42, i32 3}
!35 = !{ptr @iommu_debugfs_setup._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iommu_debugfs_setup._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iommu/iommu-debugfs.c", i32 43, i32 3}
!39 = !{ptr @iommu_debugfs_setup._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @iommu_debugfs_setup._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @iommu_debugfs_setup._entry.27, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/iommu/iommu-debugfs.c", i32 44, i32 3}
!43 = !{ptr @iommu_debugfs_setup._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iommu/iommu-debugfs.c", i32 45, i32 3}
!46 = !{ptr @iommu_debugfs_setup._entry.29, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @iommu_debugfs_setup._entry_ptr.31, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iommu/iommu-debugfs.c", i32 46, i32 3}
!50 = !{ptr @iommu_debugfs_setup._entry.32, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @iommu_debugfs_setup._entry_ptr.34, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @iommu_debugfs_setup._entry.35, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/iommu/iommu-debugfs.c", i32 47, i32 3}
!54 = !{ptr @iommu_debugfs_setup._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @iommu_debugfs_setup._entry.37, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/iommu/iommu-debugfs.c", i32 48, i32 3}
!57 = !{ptr @iommu_debugfs_setup._entry_ptr.38, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @iommu_debugfs_setup._entry.39, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/iommu/iommu-debugfs.c", i32 49, i32 3}
!60 = !{ptr @iommu_debugfs_setup._entry_ptr.40, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @iommu_debugfs_dir, !62, !"iommu_debugfs_dir", i1 false, i1 false}
!62 = !{!"../drivers/iommu/iommu-debugfs.c", i32 14, i32 16}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
