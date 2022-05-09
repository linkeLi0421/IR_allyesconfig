; ModuleID = '/llk/IR_all_yes/drivers/soc/mediatek/mtk-devapc.c_pt.bc'
source_filename = "../drivers/soc/mediatek/mtk-devapc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_devapc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mtk_devapc_context = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_mtk_devapc__187_305_mtk_devapc_driver_init6 = internal global ptr @mtk_devapc_driver_init, section ".initcall6.init", align 4
@mtk_devapc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_devapc_probe, ptr @mtk_devapc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_devapc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_devapc_driver_exit = internal global ptr @mtk_devapc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [50 x i8] c"mtk_devapc.description=Mediatek Device APC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [51 x i8] c"mtk_devapc.author=Neal Liu <neal.liu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [48 x i8] c"mtk_devapc.file=drivers/soc/mediatek/mtk-devapc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [23 x i8] c"mtk_devapc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtk-devapc\00", [21 x i8] zeroinitializer }, align 32
@mtk_devapc_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-devapc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @devapc_mt6779 }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"devapc-infra-clock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"devapc\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/soc/mediatek/mtk-devapc.c\00", [62 x i8] zeroinitializer }, align 32
@devapc_sync_vio_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Shift violation info failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"devapc_sync_vio_dbg\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@devapc_sync_vio_dbg._entry_ptr = internal global ptr @devapc_sync_vio_dbg._entry, section ".printk_index", align 4
@devapc_extract_vio_dbg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 172, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Write Violation\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devapc_extract_vio_dbg\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@devapc_extract_vio_dbg._entry_ptr = internal global ptr @devapc_extract_vio_dbg._entry, section ".printk_index", align 4
@devapc_extract_vio_dbg._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 174, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Read Violation\0A\00", [16 x i8] zeroinitializer }, align 32
@devapc_extract_vio_dbg._entry_ptr.13 = internal global ptr @devapc_extract_vio_dbg._entry.11, section ".printk_index", align 4
@devapc_extract_vio_dbg._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.3, i32 178, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Bus ID:0x%x, Dom ID:0x%x, Vio Addr:0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@devapc_extract_vio_dbg._entry_ptr.16 = internal global ptr @devapc_extract_vio_dbg._entry.14, section ".printk_index", align 4
@devapc_mt6779 = internal constant { %struct.mtk_devapc_data, [60 x i8] } { %struct.mtk_devapc_data { i32 511, i32 0, i32 1024, i32 2304, i32 2308, i32 3840, i32 3856, i32 3860, i32 3872 }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"mtk_devapc_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 296, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 300, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"mtk_devapc_dt_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 230, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 264, i32 44 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 272, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 138, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 141, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 172, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 174, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 176, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"devapc_mt6779\00", align 1
@___asan_gen_.75 = private constant [37 x i8] c"../drivers/soc/mediatek/mtk-devapc.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 218, i32 37 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_mtk_devapc_driver_exit, ptr @__initcall__kmod_mtk_devapc__187_305_mtk_devapc_driver_init6, ptr @devapc_extract_vio_dbg._entry, ptr @devapc_extract_vio_dbg._entry.11, ptr @devapc_extract_vio_dbg._entry.14, ptr @devapc_extract_vio_dbg._entry_ptr, ptr @devapc_extract_vio_dbg._entry_ptr.13, ptr @devapc_extract_vio_dbg._entry_ptr.16, ptr @devapc_sync_vio_dbg._entry, ptr @devapc_sync_vio_dbg._entry_ptr, ptr @mtk_devapc_driver_exit, ptr @mtk_devapc_driver, ptr @.str, ptr @mtk_devapc_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @devapc_mt6779], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_devapc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_devapc_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devapc_sync_vio_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devapc_extract_vio_dbg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devapc_extract_vio_dbg._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devapc_extract_vio_dbg._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devapc_mt6779 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_devapc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_devapc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_devapc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_devapc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_devapc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %data = getelementptr inbounds %struct.mtk_devapc_context, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %data, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call9 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #5
  %infra_base = getelementptr inbounds %struct.mtk_devapc_context, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %infra_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %infra_base, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end4.cleanup_crit_edge, label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call14 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %infra_clk = getelementptr inbounds %struct.mtk_devapc_context, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %infra_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %infra_clk, align 4
  %cmp.i59 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %call.i60 = tail call i32 @clk_prepare(ptr noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call19) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %call.i61 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @devapc_violation_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool31.not = icmp eq i32 %call.i61, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %infra_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %infra_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @start_devapc(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then32, %if.then3.i, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i61, %if.then32 ], [ 0, %if.end34 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_devapc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %infra_base.i.i = getelementptr inbounds %struct.mtk_devapc_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %infra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %infra_base.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.mtk_devapc_context, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %vio_mask_offset.i.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vio_mask_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vio_mask_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %7
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %div4243.mask.i.i = and i32 %9, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div4243.mask.i.i)
  %cmp45.not.i.i = icmp eq i32 %div4243.mask.i.i, 32
  br i1 %cmp45.not.i.i, label %entry.stop_devapc.exit_crit_edge, label %entry.do.body.i.i_crit_edge

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  br label %do.body.i.i

entry.stop_devapc.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stop_devapc.exit

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %i.046.i.i = phi i32 [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 0, %entry.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %mul.i.i = shl i32 %i.046.i.i, 2
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -1) #5, !srcloc !55
  %inc.i.i = add nuw i32 %i.046.i.i, 1
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %div42.i.i = lshr i32 %13, 5
  %sub.i.i = add nsw i32 %div42.i.i, -1
  %cmp.i.i = icmp ult i32 %inc.i.i, %sub.i.i
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %for.end.loopexit.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

for.end.loopexit.i.i:                             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i.i = shl i32 %inc.i.i, 2
  br label %stop_devapc.exit

stop_devapc.exit:                                 ; preds = %for.end.loopexit.i.i, %entry.stop_devapc.exit_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %entry.stop_devapc.exit_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ]
  %add.ptr4.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %i.0.lcssa.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #5, !srcloc !56
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %rem.i.i = and i32 %19, 31
  %sub11.i.i = sub nuw nsw i32 32, %rem.i.i
  %shr.i.i = lshr i32 -1, %sub11.i.i
  %or.i.i = or i32 %shr.i.i, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %20) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %infra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %infra_base.i.i, align 4
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %apc_con_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %apc_con_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %apc_con_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 67108864) #5, !srcloc !55
  %infra_clk = getelementptr inbounds %struct.mtk_devapc_context, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %infra_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %infra_clk, align 4
  tail call void @clk_disable(ptr noundef %28) #5
  tail call void @clk_unprepare(ptr noundef %28) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devapc_violation_irq(i32 noundef %irq_number, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %infra_base.i = getelementptr inbounds %struct.mtk_devapc_context, ptr %data, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.mtk_devapc_context, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %infra_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %infra_base.i, align 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %vio_shift_sta_offset.i18 = getelementptr inbounds %struct.mtk_devapc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %vio_shift_sta_offset.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vio_shift_sta_offset.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %1, i32 %5
  %vio_shift_sel_offset.i20 = getelementptr inbounds %struct.mtk_devapc_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %vio_shift_sel_offset.i20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vio_shift_sel_offset.i20, align 4
  %vio_shift_con_offset.i21 = getelementptr inbounds %struct.mtk_devapc_data, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %vio_shift_con_offset.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vio_shift_con_offset.i21, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i23 = icmp eq i32 %10, 0
  br i1 %tobool.not.i23, label %entry.while.end_crit_edge, label %if.end.i.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end.i.preheader:                               ; preds = %entry
  %add.ptr6.i22 = getelementptr i8, ptr %1, i32 %9
  br label %if.end.i

if.end.i:                                         ; preds = %devapc_extract_vio_dbg.exit.if.end.i_crit_edge, %if.end.i.preheader
  %11 = phi i32 [ %49, %devapc_extract_vio_dbg.exit.if.end.i_crit_edge ], [ %10, %if.end.i.preheader ]
  %add.ptr6.i25 = phi ptr [ %add.ptr6.i, %devapc_extract_vio_dbg.exit.if.end.i_crit_edge ], [ %add.ptr6.i22, %if.end.i.preheader ]
  %12 = phi i32 [ %46, %devapc_extract_vio_dbg.exit.if.end.i_crit_edge ], [ %7, %if.end.i.preheader ]
  %add.ptr.i24 = phi ptr [ %add.ptr.i, %devapc_extract_vio_dbg.exit.if.end.i_crit_edge ], [ %add.ptr.i19, %if.end.i.preheader ]
  %13 = phi ptr [ %40, %devapc_extract_vio_dbg.exit.if.end.i_crit_edge ], [ %1, %if.end.i.preheader ]
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %add.ptr3.i = getelementptr i8, ptr %13, i32 %12
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #5, !range !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %shl.i = shl nuw i32 1, %15
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %16) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i25, i32 16777216) #5, !srcloc !55
  %call12.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call12.i, 65536000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i25) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %17)
  %cmp30.i = icmp eq i32 %17, 50331648
  br i1 %cmp30.i, label %for.cond.i.while.body_crit_edge, label %land.lhs.true.i

for.cond.i.while.body_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call34.i = tail call i64 @ktime_get() #5
  %cmp3.i.i = icmp sgt i64 %call34.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then37.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.then37.i:                                      ; preds = %land.lhs.true.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i25) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %18)
  %phi.cmp.i = icmp eq i32 %18, 50331648
  br i1 %phi.cmp.i, label %if.then37.i.while.body_crit_edge, label %do.end53.i

if.then37.i.while.body_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end53.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  br label %while.end

while.body:                                       ; preds = %if.then37.i.while.body_crit_edge, %for.cond.i.while.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i25, i32 0) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %16) #5, !srcloc !55
  %21 = ptrtoint ptr %infra_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %infra_base.i, align 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %vio_dbg0_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %vio_dbg0_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vio_dbg0_offset.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %22, i32 %26
  %vio_dbg1_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %vio_dbg1_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vio_dbg1_offset.i, align 4
  %add.ptr3.i6 = getelementptr i8, ptr %22, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #5, !srcloc !56
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i6) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %32 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i7 = icmp eq i32 %32, 0
  br i1 %tobool.not.i7, label %if.else.i, label %while.body.do.end22.sink.split.i_crit_edge

while.body.do.end22.sink.split.i_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.sink.split.i

if.else.i:                                        ; preds = %while.body
  %33 = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool13.not.i = icmp eq i32 %33, 0
  br i1 %tobool13.not.i, label %if.else.i.devapc_extract_vio_dbg.exit_crit_edge, label %if.else.i.do.end22.sink.split.i_crit_edge

if.else.i.do.end22.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22.sink.split.i

if.else.i.devapc_extract_vio_dbg.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %devapc_extract_vio_dbg.exit

do.end22.sink.split.i:                            ; preds = %if.else.i.do.end22.sink.split.i_crit_edge, %while.body.do.end22.sink.split.i_crit_edge
  %.str.8.sink.i = phi ptr [ @.str.8, %while.body.do.end22.sink.split.i_crit_edge ], [ @.str.12, %if.else.i.do.end22.sink.split.i_crit_edge ]
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull %.str.8.sink.i) #8
  br label %devapc_extract_vio_dbg.exit

devapc_extract_vio_dbg.exit:                      ; preds = %do.end22.sink.split.i, %if.else.i.devapc_extract_vio_dbg.exit_crit_edge
  %36 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %bf.lshr25.i = lshr i32 %30, 16
  %bf.lshr27.i = lshr i32 %30, 10
  %bf.clear28.i = and i32 %bf.lshr27.i, 63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.15, i32 noundef %bf.lshr25.i, i32 noundef %bf.clear28.i, i32 noundef %36) #8
  %39 = ptrtoint ptr %infra_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %infra_base.i, align 4
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i, align 4
  %vio_shift_sta_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %vio_shift_sta_offset.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vio_shift_sta_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %44
  %vio_shift_sel_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %vio_shift_sel_offset.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vio_shift_sel_offset.i, align 4
  %vio_shift_con_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %42, i32 0, i32 8
  %47 = ptrtoint ptr %vio_shift_con_offset.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vio_shift_con_offset.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %40, i32 %48
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %devapc_extract_vio_dbg.exit.while.end_crit_edge, label %devapc_extract_vio_dbg.exit.if.end.i_crit_edge

devapc_extract_vio_dbg.exit.if.end.i_crit_edge:   ; preds = %devapc_extract_vio_dbg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

devapc_extract_vio_dbg.exit.while.end_crit_edge:  ; preds = %devapc_extract_vio_dbg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %devapc_extract_vio_dbg.exit.while.end_crit_edge, %do.end53.i, %entry.while.end_crit_edge
  %50 = ptrtoint ptr %infra_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %infra_base.i, align 4
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %vio_sta_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %vio_sta_offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vio_sta_offset.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %51, i32 %55
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 4
  %div1920.mask.i = and i32 %57, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div1920.mask.i)
  %cmp22.not.i = icmp eq i32 %div1920.mask.i, 32
  br i1 %cmp22.not.i, label %while.end.clear_vio_status.exit_crit_edge, label %while.end.do.body.i_crit_edge

while.end.do.body.i_crit_edge:                    ; preds = %while.end
  br label %do.body.i

while.end.clear_vio_status.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear_vio_status.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.end.do.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %while.end.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %mul.i = shl i32 %i.023.i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i10, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -1) #5, !srcloc !55
  %inc.i = add nuw i32 %i.023.i, 1
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %div19.i = lshr i32 %61, 5
  %sub.i = add nsw i32 %div19.i, -1
  %cmp.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body3.loopexit.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.body3.loopexit.i:                              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i = shl i32 %inc.i, 2
  br label %clear_vio_status.exit

clear_vio_status.exit:                            ; preds = %do.body3.loopexit.i, %while.end.clear_vio_status.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %while.end.clear_vio_status.exit_crit_edge ], [ %phi.bo.i, %do.body3.loopexit.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %rem.i = and i32 %65, 31
  %sub9.i = sub nuw nsw i32 32, %rem.i
  %shr.i = lshr i32 -1, %sub9.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #5
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i10, i32 %i.0.lcssa.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %66) #5, !srcloc !55
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_devapc(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %infra_base = getelementptr inbounds %struct.mtk_devapc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %infra_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %infra_base, align 4
  %data = getelementptr inbounds %struct.mtk_devapc_context, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %apc_con_offset = getelementptr inbounds %struct.mtk_devapc_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %apc_con_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %apc_con_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #5, !srcloc !55
  %6 = ptrtoint ptr %infra_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %infra_base, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %vio_mask_offset.i = getelementptr inbounds %struct.mtk_devapc_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %vio_mask_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vio_mask_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  %div4243.mask.i = and i32 %13, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div4243.mask.i)
  %cmp45.not.i = icmp eq i32 %div4243.mask.i, 32
  br i1 %cmp45.not.i, label %entry.mask_module_irq.exit_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.mask_module_irq.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mask_module_irq.exit

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %i.046.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %mul.i = shl i32 %i.046.i, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #5, !srcloc !55
  %inc.i = add nuw i32 %i.046.i, 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %div42.i = lshr i32 %17, 5
  %sub.i = add nsw i32 %div42.i, -1
  %cmp.i = icmp ult i32 %inc.i, %sub.i
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %for.end.loopexit.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

for.end.loopexit.i:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i = shl i32 %inc.i, 2
  br label %mask_module_irq.exit

mask_module_irq.exit:                             ; preds = %for.end.loopexit.i, %entry.mask_module_irq.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.mask_module_irq.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %i.0.lcssa.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !56
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %rem.i = and i32 %23, 31
  %sub11.i = sub nuw nsw i32 32, %rem.i
  %shr.i = lshr i32 -1, %sub11.i
  %neg.i = xor i32 %shr.i, -1
  %and21.i = and i32 %19, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %24 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %24) #5, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_mtk_devapc__187_305_mtk_devapc_driver_init6, !1, !"__initcall__kmod_mtk_devapc__187_305_mtk_devapc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 305, i32 1}
!2 = !{ptr @__exitcall_mtk_devapc_driver_exit, !1, !"__exitcall_mtk_devapc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description188, !4, !"__UNIQUE_ID_description188", i1 false, i1 false}
!4 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 307, i32 1}
!5 = !{ptr @__UNIQUE_ID_author189, !6, !"__UNIQUE_ID_author189", i1 false, i1 false}
!6 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 308, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 309, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 300, i32 11}
!12 = !{ptr @mtk_devapc_driver, !13, !"mtk_devapc_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 296, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 264, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 272, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 138, i32 8}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 141, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @devapc_sync_vio_dbg._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @devapc_sync_vio_dbg._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 172, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @devapc_extract_vio_dbg._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @devapc_extract_vio_dbg._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 174, i32 3}
!35 = !{ptr @devapc_extract_vio_dbg._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @devapc_extract_vio_dbg._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 176, i32 2}
!39 = !{ptr @devapc_extract_vio_dbg._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @devapc_extract_vio_dbg._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @mtk_devapc_dt_match, !42, !"mtk_devapc_dt_match", i1 false, i1 false}
!42 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 230, i32 34}
!43 = !{ptr @devapc_mt6779, !44, !"devapc_mt6779", i1 false, i1 false}
!44 = !{!"../drivers/soc/mediatek/mtk-devapc.c", i32 218, i32 37}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2153216383}
!55 = !{i64 4234924}
!56 = !{i64 4235342}
!57 = !{i64 2153217014}
!58 = !{i64 2153219186}
!59 = !{i64 2153232228}
!60 = !{i64 2153219853}
!61 = !{i32 0, i32 33}
!62 = !{i64 2153220089}
!63 = !{i64 2153220541}
!64 = !{i64 2153222312}
!65 = !{i64 2153222810}
!66 = !{i64 2153224727}
!67 = !{i64 2153225141}
!68 = !{i64 2153225842}
!69 = !{i64 2153226308}
!70 = !{i64 2153211537}
!71 = !{i64 2153214137}
!72 = !{i64 2153231613}
