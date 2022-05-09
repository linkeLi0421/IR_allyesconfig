; ModuleID = '/llk/IR_all_yes/drivers/memstick/host/rtsx_pci_ms.c_pt.bc'
source_filename = "../drivers/memstick/host/rtsx_pci_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rtsx_pcr = type { ptr, i32, %struct.rtsx_cr_option, %struct.rtsx_hw_param, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i16, i32, ptr, i8, i8, i8, i8 }
%struct.rtsx_cr_option = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.rtsx_hw_param = type { i32, i8 }
%struct.rtsx_slot = type { ptr, ptr }
%struct.realtek_pci_ms = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i32, i8, i8 }
%struct.memstick_request = type { i8, i8, i8, i32, %union.anon.71 }
%union.anon.71 = type { %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.anon.72 = type { i8, [15 x i8] }
%struct.memstick_device_id = type { i8, i8, i8, i8 }

@__initcall__kmod_rtsx_pci_ms__265_639_rtsx_pci_ms_driver_init6 = internal global ptr @rtsx_pci_ms_driver_init, section ".initcall6.init", align 4
@rtsx_pci_ms_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtsx_pci_ms_drv_probe, ptr @rtsx_pci_ms_drv_remove, ptr null, ptr @rtsx_pci_ms_suspend, ptr @rtsx_pci_ms_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtsx_pci_ms_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtsx_pci_ms_driver_exit = internal global ptr @rtsx_pci_ms_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file266 = internal constant [51 x i8] c"rtsx_pci_ms.file=drivers/memstick/host/rtsx_pci_ms\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [24 x i8] c"rtsx_pci_ms.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author268 = internal constant [54 x i8] c"rtsx_pci_ms.author=Wei WANG <wei_wang@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description269 = internal constant [64 x i8] c"rtsx_pci_ms.description=Realtek PCI-E Memstick Card Host Driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtsx_pci_ms\00", [20 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_ids = internal global { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"rtsx_pci_ms\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_drv_probe.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_pci_ms_drv_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/memstick/host/rtsx_pci_ms.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c": Realtek PCI-E Memstick controller found\0A\00", [53 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&host->host_mutex\00", [46 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_drv_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&host->handle_req)\00", [59 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_handle_req.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtsx_pci_ms_handle_req\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"next req %d\0A\00", [19 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_pci_ms_issue_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"int_reg: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@ms_transfer_data.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ms_transfer_data\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: tpc = 0x%02x, data_dir = %s, length = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@ms_read_bytes.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ms_read_bytes\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: tpc = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@ms_read_bytes.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 76, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MS_TRANS_CFG: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@ms_print_debug_regs.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ms_print_debug_regs\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%04X: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@ms_print_debug_regs.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ms_write_bytes.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.17, i8 0, i8 51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ms_write_bytes\00", [17 x i8] zeroinitializer }, align 32
@ms_write_bytes.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.18, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rtsx_pci_ms_request.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 106, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtsx_pci_ms_request\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"--> %s\0A\00", [24 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rtsx_pci_ms_set_param.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtsx_pci_ms_set_param\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: param = %d, value = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtsx_pci_ms_drv_remove\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Controller removed during transfer\0A\00", [56 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c": Realtek PCI-E Memstick controller has been removed\0A\00", [42 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_suspend.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.23, i8 0, i8 125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtsx_pci_ms_suspend\00", [44 x i8] zeroinitializer }, align 32
@rtsx_pci_ms_resume.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.23, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtsx_pci_ms_resume\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"rtsx_pci_ms_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 629, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 636, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"rtsx_pci_ms_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 620, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 546, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 561, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 563, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 410, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 344, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 374, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 139, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 274, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 306, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 62, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 205, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 424, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 441, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 596, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 614, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 500, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [39 x i8] c"../drivers/memstick/host/rtsx_pci_ms.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 511, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author268, ptr @__UNIQUE_ID_description269, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__exitcall_rtsx_pci_ms_driver_exit, ptr @__initcall__kmod_rtsx_pci_ms__265_639_rtsx_pci_ms_driver_init6, ptr @rtsx_pci_ms_driver_exit, ptr @rtsx_pci_ms_driver, ptr @.str, ptr @rtsx_pci_ms_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtsx_pci_ms_drv_probe.__key, ptr @.str.4, ptr @rtsx_pci_ms_drv_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_ms_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_ms_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_ms_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_ms_drv_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_ms_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtsx_pci_ms_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_pci_ms_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtsx_pci_ms_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_ms_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_drv_probe.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_drv_probe, %do.end)) #4
          to label %if.then9 [label %do.end], !srcloc !92

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_drv_probe.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call13 = tail call ptr @memstick_alloc_host(i32 noundef 164, ptr noundef %dev) #4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 0, i32 11
  %pcr18 = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %pcr18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pcr18, align 4
  %msh19 = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %msh19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %msh19, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %slots = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 50
  %8 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slots, align 4
  %arrayidx = getelementptr %struct.rtsx_slot, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %arrayidx, align 4
  %11 = load ptr, ptr %slots, align 4
  %card_event = getelementptr %struct.rtsx_slot, ptr %11, i32 1, i32 1
  %12 = ptrtoint ptr %card_event to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rtsx_pci_ms_card_event, ptr %card_event, align 4
  %host_mutex = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 0, i32 1, i32 3
  tail call void @__mutex_init(ptr noundef %host_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtsx_pci_ms_drv_probe.__key) #4
  %handle_req = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 3, i32 1, i32 1
  tail call void @__init_work(ptr noundef %handle_req, i32 noundef 0) #4
  %13 = ptrtoint ptr %handle_req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %handle_req, align 4
  %lockdep_map = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 3, i32 3, i32 1, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtsx_pci_ms_drv_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry30 = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 3, i32 2
  %14 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 3, i32 3
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 1, i32 3, i32 3, i32 1
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rtsx_pci_ms_handle_req, ptr %func, align 4
  %request = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 0, i32 8
  %17 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtsx_pci_ms_request, ptr %request, align 4
  %set_param = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 0, i32 9
  %18 = ptrtoint ptr %set_param to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtsx_pci_ms_set_param, ptr %set_param, align 64
  %caps = getelementptr inbounds %struct.memstick_host, ptr %call13, i32 0, i32 2
  %19 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %caps, align 32
  %call34 = tail call i32 @memstick_add_host(ptr noundef nonnull %call13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end16.cleanup_crit_edge, label %if.then36

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then36:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @memstick_free_host(ptr noundef nonnull %call13) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end16.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then36 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_ms_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcr1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr1, align 4
  %slots = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slots, align 4
  %arrayidx = getelementptr %struct.rtsx_slot, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  %7 = load ptr, ptr %slots, align 4
  %card_event = getelementptr %struct.rtsx_slot, ptr %7, i32 1, i32 1
  %8 = ptrtoint ptr %card_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %card_event, align 4
  %msh4 = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %msh4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msh4, align 4
  %eject = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %eject to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %eject, align 1
  %handle_req = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 5
  %call5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %handle_req) #4
  %host_mutex = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #4
  %req = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end.if.end31_crit_edge, label %do.body

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_drv_remove, %do.end)) #4
          to label %if.then13 [label %do.end], !srcloc !92

if.then13:                                        ; preds = %do.body
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.memstick_host, ptr %10, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then13.dev_name.exit_crit_edge

if.then13.dev_name.exit_crit_edge:                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %dev14 = getelementptr inbounds %struct.memstick_host, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then13.dev_name.exit_crit_edge
  %retval.0.i76 = phi ptr [ %17, %if.end.i ], [ %15, %if.then13.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i76) #4
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  tail call void @rtsx_pci_complete_unfinished_transfer(ptr noundef %3) #4
  %18 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -123, ptr %error, align 4
  %call2079 = tail call i32 @memstick_next_req(ptr noundef %10, ptr noundef %req) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2079)
  %tobool21.not80 = icmp eq i32 %call2079, 0
  br i1 %tobool21.not80, label %do.end.if.then22_crit_edge, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.end.if.then22_crit_edge:                       ; preds = %do.end
  br label %if.then22

if.then22:                                        ; preds = %if.then22.if.then22_crit_edge, %do.end.if.then22_crit_edge
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 4
  %error24 = getelementptr inbounds %struct.memstick_request, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %error24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -123, ptr %error24, align 4
  %call20 = tail call i32 @memstick_next_req(ptr noundef %10, ptr noundef %req) #4
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22.if.then22_crit_edge, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then22.if.then22_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22

if.end31:                                         ; preds = %if.then22.if.end31_crit_edge, %do.end.if.end31_crit_edge, %if.end.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %host_mutex) #4
  tail call void @memstick_remove_host(ptr noundef %10) #4
  tail call void @memstick_free_host(ptr noundef %10) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_drv_remove, %cleanup)) #4
          to label %if.then47 [label %cleanup], !srcloc !92

if.then47:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug264, ptr noundef %dev48, ptr noundef nonnull @.str.28) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end31, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_ms_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msh1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_suspend.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_suspend, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_suspend.__UNIQUE_ID_ddebug260, ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.29) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @memstick_suspend_host(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_ms_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msh1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msh1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_resume.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_resume, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_resume.__UNIQUE_ID_ddebug261, ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.30) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @memstick_resume_host(ptr noundef %3) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_pci_ms_card_event(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msh = getelementptr inbounds %struct.realtek_pci_ms, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh, align 4
  tail call void @memstick_detect_change(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_pci_ms_handle_req(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  %pcr1 = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %msh2 = getelementptr i8, ptr %work, i32 -100
  %2 = ptrtoint ptr %msh2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msh2, align 4
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #4
  tail call void @rtsx_pci_start_run(ptr noundef %1) #4
  %4 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcr1, align 4
  %clock = getelementptr i8, ptr %work, i32 48
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock, align 4
  %ssc_depth = getelementptr i8, ptr %work, i32 44
  %8 = ptrtoint ptr %ssc_depth to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ssc_depth, align 4
  %call = tail call i32 @rtsx_pci_switch_clock(ptr noundef %5, i32 noundef %7, i8 noundef zeroext %9, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -676, i8 noundef zeroext 7, i8 noundef zeroext 3) #4
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -686, i8 noundef zeroext 15, i8 noundef zeroext 8) #4
  %req = getelementptr i8, ptr %work, i32 -96
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then18, %entry.do.body_crit_edge
  %call7 = tail call i32 @memstick_next_req(ptr noundef %3, ptr noundef %req) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_handle_req.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_handle_req, %do.end)) #4
          to label %if.then15 [label %do.end], !srcloc !92

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_handle_req.__UNIQUE_ID_ddebug257, ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %call7) #4
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %tobool17.not = icmp eq i32 %call7, 0
  br i1 %tobool17.not, label %if.then18, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call fastcc i32 @rtsx_pci_ms_issue_cmd(ptr noundef %add.ptr)
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %error = getelementptr inbounds %struct.memstick_request, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call19, ptr %error, align 4
  br label %do.body

if.end27:                                         ; preds = %do.end.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %pcr_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_pci_ms_request(ptr noundef %msh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_request.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_request, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_request.__UNIQUE_ID_ddebug258, ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pcr = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr, align 4
  %call6 = tail call i32 @rtsx_pci_card_exclusive_check(ptr noundef %3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %handle_req = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 3, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %handle_req) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_ms_set_param(ptr nocapture noundef %msh, i32 noundef %param, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_set_param.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_set_param, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %private.i = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_set_param.__UNIQUE_ID_ddebug259, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %param, i32 noundef %value) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcr1, align 4
  %call8 = tail call i32 @rtsx_pci_card_exclusive_check(ptr noundef %5, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %6 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %param, label %if.end11.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  %7 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %value, label %sw.bb.cleanup_crit_edge [
    i32 1, label %if.then12
    i32 0, label %if.then15
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %sw.bb
  %8 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcr1, align 4
  %ci.i = getelementptr inbounds %struct.rtsx_pcr, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ci.i, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %9, i8 noundef zeroext 1, i16 noundef zeroext -676, i8 noundef zeroext 7, i8 noundef zeroext 3) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %9, i8 noundef zeroext 1, i16 noundef zeroext -686, i8 noundef zeroext 15, i8 noundef zeroext 8) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %9, i8 noundef zeroext 1, i16 noundef zeroext -663, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call.i = tail call i32 @rtsx_pci_send_cmd(ptr noundef %9, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then12.cleanup_crit_edge, label %if.end.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %call2.i = tail call i32 @rtsx_pci_card_pull_ctl_enable(ptr noundef %9, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @rtsx_pci_card_power_on(ptr noundef %9, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %if.end9.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 150) #4
  %call10.i = tail call i32 @rtsx_pci_write_register(ptr noundef %9, i16 noundef zeroext -683, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  br label %cleanup

if.then15:                                        ; preds = %sw.bb
  %11 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcr1, align 4
  %ci.i72 = getelementptr inbounds %struct.rtsx_pcr, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %ci.i72 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ci.i72, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %12, i8 noundef zeroext 1, i16 noundef zeroext -663, i8 noundef zeroext 8, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %12, i8 noundef zeroext 1, i16 noundef zeroext -683, i8 noundef zeroext 8, i8 noundef zeroext 0) #4
  %call.i73 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %12, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp.i74 = icmp slt i32 %call.i73, 0
  br i1 %cmp.i74, label %if.then15.cleanup_crit_edge, label %if.end.i77

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i77:                                       ; preds = %if.then15
  %call2.i75 = tail call i32 @rtsx_pci_card_power_off(ptr noundef %12, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i75)
  %cmp3.i76 = icmp slt i32 %call2.i75, 0
  br i1 %cmp3.i76, label %if.end.i77.cleanup_crit_edge, label %if.end5.i79

if.end.i77.cleanup_crit_edge:                     ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i79:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i78 = tail call i32 @rtsx_pci_card_pull_ctl_disable(ptr noundef %12, i32 noundef 1) #4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end11
  %14 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %value, label %sw.bb20.cleanup_crit_edge [
    i32 0, label %if.then22
    i32 1, label %if.then29
  ]

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %sw.bb20
  %call23 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -704, i8 noundef zeroext 88, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then22.cleanup_crit_edge, label %if.then22.if.end36_crit_edge

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %sw.bb20
  %call30 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -704, i8 noundef zeroext 88, i8 noundef zeroext 80) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.cleanup_crit_edge, label %if.then29.if.end36_crit_edge

if.then29.if.end36_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end36:                                         ; preds = %if.then29.if.end36_crit_edge, %if.then22.if.end36_crit_edge
  %clock.0 = phi i32 [ 19000000, %if.then22.if.end36_crit_edge ], [ 39000000, %if.then29.if.end36_crit_edge ]
  %ssc_depth.0 = phi i8 [ 4, %if.then22.if.end36_crit_edge ], [ 3, %if.then29.if.end36_crit_edge ]
  %call37 = tail call i32 @rtsx_pci_switch_clock(ptr noundef %1, i32 noundef %clock.0, i8 noundef zeroext %ssc_depth.0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %ssc_depth41 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %ssc_depth41 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %ssc_depth.0, ptr %ssc_depth41, align 4
  %clock42 = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %clock42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %clock.0, ptr %clock42, align 4
  %conv = trunc i32 %value to i8
  %ifmode = getelementptr inbounds %struct.memstick_host, ptr %msh, i32 1, i32 4, i32 0, i32 3
  %17 = ptrtoint ptr %ifmode to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %ifmode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end36.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %if.end5.i79, %if.end.i77.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end9.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end40 ], [ 0, %if.then12.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %if.end9.i ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end.i77.cleanup_crit_edge ], [ 0, %if.end5.i79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_detect_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_start_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_switch_clock(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memstick_next_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtsx_pci_ms_issue_cmd(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %int_reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %int_reg) #4
  %2 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %int_reg, align 1, !annotation !93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_issue_cmd, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug255, ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %ifmode = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = call fastcc i32 @ms_read_bytes(ptr noundef %host, i8 noundef zeroext %14, i8 noundef zeroext %cfg.0, i8 noundef zeroext %17, ptr noundef %data, ptr noundef nonnull %int_reg)
  br label %if.end36

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = call fastcc i32 @ms_write_bytes(ptr noundef %host, i8 noundef zeroext %14, i8 noundef zeroext %cfg.0, i8 noundef zeroext %17, ptr noundef %data, ptr noundef nonnull %int_reg)
  br label %if.end36

if.end36:                                         ; preds = %if.else29, %if.then26, %if.then16
  %err.0 = phi i32 [ %call19, %if.then16 ], [ %call28, %if.then26 ], [ %call34, %if.else29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp37 = icmp slt i32 %err.0, 0
  br i1 %cmp37, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %18 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load42 = load i8, ptr %need_card_int, align 1
  %19 = and i8 %bf.load42, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool46.not = icmp eq i8 %19, 0
  br i1 %tobool46.not, label %if.end40.if.end57_crit_edge, label %land.lhs.true

if.end40.if.end57_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end40
  %ifmode47 = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 8
  %20 = ptrtoint ptr %ifmode47 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ifmode47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp49 = icmp eq i8 %21, 0
  br i1 %cmp49, label %if.then51, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then51:                                        ; preds = %land.lhs.true
  %call52 = call fastcc i32 @ms_read_bytes(ptr noundef %host, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %int_reg, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then51.cleanup_crit_edge, label %if.then51.if.end57_crit_edge

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end57:                                         ; preds = %if.then51.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.end40.if.end57_crit_edge
  %22 = ptrtoint ptr %need_card_int to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load59 = load i8, ptr %need_card_int, align 1
  %23 = and i8 %bf.load59, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool62.not = icmp eq i8 %23, 0
  br i1 %tobool62.not, label %if.end57.cleanup_crit_edge, label %do.body64

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body64:                                        ; preds = %if.end57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rtsx_pci_ms_issue_cmd, %do.end83)) #4
          to label %if.then78 [label %do.end83], !srcloc !92

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host, align 4
  %dev.i155 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %int_reg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %int_reg, align 1
  %conv80 = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug256, ptr noundef %dev.i155, ptr noundef nonnull @.str.11, i32 noundef %conv80) #4
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body64
  %28 = ptrtoint ptr %int_reg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %int_reg, align 1
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool85.not = icmp eq i8 %30, 0
  br i1 %tobool85.not, label %do.end83.if.end90_crit_edge, label %if.then86

do.end83.if.end90_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

if.then86:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #6
  %int_reg87 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %int_reg87 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %int_reg87, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %int_reg87, align 2
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %do.end83.if.end90_crit_edge
  %34 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool93.not = icmp eq i8 %34, 0
  br i1 %tobool93.not, label %if.end90.if.end99_crit_edge, label %if.then94

if.end90.if.end99_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  %int_reg95 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %int_reg95 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %int_reg95, align 2
  %37 = or i8 %36, 32
  store i8 %37, ptr %int_reg95, align 2
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.end90.if.end99_crit_edge
  %38 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool102.not = icmp eq i8 %38, 0
  br i1 %tobool102.not, label %if.end99.if.end108_crit_edge, label %if.then103

if.end99.if.end108_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end108

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #6
  %int_reg104 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %int_reg104 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %int_reg104, align 2
  %41 = or i8 %40, 64
  store i8 %41, ptr %int_reg104, align 2
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %if.end99.if.end108_crit_edge
  %42 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool111.not = icmp eq i8 %42, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %if.then112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #6
  %int_reg113 = getelementptr inbounds %struct.memstick_request, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %int_reg113 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %int_reg113, align 2
  %45 = or i8 %44, -128
  store i8 %45, ptr %int_reg113, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %if.end108.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end36.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ], [ 0, %if.end108.cleanup_crit_edge ], [ 0, %if.then112 ], [ 0, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %int_reg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_transfer_data(ptr nocapture noundef readonly %host, i8 noundef zeroext %data_dir, i8 noundef zeroext %tpc, i8 noundef zeroext %cfg, ptr noundef %sg) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %length2 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length2, align 4
  %div110 = lshr i32 %3, 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %val, align 1, !annotation !93
  %msh = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 2
  %5 = ptrtoint ptr %msh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msh, align 4
  %card3 = getelementptr inbounds %struct.memstick_host, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card3, align 16
  %type = getelementptr inbounds %struct.memstick_device_id, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_transfer_data.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_transfer_data, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %conv11 = zext i8 %tpc to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_dir)
  %cmp13 = icmp eq i8 %data_dir, 0
  %cond = select i1 %cmp13, ptr @.str.14, ptr @.str.15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_transfer_data.__UNIQUE_ID_ddebug250, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %conv11, ptr noundef nonnull %cond, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_dir)
  %cmp16 = icmp eq i8 %data_dir, 0
  %cond21 = select i1 %cmp, i8 8, i8 1
  %conv26 = select i1 %cmp, i8 12, i8 5
  %trans_mode.0 = select i1 %cmp16, i8 %cond21, i8 %conv26
  %dma_dir.0 = select i1 %cmp16, i8 35, i8 33
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #4
  br i1 %cmp, label %if.then29, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv30 = lshr i32 %3, 17
  %conv31 = trunc i32 %conv30 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -697, i8 noundef zeroext -1, i8 noundef zeroext %conv31) #4
  %conv32 = trunc i32 %div110 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -698, i8 noundef zeroext -1, i8 noundef zeroext %conv32) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %do.end.if.end33_crit_edge
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -479, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  %shr34 = lshr i32 %3, 24
  %conv35 = trunc i32 %shr34 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -469, i8 noundef zeroext -1, i8 noundef zeroext %conv35) #4
  %shr36 = lshr i32 %3, 16
  %conv37 = trunc i32 %shr36 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -470, i8 noundef zeroext -1, i8 noundef zeroext %conv37) #4
  %shr38 = lshr i32 %3, 8
  %conv39 = trunc i32 %shr38 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -471, i8 noundef zeroext -1, i8 noundef zeroext %conv39) #4
  %conv40 = trunc i32 %3 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -472, i8 noundef zeroext -1, i8 noundef zeroext %conv40) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -468, i8 noundef zeroext 51, i8 noundef zeroext %dma_dir.0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %or45 = or i8 %trans_mode.0, -128
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext %or45) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  tail call void @rtsx_pci_send_cmd_no_wait(ptr noundef %1) #4
  %call50 = tail call i32 @rtsx_pci_transfer_data(ptr noundef %1, ptr noundef %sg, i32 noundef 1, i1 noundef zeroext %cmp16, i32 noundef 10000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcr1, align 4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %15, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #4
  br label %cleanup

if.end54:                                         ; preds = %if.end33
  %call55 = call i32 @rtsx_pci_read_register(ptr noundef %1, i16 noundef zeroext -702, ptr noundef nonnull %val) #4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1
  br i1 %cmp, label %if.then57, label %if.else62

if.then57:                                        ; preds = %if.end54
  %18 = and i8 %17, 58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool59.not = icmp eq i8 %18, 0
  br i1 %tobool59.not, label %if.then57.if.end68_crit_edge, label %if.then57.cleanup_crit_edge

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then57.if.end68_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.else62:                                        ; preds = %if.end54
  %19 = and i8 %17, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool65.not = icmp eq i8 %19, 0
  br i1 %tobool65.not, label %if.else62.if.end68_crit_edge, label %if.else62.cleanup_crit_edge

if.else62.cleanup_crit_edge:                      ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else62.if.end68_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.end68:                                         ; preds = %if.else62.if.end68_crit_edge, %if.then57.if.end68_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.else62.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %if.then53
  %retval.0 = phi i32 [ %call50, %if.then53 ], [ 0, %if.end68 ], [ -5, %if.then57.cleanup_crit_edge ], [ -5, %if.else62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_read_bytes(ptr nocapture noundef readonly %host, i8 noundef zeroext %tpc, i8 noundef zeroext %cfg, i8 noundef zeroext %cnt, ptr noundef writeonly %data, ptr noundef writeonly %int_reg) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_bytes.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_read_bytes, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %conv = zext i8 %tpc to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_bytes.__UNIQUE_ID_ddebug253, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %data, null
  br i1 %tobool6.not, label %do.end.cleanup93_crit_edge, label %if.end8

do.end.cleanup93_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup93

if.end8:                                          ; preds = %do.end
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -128) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  %conv9 = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cnt)
  %cmp138 = icmp ugt i8 %cnt, 1
  br i1 %cmp138, label %for.body.preheader, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end8
  %5 = add nsw i32 %conv9, -2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0139 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %6 = trunc i32 %i.0139 to i16
  %conv11 = add i16 %6, -1536
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv11, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %inc = add nuw nsw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %i.0139, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %rem = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool13.not = icmp eq i32 %rem, 0
  %7 = zext i8 %cnt to i16
  %conv21 = add nuw nsw i16 %7, -1537
  %conv17 = or i16 %7, -1536
  %conv21.sink = select i1 %tobool13.not, i16 %conv21, i16 %conv17
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv21.sink, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %tobool23.not = icmp eq ptr %int_reg, null
  br i1 %tobool23.not, label %for.end.if.end25_crit_edge, label %if.then24

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.end.if.end25_crit_edge
  %call26 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef 5000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end77

if.then29:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !93
  %call30 = call i32 @rtsx_pci_read_register(ptr noundef %1, i16 noundef zeroext -702, ptr noundef nonnull %val) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_read_bytes.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_read_bytes, %do.end50)) #4
          to label %if.then45 [label %do.end50], !srcloc !92

if.then45:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %dev.i135 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv47 = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_read_bytes.__UNIQUE_ID_ddebug254, ptr noundef %dev.i135, ptr noundef nonnull @.str.18, i32 noundef %conv47) #4
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %if.then29
  br i1 %tobool23.not, label %do.end50.if.end55_crit_edge, label %if.then52

do.end50.if.end55_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then52:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %15 = and i8 %14, 15
  %16 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %int_reg, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %do.end50.if.end55_crit_edge
  call fastcc void @ms_print_debug_regs(ptr noundef %host)
  %17 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcr1, align 4
  %call.i = call i32 @rtsx_pci_write_register(ptr noundef %18, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #4
  %19 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool58.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  br i1 %tobool58.not, label %if.then59, label %if.else65

if.then59:                                        ; preds = %if.end55
  %22 = and i8 %21, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool62.not = icmp eq i8 %22, 0
  br i1 %tobool62.not, label %if.then59.if.end76_crit_edge, label %if.then59.cleanup_crit_edge

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then59.if.end76_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.else65:                                        ; preds = %if.end55
  %conv66 = zext i8 %21 to i32
  %and67 = and i32 %conv66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp ne i32 %and67, 0
  %and71 = and i32 %conv66, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %or.cond = or i1 %tobool68.not, %tobool72.not
  br i1 %or.cond, label %if.else65.if.end76_crit_edge, label %if.else65.cleanup_crit_edge

if.else65.cleanup_crit_edge:                      ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else65.if.end76_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.end76:                                         ; preds = %if.else65.if.end76_crit_edge, %if.then59.if.end76_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.else65.cleanup_crit_edge, %if.then59.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end76 ], [ -5, %if.then59.cleanup_crit_edge ], [ -5, %if.else65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  br label %cleanup93

if.end77:                                         ; preds = %if.end25
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_cmds_ptr.i, align 4
  %ptr.0140 = getelementptr i8, ptr %24, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt)
  %cmp81141.not = icmp eq i8 %cnt, 0
  br i1 %cmp81141.not, label %if.end77.for.end86_crit_edge, label %if.end77.for.body83_crit_edge

if.end77.for.body83_crit_edge:                    ; preds = %if.end77
  br label %for.body83

if.end77.for.end86_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end86

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %if.end77.for.body83_crit_edge
  %ptr.0143 = phi ptr [ %ptr.0, %for.body83.for.body83_crit_edge ], [ %ptr.0140, %if.end77.for.body83_crit_edge ]
  %i.1142 = phi i32 [ %inc85, %for.body83.for.body83_crit_edge ], [ 0, %if.end77.for.body83_crit_edge ]
  %25 = ptrtoint ptr %ptr.0143 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ptr.0143, align 1
  %arrayidx = getelementptr i8, ptr %data, i32 %i.1142
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx, align 1
  %inc85 = add nuw nsw i32 %i.1142, 1
  %ptr.0 = getelementptr i8, ptr %ptr.0143, i32 1
  %exitcond146.not = icmp eq i32 %inc85, %conv9
  br i1 %exitcond146.not, label %for.body83.for.end86_crit_edge, label %for.body83.for.body83_crit_edge

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body83

for.body83.for.end86_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end86

for.end86:                                        ; preds = %for.body83.for.end86_crit_edge, %if.end77.for.end86_crit_edge
  %ptr.0.lcssa = phi ptr [ %ptr.0140, %if.end77.for.end86_crit_edge ], [ %ptr.0, %for.body83.for.end86_crit_edge ]
  br i1 %tobool23.not, label %for.end86.cleanup93_crit_edge, label %if.then88

for.end86.cleanup93_crit_edge:                    ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup93

if.then88:                                        ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %ptr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ptr.0.lcssa, align 1
  %30 = and i8 %29, 15
  %31 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %int_reg, align 1
  br label %cleanup93

cleanup93:                                        ; preds = %if.then88, %for.end86.cleanup93_crit_edge, %cleanup, %do.end.cleanup93_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -22, %do.end.cleanup93_crit_edge ], [ 0, %if.then88 ], [ 0, %for.end86.cleanup93_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ms_write_bytes(ptr nocapture noundef readonly %host, i8 noundef zeroext %tpc, i8 noundef zeroext %cfg, i8 noundef zeroext %cnt, ptr noundef readonly %data, ptr noundef writeonly %int_reg) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_write_bytes.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_write_bytes, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %conv = zext i8 %tpc to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_write_bytes.__UNIQUE_ID_ddebug251, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool6.not = icmp eq ptr %data, null
  br i1 %tobool6.not, label %do.end.cleanup79_crit_edge, label %if.end8

do.end.cleanup79_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79

if.end8:                                          ; preds = %do.end
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ci, align 4
  %conv9 = zext i8 %cnt to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cnt)
  %cmp119.not = icmp eq i8 %cnt, 0
  br i1 %cmp119.not, label %if.end8.if.end17_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %5 = trunc i32 %i.0120 to i16
  %conv11 = add i16 %5, -1536
  %arrayidx = getelementptr i8, ptr %data, i32 %i.0120
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %conv11, i8 noundef zeroext -1, i8 noundef zeroext %7) #4
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %conv9
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %rem = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool13.not = icmp eq i32 %rem, 0
  br i1 %tobool13.not, label %for.end.if.end17_crit_edge, label %if.then14

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %phi.cast = zext i8 %cnt to i16
  %phi.bo = or i16 %phi.cast, -1536
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %phi.bo, i8 noundef zeroext -1, i8 noundef zeroext -1) #4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %for.end.if.end17_crit_edge, %if.end8.if.end17_crit_edge
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -703, i8 noundef zeroext -1, i8 noundef zeroext %tpc) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -699, i8 noundef zeroext -1, i8 noundef zeroext %cnt) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -702, i8 noundef zeroext -1, i8 noundef zeroext %cfg) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -701, i8 noundef zeroext -1, i8 noundef zeroext -124) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -701, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  %tobool18.not = icmp eq ptr %int_reg, null
  br i1 %tobool18.not, label %if.end20, label %if.end20.thread

if.end20:                                         ; preds = %if.end17
  %call21 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef 5000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.if.then24_crit_edge, label %if.end20.cleanup79_crit_edge

if.end20.cleanup79_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end20.thread:                                  ; preds = %if.end17
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %call21117 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef 5000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21117)
  %cmp22118 = icmp slt i32 %call21117, 0
  br i1 %cmp22118, label %if.end20.thread.if.then24_crit_edge, label %if.then73

if.end20.thread.if.then24_crit_edge:              ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %if.end20.thread.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !93
  %call25 = call i32 @rtsx_pci_read_register(ptr noundef %1, i16 noundef zeroext -702, ptr noundef nonnull %val) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_write_bytes.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_write_bytes, %do.end45)) #4
          to label %if.then40 [label %do.end45], !srcloc !92

if.then40:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %dev.i114 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %val, align 1
  %conv42 = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_write_bytes.__UNIQUE_ID_ddebug252, ptr noundef %dev.i114, ptr noundef nonnull @.str.18, i32 noundef %conv42) #4
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %if.then24
  br i1 %tobool18.not, label %do.end45.if.end50_crit_edge, label %if.then47

do.end45.if.end50_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then47:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val, align 1
  %15 = and i8 %14, 15
  %16 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %int_reg, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %do.end45.if.end50_crit_edge
  call fastcc void @ms_print_debug_regs(ptr noundef %host)
  %17 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcr1, align 4
  %call.i = call i32 @rtsx_pci_write_register(ptr noundef %18, i16 noundef zeroext -684, i8 noundef zeroext -120, i8 noundef zeroext -120) #4
  %19 = and i8 %tpc, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool53.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val, align 1
  br i1 %tobool53.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end50
  %22 = and i8 %21, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool57.not = icmp eq i8 %22, 0
  br i1 %tobool57.not, label %if.then54.if.end70_crit_edge, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then54.if.end70_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.else:                                          ; preds = %if.end50
  %conv60 = zext i8 %21 to i32
  %and61 = and i32 %conv60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp ne i32 %and61, 0
  %and65 = and i32 %conv60, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  %or.cond = or i1 %tobool62.not, %tobool66.not
  br i1 %or.cond, label %if.else.if.end70_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.end70:                                         ; preds = %if.else.if.end70_crit_edge, %if.then54.if.end70_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.else.cleanup_crit_edge, %if.then54.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end70 ], [ -5, %if.then54.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  br label %cleanup79

if.then73:                                        ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #6
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr, align 1
  %27 = and i8 %26, 15
  %28 = ptrtoint ptr %int_reg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %int_reg, align 1
  br label %cleanup79

cleanup79:                                        ; preds = %if.then73, %cleanup, %if.end20.cleanup79_crit_edge, %do.end.cleanup79_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -22, %do.end.cleanup79_crit_edge ], [ 0, %if.then73 ], [ 0, %if.end20.cleanup79_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_send_cmd_no_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_transfer_data(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ms_print_debug_regs(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_ms, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -704, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -703, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -702, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -701, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -700, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %entry
  %i.182 = phi i16 [ %inc9, %for.body7.for.body7_crit_edge ], [ -686, %entry ]
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %i.182, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %inc9 = add nuw nsw i16 %i.182, 1
  %cmp5 = icmp ult i16 %i.182, -663
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.end10

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.end10:                                        ; preds = %for.body7
  %call = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef 100) #4
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_cmds_ptr.i, align 4
  br label %do.body

do.body:                                          ; preds = %for.inc24.do.body_crit_edge, %for.end10
  %indvars.iv = phi i32 [ 64832, %for.end10 ], [ %indvars.iv.next, %for.inc24.do.body_crit_edge ]
  %ptr.083 = phi ptr [ %4, %for.end10 ], [ %ptr.1, %for.inc24.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %for.inc24)) #4
          to label %if.then [label %for.inc24], !srcloc !92

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %incdec.ptr = getelementptr i8, ptr %ptr.083, i32 1
  %7 = ptrtoint ptr %ptr.083 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ptr.083, align 1
  %conv23 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug248, ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %indvars.iv, i32 noundef %conv23) #4
  br label %for.inc24

for.inc24:                                        ; preds = %if.then, %do.body
  %ptr.1 = phi ptr [ %incdec.ptr, %if.then ], [ %ptr.083, %do.body ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 64837
  br i1 %exitcond.not, label %for.inc24.do.body32_crit_edge, label %for.inc24.do.body_crit_edge

for.inc24.do.body_crit_edge:                      ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc24.do.body32_crit_edge:                    ; preds = %for.inc24
  br label %do.body32

do.body32:                                        ; preds = %for.inc54.do.body32_crit_edge, %for.inc24.do.body32_crit_edge
  %indvars.iv89 = phi i32 [ %indvars.iv.next90, %for.inc54.do.body32_crit_edge ], [ 64850, %for.inc24.do.body32_crit_edge ]
  %ptr.286 = phi ptr [ %ptr.3, %for.inc54.do.body32_crit_edge ], [ %ptr.1, %for.inc24.do.body32_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ms_print_debug_regs, %for.inc54)) #4
          to label %if.then46 [label %for.inc54], !srcloc !92

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %dev.i78 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %incdec.ptr49 = getelementptr i8, ptr %ptr.286, i32 1
  %11 = ptrtoint ptr %ptr.286 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ptr.286, align 1
  %conv50 = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ms_print_debug_regs.__UNIQUE_ID_ddebug249, ptr noundef %dev.i78, ptr noundef nonnull @.str.20, i32 noundef %indvars.iv89, i32 noundef %conv50) #4
  br label %for.inc54

for.inc54:                                        ; preds = %if.then46, %do.body32
  %ptr.3 = phi ptr [ %incdec.ptr49, %if.then46 ], [ %ptr.286, %do.body32 ]
  %indvars.iv.next90 = add nuw nsw i32 %indvars.iv89, 1
  %exitcond91.not = icmp eq i32 %indvars.iv.next90, 64874
  br i1 %exitcond91.not, label %for.end56, label %for.inc54.do.body32_crit_edge

for.inc54.do.body32_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body32

for.end56:                                        ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_exclusive_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_pull_ctl_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_power_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_power_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_pull_ctl_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_complete_unfinished_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @memstick_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_rtsx_pci_ms__265_639_rtsx_pci_ms_driver_init6, !1, !"__initcall__kmod_rtsx_pci_ms__265_639_rtsx_pci_ms_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 639, i32 1}
!2 = !{ptr @__exitcall_rtsx_pci_ms_driver_exit, !1, !"__exitcall_rtsx_pci_ms_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file266, !4, !"__UNIQUE_ID_file266", i1 false, i1 false}
!4 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 641, i32 1}
!5 = !{ptr @__UNIQUE_ID_license267, !4, !"__UNIQUE_ID_license267", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author268, !7, !"__UNIQUE_ID_author268", i1 false, i1 false}
!7 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 642, i32 1}
!8 = !{ptr @__UNIQUE_ID_description269, !9, !"__UNIQUE_ID_description269", i1 false, i1 false}
!9 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 643, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 636, i32 11}
!12 = !{ptr @rtsx_pci_ms_driver, !13, !"rtsx_pci_ms_driver", i1 false, i1 false}
!13 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 629, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 546, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtsx_pci_ms_drv_probe.__UNIQUE_ID_ddebug262, !15, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!19 = !{ptr @rtsx_pci_ms_drv_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 561, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtsx_pci_ms_drv_probe.__key.5, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 563, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 410, i32 4}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtsx_pci_ms_handle_req.__UNIQUE_ID_ddebug257, !26, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 344, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug255, !30, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 374, i32 3}
!35 = !{ptr @rtsx_pci_ms_issue_cmd.__UNIQUE_ID_ddebug256, !34, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 139, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ms_transfer_data.__UNIQUE_ID_ddebug250, !37, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 274, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ms_read_bytes.__UNIQUE_ID_ddebug253, !43, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 306, i32 3}
!48 = !{ptr @ms_read_bytes.__UNIQUE_ID_ddebug254, !47, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 62, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug248, !50, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!53 = !{ptr @ms_print_debug_regs.__UNIQUE_ID_ddebug249, !54, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!54 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 64, i32 3}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 205, i32 2}
!57 = !{ptr @ms_write_bytes.__UNIQUE_ID_ddebug251, !56, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!58 = !{ptr @ms_write_bytes.__UNIQUE_ID_ddebug252, !59, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!59 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 237, i32 3}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 424, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtsx_pci_ms_request.__UNIQUE_ID_ddebug258, !61, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 441, i32 2}
!66 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rtsx_pci_ms_set_param.__UNIQUE_ID_ddebug259, !65, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 596, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug263, !69, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 614, i32 2}
!74 = !{ptr @rtsx_pci_ms_drv_remove.__UNIQUE_ID_ddebug264, !73, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 500, i32 2}
!77 = !{ptr @rtsx_pci_ms_suspend.__UNIQUE_ID_ddebug260, !76, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 511, i32 2}
!80 = !{ptr @rtsx_pci_ms_resume.__UNIQUE_ID_ddebug261, !79, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!81 = !{ptr @rtsx_pci_ms_ids, !82, !"rtsx_pci_ms_ids", i1 false, i1 false}
!82 = !{!"../drivers/memstick/host/rtsx_pci_ms.c", i32 620, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148966740, i64 2148966745, i64 2148966758, i64 2148966802, i64 2148966836, i64 2148966857}
!93 = !{!"auto-init"}
