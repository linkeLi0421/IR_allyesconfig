; ModuleID = '/llk/IR_all_yes/drivers/memstick/host/rtsx_usb_ms.c_pt.bc'
source_filename = "../drivers/memstick/host/rtsx_usb_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.memstick_host = type { %struct.mutex, i32, i32, %struct.work_struct, %struct.device, ptr, i32, i8, ptr, ptr, [60 x i8], [0 x i32] }
%struct.rtsx_usb_ms = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, %struct.delayed_work, i8, i32, i32, i8, i8, i8 }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.71 }
%union.anon.71 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rtsx_ucr = type { i16, i16, i32, i8, i8, i32, ptr, i32, ptr, ptr, ptr, %struct.usb_sg_request, ptr, i32, %struct.timer_list, %struct.mutex }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.anon.72 = type { i8, [15 x i8] }
%struct.memstick_device_id = type { i8, i8, i8, i8 }

@__initcall__kmod_rtsx_usb_ms__275_865_rtsx_usb_ms_driver_init6 = internal global ptr @rtsx_usb_ms_driver_init, section ".initcall6.init", align 4
@rtsx_usb_ms_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtsx_usb_ms_drv_probe, ptr @rtsx_usb_ms_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtsx_usb_ms_pm_ops, ptr null, ptr null }, ptr @rtsx_usb_ms_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtsx_usb_ms_driver_exit = internal global ptr @rtsx_usb_ms_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file276 = internal constant [51 x i8] c"rtsx_usb_ms.file=drivers/memstick/host/rtsx_usb_ms\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [27 x i8] c"rtsx_usb_ms.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [55 x i8] c"rtsx_usb_ms.author=Roger Tseng <rogerable@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [62 x i8] c"rtsx_usb_ms.description=Realtek USB Memstick Card Host Driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtsx_usb_ms\00", [20 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtsx_usb_ms_suspend, ptr @rtsx_usb_ms_resume, ptr @rtsx_usb_ms_suspend, ptr @rtsx_usb_ms_resume, ptr @rtsx_usb_ms_suspend, ptr @rtsx_usb_ms_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtsx_usb_ms_runtime_suspend, ptr @rtsx_usb_ms_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_ids = internal global { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"rtsx_usb_ms\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_probe.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -64, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_usb_ms_drv_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/memstick/host/rtsx_usb_ms.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Realtek USB Memstick controller found\0A\00", [57 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&host->host_mutex\00", [46 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&host->handle_req)\00", [59 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&host->poll_card)->work)\00", [51 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&host->poll_card)->timer\00", [37 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtsx_usb_ms_handle_req\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"next req %d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -123, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"req result %d\0A\00", [17 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_usb_ms_issue_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"int_reg: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@ms_transfer_data.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ms_transfer_data\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: tpc = 0x%02x, data_dir = %s, length = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@ms_read_bytes.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 97, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ms_read_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: tpc = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@ms_read_bytes.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MS_TRANS_CFG: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@ms_print_debug_regs.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ms_print_debug_regs\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%04X: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@ms_print_debug_regs.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_print_debug_regs.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_print_debug_regs.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_print_debug_regs.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 24, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_print_debug_regs.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_print_debug_regs.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_write_bytes.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.22, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ms_write_bytes\00", [17 x i8] zeroinitializer }, align 32
@ms_write_bytes.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.23, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_usb_ms_poll_card.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_usb_ms_poll_card\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MS slot change detected\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rtsx_usb_ms_request.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -120, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtsx_usb_ms_request\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"--> %s\0A\00", [24 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_usb_ms_set_param\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: param = %d, value = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.33, i8 0, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch clock failed\0A\00", [43 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 0, i8 -97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: return = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ms_power_on.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.15, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ms_power_on\00", [20 x i8] zeroinitializer }, align 32
@ms_power_off.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.15, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms_power_off\00", [19 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtsx_usb_ms_drv_remove\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Controller removed during transfer\0A\00", [56 x i8] zeroinitializer }, align 32
@rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 -46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c": Realtek USB Memstick controller has been removed\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"rtsx_usb_ms_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 856, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 861, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"rtsx_usb_ms_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 710, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"rtsx_usb_ms_ids\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 847, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 767, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 781, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 782, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 784, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 518, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 532, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 462, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 500, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 241, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 390, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 423, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 92, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 322, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 745, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 545, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 560, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 615, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 639, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 173, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 213, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 819, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [39 x i8] c"../drivers/memstick/host/rtsx_usb_ms.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 839, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_rtsx_usb_ms_driver_exit, ptr @__initcall__kmod_rtsx_usb_ms__275_865_rtsx_usb_ms_driver_init6, ptr @rtsx_usb_ms_driver_exit, ptr @rtsx_usb_ms_driver, ptr @.str, ptr @rtsx_usb_ms_pm_ops, ptr @rtsx_usb_ms_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtsx_usb_ms_drv_probe.__key, ptr @.str.4, ptr @rtsx_usb_ms_drv_probe.__key.5, ptr @.str.6, ptr @rtsx_usb_ms_drv_probe.__key.7, ptr @.str.8, ptr @rtsx_usb_ms_drv_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_drv_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_drv_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_ms_drv_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtsx_usb_ms_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_ms_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtsx_usb_ms_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_drv_probe.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_drv_probe, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !122

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_drv_probe.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call11 = tail call ptr @memstick_alloc_host(i32 noundef 268, ptr noundef %dev) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 0, i32 11
  %ucr16 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %ucr16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ucr16, align 4
  %msh17 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %msh17 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %msh17, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %private.i, align 4
  %power_mode = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 6
  %7 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %power_mode, align 4
  %driver_data.i.i104 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i104 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %private.i, ptr %driver_data.i.i104, align 4
  %host_mutex = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 0, i32 1, i32 3
  tail call void @__mutex_init(ptr noundef %host_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtsx_usb_ms_drv_probe.__key) #7
  %handle_req = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 3, i32 1, i32 1
  tail call void @__init_work(ptr noundef %handle_req, i32 noundef 0) #7
  %9 = ptrtoint ptr %handle_req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %handle_req, align 4
  %lockdep_map = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 3, i32 3, i32 1, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtsx_usb_ms_drv_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry26 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 3, i32 2
  %10 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 3, i32 3
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry26, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 3, i32 3, i32 1
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rtsx_usb_ms_handle_req, ptr %func, align 4
  %poll_card = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 1, i32 1
  tail call void @__init_work(ptr noundef %poll_card, i32 noundef 0) #7
  %13 = ptrtoint ptr %poll_card to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %poll_card, align 4
  %lockdep_map39 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 5
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map39, ptr noundef nonnull @.str.8, ptr noundef nonnull @rtsx_usb_ms_drv_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry42 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 2
  %14 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i105 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 3
  %15 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry42, ptr %prev.i105, align 4
  %func45 = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 4
  %16 = ptrtoint ptr %func45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rtsx_usb_ms_poll_card, ptr %func45, align 4
  %timer = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 1, i32 4, i32 0, i32 7, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @rtsx_usb_ms_drv_probe.__key.9) #7
  %request = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 0, i32 8
  %17 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtsx_usb_ms_request, ptr %request, align 4
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 0, i32 9
  %18 = ptrtoint ptr %set_param to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtsx_usb_ms_set_param, ptr %set_param, align 64
  %caps = getelementptr inbounds %struct.memstick_host, ptr %call11, i32 0, i32 2
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %caps, align 32
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !123
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private.i, align 4
  %dev.i106 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev.i106, i32 noundef 0) #7
  %25 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private.i, align 4
  %dev.i107 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev.i107) #7
  %call58 = tail call i32 @memstick_add_host(ptr noundef nonnull %call11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  %27 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private.i, align 4
  %dev.i108 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  br i1 %tobool59.not, label %if.end61, label %err_out

if.end61:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call.i109 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i108, i32 noundef 5) #7
  br label %cleanup

err_out:                                          ; preds = %if.end14
  tail call void @__pm_runtime_disable(ptr noundef %dev.i108, i1 noundef zeroext true) #7
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %usage_count.i112 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i112, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %usage_count.i112, i32 1, i32 3, i32 1) #7
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i112, ptr %usage_count.i112, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i112) #7, !srcloc !125
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_out.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err_out.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err_out.pm_runtime_put_noidle.exit_crit_edge
  tail call void @memstick_free_host(ptr noundef nonnull %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end61, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %pm_runtime_put_noidle.exit ], [ 0, %if.end61 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_drv_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msh1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh1, align 4
  %eject = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %eject to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %eject, align 1
  %handle_req = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 5
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %handle_req) #7
  %host_mutex = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #7
  %req = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %do.body

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_drv_remove, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !122

if.then8:                                         ; preds = %do.body
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.memstick_host, ptr %3, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.dev_name.exit_crit_edge

if.then8.dev_name.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.memstick_host, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then8.dev_name.exit_crit_edge
  %retval.0.i74 = phi ptr [ %12, %if.end.i ], [ %10, %if.then8.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug273, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i74) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -123, ptr %error, align 4
  %call1482 = tail call i32 @memstick_next_req(ptr noundef %3, ptr noundef %req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1482)
  %tobool15.not83 = icmp eq i32 %call1482, 0
  br i1 %tobool15.not83, label %do.end.if.then16_crit_edge, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end.if.then16_crit_edge:                       ; preds = %do.end
  br label %if.then16

if.then16:                                        ; preds = %if.then16.if.then16_crit_edge, %do.end.if.then16_crit_edge
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %error18 = getelementptr inbounds %struct.memstick_request, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %error18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -123, ptr %error18, align 4
  %call14 = tail call i32 @memstick_next_req(ptr noundef %3, ptr noundef %req) #7
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16.if.then16_crit_edge, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then16.if.then16_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.end25:                                         ; preds = %if.then16.if.end25_crit_edge, %do.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %host_mutex) #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev.i75 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3, i32 12, i32 18
  %21 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end25.if.then29_crit_edge, label %pm_runtime_active.exit

if.end25.if.then29_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

pm_runtime_active.exit:                           ; preds = %if.end25
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3, i32 12, i32 15
  %23 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.then29_crit_edge, label %pm_runtime_active.exit.if.end32_crit_edge

pm_runtime_active.exit.if.end32_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

pm_runtime_active.exit.if.then29_crit_edge:       ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then29:                                        ; preds = %pm_runtime_active.exit.if.then29_crit_edge, %if.end25.if.then29_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i75, i32 noundef 5) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %pm_runtime_active.exit.if.end32_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev.i77 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev.i77, i1 noundef zeroext true) #7
  tail call void @memstick_remove_host(ptr noundef %3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_drv_remove, %do.end52)) #7
          to label %if.then48 [label %do.end52], !srcloc !122

if.then48:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev.i78 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug274, ptr noundef %dev.i78, ptr noundef nonnull @.str.39) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %if.end32
  tail call void @memstick_free_host(ptr noundef %3) #7
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memstick_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_ms_handle_req(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %ucr1 = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %msh2 = getelementptr i8, ptr %work, i32 -100
  %2 = ptrtoint ptr %msh2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh2, align 4
  %req = getelementptr i8, ptr %work, i32 -96
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end55_crit_edge

entry.if.end55_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  br label %do.body

do.body:                                          ; preds = %if.then40, %if.end24, %if.then
  %call5 = tail call i32 @memstick_next_req(ptr noundef %3, ptr noundef %req) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_handle_req, %do.end)) #7
          to label %if.then13 [label %do.end], !srcloc !122

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %dev.i75 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug265, ptr noundef %dev.i75, ptr noundef nonnull @.str.12, i32 noundef %call5) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool15.not = icmp eq i32 %call5, 0
  br i1 %tobool15.not, label %if.then16, label %do.end52.critedge

if.then16:                                        ; preds = %do.end
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %call17 = tail call i32 @rtsx_usb_card_exclusive_check(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call fastcc i32 @rtsx_usb_ms_issue_cmd(ptr noundef %add.ptr)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16.if.end24_crit_edge
  %call21.sink = phi i32 [ %call21, %if.else ], [ -5, %if.then16.if.end24_crit_edge ]
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %error23 = getelementptr inbounds %struct.memstick_request, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %error23 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call21.sink, ptr %error23, align 4
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_handle_req, %do.body)) #7
          to label %if.then40 [label %do.body], !srcloc !122

if.then40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %dev.i76 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  %error43 = getelementptr inbounds %struct.memstick_request, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %error43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug266, ptr noundef %dev.i76, ptr noundef nonnull @.str.13, i32 noundef %18) #7
  br label %do.body

do.end52.critedge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  %dev.i77 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %call.i78 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i77, i32 noundef 4) #7
  br label %if.end55

if.end55:                                         ; preds = %do.end52.critedge, %entry.if.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_ms_poll_card(ptr noundef %work) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  %ucr1 = getelementptr i8, ptr %work, i32 -148
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !127
  %eject = getelementptr i8, ptr %work, i32 113
  %3 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eject, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %power_mode = getelementptr i8, ptr %work, i32 108
  %5 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #7
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %call3 = call i32 @rtsx_usb_read_register(ptr noundef %1, i16 noundef zeroext -655, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %dev_mutex) #7
  br label %poll_again

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -655, i8 noundef zeroext 28, i8 noundef zeroext 28) #7
  call void @mutex_unlock(ptr noundef %dev_mutex) #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.end7.poll_again_crit_edge, label %do.body

if.end7.poll_again_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_again

do.body:                                          ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_poll_card.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_poll_card, %do.end)) #7
          to label %if.then18 [label %do.end], !srcloc !122

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev.i48 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_poll_card.__UNIQUE_ID_ddebug271, ptr noundef %dev.i48, ptr noundef nonnull @.str.28) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %msh = getelementptr i8, ptr %work, i32 -144
  %14 = ptrtoint ptr %msh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msh, align 4
  call void @memstick_detect_change(ptr noundef %15) #7
  br label %poll_again

poll_again:                                       ; preds = %do.end, %if.end7.poll_again_crit_edge, %if.then5
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %dev.i49 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %call.i50 = call i32 @__pm_runtime_idle(ptr noundef %dev.i49, i32 noundef 4) #7
  %18 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %eject, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool25.not = icmp eq i8 %19, 0
  br i1 %tobool25.not, label %land.lhs.true, label %poll_again.cleanup_crit_edge

poll_again.cleanup_crit_edge:                     ; preds = %poll_again
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %poll_again
  %20 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp27 = icmp eq i32 %21, 1
  br i1 %cmp27, label %if.then29, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true.cleanup_crit_edge, %poll_again.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_ms_request(ptr noundef %msh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_request.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_request, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_request.__UNIQUE_ID_ddebug267, ptr noundef %dev.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %eject = getelementptr inbounds %struct.rtsx_usb_ms, ptr %private.i, i32 0, i32 11
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eject, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.then7, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %handle_req = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %handle_req) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_set_param(ptr noundef %msh, i32 noundef %param, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %ucr1 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_set_param, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug268, ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %param, i32 noundef %value) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dev.i159 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i159, i32 noundef 4) #7
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %call9 = tail call i32 @rtsx_usb_card_exclusive_check(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end12:                                         ; preds = %do.end
  %6 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %if.end12.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
  ]

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %if.end12
  %power_mode = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 6
  %7 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %value)
  %cmp = icmp eq i32 %8, %value
  br i1 %cmp, label %sw.bb.out_crit_edge, label %if.end14

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %sw.bb
  %9 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %value, label %if.end14.out_crit_edge [
    i32 1, label %if.then16
    i32 0, label %if.then24
  ]

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then16:                                        ; preds = %if.end14
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !123
  %call18 = tail call fastcc i32 @ms_power_on(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.then34_crit_edge, label %if.then20

if.then16.if.then34_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  %dev.i161 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev.i161)
  br label %out

if.then24:                                        ; preds = %if.end14
  %call25 = tail call fastcc i32 @ms_power_off(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.then24.out_crit_edge

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private.i, align 4
  %dev.i162 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev.i162)
  br label %if.then34

if.then34:                                        ; preds = %if.then27, %if.then16.if.then34_crit_edge
  %17 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %value, ptr %power_mode, align 4
  br label %out

sw.bb37:                                          ; preds = %if.end12
  %18 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %value, label %sw.bb37.out_crit_edge [
    i32 0, label %if.then39
    i32 1, label %if.then46
  ]

sw.bb37.out_crit_edge:                            ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then39:                                        ; preds = %sw.bb37
  %call40 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -704, i8 noundef zeroext 90, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then39.out_crit_edge, label %if.then39.if.end53_crit_edge

if.then39.if.end53_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then46:                                        ; preds = %sw.bb37
  %call47 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -704, i8 noundef zeroext 90, i8 noundef zeroext 82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then46.out_crit_edge, label %if.then46.if.end53_crit_edge

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end53:                                         ; preds = %if.then46.if.end53_crit_edge, %if.then39.if.end53_crit_edge
  %ssc_depth.0 = phi i8 [ 3, %if.then39.if.end53_crit_edge ], [ 2, %if.then46.if.end53_crit_edge ]
  %clock.0 = phi i32 [ 19000000, %if.then39.if.end53_crit_edge ], [ 39000000, %if.then46.if.end53_crit_edge ]
  %call54 = tail call i32 @rtsx_usb_switch_clock(ptr noundef %1, i32 noundef %clock.0, i8 noundef zeroext %ssc_depth.0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.body57, label %if.end76

do.body57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_set_param, %out)) #7
          to label %if.then71 [label %out], !srcloc !122

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i, align 4
  %dev.i163 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug269, ptr noundef %dev.i163, ptr noundef nonnull @.str.33) #7
  br label %out

if.end76:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %ssc_depth77 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 2
  %21 = ptrtoint ptr %ssc_depth77 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %ssc_depth.0, ptr %ssc_depth77, align 4
  %clock78 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 3
  %22 = ptrtoint ptr %clock78 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %clock.0, ptr %clock78, align 4
  %conv = trunc i32 %value to i8
  %ifmode = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 7, i32 1, i32 4, i32 7
  %23 = ptrtoint ptr %ifmode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %ifmode, align 4
  br label %out

out:                                              ; preds = %if.end76, %if.then71, %do.body57, %if.then46.out_crit_edge, %if.then39.out_crit_edge, %sw.bb37.out_crit_edge, %if.then34, %if.then24.out_crit_edge, %if.then20, %if.end14.out_crit_edge, %sw.bb.out_crit_edge, %if.end12.out_crit_edge, %do.end.out_crit_edge
  %err.1 = phi i32 [ %call9, %do.end.out_crit_edge ], [ %call40, %if.then39.out_crit_edge ], [ %call54, %if.then71 ], [ %call54, %if.end76 ], [ %call47, %if.then46.out_crit_edge ], [ 0, %sw.bb.out_crit_edge ], [ 0, %if.then34 ], [ -22, %sw.bb37.out_crit_edge ], [ -22, %if.end12.out_crit_edge ], [ -22, %if.end14.out_crit_edge ], [ %call25, %if.then24.out_crit_edge ], [ %call18, %if.then20 ], [ %call54, %do.body57 ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  %dev.i164 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %call.i165 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i164, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %param)
  %cmp82 = icmp eq i32 %param, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp84 = icmp eq i32 %value, 1
  %or.cond = and i1 %cmp82, %cmp84
  br i1 %or.cond, label %if.then86, label %out.do.body92_crit_edge

out.do.body92_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

if.then86:                                        ; preds = %out
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #7
  %eject = getelementptr inbounds %struct.rtsx_usb_ms, ptr %private.i, i32 0, i32 11
  %26 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %eject, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool87.not = icmp eq i8 %27, 0
  br i1 %tobool87.not, label %if.then88, label %if.then86.do.body92_crit_edge

if.then86.do.body92_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body92

if.then88:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %poll_card = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %poll_card, i32 noundef 100) #7
  br label %do.body92

do.body92:                                        ; preds = %if.then88, %if.then86.do.body92_crit_edge, %out.do.body92_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_set_param, %do.end110)) #7
          to label %if.then106 [label %do.end110], !srcloc !122

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %dev.i166 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug270, ptr noundef %dev.i166, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31, i32 noundef %err.1) #7
  br label %do.end110

do.end110:                                        ; preds = %if.then106, %do.body92
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !125
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !126
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_next_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_card_exclusive_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_usb_ms_issue_cmd(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %int_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %int_reg) #7
  %2 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %int_reg, align 1, !annotation !127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_issue_cmd, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug263, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %need_card_int = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %need_card_int, align 1
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %do.end.if.end11_crit_edge, label %if.then7

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %ifmode = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 10
  %7 = ptrtoint ptr %ifmode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ifmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  %spec.select = select i1 %cmp.not, i8 0, i8 -128
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.end.if.end11_crit_edge
  %cfg.0 = phi i8 [ 0, %do.end.if.end11_crit_edge ], [ %spec.select, %if.then7 ]
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr18 = lshr i8 %bf.load, 7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  %12 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %call19 = tail call fastcc i32 @ms_transfer_data(ptr noundef %host, i8 noundef zeroext %bf.lshr18, i8 noundef zeroext %11, i8 noundef zeroext %cfg.0, ptr noundef %12)
  br label %if.end36

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %cmp24 = icmp sgt i8 %bf.load, -1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 4
  %15 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %data = getelementptr inbounds %struct.anon.72, ptr %15, i32 0, i32 1
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call fastcc i32 @ms_read_bytes(ptr noundef %host, i8 noundef zeroext %14, i8 noundef zeroext %cfg.0, i8 noundef zeroext %17, ptr noundef %data, ptr noundef nonnull %int_reg)
  br label %if.end36

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call fastcc i32 @ms_write_bytes(ptr noundef %host, i8 noundef zeroext %14, i8 noundef zeroext %cfg.0, i8 noundef zeroext %17, ptr noundef %data, ptr noundef nonnull %int_reg)
  br label %if.end36

if.end36:                                         ; preds = %if.else29, %if.then26, %if.then16
  %err.0 = phi i32 [ %call19, %if.then16 ], [ %call28, %if.then26 ], [ %call34, %if.else29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp37 = icmp slt i32 %err.0, 0
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %18 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load42 = load i8, ptr %need_card_int, align 1
  %19 = and i8 %bf.load42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool45.not = icmp eq i8 %19, 0
  br i1 %tobool45.not, label %if.end40.cleanup_crit_edge, label %if.then46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.end40
  %ifmode47 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 10
  %20 = ptrtoint ptr %ifmode47 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ifmode47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp49 = icmp eq i8 %21, 0
  br i1 %cmp49, label %if.then51, label %if.else58

if.then51:                                        ; preds = %if.then46
  %int_reg52 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %call53 = call fastcc i32 @ms_read_bytes(ptr noundef %host, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef %int_reg52, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then51.cleanup_crit_edge, label %if.then51.do.body94_crit_edge

if.then51.do.body94_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body94

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else58:                                        ; preds = %if.then46
  %22 = ptrtoint ptr %int_reg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %int_reg, align 1
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool60.not = icmp eq i8 %24, 0
  br i1 %tobool60.not, label %if.else58.if.end65_crit_edge, label %if.then61

if.else58.if.end65_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then61:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #9
  %int_reg62 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %int_reg62 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %int_reg62, align 2
  %27 = or i8 %26, 1
  store i8 %27, ptr %int_reg62, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.else58.if.end65_crit_edge
  %28 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool68.not = icmp eq i8 %28, 0
  br i1 %tobool68.not, label %if.end65.if.end74_crit_edge, label %if.then69

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %int_reg70 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %int_reg70 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %int_reg70, align 2
  %31 = or i8 %30, 32
  store i8 %31, ptr %int_reg70, align 2
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end65.if.end74_crit_edge
  %32 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool77.not = icmp eq i8 %32, 0
  br i1 %tobool77.not, label %if.end74.if.end83_crit_edge, label %if.then78

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %int_reg79 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %int_reg79 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %int_reg79, align 2
  %35 = or i8 %34, 64
  store i8 %35, ptr %int_reg79, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end74.if.end83_crit_edge
  %36 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool86.not = icmp eq i8 %36, 0
  br i1 %tobool86.not, label %if.end83.do.body94_crit_edge, label %if.then87

if.end83.do.body94_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body94

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %int_reg88 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %int_reg88 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %int_reg88, align 2
  %39 = or i8 %38, -128
  store i8 %39, ptr %int_reg88, align 2
  br label %do.body94

do.body94:                                        ; preds = %if.then87, %if.end83.do.body94_crit_edge, %if.then51.do.body94_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_usb_ms_issue_cmd, %cleanup)) #7
          to label %if.then108 [label %cleanup], !srcloc !122

if.then108:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  %dev.i153 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %int_reg110 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %int_reg110 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %int_reg110, align 2
  %conv111 = zext i8 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug264, ptr noundef %dev.i153, ptr noundef nonnull @.str.16, i32 noundef %conv111) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then108, %do.body94, %if.then51.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end36.cleanup_crit_edge ], [ %call53, %if.then51.cleanup_crit_edge ], [ 0, %if.then108 ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %do.body94 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %int_reg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_transfer_data(ptr nocapture noundef readonly %host, i8 noundef zeroext %data_dir, i8 noundef zeroext %tpc, i8 noundef zeroext %cfg, ptr noundef %sg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %length2 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length2, align 4
  %div129 = lshr i32 %3, 9
  %msh = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %msh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msh, align 4
  %card3 = getelementptr inbounds %struct.memstick_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card3, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_transfer_data.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_transfer_data, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %conv8 = zext i8 %tpc to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_dir)
  %cmp = icmp eq i8 %data_dir, 0
  %cond = select i1 %cmp, ptr @.str.19, ptr @.str.20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_transfer_data.__UNIQUE_ID_ddebug258, ptr noundef %dev.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %conv8, ptr noundef nonnull %cond, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_dir)
  %cmp12 = icmp eq i8 %data_dir, 0
  %type = getelementptr inbounds %struct.memstick_device_id, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp16.not = icmp eq i8 %11, 1
  br i1 %cmp12, label %if.then14, label %if.else22

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %cmp16.not, i8 8, i8 1
  br label %if.end34

if.else22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %.130 = select i1 %cmp16.not, i8 12, i8 5
  br label %if.end34

if.end34:                                         ; preds = %if.else22, %if.then14
  %.sink = phi i32 [ -1073709056, %if.else22 ], [ -1073676160, %if.then14 ]
  %trans_mode.2 = phi i8 [ %.130, %if.else22 ], [ %., %if.then14 ]
  %dma_dir.0 = phi i8 [ 9, %if.else22 ], [ 11, %if.then14 ]
  %flag.0 = phi i8 [ 13, %if.else22 ], [ 11, %if.then14 ]
  %pusb_dev31 = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %pusb_dev31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pusb_dev31, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i131 = shl i32 %15, 8
  %or33 = or i32 %shl.i131, %.sink
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_buf.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 82, ptr %17, align 1
  %19 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 84, ptr %arrayidx2.i, align 1
  %21 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %21, i32 2
  %22 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 67, ptr %arrayidx4.i, align 1
  %23 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %23, i32 3
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cmd_idx.i, align 4
  %26 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx8.i, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #7
  %type36 = getelementptr inbounds %struct.memstick_device_id, ptr %7, i32 0, i32 1
  %28 = ptrtoint ptr %type36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp38 = icmp eq i8 %29, 1
  br i1 %cmp38, label %if.then40, label %if.end34.if.end44_crit_edge

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = lshr i32 %3, 17
  %conv42 = trunc i32 %conv41 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -697, i8 noundef zeroext -1, i8 noundef zeroext %conv42) #7
  %conv43 = trunc i32 %div129 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -698, i8 noundef zeroext -1, i8 noundef zeroext %conv43) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end34.if.end44_crit_edge
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #7
  %shr45 = lshr i32 %3, 24
  %conv46 = trunc i32 %shr45 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -236, i8 noundef zeroext -1, i8 noundef zeroext %conv46) #7
  %shr47 = lshr i32 %3, 16
  %conv48 = trunc i32 %shr47 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -237, i8 noundef zeroext -1, i8 noundef zeroext %conv48) #7
  %shr49 = lshr i32 %3, 8
  %conv50 = trunc i32 %shr49 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -238, i8 noundef zeroext -1, i8 noundef zeroext %conv50) #7
  %conv51 = trunc i32 %3 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -239, i8 noundef zeroext -1, i8 noundef zeroext %conv51) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -240, i8 noundef zeroext 15, i8 noundef zeroext %dma_dir.0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %or57 = or i8 %trans_mode.2, -128
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext %or57) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call62 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext %flag.0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %if.end44
  %call66 = tail call i32 @rtsx_usb_transfer_data(ptr noundef %1, i32 noundef %or33, ptr noundef %sg, i32 noundef %3, i32 noundef 1, ptr noundef null, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.err_out_crit_edge

if.end65.err_out_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end69:                                         ; preds = %if.end65
  %call70 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef 3, i32 noundef 15000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.err_out_crit_edge

if.end69.err_out_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end73:                                         ; preds = %if.end69
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %30 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rsp_buf, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %34 = and i8 %33, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool75.not = icmp eq i8 %34, 0
  br i1 %tobool75.not, label %lor.lhs.false, label %if.end73.err_out_crit_edge

if.end73.err_out_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

lor.lhs.false:                                    ; preds = %if.end73
  %arrayidx77 = getelementptr i8, ptr %31, i32 1
  %35 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx77, align 1
  %37 = and i8 %36, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool80.not = icmp eq i8 %37, 0
  br i1 %tobool80.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.err_out_crit_edge

lor.lhs.false.err_out_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_out:                                          ; preds = %lor.lhs.false.err_out_crit_edge, %if.end73.err_out_crit_edge, %if.end69.err_out_crit_edge, %if.end65.err_out_crit_edge
  %err.0 = phi i32 [ %call66, %if.end65.err_out_crit_edge ], [ %call70, %if.end69.err_out_crit_edge ], [ -5, %lor.lhs.false.err_out_crit_edge ], [ -5, %if.end73.err_out_crit_edge ]
  %38 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ucr1, align 4
  %call.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %39, i16 noundef zeroext -685, i8 noundef zeroext -120, i8 noundef zeroext -120) #7
  %call.i.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %39, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call1.i.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %39, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call.i4.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %39, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #7
  br label %cleanup

cleanup:                                          ; preds = %err_out, %lor.lhs.false.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_out ], [ %call62, %if.end44.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_bytes(ptr nocapture noundef readonly %host, i8 noundef zeroext %tpc, i8 noundef zeroext %cfg, i8 noundef zeroext %cnt, ptr nocapture noundef writeonly %data, ptr noundef writeonly %int_reg) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_bytes.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_read_bytes, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %conv = zext i8 %tpc to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_bytes.__UNIQUE_ID_ddebug261, ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 82, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 84, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 67, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_idx.i, align 4
  %14 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx8.i, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -128) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %conv6 = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cnt)
  %cmp154 = icmp ugt i8 %cnt, 1
  br i1 %cmp154, label %for.body.preheader, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %16 = add nsw i32 %conv6, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0155 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %17 = trunc i32 %i.0155 to i16
  %conv8 = add i16 %17, -1536
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv8, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %inc = add nuw nsw i32 %i.0155, 1
  %exitcond.not = icmp eq i32 %i.0155, %16
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %rem = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  %18 = zext i8 %cnt to i16
  %conv18 = add nuw nsw i16 %18, -1537
  %conv14 = or i16 %18, -1536
  %conv18.sink = select i1 %tobool10.not, i16 %conv18, i16 %conv14
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv18.sink, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call20 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.cleanup104_crit_edge

for.end.cleanup104_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup104

if.end23:                                         ; preds = %for.end
  %add25 = add nuw nsw i32 %conv6, 2
  %call26 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef %add25, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end23.if.then30_crit_edge

if.end23.if.then30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end23
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rsp_buf, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool29.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %for.cond84.preheader, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

for.cond84.preheader:                             ; preds = %lor.lhs.false
  %ptr.0156 = getelementptr i8, ptr %20, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt)
  %cmp86157.not = icmp eq i8 %cnt, 0
  br i1 %cmp86157.not, label %for.cond84.preheader.for.end92_crit_edge, label %for.cond84.preheader.for.body88_crit_edge

for.cond84.preheader.for.body88_crit_edge:        ; preds = %for.cond84.preheader
  br label %for.body88

for.cond84.preheader.for.end92_crit_edge:         ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end23.if.then30_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %val, align 1, !annotation !127
  %call31 = call i32 @rtsx_usb_ep0_read_register(ptr noundef %1, i16 noundef zeroext -702, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_bytes.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_read_bytes, %do.end51)) #7
          to label %if.then46 [label %do.end51], !srcloc !122

if.then46:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %dev.i151 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %conv48 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_bytes.__UNIQUE_ID_ddebug262, ptr noundef %dev.i151, ptr noundef nonnull @.str.23, i32 noundef %conv48) #7
  br label %do.end51

do.end51:                                         ; preds = %if.then46, %if.then30
  %tobool52.not = icmp eq ptr %int_reg, null
  br i1 %tobool52.not, label %do.end51.if.end60_crit_edge, label %land.lhs.true

do.end51.if.end60_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

land.lhs.true:                                    ; preds = %do.end51
  %ifmode = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 10
  %29 = ptrtoint ptr %ifmode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ifmode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp54.not = icmp eq i8 %30, 0
  br i1 %cmp54.not, label %land.lhs.true.if.end60_crit_edge, label %if.then56

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %val, align 1
  %33 = and i8 %32, 15
  %34 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %int_reg, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %land.lhs.true.if.end60_crit_edge, %do.end51.if.end60_crit_edge
  call fastcc void @ms_print_debug_regs(ptr noundef %host)
  %35 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ucr1, align 4
  %call.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %36, i16 noundef zeroext -685, i8 noundef zeroext -120, i8 noundef zeroext -120) #7
  %call.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %36, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call1.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %36, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call.i4.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %36, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #7
  %37 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool63.not = icmp eq i8 %37, 0
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val, align 1
  br i1 %tobool63.not, label %if.then64, label %if.else70

if.then64:                                        ; preds = %if.end60
  %40 = and i8 %39, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool67.not = icmp eq i8 %40, 0
  br i1 %tobool67.not, label %if.then64.if.end81_crit_edge, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64.if.end81_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.else70:                                        ; preds = %if.end60
  %conv71 = zext i8 %39 to i32
  %and72 = and i32 %conv71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp ne i32 %and72, 0
  %and76 = and i32 %conv71, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond = or i1 %tobool73.not, %tobool77.not
  br i1 %or.cond, label %if.else70.if.end81_crit_edge, label %if.else70.cleanup_crit_edge

if.else70.cleanup_crit_edge:                      ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else70.if.end81_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.end81:                                         ; preds = %if.else70.if.end81_crit_edge, %if.then64.if.end81_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.else70.cleanup_crit_edge, %if.then64.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end81 ], [ -5, %if.then64.cleanup_crit_edge ], [ -5, %if.else70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  br label %cleanup104

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %for.cond84.preheader.for.body88_crit_edge
  %ptr.0159 = phi ptr [ %ptr.0, %for.body88.for.body88_crit_edge ], [ %ptr.0156, %for.cond84.preheader.for.body88_crit_edge ]
  %i.1158 = phi i32 [ %inc91, %for.body88.for.body88_crit_edge ], [ 0, %for.cond84.preheader.for.body88_crit_edge ]
  %41 = ptrtoint ptr %ptr.0159 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ptr.0159, align 1
  %arrayidx89 = getelementptr i8, ptr %data, i32 %i.1158
  %43 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx89, align 1
  %inc91 = add nuw nsw i32 %i.1158, 1
  %ptr.0 = getelementptr i8, ptr %ptr.0159, i32 1
  %exitcond162.not = icmp eq i32 %inc91, %conv6
  br i1 %exitcond162.not, label %for.body88.for.end92_crit_edge, label %for.body88.for.body88_crit_edge

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body88

for.body88.for.end92_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end92

for.end92:                                        ; preds = %for.body88.for.end92_crit_edge, %for.cond84.preheader.for.end92_crit_edge
  %ptr.0.lcssa = phi ptr [ %ptr.0156, %for.cond84.preheader.for.end92_crit_edge ], [ %ptr.0, %for.body88.for.end92_crit_edge ]
  %tobool93.not = icmp eq ptr %int_reg, null
  br i1 %tobool93.not, label %for.end92.cleanup104_crit_edge, label %land.lhs.true94

for.end92.cleanup104_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup104

land.lhs.true94:                                  ; preds = %for.end92
  %ifmode95 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 10
  %44 = ptrtoint ptr %ifmode95 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ifmode95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp97.not = icmp eq i8 %45, 0
  br i1 %cmp97.not, label %land.lhs.true94.cleanup104_crit_edge, label %if.then99

land.lhs.true94.cleanup104_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup104

if.then99:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %ptr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ptr.0.lcssa, align 1
  %48 = and i8 %47, 15
  %49 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %int_reg, align 1
  br label %cleanup104

cleanup104:                                       ; preds = %if.then99, %land.lhs.true94.cleanup104_crit_edge, %for.end92.cleanup104_crit_edge, %cleanup, %for.end.cleanup104_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call20, %for.end.cleanup104_crit_edge ], [ 0, %if.then99 ], [ 0, %land.lhs.true94.cleanup104_crit_edge ], [ 0, %for.end92.cleanup104_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_write_bytes(ptr nocapture noundef readonly %host, i8 noundef zeroext %tpc, i8 noundef zeroext %cfg, i8 noundef zeroext %cnt, ptr nocapture noundef readonly %data, ptr noundef writeonly %int_reg) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_write_bytes.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_write_bytes, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %conv = zext i8 %tpc to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_write_bytes.__UNIQUE_ID_ddebug259, ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 82, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 84, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 67, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_idx.i, align 4
  %14 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx8.i, align 1
  %conv6 = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt)
  %cmp121.not = icmp eq i8 %cnt, 0
  br i1 %cmp121.not, label %do.end.if.end14_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %16 = trunc i32 %i.0122 to i16
  %conv8 = add i16 %16, -1536
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0122
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %conv8, i8 noundef zeroext -1, i8 noundef zeroext %18) #7
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %conv6
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %rem = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  br i1 %tobool10.not, label %for.end.if.end14_crit_edge, label %if.then11

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = zext i8 %cnt to i16
  %phi.bo = or i16 %phi.cast, -1536
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %phi.bo, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.end.if.end14_crit_edge, %do.end.if.end14_crit_edge
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -124) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call15 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup81_crit_edge

if.end14.cleanup81_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef 2, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end18.if.then24_crit_edge

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end18
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rsp_buf, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool23.not = icmp eq i8 %23, 0
  br i1 %tobool23.not, label %if.end72, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end18.if.then24_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %val, align 1, !annotation !127
  %call25 = call i32 @rtsx_usb_ep0_read_register(ptr noundef %1, i16 noundef zeroext -702, ptr noundef nonnull %val) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_write_bytes.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_write_bytes, %do.end45)) #7
          to label %if.then40 [label %do.end45], !srcloc !122

if.then40:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %dev.i118 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  %conv42 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_write_bytes.__UNIQUE_ID_ddebug260, ptr noundef %dev.i118, ptr noundef nonnull @.str.23, i32 noundef %conv42) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %if.then24
  %tobool46.not = icmp eq ptr %int_reg, null
  br i1 %tobool46.not, label %do.end45.if.end51_crit_edge, label %if.then47

do.end45.if.end51_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then47:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  %31 = and i8 %30, 15
  %32 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %int_reg, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %do.end45.if.end51_crit_edge
  call fastcc void @ms_print_debug_regs(ptr noundef %host)
  %33 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ucr1, align 4
  %call.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %34, i16 noundef zeroext -685, i8 noundef zeroext -120, i8 noundef zeroext -120) #7
  %call.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %34, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call1.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %34, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call.i4.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %34, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #7
  %35 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool54.not = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val, align 1
  br i1 %tobool54.not, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end51
  %38 = and i8 %37, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool58.not = icmp eq i8 %38, 0
  br i1 %tobool58.not, label %if.then55.if.end71_crit_edge, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55.if.end71_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.else:                                          ; preds = %if.end51
  %conv61 = zext i8 %37 to i32
  %and62 = and i32 %conv61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp ne i32 %and62, 0
  %and66 = and i32 %conv61, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  %or.cond = or i1 %tobool63.not, %tobool67.not
  br i1 %or.cond, label %if.else.if.end71_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end71:                                         ; preds = %if.else.if.end71_crit_edge, %if.then55.if.end71_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.else.cleanup_crit_edge, %if.then55.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end71 ], [ -5, %if.then55.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  br label %cleanup81

if.end72:                                         ; preds = %lor.lhs.false
  %tobool73.not = icmp eq ptr %int_reg, null
  br i1 %tobool73.not, label %if.end72.cleanup81_crit_edge, label %if.then74

if.end72.cleanup81_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup81

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx76 = getelementptr i8, ptr %20, i32 1
  %39 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx76, align 1
  %41 = and i8 %40, 15
  %42 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %int_reg, align 1
  br label %cleanup81

cleanup81:                                        ; preds = %if.then74, %if.end72.cleanup81_crit_edge, %cleanup, %if.end14.cleanup81_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call15, %if.end14.cleanup81_crit_edge ], [ 0, %if.then74 ], [ 0, %if.end72.cleanup81_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_usb_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_transfer_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_get_rsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_ep0_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_ep0_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ms_print_debug_regs(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 82, ptr %3, align 1
  %5 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 84, ptr %arrayidx2.i, align 1
  %7 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 67, ptr %arrayidx4.i, align 1
  %9 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %9, i32 3
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmd_idx.i, align 4
  %12 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx8.i, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -704, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -703, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -701, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -700, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -687, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -686, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -685, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -684, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -683, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -682, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -672, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -671, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -670, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -669, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -668, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -667, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -675, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -674, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -647, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -646, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 100) #7
  %call19 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef 21, i32 noundef 100) #7
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsp_buf, align 4
  br label %do.body

do.body:                                          ; preds = %for.inc32.do.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 64832, %entry ], [ %indvars.iv.next, %for.inc32.do.body_crit_edge ]
  %ptr.0253 = phi ptr [ %15, %entry ], [ %ptr.1, %for.inc32.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %for.inc32)) #7
          to label %if.then [label %for.inc32], !srcloc !122

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %incdec.ptr = getelementptr i8, ptr %ptr.0253, i32 1
  %18 = ptrtoint ptr %ptr.0253 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ptr.0253, align 1
  %conv31 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug249, ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv, i32 noundef %conv31) #7
  br label %for.inc32

for.inc32:                                        ; preds = %if.then, %do.body
  %ptr.1 = phi ptr [ %incdec.ptr, %if.then ], [ %ptr.0253, %do.body ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64837
  br i1 %exitcond.not, label %for.inc32.do.body40_crit_edge, label %for.inc32.do.body_crit_edge

for.inc32.do.body_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc32.do.body40_crit_edge:                    ; preds = %for.inc32
  br label %do.body40

do.body40:                                        ; preds = %for.inc62.do.body40_crit_edge, %for.inc32.do.body40_crit_edge
  %indvars.iv262 = phi i32 [ %indvars.iv.next263, %for.inc62.do.body40_crit_edge ], [ 64849, %for.inc32.do.body40_crit_edge ]
  %ptr.2256 = phi ptr [ %ptr.3, %for.inc62.do.body40_crit_edge ], [ %ptr.1, %for.inc32.do.body40_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %for.inc62)) #7
          to label %if.then54 [label %for.inc62], !srcloc !122

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %dev.i237 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %incdec.ptr57 = getelementptr i8, ptr %ptr.2256, i32 1
  %22 = ptrtoint ptr %ptr.2256 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ptr.2256, align 1
  %conv58 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug250, ptr noundef %dev.i237, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv262, i32 noundef %conv58) #7
  br label %for.inc62

for.inc62:                                        ; preds = %if.then54, %do.body40
  %ptr.3 = phi ptr [ %incdec.ptr57, %if.then54 ], [ %ptr.2256, %do.body40 ]
  %indvars.iv.next263 = add nuw nsw i32 %indvars.iv262, 1
  %exitcond264.not = icmp eq i32 %indvars.iv.next263, 64855
  br i1 %exitcond264.not, label %for.inc62.do.body70_crit_edge, label %for.inc62.do.body40_crit_edge

for.inc62.do.body40_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

for.inc62.do.body70_crit_edge:                    ; preds = %for.inc62
  br label %do.body70

do.body70:                                        ; preds = %for.inc92.do.body70_crit_edge, %for.inc62.do.body70_crit_edge
  %indvars.iv265 = phi i32 [ %indvars.iv.next266, %for.inc92.do.body70_crit_edge ], [ 64864, %for.inc62.do.body70_crit_edge ]
  %ptr.4259 = phi ptr [ %ptr.5, %for.inc92.do.body70_crit_edge ], [ %ptr.3, %for.inc62.do.body70_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %for.inc92)) #7
          to label %if.then84 [label %for.inc92], !srcloc !122

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %dev.i238 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %incdec.ptr87 = getelementptr i8, ptr %ptr.4259, i32 1
  %26 = ptrtoint ptr %ptr.4259 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ptr.4259, align 1
  %conv88 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug251, ptr noundef %dev.i238, ptr noundef nonnull @.str.25, i32 noundef %indvars.iv265, i32 noundef %conv88) #7
  br label %for.inc92

for.inc92:                                        ; preds = %if.then84, %do.body70
  %ptr.5 = phi ptr [ %incdec.ptr87, %if.then84 ], [ %ptr.4259, %do.body70 ]
  %indvars.iv.next266 = add nuw nsw i32 %indvars.iv265, 1
  %exitcond267.not = icmp eq i32 %indvars.iv.next266, 64870
  br i1 %exitcond267.not, label %do.body95, label %for.inc92.do.body70_crit_edge

for.inc92.do.body70_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body70

do.body95:                                        ; preds = %for.inc92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %do.body116)) #7
          to label %if.then109 [label %do.body116], !srcloc !122

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host, align 4
  %dev.i239 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %incdec.ptr111 = getelementptr i8, ptr %ptr.5, i32 1
  %30 = ptrtoint ptr %ptr.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ptr.5, align 1
  %conv112 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug252, ptr noundef %dev.i239, ptr noundef nonnull @.str.25, i32 noundef 64861, i32 noundef %conv112) #7
  br label %do.body116

do.body116:                                       ; preds = %if.then109, %do.body95
  %ptr.6 = phi ptr [ %incdec.ptr111, %if.then109 ], [ %ptr.5, %do.body95 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %do.body137)) #7
          to label %if.then130 [label %do.body137], !srcloc !122

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %dev.i240 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %incdec.ptr132 = getelementptr i8, ptr %ptr.6, i32 1
  %34 = ptrtoint ptr %ptr.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ptr.6, align 1
  %conv133 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug253, ptr noundef %dev.i240, ptr noundef nonnull @.str.25, i32 noundef 64862, i32 noundef %conv133) #7
  br label %do.body137

do.body137:                                       ; preds = %if.then130, %do.body116
  %ptr.7 = phi ptr [ %incdec.ptr132, %if.then130 ], [ %ptr.6, %do.body116 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %do.body158)) #7
          to label %if.then151 [label %do.body158], !srcloc !122

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  %dev.i241 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %incdec.ptr153 = getelementptr i8, ptr %ptr.7, i32 1
  %38 = ptrtoint ptr %ptr.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ptr.7, align 1
  %conv154 = zext i8 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug254, ptr noundef %dev.i241, ptr noundef nonnull @.str.25, i32 noundef 64889, i32 noundef %conv154) #7
  br label %do.body158

do.body158:                                       ; preds = %if.then151, %do.body137
  %ptr.8 = phi ptr [ %incdec.ptr153, %if.then151 ], [ %ptr.7, %do.body137 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %do.end178)) #7
          to label %if.then172 [label %do.end178], !srcloc !122

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  %dev.i242 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ptr.8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ptr.8, align 1
  %conv175 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug255, ptr noundef %dev.i242, ptr noundef nonnull @.str.25, i32 noundef 64890, i32 noundef %conv175) #7
  br label %do.end178

do.end178:                                        ; preds = %if.then172, %do.body158
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_detect_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_power_on(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_power_on.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_power_on, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_power_on.__UNIQUE_ID_ddebug256, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.35) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 82, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 84, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 67, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_idx.i, align 4
  %14 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx8.i, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext 3) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -687, i8 noundef zeroext 3, i8 noundef zeroext 2) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -647, i8 noundef zeroext 8, i8 noundef zeroext 8) #7
  %call6 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %package = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %package, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp9 = icmp eq i32 %17, 1
  %18 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 82, ptr %19, align 1
  %21 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 84, ptr %arrayidx2.i.i, align 1
  %23 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 67, ptr %arrayidx4.i.i, align 1
  %25 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 82, ptr %arrayidx6.i.i, align 1
  %27 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cmd_idx.i, align 4
  %28 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx8.i.i, align 1
  %. = select i1 %cmp9, i8 85, i8 101
  %.56 = select i1 %cmp9, i8 -91, i8 89
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext %.) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext -107) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext %.56) #7
  %call.i47 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp14 = icmp slt i32 %call.i47, 0
  br i1 %cmp14, label %if.end8.cleanup_crit_edge, label %if.end16

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -646, i8 noundef zeroext 3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #7
  %30 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 82, ptr %31, align 1
  %33 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i49 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx2.i49 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 84, ptr %arrayidx2.i49, align 1
  %35 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i50 = getelementptr i8, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx4.i50 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 67, ptr %arrayidx4.i50, align 1
  %37 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i51 = getelementptr i8, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx6.i51 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 82, ptr %arrayidx6.i51, align 1
  %39 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cmd_idx.i, align 4
  %40 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i53 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %arrayidx8.i53 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx8.i53, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -646, i8 noundef zeroext 3, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -684, i8 noundef zeroext 8, i8 noundef zeroext 8) #7
  %call21 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ %call6, %do.end.cleanup_crit_edge ], [ %call.i47, %if.end8.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_power_off(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_power_off.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_power_off, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_power_off.__UNIQUE_ID_ddebug257, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.36) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 82, ptr %5, align 1
  %7 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 84, ptr %arrayidx2.i, align 1
  %9 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 67, ptr %arrayidx4.i, align 1
  %11 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_idx.i, align 4
  %14 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx8.i, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -647, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -684, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  %call6 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %package = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %package, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp9 = icmp eq i32 %17, 1
  %18 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd_buf.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 82, ptr %19, align 1
  %21 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 84, ptr %arrayidx2.i.i, align 1
  %23 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 67, ptr %arrayidx4.i.i, align 1
  %25 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %25, i32 3
  %26 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 82, ptr %arrayidx6.i.i, align 1
  %27 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cmd_idx.i, align 4
  %28 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx8.i.i, align 1
  %. = select i1 %cmp9, i8 85, i8 101
  %.33 = select i1 %cmp9, i8 85, i8 86
  %.34 = select i1 %cmp9, i8 -91, i8 89
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext %.) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext -107) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext %.33) #7
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext %.34) #7
  %call.i29 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end.cleanup_crit_edge ], [ %call.i29, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_switch_clock(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %msh1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh1, align 4
  %system_suspending = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %system_suspending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %system_suspending, align 2
  tail call void @memstick_suspend_host(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %msh1 = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh1, align 4
  tail call void @memstick_resume_host(ptr noundef %3) #7
  %system_suspending = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %system_suspending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %system_suspending, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtsx_usb_ms_runtime_suspend(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %system_suspending = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %system_suspending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %system_suspending, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %msh = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %msh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msh, align 4
  %card = getelementptr inbounds %struct.memstick_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 16
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %power_mode = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_ms_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %system_suspending = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %system_suspending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %system_suspending, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %msh = getelementptr inbounds %struct.rtsx_usb_ms, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %msh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msh, align 4
  tail call void @memstick_detect_change(ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_rtsx_usb_ms__275_865_rtsx_usb_ms_driver_init6, !1, !"__initcall__kmod_rtsx_usb_ms__275_865_rtsx_usb_ms_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 865, i32 1}
!2 = !{ptr @__exitcall_rtsx_usb_ms_driver_exit, !1, !"__exitcall_rtsx_usb_ms_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file276, !4, !"__UNIQUE_ID_file276", i1 false, i1 false}
!4 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 867, i32 1}
!5 = !{ptr @__UNIQUE_ID_license277, !4, !"__UNIQUE_ID_license277", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author278, !7, !"__UNIQUE_ID_author278", i1 false, i1 false}
!7 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 868, i32 1}
!8 = !{ptr @__UNIQUE_ID_description279, !9, !"__UNIQUE_ID_description279", i1 false, i1 false}
!9 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 869, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 861, i32 11}
!12 = !{ptr @rtsx_usb_ms_driver, !13, !"rtsx_usb_ms_driver", i1 false, i1 false}
!13 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 856, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 767, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtsx_usb_ms_drv_probe.__UNIQUE_ID_ddebug272, !15, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!19 = !{ptr @rtsx_usb_ms_drv_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 781, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtsx_usb_ms_drv_probe.__key.5, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 782, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtsx_usb_ms_drv_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 784, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtsx_usb_ms_drv_probe.__key.9, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 518, i32 4}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug265, !31, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 532, i32 5}
!36 = !{ptr @rtsx_usb_ms_handle_req.__UNIQUE_ID_ddebug266, !35, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 462, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug263, !38, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 500, i32 3}
!43 = !{ptr @rtsx_usb_ms_issue_cmd.__UNIQUE_ID_ddebug264, !42, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 241, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ms_transfer_data.__UNIQUE_ID_ddebug258, !45, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!48 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 390, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ms_read_bytes.__UNIQUE_ID_ddebug261, !51, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 423, i32 3}
!56 = !{ptr @ms_read_bytes.__UNIQUE_ID_ddebug262, !55, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 92, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug249, !58, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!61 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug250, !62, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!62 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 94, i32 3}
!63 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug251, !64, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!64 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 96, i32 3}
!65 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug252, !66, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!66 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 98, i32 2}
!67 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug253, !68, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!68 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 99, i32 2}
!69 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug254, !70, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!70 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 100, i32 2}
!71 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug255, !72, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!72 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 101, i32 2}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 322, i32 2}
!75 = !{ptr @ms_write_bytes.__UNIQUE_ID_ddebug259, !74, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!76 = !{ptr @ms_write_bytes.__UNIQUE_ID_ddebug260, !77, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!77 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 355, i32 3}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 745, i32 3}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rtsx_usb_ms_poll_card.__UNIQUE_ID_ddebug271, !79, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 545, i32 2}
!84 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rtsx_usb_ms_request.__UNIQUE_ID_ddebug267, !83, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 560, i32 2}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug268, !87, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 615, i32 4}
!92 = !{ptr @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug269, !91, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 639, i32 2}
!95 = !{ptr @rtsx_usb_ms_set_param.__UNIQUE_ID_ddebug270, !94, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 173, i32 2}
!98 = !{ptr @ms_power_on.__UNIQUE_ID_ddebug256, !97, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 213, i32 2}
!101 = !{ptr @ms_power_off.__UNIQUE_ID_ddebug257, !100, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 819, i32 3}
!104 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug273, !103, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 839, i32 2}
!108 = !{ptr @rtsx_usb_ms_drv_remove.__UNIQUE_ID_ddebug274, !107, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!109 = !{ptr @rtsx_usb_ms_pm_ops, !110, !"rtsx_usb_ms_pm_ops", i1 false, i1 false}
!110 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 710, i32 32}
!111 = !{ptr @rtsx_usb_ms_ids, !112, !"rtsx_usb_ms_ids", i1 false, i1 false}
!112 = !{!"../drivers/memstick/host/rtsx_usb_ms.c", i32 847, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i64 2148973352, i64 2148973357, i64 2148973370, i64 2148973414, i64 2148973448, i64 2148973469}
!123 = !{i64 2148359975, i64 2148360001, i64 2148360030, i64 2148360064, i64 2148360095, i64 2148360118}
!124 = !{i64 2148359394}
!125 = !{i64 845014, i64 845039, i64 845061, i64 845077, i64 845089, i64 845109, i64 845133, i64 845149, i64 845161}
!126 = !{i64 2148359582}
!127 = !{!"auto-init"}
!128 = !{i8 0, i8 2}
