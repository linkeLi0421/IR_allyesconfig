; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dss_clk = type { ptr, [32 x i8], i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dss_module_power = type { i32, ptr }

@msm_dss_get_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pS->%s: '%s' get failed. rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msm_dss_get_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c\00", [52 x i8] zeroinitializer }, align 32
@msm_dss_get_clk._entry_ptr = internal global ptr @msm_dss_get_clk._entry, section ".printk_index", align 4
@msm_dss_clk_set_rate.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_dss_clk_set_rate\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%pS->%s: '%s' rate %ld\0A\00", [40 x i8] zeroinitializer }, align 32
@msm_dss_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%pS->%s: %s failed. rc=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@msm_dss_clk_set_rate._entry_ptr = internal global ptr @msm_dss_clk_set_rate._entry, section ".printk_index", align 4
@msm_dss_clk_set_rate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%pS->%s: '%s' is not available\0A\00", [62 x i8] zeroinitializer }, align 32
@msm_dss_clk_set_rate._entry_ptr.9 = internal global ptr @msm_dss_clk_set_rate._entry.7, section ".printk_index", align 4
@msm_dss_enable_clk.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msm_dss_enable_clk\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%pS->%s: enable '%s'\0A\00", [42 x i8] zeroinitializer }, align 32
@msm_dss_enable_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pS->%s: %s en fail. rc=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@msm_dss_enable_clk._entry_ptr = internal global ptr @msm_dss_enable_clk._entry, section ".printk_index", align 4
@msm_dss_enable_clk.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%pS->%s: disable '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@msm_dss_parse_clock.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msm_dss_parse_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clocks are not defined\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to get clock name for %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to get clock refs %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Failed to set clock defaults %d\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 35, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 61, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 68, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 76, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 93, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 98, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 111, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 133, i32 57 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 135, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 150, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 162, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 168, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @msm_dss_clk_set_rate._entry, ptr @msm_dss_clk_set_rate._entry.7, ptr @msm_dss_clk_set_rate._entry_ptr, ptr @msm_dss_clk_set_rate._entry_ptr.9, ptr @msm_dss_enable_clk._entry, ptr @msm_dss_enable_clk._entry_ptr, ptr @msm_dss_get_clk._entry, ptr @msm_dss_get_clk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dss_get_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dss_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dss_clk_set_rate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dss_enable_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_dss_put_clk(ptr nocapture noundef %clk_arry, i32 noundef %num_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i.011 = add i32 %num_clk, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.011)
  %cmp12 = icmp sgt i32 %i.011, -1
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %i.0, %if.end.for.body_crit_edge ], [ %i.011, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_put(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %i.0 = add i32 %i.013, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dss_get_clk(ptr noundef %dev, ptr noundef %clk_arry, i32 noundef %num_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clk)
  %cmp47 = icmp sgt i32 %num_clk, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.048
  %clk_name = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.048, i32 1
  %call = tail call ptr @clk_get(ptr noundef %dev, ptr noundef %clk_name) #7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %arrayidx, align 4
  %cmp.i.i.not = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %call to i32
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %clk_name, i32 noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.048)
  %cmp1050.not = icmp eq i32 %i.048, 0
  br i1 %cmp1050.not, label %do.end.cleanup_crit_edge, label %do.end.for.body11_crit_edge

do.end.for.body11_crit_edge:                      ; preds = %do.end
  br label %for.body11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %num_clk
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body11:                                       ; preds = %if.end18.for.body11_crit_edge, %do.end.for.body11_crit_edge
  %i.151.in = phi i32 [ %i.151, %if.end18.for.body11_crit_edge ], [ %i.048, %do.end.for.body11_crit_edge ]
  %i.151 = add nsw i32 %i.151.in, -1
  %arrayidx12 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.151
  %3 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx12, align 4
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %for.body11.if.end18_crit_edge, label %if.then15

for.body11.if.end18_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then15:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_put(ptr noundef nonnull %4) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.body11.if.end18_crit_edge
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx12, align 4
  %cmp10 = icmp sgt i32 %i.151.in, 1
  br i1 %cmp10, label %if.end18.for.body11_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18.for.body11_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %1, %if.end18.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dss_clk_set_rate(ptr noundef %clk_arry, i32 noundef %num_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clk)
  %cmp57 = icmp sgt i32 %num_clk, 0
  br i1 %cmp57, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end29, label %if.then

if.then:                                          ; preds = %for.body
  %type = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.not = icmp eq i32 %3, 0
  br i1 %cmp2.not, label %if.then.for.inc_crit_edge, label %do.body

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_dss_clk_set_rate.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm_dss_clk_set_rate, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !52

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %clk_name = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058, i32 1
  %rate = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058, i32 3
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msm_dss_clk_set_rate.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef %clk_name, i32 noundef %6) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %rate13 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058, i32 3
  %9 = ptrtoint ptr %rate13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate13, align 4
  %call14 = tail call i32 @clk_set_rate(ptr noundef %8, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.for.inc_crit_edge, label %do.end19

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  %clk_name22 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058, i32 1
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef %clk_name22, i32 noundef %call14) #10
  br label %for.end

do.end29:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call ptr @llvm.returnaddress(i32 0)
  %clk_name32 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.058, i32 1
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef %clk_name32) #10
  br label %for.end

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %num_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end29, %do.end19, %entry.for.end_crit_edge
  %rc.2 = phi i32 [ %call14, %do.end19 ], [ -1, %do.end29 ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dss_enable_clk(ptr noundef %clk_arry, i32 noundef %num_clk, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %for.cond26.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clk)
  %cmp88 = icmp sgt i32 %num_clk, 0
  br i1 %cmp88, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.if.end52_crit_edge

for.cond.preheader.if.end52_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

for.cond26.preheader:                             ; preds = %entry
  %i.194 = add i32 %num_clk, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.194)
  %cmp2795 = icmp sgt i32 %i.194, -1
  br i1 %cmp2795, label %for.cond26.preheader.do.body29_crit_edge, label %for.cond26.preheader.if.end52_crit_edge

for.cond26.preheader.if.end52_crit_edge:          ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

for.cond26.preheader.do.body29_crit_edge:         ; preds = %for.cond26.preheader
  br label %do.body29

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %i.089 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_dss_enable_clk.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm_dss_enable_clk, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !52

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %clk_name = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.089, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msm_dss_enable_clk.__UNIQUE_ID_ddebug211, ptr noundef nonnull @.str.11, ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %clk_name) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %arrayidx5 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.089
  %1 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx5, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.do.end11_crit_edge

do.end.do.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %2) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %do.end.do.end11_crit_edge
  %retval.0.i76.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %do.end.do.end11_crit_edge ]
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %clk_name14 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.089, i32 1
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %clk_name14, i32 noundef %retval.0.i76.ph) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.089)
  %tobool19.not = icmp eq i32 %i.089, 0
  br i1 %tobool19.not, label %do.end11.for.inc_crit_edge, label %if.then20

do.end11.for.inc_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %do.end11
  %sub = add nsw i32 %i.089, -1
  %arrayidx21 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.089)
  %cmp27.i92.not = icmp eq i32 %i.089, 1
  br i1 %cmp27.i92.not, label %if.then20.if.end52_crit_edge, label %do.body29.i.preheader

if.then20.if.end52_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.body29.i.preheader:                            ; preds = %if.then20
  %i.1.i91 = add nsw i32 %i.089, -2
  br label %do.body29.i

do.body29.i:                                      ; preds = %do.end47.i.do.body29.i_crit_edge, %do.body29.i.preheader
  %i.1.i93 = phi i32 [ %i.1.i, %do.end47.i.do.body29.i_crit_edge ], [ %i.1.i91, %do.body29.i.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_dss_enable_clk.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm_dss_enable_clk, %if.then41.i)) #7
          to label %do.end47.i [label %if.then41.i], !srcloc !52

if.then41.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  %clk_name43.i = getelementptr %struct.dss_clk, ptr %arrayidx21, i32 %i.1.i93, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msm_dss_enable_clk.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.13, ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %clk_name43.i) #7
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then41.i, %do.body29.i
  %arrayidx48.i = getelementptr %struct.dss_clk, ptr %arrayidx21, i32 %i.1.i93
  %4 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx48.i, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %i.1.i = add nsw i32 %i.1.i93, -1
  %cmp27.i = icmp sgt i32 %i.1.i93, 0
  br i1 %cmp27.i, label %do.end47.i.do.body29.i_crit_edge, label %do.end47.i.if.end52_crit_edge

do.end47.i.if.end52_crit_edge:                    ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end47.i.do.body29.i_crit_edge:                 ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29.i

for.inc:                                          ; preds = %do.end11.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %retval.0.i7681 = phi i32 [ %retval.0.i76.ph, %do.end11.for.inc_crit_edge ], [ 0, %if.end.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %num_clk
  br i1 %exitcond.not, label %for.inc.if.end52_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.if.end52_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.body29:                                        ; preds = %do.end47.do.body29_crit_edge, %for.cond26.preheader.do.body29_crit_edge
  %i.196 = phi i32 [ %i.1, %do.end47.do.body29_crit_edge ], [ %i.194, %for.cond26.preheader.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_dss_enable_clk.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm_dss_enable_clk, %if.then41)) #7
          to label %do.end47 [label %if.then41], !srcloc !52

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call ptr @llvm.returnaddress(i32 0)
  %clk_name43 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.196, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msm_dss_enable_clk.__UNIQUE_ID_ddebug212, ptr noundef nonnull @.str.13, ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef %clk_name43) #7
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body29
  %arrayidx48 = getelementptr %struct.dss_clk, ptr %clk_arry, i32 %i.196
  %7 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx48, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  %i.1 = add i32 %i.196, -1
  %cmp27 = icmp sgt i32 %i.1, -1
  br i1 %cmp27, label %do.end47.do.body29_crit_edge, label %do.end47.if.end52_crit_edge

do.end47.if.end52_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end47.do.body29_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end52:                                         ; preds = %do.end47.if.end52_crit_edge, %for.inc.if.end52_crit_edge, %do.end47.i.if.end52_crit_edge, %if.then20.if.end52_crit_edge, %for.cond26.preheader.if.end52_crit_edge, %for.cond.preheader.if.end52_crit_edge
  %rc.1 = phi i32 [ 0, %for.cond26.preheader.if.end52_crit_edge ], [ %retval.0.i76.ph, %if.then20.if.end52_crit_edge ], [ 0, %for.cond.preheader.if.end52_crit_edge ], [ 0, %do.end47.if.end52_crit_edge ], [ %retval.0.i76.ph, %do.end47.i.if.end52_crit_edge ], [ %retval.0.i7681, %for.inc.if.end52_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_dss_parse_clock(ptr noundef %pdev, ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %clock_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock_name) #7
  %0 = ptrtoint ptr %clock_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clock_name, align 4, !annotation !53
  %tobool.not = icmp eq ptr %pdev, null
  %tobool1.not = icmp eq ptr %mp, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mp, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_dss_parse_clock.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm_dss_parse_clock, %if.then8)) #7
          to label %cleanup65 [label %if.then8], !srcloc !52

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msm_dss_parse_clock.__UNIQUE_ID_ddebug213, ptr noundef nonnull @.str.16) #7
  br label %cleanup65

if.end10:                                         ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 48) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !54

devm_kcalloc.exit.thread:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %clk_config120 = getelementptr inbounds %struct.dss_module_power, ptr %mp, i32 0, i32 1
  %6 = ptrtoint ptr %clk_config120 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %clk_config120, align 4
  br label %cleanup65

devm_kcalloc.exit:                                ; preds = %if.end10
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #7
  %clk_config = getelementptr inbounds %struct.dss_module_power, ptr %mp, i32 0, i32 1
  %8 = ptrtoint ptr %clk_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %clk_config, align 4
  %tobool14.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool14.not, label %devm_kcalloc.exit.cleanup65_crit_edge, label %devm_kcalloc.exit.for.body_crit_edge

devm_kcalloc.exit.for.body_crit_edge:             ; preds = %devm_kcalloc.exit
  br label %for.body

devm_kcalloc.exit.cleanup65_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %devm_kcalloc.exit.for.body_crit_edge
  %i.0130 = phi i32 [ %inc, %if.end24.for.body_crit_edge ], [ 0, %devm_kcalloc.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i113 = call i32 @of_property_read_string_helper(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull %clock_name, i32 noundef 1, i32 noundef %i.0130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i113)
  %tobool21.not = icmp sgt i32 %call.i113, -1
  br i1 %tobool21.not, label %if.end24, label %if.then22

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %i.0130) #7
  br label %for.end

if.end24:                                         ; preds = %for.body
  %11 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_config, align 4
  %clk_name = getelementptr %struct.dss_clk, ptr %12, i32 %i.0130, i32 1
  %13 = ptrtoint ptr %clock_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock_name, align 4
  %call26 = call i32 @strlcpy(ptr noundef %clk_name, ptr noundef %14, i32 noundef 32) #7
  %15 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_config, align 4
  %type = getelementptr %struct.dss_clk, ptr %16, i32 %i.0130, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %type, align 4
  %inc = add nuw i32 %i.0130, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %if.end24.for.end_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end24.for.end_crit_edge, %if.then22
  %18 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp47.i = icmp sgt i32 %call.i, 0
  br i1 %cmp47.i, label %for.end.for.body.i_crit_edge, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dss_clk, ptr %19, i32 %i.048.i
  %clk_name.i = getelementptr %struct.dss_clk, ptr %19, i32 %i.048.i, i32 1
  %call.i114 = call ptr @clk_get(ptr noundef %dev, ptr noundef %clk_name.i) #7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i114, ptr %arrayidx.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %call.i114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %21 = ptrtoint ptr %call.i114 to i32
  %22 = call ptr @llvm.returnaddress(i32 0) #7
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef %clk_name.i, i32 noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.048.i)
  %cmp1050.not.i = icmp eq i32 %i.048.i, 0
  br i1 %cmp1050.not.i, label %do.end.i.if.then33_crit_edge, label %do.end.i.for.body11.i_crit_edge

do.end.i.for.body11.i_crit_edge:                  ; preds = %do.end.i
  br label %for.body11.i

do.end.i.if.then33_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end35_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end35_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body11.i:                                     ; preds = %if.end18.i.for.body11.i_crit_edge, %do.end.i.for.body11.i_crit_edge
  %i.151.in.i = phi i32 [ %i.151.i, %if.end18.i.for.body11.i_crit_edge ], [ %i.048.i, %do.end.i.for.body11.i_crit_edge ]
  %i.151.i = add nsw i32 %i.151.in.i, -1
  %arrayidx12.i = getelementptr %struct.dss_clk, ptr %19, i32 %i.151.i
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12.i, align 4
  %tobool14.not.i = icmp eq ptr %24, null
  br i1 %tobool14.not.i, label %for.body11.i.if.end18.i_crit_edge, label %if.then15.i

for.body11.i.if.end18.i_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then15.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %24) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %for.body11.i.if.end18.i_crit_edge
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx12.i, align 4
  %cmp10.i = icmp sgt i32 %i.151.in.i, 1
  br i1 %cmp10.i, label %if.end18.i.for.body11.i_crit_edge, label %if.end18.i.if.then33_crit_edge

if.end18.i.if.then33_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.end18.i.for.body11.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

if.then33:                                        ; preds = %if.end18.i.if.then33_crit_edge, %do.end.i.if.then33_crit_edge
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19, i32 noundef %21) #7
  br label %err

if.end35:                                         ; preds = %for.inc.i.if.end35_crit_edge, %for.end.if.end35_crit_edge
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call38 = call i32 @of_clk_set_defaults(ptr noundef %27, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.body45.preheader, label %if.then40

for.body45.preheader:                             ; preds = %if.end35
  %umax = call i32 @llvm.umax.i32(i32 %call.i, i32 1)
  br label %for.body45

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20, i32 noundef %call38) #7
  br label %err

for.body45:                                       ; preds = %cleanup.for.body45_crit_edge, %for.body45.preheader
  %i.1132 = phi i32 [ %inc61, %cleanup.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %28 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_config, align 4
  %arrayidx47 = getelementptr %struct.dss_clk, ptr %29, i32 %i.1132
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx47, align 4
  %call48 = call i32 @clk_get_rate(ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.body45.cleanup_crit_edge, label %if.end51

for.body45.cleanup_crit_edge:                     ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_config, align 4
  %rate54 = getelementptr %struct.dss_clk, ptr %33, i32 %i.1132, i32 3
  %34 = ptrtoint ptr %rate54 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call48, ptr %rate54, align 4
  %35 = load ptr, ptr %clk_config, align 4
  %type57 = getelementptr %struct.dss_clk, ptr %35, i32 %i.1132, i32 2
  %36 = ptrtoint ptr %type57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type57, align 4
  %37 = load ptr, ptr %clk_config, align 4
  %max_rate = getelementptr %struct.dss_clk, ptr %37, i32 %i.1132, i32 4
  %38 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call48, ptr %max_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %for.body45.cleanup_crit_edge
  %inc61 = add nuw i32 %i.1132, 1
  %exitcond138.not = icmp eq i32 %inc61, %umax
  br i1 %exitcond138.not, label %for.end62, label %cleanup.for.body45_crit_edge

cleanup.for.body45_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45

for.end62:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i, ptr %mp, align 4
  br label %cleanup65

err:                                              ; preds = %if.then40, %if.then33
  %rc.0 = phi i32 [ %21, %if.then33 ], [ %call38, %if.then40 ]
  %40 = ptrtoint ptr %clk_config to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_config, align 4
  %i.011.i = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.011.i)
  %cmp12.i = icmp sgt i32 %i.011.i, -1
  br i1 %cmp12.i, label %err.for.body.i117_crit_edge, label %err.cleanup65_crit_edge

err.cleanup65_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

err.for.body.i117_crit_edge:                      ; preds = %err
  br label %for.body.i117

for.body.i117:                                    ; preds = %if.end.i.for.body.i117_crit_edge, %err.for.body.i117_crit_edge
  %i.013.i = phi i32 [ %i.0.i, %if.end.i.for.body.i117_crit_edge ], [ %i.011.i, %err.for.body.i117_crit_edge ]
  %arrayidx.i116 = getelementptr %struct.dss_clk, ptr %41, i32 %i.013.i
  %42 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i116, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %for.body.i117.if.end.i_crit_edge, label %if.then.i

for.body.i117.if.end.i_crit_edge:                 ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_put(ptr noundef nonnull %43) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i117.if.end.i_crit_edge
  %44 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx.i116, align 4
  %i.0.i = add i32 %i.013.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %if.end.i.for.body.i117_crit_edge, label %if.end.i.cleanup65_crit_edge

if.end.i.cleanup65_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.end.i.for.body.i117_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i117

cleanup65:                                        ; preds = %if.end.i.cleanup65_crit_edge, %err.cleanup65_crit_edge, %for.end62, %devm_kcalloc.exit.cleanup65_crit_edge, %devm_kcalloc.exit.thread, %if.then8, %do.body, %entry.cleanup65_crit_edge
  %retval.0 = phi i32 [ 0, %for.end62 ], [ -22, %entry.cleanup65_crit_edge ], [ 0, %if.then8 ], [ -12, %devm_kcalloc.exit.cleanup65_crit_edge ], [ 0, %do.body ], [ -12, %devm_kcalloc.exit.thread ], [ %rc.0, %err.cleanup65_crit_edge ], [ %rc.0, %if.end.i.cleanup65_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock_name) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !35, !36, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 35, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @msm_dss_get_clk._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @msm_dss_get_clk._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 61, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @msm_dss_clk_set_rate.__UNIQUE_ID_ddebug210, !7, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 68, i32 6}
!13 = !{ptr @msm_dss_clk_set_rate._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @msm_dss_clk_set_rate._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 76, i32 4}
!17 = !{ptr @msm_dss_clk_set_rate._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @msm_dss_clk_set_rate._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 93, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @msm_dss_enable_clk.__UNIQUE_ID_ddebug211, !20, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 98, i32 5}
!25 = !{ptr @msm_dss_enable_clk._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @msm_dss_enable_clk._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 111, i32 4}
!29 = !{ptr @msm_dss_enable_clk.__UNIQUE_ID_ddebug212, !28, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 133, i32 57}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 135, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @msm_dss_parse_clock.__UNIQUE_ID_ddebug213, !33, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 150, i32 4}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 162, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c", i32 168, i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148723893, i64 2148723898, i64 2148723911, i64 2148723955, i64 2148723989, i64 2148724010}
!53 = !{!"auto-init"}
!54 = !{!"branch_weights", i32 1, i32 2000}
