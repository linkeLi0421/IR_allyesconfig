; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/fuse/speedo-tegra30.c_pt.bc'
source_filename = "../drivers/soc/tegra/fuse/speedo-tegra30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tegra30_init_speedo_data.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"speedo_tegra30\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra30_init_speedo_data\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/soc/tegra/fuse/speedo-tegra30.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Tegra CPU speedo value %u\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra30_init_speedo_data.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tegra Core speedo value %u\0A\00", [36 x i8] zeroinitializer }, align 32
@cpu_process_speedos = internal unnamed_addr constant [12 x [6 x i32]] [[6 x i32] [i32 306, i32 338, i32 360, i32 376, i32 -1, i32 0], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 325, i32 325, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 325, i32 325, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 292, i32 324, i32 348, i32 364, i32 -1, i32 0], [6 x i32] [i32 324, i32 324, i32 348, i32 364, i32 -1, i32 0], [6 x i32] [i32 324, i32 324, i32 348, i32 364, i32 -1, i32 0], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 -1, i32 0], [6 x i32] [i32 358, i32 358, i32 358, i32 358, i32 397, i32 -1], [6 x i32] [i32 364, i32 364, i32 364, i32 364, i32 397, i32 -1], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 391, i32 -1], [6 x i32] [i32 295, i32 336, i32 358, i32 375, i32 391, i32 -1]], section ".init.rodata", align 4
@threshold_index = internal unnamed_addr global i32 0, section ".init.data", align 4
@tegra30_init_speedo_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Tegra CPU speedo value %3d out of range\00", [54 x i8] zeroinitializer }, align 32
@tegra30_init_speedo_data._entry_ptr = internal global ptr @tegra30_init_speedo_data._entry, section ".printk_index", align 4
@soc_process_speedos = internal unnamed_addr constant [12 x [1 x i32]] [[1 x i32] [i32 180], [1 x i32] [i32 170], [1 x i32] [i32 195], [1 x i32] [i32 180], [1 x i32] [i32 168], [1 x i32] [i32 192], [1 x i32] [i32 180], [1 x i32] [i32 170], [1 x i32] [i32 195], [1 x i32] [i32 180], [1 x i32] [i32 180], [1 x i32] [i32 180]], section ".init.rodata", align 4
@tegra30_init_speedo_data._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Tegra SoC speedo value %3d out of range\00", [54 x i8] zeroinitializer }, align 32
@tegra30_init_speedo_data._entry_ptr.8 = internal global ptr @tegra30_init_speedo_data._entry.6, section ".printk_index", align 4
@rev_sku_to_speedo_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Tegra Unknown pkg %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rev_sku_to_speedo_ids\00", [42 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr = internal global ptr @rev_sku_to_speedo_ids._entry, section ".printk_index", align 4
@rev_sku_to_speedo_ids._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr.12 = internal global ptr @rev_sku_to_speedo_ids._entry.11, section ".printk_index", align 4
@rev_sku_to_speedo_ids._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr.14 = internal global ptr @rev_sku_to_speedo_ids._entry.13, section ".printk_index", align 4
@rev_sku_to_speedo_ids._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr.16 = internal global ptr @rev_sku_to_speedo_ids._entry.15, section ".printk_index", align 4
@rev_sku_to_speedo_ids._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014Tegra Unknown SKU %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr.19 = internal global ptr @rev_sku_to_speedo_ids._entry.17, section ".printk_index", align 4
@rev_sku_to_speedo_ids._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014Tegra Unknown chip rev %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rev_sku_to_speedo_ids._entry_ptr.22 = internal global ptr @rev_sku_to_speedo_ids._entry.20, section ".printk_index", align 4
@fuse_speedo_calib.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fuse_speedo_calib\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tegra ATE prog ver %d.%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 4, i64 8, i64 128, i64 129, i64 130, i64 131, i64 135, i64 143]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 249, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 250, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 259, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 272, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 143, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 160, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 177, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 214, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 219, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 227, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [43 x i8] c"../drivers/soc/tegra/fuse/speedo-tegra30.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 91, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @rev_sku_to_speedo_ids._entry, ptr @rev_sku_to_speedo_ids._entry.11, ptr @rev_sku_to_speedo_ids._entry.13, ptr @rev_sku_to_speedo_ids._entry.15, ptr @rev_sku_to_speedo_ids._entry.17, ptr @rev_sku_to_speedo_ids._entry.20, ptr @rev_sku_to_speedo_ids._entry_ptr, ptr @rev_sku_to_speedo_ids._entry_ptr.12, ptr @rev_sku_to_speedo_ids._entry_ptr.14, ptr @rev_sku_to_speedo_ids._entry_ptr.16, ptr @rev_sku_to_speedo_ids._entry_ptr.19, ptr @rev_sku_to_speedo_ids._entry_ptr.22, ptr @tegra30_init_speedo_data._entry, ptr @tegra30_init_speedo_data._entry.6, ptr @tegra30_init_speedo_data._entry_ptr, ptr @tegra30_init_speedo_data._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_init_speedo_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_init_speedo_data._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rev_sku_to_speedo_ids._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra30_init_speedo_data(ptr noundef %sku_info) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %cpu_speedo_val = alloca i32, align 4
  %soc_speedo_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpu_speedo_val) #4
  %0 = ptrtoint ptr %cpu_speedo_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpu_speedo_val, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc_speedo_val) #4
  %1 = ptrtoint ptr %soc_speedo_val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %soc_speedo_val, align 4, !annotation !58
  tail call fastcc void @rev_sku_to_speedo_ids(ptr noundef %sku_info) #7
  call fastcc void @fuse_speedo_calib(ptr noundef nonnull %cpu_speedo_val, ptr noundef nonnull %soc_speedo_val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra30_init_speedo_data.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra30_init_speedo_data, %if.then)) #4
          to label %do.body9 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %cpu_speedo_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu_speedo_val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra30_init_speedo_data.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.3, i32 noundef %3) #4
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra30_init_speedo_data.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra30_init_speedo_data, %if.then21)) #4
          to label %do.end24 [label %if.then21], !srcloc !59

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %soc_speedo_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %soc_speedo_val, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra30_init_speedo_data.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.4, i32 noundef %5) #4
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body9
  %6 = ptrtoint ptr %cpu_speedo_val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu_speedo_val, align 4
  %8 = load i32, ptr @threshold_index, align 4
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_process_id82 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 1
  %9 = ptrtoint ptr %cpu_process_id82 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %cpu_process_id82, align 4
  br label %if.end38

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end24
  %i.088 = phi i32 [ 0, %do.end24 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx25 = getelementptr [12 x [6 x i32]], ptr @cpu_process_speedos, i32 0, i32 %8, i32 %i.088
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp26 = icmp ult i32 %7, %11
  br i1 %cmp26, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %sub = add nsw i32 %i.088, -1
  %cpu_process_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 1
  %12 = ptrtoint ptr %cpu_process_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %cpu_process_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.088)
  %cmp30 = icmp eq i32 %i.088, 0
  br i1 %cmp30, label %do.end34, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.end34:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %cpu_speedo_val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu_speedo_val, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %14) #8
  %15 = ptrtoint ptr %cpu_process_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cpu_process_id, align 4
  %cpu_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %16 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %cpu_speedo_id, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %for.end.if.end38_crit_edge, %for.end.thread
  %17 = ptrtoint ptr %soc_speedo_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %soc_speedo_val, align 4
  %19 = load i32, ptr @threshold_index, align 4
  %arrayidx42 = getelementptr [12 x [1 x i32]], ptr @soc_process_speedos, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %21)
  %cmp44 = icmp ult i32 %18, %21
  %soc_process_id84 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 5
  br i1 %cmp44, label %do.end56, label %for.end49

for.end49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %soc_process_id84 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %soc_process_id84, align 4
  br label %if.end60

do.end56:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %soc_process_id84 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %soc_process_id84, align 4
  %24 = ptrtoint ptr %soc_speedo_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %soc_speedo_val, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %25) #8
  %26 = ptrtoint ptr %soc_process_id84 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %soc_process_id84, align 4
  %soc_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %27 = ptrtoint ptr %soc_speedo_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %soc_speedo_id, align 4
  br label %if.end60

if.end60:                                         ; preds = %do.end56, %for.end49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc_speedo_val) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpu_speedo_val) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rev_sku_to_speedo_ids(ptr noundef %sku_info) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_fuse_read_early(i32 noundef 252) #8
  %and = and i32 %call, 15
  %revision = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 11
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end80 [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge129
  ]

entry.sw.bb1_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %3 = ptrtoint ptr %cpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cpu_speedo_id, align 4
  %soc_speedo_id = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %4 = ptrtoint ptr %soc_speedo_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %soc_speedo_id, align 4
  store i32 0, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge129
  %5 = ptrtoint ptr %sku_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sku_info, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %6, label %do.end70 [
    i32 135, label %sw.bb1.sw.bb2_crit_edge
    i32 130, label %sw.bb1.sw.bb2_crit_edge130
    i32 129, label %sw.bb5
    i32 128, label %sw.bb13
    i32 131, label %sw.bb27
    i32 143, label %sw.bb41
    i32 8, label %sw.bb44
    i32 2, label %sw.bb47
    i32 4, label %sw.bb50
    i32 0, label %sw.bb53
  ]

sw.bb1.sw.bb2_crit_edge130:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

sw.bb1.sw.bb2_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb1.sw.bb2_crit_edge, %sw.bb1.sw.bb2_crit_edge130
  %cpu_speedo_id3 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %8 = ptrtoint ptr %cpu_speedo_id3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %cpu_speedo_id3, align 4
  %soc_speedo_id4 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %9 = ptrtoint ptr %soc_speedo_id4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %soc_speedo_id4, align 4
  store i32 1, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb5:                                           ; preds = %sw.bb1
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and, label %do.end [
    i32 1, label %sw.bb6
    i32 2, label %sw.bb9
  ]

sw.bb6:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id7 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %11 = ptrtoint ptr %cpu_speedo_id7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %cpu_speedo_id7, align 4
  %soc_speedo_id8 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %12 = ptrtoint ptr %soc_speedo_id8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %soc_speedo_id8, align 4
  store i32 2, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb9:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id10 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %13 = ptrtoint ptr %cpu_speedo_id10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %cpu_speedo_id10, align 4
  %soc_speedo_id11 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %14 = ptrtoint ptr %soc_speedo_id11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %soc_speedo_id11, align 4
  store i32 7, ptr @threshold_index, align 4
  br label %sw.epilog86

do.end:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and) #8
  br label %sw.epilog86

sw.bb13:                                          ; preds = %sw.bb1
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and, label %do.end23 [
    i32 1, label %sw.bb14
    i32 2, label %sw.bb17
  ]

sw.bb14:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id15 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %16 = ptrtoint ptr %cpu_speedo_id15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %cpu_speedo_id15, align 4
  %soc_speedo_id16 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %17 = ptrtoint ptr %soc_speedo_id16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %soc_speedo_id16, align 4
  store i32 8, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb17:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id18 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %18 = ptrtoint ptr %cpu_speedo_id18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 6, ptr %cpu_speedo_id18, align 4
  %soc_speedo_id19 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %19 = ptrtoint ptr %soc_speedo_id19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %soc_speedo_id19, align 4
  store i32 9, ptr @threshold_index, align 4
  br label %sw.epilog86

do.end23:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and) #8
  br label %sw.epilog86

sw.bb27:                                          ; preds = %sw.bb1
  %20 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and, label %do.end37 [
    i32 1, label %sw.bb28
    i32 2, label %sw.bb31
  ]

sw.bb28:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id29 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %21 = ptrtoint ptr %cpu_speedo_id29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %cpu_speedo_id29, align 4
  %soc_speedo_id30 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %22 = ptrtoint ptr %soc_speedo_id30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %soc_speedo_id30, align 4
  store i32 10, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb31:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id32 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %23 = ptrtoint ptr %cpu_speedo_id32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %cpu_speedo_id32, align 4
  %soc_speedo_id33 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %24 = ptrtoint ptr %soc_speedo_id33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %soc_speedo_id33, align 4
  store i32 3, ptr @threshold_index, align 4
  br label %sw.epilog86

do.end37:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and) #8
  br label %sw.epilog86

sw.bb41:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id42 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %25 = ptrtoint ptr %cpu_speedo_id42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %cpu_speedo_id42, align 4
  %soc_speedo_id43 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %26 = ptrtoint ptr %soc_speedo_id43 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %soc_speedo_id43, align 4
  store i32 11, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb44:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id45 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %27 = ptrtoint ptr %cpu_speedo_id45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cpu_speedo_id45, align 4
  %soc_speedo_id46 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %28 = ptrtoint ptr %soc_speedo_id46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %soc_speedo_id46, align 4
  store i32 4, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb47:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id48 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %29 = ptrtoint ptr %cpu_speedo_id48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %cpu_speedo_id48, align 4
  %soc_speedo_id49 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %30 = ptrtoint ptr %soc_speedo_id49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %soc_speedo_id49, align 4
  store i32 5, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb50:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id51 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %31 = ptrtoint ptr %cpu_speedo_id51 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %cpu_speedo_id51, align 4
  %soc_speedo_id52 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %32 = ptrtoint ptr %soc_speedo_id52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %soc_speedo_id52, align 4
  store i32 6, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb53:                                          ; preds = %sw.bb1
  %33 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and, label %do.end63 [
    i32 1, label %sw.bb54
    i32 2, label %sw.bb57
  ]

sw.bb54:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id55 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %34 = ptrtoint ptr %cpu_speedo_id55 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %cpu_speedo_id55, align 4
  %soc_speedo_id56 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %35 = ptrtoint ptr %soc_speedo_id56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %soc_speedo_id56, align 4
  store i32 2, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.bb57:                                          ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #6
  %cpu_speedo_id58 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %36 = ptrtoint ptr %cpu_speedo_id58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %cpu_speedo_id58, align 4
  %soc_speedo_id59 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %37 = ptrtoint ptr %soc_speedo_id59 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %soc_speedo_id59, align 4
  store i32 3, ptr @threshold_index, align 4
  br label %sw.epilog86

do.end63:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #6
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and) #8
  br label %sw.epilog86

do.end70:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %6) #8
  %cpu_speedo_id74 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %38 = ptrtoint ptr %cpu_speedo_id74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %cpu_speedo_id74, align 4
  %soc_speedo_id75 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %39 = ptrtoint ptr %soc_speedo_id75 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %soc_speedo_id75, align 4
  store i32 0, ptr @threshold_index, align 4
  br label %sw.epilog86

do.end80:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %1) #8
  %cpu_speedo_id84 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 2
  %40 = ptrtoint ptr %cpu_speedo_id84 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cpu_speedo_id84, align 4
  %soc_speedo_id85 = getelementptr inbounds %struct.tegra_sku_info, ptr %sku_info, i32 0, i32 6
  %41 = ptrtoint ptr %soc_speedo_id85 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %soc_speedo_id85, align 4
  store i32 0, ptr @threshold_index, align 4
  br label %sw.epilog86

sw.epilog86:                                      ; preds = %do.end80, %do.end70, %do.end63, %sw.bb57, %sw.bb54, %sw.bb50, %sw.bb47, %sw.bb44, %sw.bb41, %do.end37, %sw.bb31, %sw.bb28, %do.end23, %sw.bb17, %sw.bb14, %do.end, %sw.bb9, %sw.bb6, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_speedo_calib(ptr nocapture noundef %speedo_g, ptr nocapture noundef %speedo_lp) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_fuse_read_early(i32 noundef 20) #8
  %and = shl i32 %call, 2
  %mul = and i32 %and, 262140
  %0 = ptrtoint ptr %speedo_lp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mul, ptr %speedo_lp, align 4
  %1 = lshr i32 %call, 14
  %mul2 = and i32 %1, 262140
  %2 = ptrtoint ptr %speedo_g to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul2, ptr %speedo_g, align 4
  %call3 = tail call i32 @tegra_fuse_read_early(i32 noundef 40) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fuse_speedo_calib.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fuse_speedo_calib, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3.frozen = freeze i32 %call3
  %div = sdiv i32 %call3.frozen, 10
  %3 = mul i32 %div, 10
  %rem.decomposed = sub i32 %call3.frozen, %3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fuse_speedo_calib.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.24, i32 noundef %div, i32 noundef %rem.decomposed) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call3)
  %cmp = icmp sgt i32 %call3, 25
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @tegra_fuse_read_spare(i32 noundef 62) #8
  %call9 = tail call i32 @tegra_fuse_read_spare(i32 noundef 63) #8
  %or = or i32 %call9, %call8
  %call10 = tail call i32 @tegra_fuse_read_spare(i32 noundef 64) #8
  %call11 = tail call i32 @tegra_fuse_read_spare(i32 noundef 65) #8
  %or12 = or i32 %call11, %call10
  %shl = shl i32 %or, 1
  %or13 = or i32 %or12, %shl
  %4 = ptrtoint ptr %speedo_lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speedo_lp, align 4
  %or14 = or i32 %or13, %5
  store i32 %or14, ptr %speedo_lp, align 4
  %call15 = tail call i32 @tegra_fuse_read_spare(i32 noundef 58) #8
  %call16 = tail call i32 @tegra_fuse_read_spare(i32 noundef 59) #8
  %or17 = or i32 %call16, %call15
  %call18 = tail call i32 @tegra_fuse_read_spare(i32 noundef 60) #8
  %call19 = tail call i32 @tegra_fuse_read_spare(i32 noundef 61) #8
  %or20 = or i32 %call19, %call18
  %shl21 = shl i32 %or17, 1
  %or22 = or i32 %or20, %shl21
  %6 = ptrtoint ptr %speedo_g to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speedo_g, align 4
  br label %if.end26

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %speedo_lp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speedo_lp, align 4
  %or24 = or i32 %9, 3
  store i32 %or24, ptr %speedo_lp, align 4
  %10 = ptrtoint ptr %speedo_g to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speedo_g, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then7
  %.sink41 = phi i32 [ 3, %if.else ], [ %7, %if.then7 ]
  %.sink = phi i32 [ %11, %if.else ], [ %or22, %if.then7 ]
  %or25 = or i32 %.sink, %.sink41
  %12 = ptrtoint ptr %speedo_g to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or25, ptr %speedo_g, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_early(i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tegra_fuse_read_spare(i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 249, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tegra30_init_speedo_data.__UNIQUE_ID_ddebug232, !1, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 250, i32 2}
!8 = !{ptr @tegra30_init_speedo_data.__UNIQUE_ID_ddebug233, !7, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 259, i32 3}
!11 = !{ptr @tegra30_init_speedo_data._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @tegra30_init_speedo_data._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 272, i32 3}
!15 = !{ptr @tegra30_init_speedo_data._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra30_init_speedo_data._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @threshold_index, !18, !"threshold_index", i1 false, i1 false}
!18 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 76, i32 12}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 143, i32 5}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rev_sku_to_speedo_ids._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @rev_sku_to_speedo_ids._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rev_sku_to_speedo_ids._entry.11, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 160, i32 5}
!26 = !{ptr @rev_sku_to_speedo_ids._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rev_sku_to_speedo_ids._entry.13, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 177, i32 5}
!29 = !{ptr @rev_sku_to_speedo_ids._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rev_sku_to_speedo_ids._entry.15, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 214, i32 5}
!32 = !{ptr @rev_sku_to_speedo_ids._entry_ptr.16, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 219, i32 4}
!35 = !{ptr @rev_sku_to_speedo_ids._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rev_sku_to_speedo_ids._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 227, i32 3}
!39 = !{ptr @rev_sku_to_speedo_ids._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rev_sku_to_speedo_ids._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 91, i32 2}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @fuse_speedo_calib.__UNIQUE_ID_ddebug229, !42, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!45 = !{ptr @cpu_process_speedos, !46, !"cpu_process_speedos", i1 false, i1 false}
!46 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 61, i32 30}
!47 = !{ptr @soc_process_speedos, !48, !"soc_process_speedos", i1 false, i1 false}
!48 = !{!"../drivers/soc/tegra/fuse/speedo-tegra30.c", i32 46, i32 30}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{i64 2148151809, i64 2148151814, i64 2148151827, i64 2148151871, i64 2148151905, i64 2148151926}
