; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-mt6397.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mt6397.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_rtc_data = type { i32 }
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
%struct.mt6397_rtc = type { ptr, %struct.mutex, ptr, i32, i32, ptr }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_mt6397__227_357_mtk_rtc_driver_init6 = internal global ptr @mtk_rtc_driver_init, section ".initcall6.init", align 4
@mtk_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6397_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6397_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_rtc_driver_exit = internal global ptr @mtk_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [39 x i8] c"rtc_mt6397.file=drivers/rtc/rtc-mt6397\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [26 x i8] c"rtc_mt6397.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [61 x i8] c"rtc_mt6397.author=Tianping Fang <tianping.fang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [59 x i8] c"rtc_mt6397.description=RTC Driver for MediaTek MT6397 PMIC\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6397-rtc\00", [21 x i8] zeroinitializer }, align 32
@mt6397_rtc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6323-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6397_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6358-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6358_rtc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6397-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6397_rtc_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mt6397_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mt6397_rtc_suspend, ptr @mt6397_rtc_resume, ptr @mt6397_rtc_suspend, ptr @mt6397_rtc_resume, ptr @mt6397_rtc_suspend, ptr @mt6397_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_rtc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&rtc->lock\00", [21 x i8] zeroinitializer }, align 32
@mtk_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request alarm IRQ: %d: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_rtc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-mt6397.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_rtc_probe._entry_ptr = internal global ptr @mtk_rtc_probe._entry, section ".printk_index", align 4
@mtk_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @mtk_rtc_read_time, ptr @mtk_rtc_set_time, ptr @mtk_rtc_read_alarm, ptr @mtk_rtc_set_alarm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mtk_rtc_write_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 35, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to write WRTGR: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_rtc_write_trigger\00", [42 x i8] zeroinitializer }, align 32
@mtk_rtc_write_trigger._entry_ptr = internal global ptr @mtk_rtc_write_trigger._entry, section ".printk_index", align 4
@mt6397_rtc_data = internal constant { %struct.mtk_rtc_data, [28 x i8] } { %struct.mtk_rtc_data { i32 60 }, [28 x i8] zeroinitializer }, align 32
@mt6358_rtc_data = internal constant { %struct.mtk_rtc_data, [28 x i8] } { %struct.mtk_rtc_data { i32 58 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"mtk_rtc_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 348, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 350, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"mt6397_rtc_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 340, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"mt6397_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 329, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 281, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 295, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"mtk_rtc_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 253, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 34, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"mt6397_rtc_data\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 336, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"mt6358_rtc_data\00", align 1
@___asan_gen_.61 = private constant [28 x i8] c"../drivers/rtc/rtc-mt6397.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 332, i32 34 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_mtk_rtc_driver_exit, ptr @__initcall__kmod_rtc_mt6397__227_357_mtk_rtc_driver_init6, ptr @mtk_rtc_driver_exit, ptr @mtk_rtc_probe._entry, ptr @mtk_rtc_probe._entry_ptr, ptr @mtk_rtc_write_trigger._entry, ptr @mtk_rtc_write_trigger._entry_ptr, ptr @mtk_rtc_driver, ptr @.str, ptr @mt6397_rtc_of_match, ptr @mt6397_pm_ops, ptr @mtk_rtc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mtk_rtc_ops, ptr @.str.7, ptr @.str.8, ptr @mt6397_rtc_data, ptr @mt6358_rtc_data], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6397_rtc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6397_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rtc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_rtc_write_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6397_rtc_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_rtc_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %addr_base = getelementptr inbounds %struct.mt6397_rtc, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %addr_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %addr_base, align 4
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %data = getelementptr inbounds %struct.mt6397_rtc, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %data, align 4
  %call6 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  %irq = getelementptr inbounds %struct.mt6397_rtc, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %regmap11 = getelementptr inbounds %struct.mt6397_rtc, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %regmap11, align 4
  %lock = getelementptr inbounds %struct.mt6397_rtc, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mtk_rtc_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #5
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call22 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %16, ptr noundef null, ptr noundef nonnull @mtk_rtc_irq_handler_thread, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %call22) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #5
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mtk_rtc_ops, ptr %ops, align 8
  %22 = load ptr, ptr %call.i, align 4
  %call35 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end27, %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then16 ], [ %call22, %do.end27 ], [ %call35, %if.end30 ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_irq_handler_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irqsta = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqsta) #5
  %0 = ptrtoint ptr %irqsta to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irqsta, align 4, !annotation !49
  %regmap = getelementptr inbounds %struct.mt6397_rtc, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %addr_base = getelementptr inbounds %struct.mt6397_rtc, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr_base, align 4
  %add = add i32 %4, 2
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %irqsta) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %irqsta to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqsta, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void @rtc_update_irq(ptr noundef %8, i32 noundef 1, i32 noundef 160) #5
  %9 = ptrtoint ptr %irqsta to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irqsta, align 4
  %and1 = and i32 %10, -2
  %lock = getelementptr inbounds %struct.mt6397_rtc, ptr %data, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr_base, align 4
  %add4 = add i32 %14, 4
  %call5 = call i32 @regmap_write(ptr noundef %12, i32 noundef %add4, i32 noundef %and1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = call fastcc i32 @mtk_rtc_write_trigger(ptr noundef %data)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqsta) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_rtc_write_trigger(ptr nocapture noundef readonly %rtc) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !49
  %regmap = getelementptr inbounds %struct.mt6397_rtc, ptr %rtc, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %addr_base = getelementptr inbounds %struct.mt6397_rtc, ptr %rtc, i32 0, i32 4
  %3 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr_base, align 4
  %data1 = getelementptr inbounds %struct.mt6397_rtc, ptr %rtc, i32 0, i32 5
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %8, %4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %add, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @jiffies_to_usecs(i32 noundef 100) #5
  %conv = zext i32 %call2 to i64
  %call3 = tail call i64 @ktime_get() #5
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call3
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 32) #5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr_base, align 4
  %call1879 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1879)
  %tobool.not80 = icmp eq i32 %call1879, 0
  br i1 %tobool.not80, label %lor.lhs.false.lr.ph, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false.lr.ph:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool22.not = icmp eq i32 %call2, 0
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then34.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end21

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

if.end21:                                         ; preds = %lor.lhs.false
  br i1 %tobool22.not, label %if.end21.if.then34_crit_edge, label %land.lhs.true

if.end21.if.then34_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

land.lhs.true:                                    ; preds = %if.end21
  %call23 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.then34_crit_edge

land.lhs.true.if.then34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then34

if.then34:                                        ; preds = %land.lhs.true.if.then34_crit_edge, %if.end21.if.then34_crit_edge
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_base, align 4
  %call18 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %data) #5
  %tobool.not = icmp eq i32 %call18, 0
  br i1 %tobool.not, label %if.then34.lor.lhs.false_crit_edge, label %if.then34.lor.end_crit_edge

if.then34.lor.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

if.then34.lor.lhs.false_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr_base, align 4
  %call31 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool37.not = icmp eq i32 %call31, 0
  br i1 %tobool37.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %and38 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.do.end48_crit_edge

lor.rhs.do.end48_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then34.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %tobool37.not72 = phi i32 [ %call31, %for.end.lor.end_crit_edge ], [ %call1879, %if.end.lor.end_crit_edge ], [ %call18, %if.then34.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool37.not72)
  %cmp43 = icmp slt i32 %tobool37.not72, 0
  br i1 %cmp43, label %lor.end.do.end48_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.end.do.end48_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end48

do.end48:                                         ; preds = %lor.end.do.end48_crit_edge, %lor.rhs.do.end48_crit_edge
  %tobool37.not7283 = phi i32 [ %tobool37.not72, %lor.end.do.end48_crit_edge ], [ -110, %lor.rhs.do.end48_crit_edge ]
  %25 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc, align 4
  %parent = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.7, i32 noundef %tobool37.not7283) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %lor.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %tobool37.not7283, %do.end48 ], [ %tobool37.not72, %lor.end.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %data.i = alloca [7 x i16], align 2
  %sec = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sec) #5
  %2 = ptrtoint ptr %sec to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sec, align 4, !annotation !49
  %lock.i = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 1
  %regmap.i = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 2
  %addr_base.i = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 4
  %3 = getelementptr inbounds [7 x i16], ptr %data.i, i32 0, i32 6
  %4 = getelementptr inbounds [7 x i16], ptr %data.i, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i16], ptr %data.i, i32 0, i32 3
  %6 = getelementptr inbounds [7 x i16], ptr %data.i, i32 0, i32 2
  %7 = getelementptr inbounds [7 x i16], ptr %data.i, i32 0, i32 1
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data.i) #5
  %8 = call ptr @memset(ptr %data.i, i32 255, i32 14)
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %11 = ptrtoint ptr %addr_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr_base.i, align 4
  %add.i = add i32 %12, 10
  %call.i = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %add.i, ptr noundef nonnull %data.i, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %__mtk_rtc_read_time.exit.thread, label %__mtk_rtc_read_time.exit

__mtk_rtc_read_time.exit.thread:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @mutex_unlock(ptr noundef %lock.i) #5
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data.i) #5
  br label %exit

__mtk_rtc_read_time.exit:                         ; preds = %do.body
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data.i, align 2
  %conv.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %tm, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %7, align 2
  %conv2.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv2.i, ptr %tm_min.i, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %conv4.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv4.i, ptr %tm_hour.i, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %5, align 2
  %conv6.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv6.i, ptr %tm_mday.i, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 2
  %27 = and i16 %26, 15
  %and.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %tm_mon.i, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 2
  %conv10.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv10.i, ptr %tm_year.i, align 4
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %34 = ptrtoint ptr %addr_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr_base.i, align 4
  %add13.i = add i32 %35, 10
  %call14.i = call i32 @regmap_read(ptr noundef %33, i32 noundef %add13.i, ptr noundef nonnull %sec) #5
  call void @mutex_unlock(ptr noundef %lock.i) #5
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp = icmp slt i32 %call14.i, 0
  br i1 %cmp, label %__mtk_rtc_read_time.exit.exit_crit_edge, label %do.cond

__mtk_rtc_read_time.exit.exit_crit_edge:          ; preds = %__mtk_rtc_read_time.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.cond:                                          ; preds = %__mtk_rtc_read_time.exit
  %36 = ptrtoint ptr %sec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sec, align 4
  %38 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm, align 4
  %cmp2 = icmp slt i32 %37, %39
  br i1 %cmp2, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_year.i, align 4
  %add = add i32 %41, 68
  store i32 %add, ptr %tm_year.i, align 4
  %42 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_mon.i, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %tm_mon.i, align 4
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #5
  %44 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %remainder.i, align 4, !annotation !49
  %call.i12 = call i64 @div_s64_rem(i64 noundef %call3, i32 noundef 86400, ptr noundef nonnull %remainder.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #5
  %conv = trunc i64 %call.i12 to i32
  %add5 = add i32 %conv, 4
  %rem = srem i32 %add5, 7
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %45 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %rem, ptr %tm_wday, align 4
  br label %exit

exit:                                             ; preds = %do.end, %__mtk_rtc_read_time.exit.exit_crit_edge, %__mtk_rtc_read_time.exit.thread
  %ret.0.i15 = phi i32 [ %call.i, %__mtk_rtc_read_time.exit.thread ], [ %call14.i, %do.end ], [ %call14.i, %__mtk_rtc_read_time.exit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sec) #5
  ret i32 %ret.0.i15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %data = alloca [7 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #5
  %2 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 6
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %7 = getelementptr inbounds i8, ptr %data, i32 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %7, align 2
  %9 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_year, align 4
  %sub = add i32 %10, -68
  store i32 %sub, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %11 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mon, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %tm_mon, align 4
  %13 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm, align 4
  %conv = trunc i32 %14 to i16
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %data, align 2
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min, align 4
  %conv1 = trunc i32 %17 to i16
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv1, ptr %2, align 2
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_hour, align 4
  %conv3 = trunc i32 %20 to i16
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv3, ptr %3, align 2
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday, align 4
  %conv5 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv5, ptr %4, align 2
  %conv8 = trunc i32 %inc to i16
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv8, ptr %5, align 2
  %conv11 = trunc i32 %sub to i16
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv11, ptr %6, align 2
  %lock = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %addr_base = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr_base, align 4
  %add = add i32 %30, 10
  %call13 = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call fastcc i32 @mtk_rtc_write_trigger(ptr noundef %1)
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call13, %entry.exit_crit_edge ], [ %call15, %if.end ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  %irqen = alloca i32, align 4
  %pdn2 = alloca i32, align 4
  %data = alloca [7 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqen) #5
  %2 = ptrtoint ptr %irqen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irqen, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdn2) #5
  %3 = ptrtoint ptr %pdn2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pdn2, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #5
  %4 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 5
  %8 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 6
  %lock = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 1
  %9 = call ptr @memset(ptr %data, i32 255, i32 14)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %addr_base = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr_base, align 4
  %add = add i32 %13, 4
  %call1 = call i32 @regmap_read(ptr noundef %11, i32 noundef %add, ptr noundef nonnull %irqen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.err_exit_crit_edge, label %if.end

entry.err_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr_base, align 4
  %add4 = add i32 %17, 46
  %call5 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add4, ptr noundef nonnull %pdn2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.err_exit_crit_edge, label %if.end8

if.end.err_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end8:                                          ; preds = %if.end
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr_base, align 4
  %add11 = add i32 %21, 24
  %call12 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %add11, ptr noundef nonnull %data, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end8.err_exit_crit_edge, label %if.end15

if.end8.err_exit_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_exit

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %irqen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irqen, align 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %alm, align 4
  %27 = ptrtoint ptr %pdn2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pdn2, align 4
  %29 = trunc i32 %28 to i8
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 1
  %32 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %pending, align 1
  call void @mutex_unlock(ptr noundef %lock) #5
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data, align 2
  %35 = and i16 %34, 63
  %and26 = zext i16 %35 to i32
  %36 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and26, ptr %time, align 4
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %4, align 2
  %39 = and i16 %38, 63
  %and29 = zext i16 %39 to i32
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and29, ptr %tm_min, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %5, align 2
  %43 = and i16 %42, 31
  %and32 = zext i16 %43 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and32, ptr %tm_hour, align 4
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %6, align 2
  %47 = and i16 %46, 31
  %and35 = zext i16 %47 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %48 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and35, ptr %tm_mday, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %7, align 2
  %51 = and i16 %50, 15
  %and38 = zext i16 %51 to i32
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %8, align 2
  %54 = and i16 %53, 127
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %narrow = add nuw nsw i16 %54, 68
  %add43 = zext i16 %narrow to i32
  %55 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add43, ptr %tm_year, align 4
  %dec = add nsw i32 %and38, -1
  %56 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %dec, ptr %tm_mon, align 4
  br label %cleanup

err_exit:                                         ; preds = %if.end8.err_exit_crit_edge, %if.end.err_exit_crit_edge, %entry.err_exit_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.err_exit_crit_edge ], [ %call5, %if.end.err_exit_crit_edge ], [ %call12, %if.end8.err_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end15
  %retval.0 = phi i32 [ %ret.0, %err_exit ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdn2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqen) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #2 align 64 {
entry:
  %data = alloca [7 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %data) #5
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %2 = call ptr @memset(ptr %data, i32 255, i32 14)
  %3 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tm_year, align 4
  %sub = add i32 %4, -68
  store i32 %sub, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_mon, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %tm_mon, align 4
  %lock = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %addr_base = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_base, align 4
  %add = add i32 %10, 24
  %call1 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %data, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 6
  %12 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 5
  %13 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 3
  %14 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 2
  %15 = getelementptr inbounds [7 x i16], ptr %data, i32 0, i32 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data, align 2
  %18 = and i16 %17, -64
  %19 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %time, align 4
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, 63
  %conv3 = or i16 %22, %18
  store i16 %conv3, ptr %data, align 2
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %15, align 2
  %25 = and i16 %24, -64
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_min, align 4
  %28 = trunc i32 %27 to i16
  %29 = and i16 %28, 63
  %conv10 = or i16 %29, %25
  store i16 %conv10, ptr %15, align 2
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %14, align 2
  %32 = and i16 %31, -32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tm_hour, align 4
  %35 = trunc i32 %34 to i16
  %36 = and i16 %35, 31
  %conv17 = or i16 %36, %32
  store i16 %conv17, ptr %14, align 2
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %13, align 2
  %39 = and i16 %38, -32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_mday, align 4
  %42 = trunc i32 %41 to i16
  %43 = and i16 %42, 31
  %conv24 = or i16 %43, %39
  store i16 %conv24, ptr %13, align 2
  %44 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %12, align 2
  %46 = and i16 %45, -16
  %47 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_mon, align 4
  %49 = trunc i32 %48 to i16
  %50 = and i16 %49, 15
  %conv32 = or i16 %50, %46
  store i16 %conv32, ptr %12, align 2
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %11, align 2
  %53 = and i16 %52, -128
  %54 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tm_year, align 4
  %56 = trunc i32 %55 to i16
  %57 = and i16 %56, 127
  %conv40 = or i16 %57, %53
  store i16 %conv40, ptr %11, align 2
  %58 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not = icmp eq i8 %59, 0
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %62 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr_base, align 4
  br i1 %tobool.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end
  %add45 = add i32 %63, 24
  %call47 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef %add45, ptr noundef nonnull %data, i32 noundef 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then42.exit_crit_edge, label %if.end51

if.then42.exit_crit_edge:                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end51:                                         ; preds = %if.then42
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %66 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr_base, align 4
  %add54 = add i32 %67, 8
  %call55 = call i32 @regmap_write(ptr noundef %65, i32 noundef %add54, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end51.exit_crit_edge, label %if.end59

if.end51.exit_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end59:                                         ; preds = %if.end51
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %70 = ptrtoint ptr %addr_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr_base, align 4
  %add62 = add i32 %71, 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef %add62, i32 noundef 5, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp64 = icmp slt i32 %call.i, 0
  br i1 %cmp64, label %if.end59.exit_crit_edge, label %if.end59.if.end76_crit_edge

if.end59.if.end76_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.end59.exit_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else:                                          ; preds = %if.end
  %add70 = add i32 %63, 4
  %call.i104 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %add70, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp72 = icmp slt i32 %call.i104, 0
  br i1 %cmp72, label %if.else.exit_crit_edge, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end76:                                         ; preds = %if.else.if.end76_crit_edge, %if.end59.if.end76_crit_edge
  %call77 = call fastcc i32 @mtk_rtc_write_trigger(ptr noundef %1)
  br label %exit

exit:                                             ; preds = %if.end76, %if.else.exit_crit_edge, %if.end59.exit_crit_edge, %if.end51.exit_crit_edge, %if.then42.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.exit_crit_edge ], [ %call47, %if.then42.exit_crit_edge ], [ %call55, %if.end51.exit_crit_edge ], [ %call.i, %if.end59.exit_crit_edge ], [ %call77, %if.end76 ], [ %call.i104, %if.else.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %data) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6397_rtc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6397_rtc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.mt6397_rtc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_rtc_mt6397__227_357_mtk_rtc_driver_init6, !1, !"__initcall__kmod_rtc_mt6397__227_357_mtk_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-mt6397.c", i32 357, i32 1}
!2 = !{ptr @__exitcall_mtk_rtc_driver_exit, !1, !"__exitcall_mtk_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-mt6397.c", i32 359, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-mt6397.c", i32 360, i32 1}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-mt6397.c", i32 361, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-mt6397.c", i32 350, i32 11}
!12 = !{ptr @mtk_rtc_driver, !13, !"mtk_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-mt6397.c", i32 348, i32 31}
!14 = !{ptr @mtk_rtc_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-mt6397.c", i32 281, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-mt6397.c", i32 295, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_rtc_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtk_rtc_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-mt6397.c", i32 34, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mtk_rtc_write_trigger._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_rtc_write_trigger._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mtk_rtc_ops, !31, !"mtk_rtc_ops", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-mt6397.c", i32 253, i32 35}
!32 = !{ptr @mt6397_rtc_of_match, !33, !"mt6397_rtc_of_match", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-mt6397.c", i32 340, i32 34}
!34 = !{ptr @mt6397_rtc_data, !35, !"mt6397_rtc_data", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-mt6397.c", i32 336, i32 34}
!36 = !{ptr @mt6358_rtc_data, !37, !"mt6358_rtc_data", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-mt6397.c", i32 332, i32 34}
!38 = !{ptr @mt6397_pm_ops, !39, !"mt6397_pm_ops", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-mt6397.c", i32 329, i32 8}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
