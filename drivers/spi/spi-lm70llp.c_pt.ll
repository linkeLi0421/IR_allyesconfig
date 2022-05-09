; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-lm70llp.c_pt.bc'
source_filename = "../drivers/spi/spi-lm70llp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_lm70llp = type { %struct.spi_bitbang, ptr, ptr, ptr, %struct.spi_board_info }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_spi_lm70llp__231_323_spi_lm70llp_drv_init6 = internal global ptr @spi_lm70llp_drv_init, section ".initcall6.init", align 4
@spi_lm70llp_drv = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.1, ptr null, ptr @spi_lm70llp_detach, ptr @spi_lm70llp_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_spi_lm70llp_drv_exit = internal global ptr @spi_lm70llp_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [68 x i8] c"spi_lm70llp.author=Kaiwan N Billimoria <kaiwan@designergraphix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [91 x i8] c"spi_lm70llp.description=Parport adapter for the National Semiconductor LM70 LLP eval board\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [41 x i8] c"spi_lm70llp.file=drivers/spi/spi-lm70llp\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [24 x i8] c"spi_lm70llp.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_lm70llp\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-lm70llp\00", [20 x i8] zeroinitializer }, align 32
@lm70llp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@spi_lm70llp_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014spi_lm70llp: spi_lm70llp instance already loaded. Aborting.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_lm70llp_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-lm70llp.c\00", [38 x i8] zeroinitializer }, align 32
@spi_lm70llp_attach._entry_ptr = internal global ptr @spi_lm70llp_attach._entry, section ".printk_index", align 4
@spi_lm70llp_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"spi_bitbang_start failed with status %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_lm70llp_attach._entry_ptr.9 = internal global ptr @spi_lm70llp_attach._entry.5, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm70\00", [27 x i8] zeroinitializer }, align 32
@spi_lm70llp_attach.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spidev_lm70 at %s\0A\00", [45 x i8] zeroinitializer }, align 32
@spi_lm70llp_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 272, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_new_device failed\0A\00", [41 x i8] zeroinitializer }, align 32
@spi_lm70llp_attach._entry_ptr.14 = internal global ptr @spi_lm70llp_attach._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@spi_lm70llp_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016spi_lm70llp: spi_lm70llp probe fail, status %d\0A\00", [46 x i8] zeroinitializer }, align 32
@spi_lm70llp_attach._entry_ptr.17 = internal global ptr @spi_lm70llp_attach._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"spi_lm70llp_drv\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 317, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 323, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 318, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"lm70llp\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 80, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 197, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 244, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 255, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 269, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 272, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [29 x i8] c"../drivers/spi/spi-lm70llp.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 293, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_spi_lm70llp_drv_exit, ptr @__initcall__kmod_spi_lm70llp__231_323_spi_lm70llp_drv_init6, ptr @spi_lm70llp_attach._entry, ptr @spi_lm70llp_attach._entry.12, ptr @spi_lm70llp_attach._entry.15, ptr @spi_lm70llp_attach._entry.5, ptr @spi_lm70llp_attach._entry_ptr, ptr @spi_lm70llp_attach._entry_ptr.14, ptr @spi_lm70llp_attach._entry_ptr.17, ptr @spi_lm70llp_attach._entry_ptr.9, ptr @spi_lm70llp_drv_exit, ptr @spi_lm70llp_drv, ptr @.str, ptr @.str.1, ptr @lm70llp, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lm70llp_drv to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm70llp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lm70llp_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lm70llp_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lm70llp_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lm70llp_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_lm70llp_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @spi_lm70llp_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_lm70llp_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @parport_unregister_driver(ptr noundef nonnull @spi_lm70llp_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_lm70llp_detach(ptr noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lm70llp, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.spi_lm70llp, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %cmp.not = icmp eq ptr %2, %p
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @spi_bitbang_stop(ptr noundef nonnull %0) #5
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %4, i8 noundef zeroext 0) #5
  %pd = getelementptr inbounds %struct.spi_lm70llp, ptr %0, i32 0, i32 2
  %9 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pd, align 4
  tail call void @parport_release(ptr noundef %10) #5
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd, align 4
  tail call void @parport_unregister_device(ptr noundef %12) #5
  %master = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 4
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.spi_controller_put.exit_crit_edge, label %if.then.i

if.end.spi_controller_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull %14) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %if.end.spi_controller_put.exit_crit_edge
  store ptr null, ptr @lm70llp, align 4
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_lm70llp_attach(ptr noundef %p) #2 align 64 {
entry:
  %lm70llp_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %lm70llp_cb) #5
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %lm70llp_cb, i32 0, i32 2
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %lm70llp_cb, i32 0, i32 4
  %2 = call ptr @memset(ptr %lm70llp_cb, i32 255, i32 20)
  %3 = load ptr, ptr @lm70llp, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %physport = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %4 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %physport, align 8
  %dev = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %7, i32 noundef 204, i1 noundef zeroext false) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.do.end73_crit_edge, label %if.end4

if.end.do.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end73

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %master6 = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %master6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %master6, align 4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lm70_chipselect, ptr %chipselect, align 4
  %txrx_word = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %txrx_word to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @lm70_txrx, ptr %txrx_word, align 4
  %flags = getelementptr inbounds %struct.spi_bitbang, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %flags, align 2
  %port = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p, ptr %port, align 4
  %15 = call ptr @memset(ptr %lm70llp_cb, i32 0, i32 16)
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %1, align 4
  %call11 = call ptr @parport_register_dev_model(ptr noundef %p, ptr noundef nonnull @.str.1, ptr noundef nonnull %lm70llp_cb, i32 noundef 0) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end4.spi_controller_put.exit_crit_edge, label %if.end14

if.end4.spi_controller_put.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end14:                                         ; preds = %if.end4
  %pd15 = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %pd15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11, ptr %pd15, align 4
  %call16 = call i32 @parport_claim(ptr noundef nonnull %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end14.out_parport_unreg_crit_edge, label %if.end18

if.end14.out_parport_unreg_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_parport_unreg

if.end18:                                         ; preds = %if.end14
  %call20 = call i32 @spi_bitbang_start(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.pardevice, ptr %call11, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26, ptr noundef nonnull @.str.6, i32 noundef %call20) #8
  br label %out_off_and_release

if.end27:                                         ; preds = %if.end18
  %info = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %info, ptr @.str.10, i32 5)
  %max_speed_hz = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 4, i32 5
  %20 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6000000, ptr %max_speed_hz, align 4
  %chip_select = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 4, i32 7
  %21 = ptrtoint ptr %chip_select to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %chip_select, align 2
  %mode = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %mode, align 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  call void %28(ptr noundef %24, i8 noundef zeroext -66) #5
  %controller_data = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %controller_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %9, ptr %controller_data, align 4
  %30 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master6, align 4
  %call38 = call ptr @spi_new_device(ptr noundef %31, ptr noundef %info) #5
  %spidev_lm70 = getelementptr inbounds %struct.spi_lm70llp, ptr %9, i32 0, i32 3
  %32 = ptrtoint ptr %spidev_lm70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call38, ptr %spidev_lm70, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %do.end60, label %do.body42

do.body42:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_lm70llp_attach.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_lm70llp_attach, %if.end62)) #5
          to label %if.then49 [label %if.end62], !srcloc !51

if.then49:                                        ; preds = %do.body42
  %33 = ptrtoint ptr %spidev_lm70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spidev_lm70, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then49.dev_name.exit_crit_edge

if.then49.dev_name.exit_crit_edge:                ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then49.dev_name.exit_crit_edge
  %retval.0.i120 = phi ptr [ %38, %if.end.i ], [ %36, %if.then49.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_lm70llp_attach.__UNIQUE_ID_ddebug230, ptr noundef %34, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i120) #5
  br label %if.end62

do.end60:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %dev61 = getelementptr inbounds %struct.pardevice, ptr %call11, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev61, ptr noundef nonnull @.str.13) #8
  call void @spi_bitbang_stop(ptr noundef %9) #5
  br label %out_off_and_release

if.end62:                                         ; preds = %dev_name.exit, %do.body42
  %39 = ptrtoint ptr %spidev_lm70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spidev_lm70, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %bits_per_word, align 1
  store ptr %9, ptr @lm70llp, align 4
  br label %cleanup

out_off_and_release:                              ; preds = %do.end60, %do.end25
  %status.0 = phi i32 [ %call20, %do.end25 ], [ -19, %do.end60 ]
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 4
  %ops66 = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %ops66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops66, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  call void %47(ptr noundef %43, i8 noundef zeroext 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 214748000) #5
  %58 = ptrtoint ptr %pd15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pd15, align 4
  call void @parport_release(ptr noundef %59) #5
  br label %out_parport_unreg

out_parport_unreg:                                ; preds = %out_off_and_release, %if.end14.out_parport_unreg_crit_edge
  %status.1 = phi i32 [ %call16, %if.end14.out_parport_unreg_crit_edge ], [ %status.0, %out_off_and_release ]
  call void @parport_unregister_device(ptr noundef nonnull %call11) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %out_parport_unreg, %if.end4.spi_controller_put.exit_crit_edge
  %status.2 = phi i32 [ %status.1, %out_parport_unreg ], [ -12, %if.end4.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #5
  br label %do.end73

do.end73:                                         ; preds = %spi_controller_put.exit, %if.end.do.end73_crit_edge
  %status.3 = phi i32 [ %status.2, %spi_controller_put.exit ], [ -12, %if.end.do.end73_crit_edge ]
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %status.3) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end62, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %lm70llp_cb) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm70_chipselect(ptr nocapture noundef readonly %spi, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %port.i2 = getelementptr inbounds %struct.spi_lm70llp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i2, align 4
  %ops.i3 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops.i3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i3, align 4
  %read_data.i4 = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_data.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_data.i4, align 4
  %call.i5 = tail call zeroext i8 %7(ptr noundef %3) #5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %port.i2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port.i2, align 4
  %ops4.i = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %ops4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops4.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = and i8 %call.i5, 95
  %15 = or i8 %14, -128
  tail call void %13(ptr noundef %9, i8 noundef zeroext %15) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = and i8 %call.i5, 95
  %17 = ptrtoint ptr %port.i2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i2, align 4
  %ops4.i6 = getelementptr inbounds %struct.parport, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %ops4.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops4.i6, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = or i8 %16, 32
  tail call void %22(ptr noundef %18, i8 noundef zeroext %23) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm70_txrx(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not15.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not15.i, label %entry.bitbang_txrx_be_cpha0.exit_crit_edge, label %for.body.lr.ph.i, !prof !52

entry.bitbang_txrx_be_cpha0.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitbang_txrx_be_cpha0.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %controller_data.i.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %and24.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %cmp25.i = icmp eq i32 %and24.i, 0
  br label %cond.false2.i.i

cond.false2.i.i:                                  ; preds = %if.end28.i.cond.false2.i.i_crit_edge, %for.body.lr.ph.i
  %bits.addr.017.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %if.end28.i.cond.false2.i.i_crit_edge ]
  %word.addr.016.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %if.end28.i.cond.false2.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %0(i32 noundef %nsecs) #5
  %1 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %controller_data.i.i.i, align 4
  %port.i2.i.i = getelementptr inbounds %struct.spi_lm70llp, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %port.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i2.i.i, align 4
  %ops.i3.i.i = getelementptr inbounds %struct.parport, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %ops.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i3.i.i, align 4
  %read_data.i4.i.i = getelementptr inbounds %struct.parport_operations, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %read_data.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_data.i4.i.i, align 4
  %call.i5.i.i = tail call zeroext i8 %8(ptr noundef %4) #5
  %9 = ptrtoint ptr %port.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i2.i.i, align 4
  %ops3.i6.i.i = getelementptr inbounds %struct.parport, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %ops3.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops3.i6.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %.sink.i.i = or i8 %call.i5.i.i, 64
  tail call void %14(ptr noundef %10, i8 noundef zeroext %.sink.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %nsecs) #5
  %shl23.i = shl i32 %word.addr.016.i, 1
  br i1 %cmp25.i, label %if.then27.i, label %cond.false2.i.i.if.end28.i_crit_edge

cond.false2.i.i.if.end28.i_crit_edge:             ; preds = %cond.false2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then27.i:                                      ; preds = %cond.false2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller_data.i.i.i, align 4
  %port.i.i = getelementptr inbounds %struct.spi_lm70llp, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %19, i32 0, i32 24
  %20 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_status.i.i, align 4
  %call2.i.i = tail call zeroext i8 %23(ptr noundef %19) #5
  %24 = lshr i8 %call2.i.i, 4
  %.lobit.i.i = and i8 %24, 1
  %25 = xor i8 %.lobit.i.i, 1
  %26 = zext i8 %25 to i32
  %or.i = or i32 %shl23.i, %26
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %cond.false2.i.i.if.end28.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then27.i ], [ %shl23.i, %cond.false2.i.i.if.end28.i_crit_edge ]
  %27 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %controller_data.i.i.i, align 4
  %port.i2.i10.i = getelementptr inbounds %struct.spi_lm70llp, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %port.i2.i10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.i2.i10.i, align 4
  %ops.i3.i11.i = getelementptr inbounds %struct.parport, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %ops.i3.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i3.i11.i, align 4
  %read_data.i4.i12.i = getelementptr inbounds %struct.parport_operations, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %read_data.i4.i12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_data.i4.i12.i, align 4
  %call.i5.i13.i = tail call zeroext i8 %34(ptr noundef %30) #5
  %35 = ptrtoint ptr %port.i2.i10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port.i2.i10.i, align 4
  %ops3.i6.i14.i = getelementptr inbounds %struct.parport, ptr %36, i32 0, i32 24
  %37 = ptrtoint ptr %ops3.i6.i14.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops3.i6.i14.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = and i8 %call.i5.i13.i, -65
  tail call void %40(ptr noundef %36, i8 noundef zeroext %41) #5
  %dec.i = add i8 %bits.addr.017.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end28.i.bitbang_txrx_be_cpha0.exit_crit_edge, label %if.end28.i.cond.false2.i.i_crit_edge, !prof !52

if.end28.i.cond.false2.i.i_crit_edge:             ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false2.i.i

if.end28.i.bitbang_txrx_be_cpha0.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitbang_txrx_be_cpha0.exit

bitbang_txrx_be_cpha0.exit:                       ; preds = %if.end28.i.bitbang_txrx_be_cpha0.exit_crit_edge, %entry.bitbang_txrx_be_cpha0.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha0.exit_crit_edge ], [ %word.addr.1.i, %if.end28.i.bitbang_txrx_be_cpha0.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !33, !34, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_spi_lm70llp__231_323_spi_lm70llp_drv_init6, !1, !"__initcall__kmod_spi_lm70llp__231_323_spi_lm70llp_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-lm70llp.c", i32 323, i32 1}
!2 = !{ptr @__exitcall_spi_lm70llp_drv_exit, !1, !"__exitcall_spi_lm70llp_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author232, !4, !"__UNIQUE_ID_author232", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-lm70llp.c", i32 325, i32 1}
!5 = !{ptr @__UNIQUE_ID_description233, !6, !"__UNIQUE_ID_description233", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-lm70llp.c", i32 326, i32 1}
!7 = !{ptr @__UNIQUE_ID_file234, !8, !"__UNIQUE_ID_file234", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-lm70llp.c", i32 328, i32 1}
!9 = !{ptr @__UNIQUE_ID_license235, !8, !"__UNIQUE_ID_license235", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-lm70llp.c", i32 318, i32 11}
!13 = !{ptr @spi_lm70llp_drv, !14, !"spi_lm70llp_drv", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-lm70llp.c", i32 317, i32 30}
!15 = !{ptr @lm70llp, !16, !"lm70llp", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-lm70llp.c", i32 80, i32 28}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-lm70llp.c", i32 197, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spi_lm70llp_attach._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @spi_lm70llp_attach._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-lm70llp.c", i32 244, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @spi_lm70llp_attach._entry.5, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @spi_lm70llp_attach._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-lm70llp.c", i32 255, i32 28}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-lm70llp.c", i32 269, i32 3}
!33 = !{ptr @spi_lm70llp_attach.__UNIQUE_ID_ddebug230, !32, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-lm70llp.c", i32 272, i32 3}
!36 = !{ptr @spi_lm70llp_attach._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @spi_lm70llp_attach._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-lm70llp.c", i32 293, i32 2}
!40 = !{ptr @spi_lm70llp_attach._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @spi_lm70llp_attach._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148960064, i64 2148960069, i64 2148960082, i64 2148960126, i64 2148960160, i64 2148960181}
!52 = !{!"branch_weights", i32 1, i32 2000}
