; ModuleID = '/llk/IR_all_yes/drivers/soc/ti/wkup_m3_ipc.c_pt.bc'
source_filename = "../drivers/soc/ti/wkup_m3_ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wkup_m3_ipc_get\22, \22a\22\09"
module asm "\09.weak\09__crc_wkup_m3_ipc_get\09\09\09\09"
module asm "\09.long\09__crc_wkup_m3_ipc_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wkup_m3_ipc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22wkup_m3_ipc_get\22\09\09\09\09\09"
module asm "__kstrtabns_wkup_m3_ipc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wkup_m3_ipc_put\22, \22a\22\09"
module asm "\09.weak\09__crc_wkup_m3_ipc_put\09\09\09\09"
module asm "\09.long\09__crc_wkup_m3_ipc_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wkup_m3_ipc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22wkup_m3_ipc_put\22\09\09\09\09\09"
module asm "__kstrtabns_wkup_m3_ipc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wkup_m3_ipc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wkup_m3_wakeup_src = type { i32, [10 x i8] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wkup_m3_ipc = type { ptr, ptr, ptr, i32, i32, i32, %struct.completion, %struct.mbox_client, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@m3_ipc_state = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_wkup_m3_ipc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_wkup_m3_ipc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_wkup_m3_ipc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wkup_m3_ipc_get to i32), ptr @__kstrtab_wkup_m3_ipc_get, ptr @__kstrtabns_wkup_m3_ipc_get }, section "___ksymtab_gpl+wkup_m3_ipc_get", align 4
@__kstrtab_wkup_m3_ipc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_wkup_m3_ipc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_wkup_m3_ipc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wkup_m3_ipc_put to i32), ptr @__kstrtab_wkup_m3_ipc_put, ptr @__kstrtabns_wkup_m3_ipc_put }, section "___ksymtab_gpl+wkup_m3_ipc_put", align 4
@__initcall__kmod_wkup_m3_ipc__288_575_wkup_m3_ipc_driver_init6 = internal global ptr @wkup_m3_ipc_driver_init, section ".initcall6.init", align 4
@wkup_m3_ipc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wkup_m3_ipc_probe, ptr @wkup_m3_ipc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wkup_m3_ipc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wkup_m3_ipc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wkup_m3_ipc_driver_exit = internal global ptr @wkup_m3_ipc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [44 x i8] c"wkup_m3_ipc.file=drivers/soc/ti/wkup_m3_ipc\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [27 x i8] c"wkup_m3_ipc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"wkup_m3_ipc.description=wkup m3 remote processor ipc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [51 x i8] c"wkup_m3_ipc.author=Dave Gerlach <d-gerlach@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wkup_m3_ipc\00", [20 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-wkup-m3-ipc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-wkup-m3-ipc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wkup_m3_ipc_suspend, ptr @wkup_m3_ipc_resume, ptr @wkup_m3_ipc_suspend, ptr @wkup_m3_ipc_resume, ptr @wkup_m3_ipc_suspend, ptr @wkup_m3_ipc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no irq resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wkup_m3_ipc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soc/ti/wkup_m3_ipc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry_ptr = internal global ptr @wkup_m3_ipc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wkup_m3_txev\00", [19 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry_ptr.9 = internal global ptr @wkup_m3_ipc_probe._entry.7, section ".printk_index", align 4
@wkup_m3_ipc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"IPC Request for A8->M3 Channel failed! %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry_ptr.12 = internal global ptr @wkup_m3_ipc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,rproc\00", [23 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not get rproc phandle\0A\00", [35 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry_ptr.16 = internal global ptr @wkup_m3_ipc_probe._entry.14, section ".printk_index", align 4
@wkup_m3_ipc_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not get rproc handle\0A\00", [36 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry_ptr.19 = internal global ptr @wkup_m3_ipc_probe._entry.17, section ".printk_index", align 4
@ipc_ops = internal global { %struct.wkup_m3_ipc_ops, [36 x i8] } { %struct.wkup_m3_ipc_ops { ptr @wkup_m3_set_mem_type, ptr @wkup_m3_set_resume_address, ptr @wkup_m3_prepare_low_power, ptr @wkup_m3_finish_low_power, ptr @wkup_m3_request_pm_status, ptr @wkup_m3_request_wake_src, ptr @wkup_m3_set_rtc_only }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wkup_m3_rproc_loader\00", [43 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't create rproc_boot thread\0A\00", [32 x i8] zeroinitializer }, align 32
@wkup_m3_ipc_probe._entry_ptr.23 = internal global ptr @wkup_m3_ipc_probe._entry.21, section ".printk_index", align 4
@wkup_m3_txev_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 127, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CM3 Firmware Version %x not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wkup_m3_txev_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wkup_m3_txev_handler._entry_ptr = internal global ptr @wkup_m3_txev_handler._entry, section ".printk_index", align 4
@wkup_m3_txev_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 129, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CM3 Firmware Version = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wkup_m3_txev_handler._entry_ptr.30 = internal global ptr @wkup_m3_txev_handler._entry.27, section ".printk_index", align 4
@wkup_m3_txev_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.3, i32 143, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown CM3 State\0A\00", [45 x i8] zeroinitializer }, align 32
@wkup_m3_txev_handler._entry_ptr.33 = internal global ptr @wkup_m3_txev_handler._entry.31, section ".printk_index", align 4
@wkup_m3_prepare_low_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 313, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to ping CM3\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wkup_m3_prepare_low_power\00", [38 x i8] zeroinitializer }, align 32
@wkup_m3_prepare_low_power._entry_ptr = internal global ptr @wkup_m3_prepare_low_power._entry, section ".printk_index", align 4
@wkup_m3_ping_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No IPC channel to communicate with wkup_m3!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wkup_m3_ping_noirq\00", [45 x i8] zeroinitializer }, align 32
@wkup_m3_ping_noirq._entry_ptr = internal global ptr @wkup_m3_ping_noirq._entry, section ".printk_index", align 4
@wkup_m3_ping_noirq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: mbox_send_message() failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wkup_m3_ping_noirq._entry_ptr.41 = internal global ptr @wkup_m3_ping_noirq._entry.39, section ".printk_index", align 4
@wkup_m3_ping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.42, ptr @.str.3, i32 159, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wkup_m3_ping\00", [19 x i8] zeroinitializer }, align 32
@wkup_m3_ping._entry_ptr = internal global ptr @wkup_m3_ping._entry, section ".printk_index", align 4
@wkup_m3_ping._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.42, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wkup_m3_ping._entry_ptr.44 = internal global ptr @wkup_m3_ping._entry.43, section ".printk_index", align 4
@wkup_m3_ping._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MPU<->CM3 sync failure\0A\00", [40 x i8] zeroinitializer }, align 32
@wkup_m3_ping._entry_ptr.47 = internal global ptr @wkup_m3_ping._entry.45, section ".printk_index", align 4
@wkup_m3_finish_low_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.48, ptr @.str.3, i32 341, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wkup_m3_finish_low_power\00", [39 x i8] zeroinitializer }, align 32
@wkup_m3_finish_low_power._entry_ptr = internal global ptr @wkup_m3_finish_low_power._entry, section ".printk_index", align 4
@wakeups = internal constant { [15 x %struct.wkup_m3_wakeup_src], [48 x i8] } { [15 x %struct.wkup_m3_wakeup_src] [%struct.wkup_m3_wakeup_src { i32 16, [10 x i8] c"PRCM\00\00\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 35, [10 x i8] c"USB0_PHY\00\00" }, %struct.wkup_m3_wakeup_src { i32 36, [10 x i8] c"USB1_PHY\00\00" }, %struct.wkup_m3_wakeup_src { i32 40, [10 x i8] c"I2C0\00\00\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 41, [10 x i8] c"RTC Timer\00" }, %struct.wkup_m3_wakeup_src { i32 42, [10 x i8] c"RTC Alarm\00" }, %struct.wkup_m3_wakeup_src { i32 43, [10 x i8] c"Timer0\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 44, [10 x i8] c"Timer1\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 45, [10 x i8] c"UART\00\00\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 46, [10 x i8] c"GPIO0\00\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 48, [10 x i8] c"MPU_WAKE\00\00" }, %struct.wkup_m3_wakeup_src { i32 49, [10 x i8] c"WDT0\00\00\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 50, [10 x i8] c"WDT1\00\00\00\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 51, [10 x i8] c"ADC_TSC\00\00\00" }, %struct.wkup_m3_wakeup_src { i32 0, [10 x i8] c"Unknown\00\00\00" }], [48 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_boot_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rproc_boot failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wkup_m3_rproc_boot_thread\00", [38 x i8] zeroinitializer }, align 32
@wkup_m3_rproc_boot_thread._entry_ptr = internal global ptr @wkup_m3_rproc_boot_thread._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.wkup_m3_prepare_low_power = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 67108864, i32 201326592, i32 268435456], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [16 x i64] [i64 14, i64 8, i64 16, i64 35, i64 36, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 48, i64 49, i64 50, i64 51]
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"m3_ipc_state\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 49, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"wkup_m3_ipc_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 565, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 569, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"wkup_m3_ipc_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 558, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"wkup_m3_ipc_pm_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 554, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 454, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 459, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 461, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 475, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 480, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 481, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 488, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [8 x i8] c"ipc_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 378, i32 31 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 504, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 508, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 126, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 129, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 143, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 313, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 196, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 203, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 158, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 172, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 180, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 341, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [8 x i8] c"wakeups\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 51, i32 40 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private constant [32 x i8] c"../drivers/soc/ti/wkup_m3_ipc.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 426, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 87, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [39 x i8] c"switch.table.wkup_m3_prepare_low_power\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_wkup_m3_ipc_driver_exit, ptr @__initcall__kmod_wkup_m3_ipc__288_575_wkup_m3_ipc_driver_init6, ptr @__ksymtab_wkup_m3_ipc_get, ptr @__ksymtab_wkup_m3_ipc_put, ptr @wkup_m3_finish_low_power._entry, ptr @wkup_m3_finish_low_power._entry_ptr, ptr @wkup_m3_ipc_driver_exit, ptr @wkup_m3_ipc_probe._entry, ptr @wkup_m3_ipc_probe._entry.10, ptr @wkup_m3_ipc_probe._entry.14, ptr @wkup_m3_ipc_probe._entry.17, ptr @wkup_m3_ipc_probe._entry.21, ptr @wkup_m3_ipc_probe._entry.7, ptr @wkup_m3_ipc_probe._entry_ptr, ptr @wkup_m3_ipc_probe._entry_ptr.12, ptr @wkup_m3_ipc_probe._entry_ptr.16, ptr @wkup_m3_ipc_probe._entry_ptr.19, ptr @wkup_m3_ipc_probe._entry_ptr.23, ptr @wkup_m3_ipc_probe._entry_ptr.9, ptr @wkup_m3_ping._entry, ptr @wkup_m3_ping._entry.43, ptr @wkup_m3_ping._entry.45, ptr @wkup_m3_ping._entry_ptr, ptr @wkup_m3_ping._entry_ptr.44, ptr @wkup_m3_ping._entry_ptr.47, ptr @wkup_m3_ping_noirq._entry, ptr @wkup_m3_ping_noirq._entry.39, ptr @wkup_m3_ping_noirq._entry_ptr, ptr @wkup_m3_ping_noirq._entry_ptr.41, ptr @wkup_m3_prepare_low_power._entry, ptr @wkup_m3_prepare_low_power._entry_ptr, ptr @wkup_m3_rproc_boot_thread._entry, ptr @wkup_m3_rproc_boot_thread._entry_ptr, ptr @wkup_m3_txev_handler._entry, ptr @wkup_m3_txev_handler._entry.27, ptr @wkup_m3_txev_handler._entry.31, ptr @wkup_m3_txev_handler._entry_ptr, ptr @wkup_m3_txev_handler._entry_ptr.30, ptr @wkup_m3_txev_handler._entry_ptr.33, ptr @m3_ipc_state, ptr @wkup_m3_ipc_driver, ptr @.str, ptr @wkup_m3_ipc_of_match, ptr @wkup_m3_ipc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @ipc_ops, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.46, ptr @.str.48, ptr @wakeups, ptr @.str.49, ptr @.str.50, ptr @init_completion.__key, ptr @.str.51, ptr @switch.table.wkup_m3_prepare_low_power], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m3_ipc_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ipc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_txev_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_txev_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_txev_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_prepare_low_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ping_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ping_noirq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ping._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_ping._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_finish_low_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeups to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_m3_rproc_boot_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wkup_m3_prepare_low_power to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wkup_m3_ipc_get() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m3_ipc_state, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wkup_m3_ipc, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = tail call ptr @get_device(ptr noundef %2) #9
  %3 = load ptr, ptr @m3_ipc_state, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wkup_m3_ipc_put(ptr nocapture readnone %m3_ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m3_ipc_state, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wkup_m3_ipc, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_ipc_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wkup_m3_ipc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wkup_m3_ipc_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @wkup_m3_ipc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_ipc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %rproc_phandle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rproc_phandle) #9
  %0 = ptrtoint ptr %rproc_phandle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rproc_phandle, align 4, !annotation !125
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #9
  %ipc_mem_base = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ipc_mem_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %ipc_mem_base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call.i120 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef nonnull @wkup_m3_txev_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool16.not = icmp eq i32 %call.i120, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %mbox_client = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %mbox_client to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %mbox_client, align 4
  %tx_done = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 7, i32 6
  %4 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tx_done, align 4
  %tx_prepare = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 7, i32 5
  %5 = ptrtoint ptr %tx_prepare to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tx_prepare, align 4
  %rx_callback = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 7, i32 4
  %6 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rx_callback, align 4
  %tx_block = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %knows_txdone, align 4
  %call29 = tail call ptr @mbox_request_channel(ptr noundef %mbox_client, i32 noundef 0) #9
  %mbox = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call29, ptr %mbox, align 4
  %cmp.i121 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %do.end35, label %if.end40

do.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %10) #12
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbox, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end21
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef nonnull %rproc_phandle, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool42.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #12
  br label %err_free_mbox

if.end48:                                         ; preds = %if.end40
  %16 = ptrtoint ptr %rproc_phandle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rproc_phandle, align 4
  %call49 = call ptr @rproc_get_by_phandle(i32 noundef %17) #9
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #12
  br label %err_free_mbox

if.end56:                                         ; preds = %if.end48
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call49, ptr %call.i, align 4
  %dev57 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %dev57 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %dev57, align 4
  %state = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state, align 4
  %ops = getelementptr inbounds %struct.wkup_m3_ipc, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ipc_ops, ptr %ops, align 4
  %call58 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @wkup_m3_rproc_boot_thread, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.20) #9
  %cmp.i122 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %do.end67, label %if.end62

if.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 @wake_up_process(ptr noundef %call58) #9
  br label %cleanup

do.end67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #12
  %22 = ptrtoint ptr %call58 to i32
  call void @rproc_put(ptr noundef nonnull %call49) #9
  br label %err_free_mbox

err_free_mbox:                                    ; preds = %do.end67, %do.end54, %do.end46
  %ret.0 = phi i32 [ -19, %do.end46 ], [ %22, %do.end67 ], [ -517, %do.end54 ]
  %23 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbox, align 4
  call void @mbox_free_channel(ptr noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_mbox, %if.end62, %do.end35, %do.end20, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call.i120, %do.end20 ], [ %13, %do.end35 ], [ %ret.0, %err_free_mbox ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rproc_phandle) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_ipc_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m3_ipc_state, align 4
  %mbox = getelementptr inbounds %struct.wkup_m3_ipc, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbox, align 4
  tail call void @mbox_free_channel(ptr noundef %2) #9
  %3 = load ptr, ptr @m3_ipc_state, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @rproc_shutdown(ptr noundef %5) #9
  %6 = load ptr, ptr @m3_ipc_state, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @rproc_put(ptr noundef %8) #9
  store ptr null, ptr @m3_ipc_state, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_txev_handler(i32 noundef %irq, ptr noundef %ipc_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %ipc_data, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %ipc_mem_base.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %ipc_data, i32 0, i32 1
  %2 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipc_mem_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #9, !srcloc !127
  %state = getelementptr inbounds %struct.wkup_m3_ipc, ptr %ipc_data, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb7
    i32 3, label %sw.bb10
    i32 0, label %do.end15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %9)
  %cmp = icmp ugt i32 %9, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 401, i32 %11)
  %cmp2 = icmp ult i32 %11, 401
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %do.end, label %do.end5

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %11) #12
  br label %if.end

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %do.end5, %do.end
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %state, align 4
  %sync_complete = getelementptr inbounds %struct.wkup_m3_ipc, ptr %ipc_data, i32 0, i32 6
  tail call void @complete(ptr noundef %sync_complete) #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %state, align 4
  %sync_complete9 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %ipc_data, i32 0, i32 6
  tail call void @complete(ptr noundef %sync_complete9) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sync_complete11 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %ipc_data, i32 0, i32 6
  tail call void @complete(ptr noundef %sync_complete11) #9
  br label %sw.epilog

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.32) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %sw.bb10, %sw.bb7, %if.end, %entry.sw.epilog_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipc_mem_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #9, !srcloc !127
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_get_by_phandle(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_rproc_boot_thread(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %sync_complete = getelementptr inbounds %struct.wkup_m3_ipc, ptr %arg, i32 0, i32 6
  %2 = ptrtoint ptr %sync_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sync_complete, align 4
  %wait.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %arg, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @init_completion.__key) #9
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg, align 4
  %call = tail call i32 @rproc_boot(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %arg, ptr @m3_ipc_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wkup_m3_set_mem_type(ptr nocapture noundef writeonly %m3_ipc, i32 noundef %mem_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_type1 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 3
  %0 = ptrtoint ptr %mem_type1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %mem_type, ptr %mem_type1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @wkup_m3_set_resume_address(ptr nocapture noundef writeonly %m3_ipc, ptr noundef %addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  %resume_addr = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 4
  %1 = ptrtoint ptr %resume_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %resume_addr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_prepare_low_power(ptr noundef %m3_ipc, i32 noundef %state) #0 align 64 {
entry:
  %dummy_msg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 3
  br i1 %5, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wkup_m3_prepare_low_power, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %resume_addr = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 4
  %7 = ptrtoint ptr %resume_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resume_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  %ipc_mem_base.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 1
  %10 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %switch.load) #9, !srcloc !127
  %mem_type = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 3
  %14 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_type, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %16) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 -1) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 -1) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 -1) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %26, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 -1) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 -1) #9, !srcloc !127
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %switch.lookup
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_msg.i) #9
  %32 = ptrtoint ptr %dummy_msg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dummy_msg.i, align 4
  %mbox.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 8
  %33 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mbox.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.37) #12
  br label %wkup_m3_ping_noirq.exit

if.end.i:                                         ; preds = %if.then5
  %call.i = call i32 @mbox_send_message(ptr noundef nonnull %34, ptr noundef nonnull %dummy_msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end7.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %call.i) #12
  br label %wkup_m3_ping_noirq.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbox.i, align 4
  call void @mbox_client_txdone(ptr noundef %36, i32 noundef 0) #9
  br label %wkup_m3_ping_noirq.exit

wkup_m3_ping_noirq.exit:                          ; preds = %if.end7.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end6.i ], [ 0, %if.end7.i ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_msg.i) #9
  br label %if.end8

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call fastcc i32 @wkup_m3_ping(ptr noundef %m3_ipc)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %wkup_m3_ping_noirq.exit
  %ret.0 = phi i32 [ %retval.0.i, %wkup_m3_ping_noirq.exit ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_finish_low_power(ptr noundef %m3_ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %state.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 5
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %ipc_mem_base.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 1
  %5 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 234881024) #9, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 -1) #9, !srcloc !127
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %state.i, align 4
  %call2 = tail call fastcc i32 @wkup_m3_ping(ptr noundef %m3_ipc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_request_pm_status(ptr nocapture noundef readonly %m3_ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipc_mem_base.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 1
  %0 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %shr = lshr i32 %3, 16
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @wkup_m3_request_wake_src(ptr nocapture noundef readonly %m3_ipc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipc_mem_base.i = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 1
  %0 = ptrtoint ptr %ipc_mem_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipc_mem_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %3 = lshr i32 %2, 24
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %trunc, label %for.inc.13 [
    i8 16, label %entry.cleanup_crit_edge
    i8 35, label %cleanup.fold.split
    i8 36, label %cleanup.fold.split13
    i8 40, label %cleanup.fold.split14
    i8 41, label %cleanup.fold.split15
    i8 42, label %cleanup.fold.split16
    i8 43, label %cleanup.fold.split17
    i8 44, label %cleanup.fold.split18
    i8 45, label %cleanup.fold.split19
    i8 46, label %cleanup.fold.split20
    i8 48, label %cleanup.fold.split21
    i8 49, label %cleanup.fold.split22
    i8 50, label %cleanup.fold.split23
    i8 51, label %cleanup.fold.split24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.13:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split, %for.inc.13, %entry.cleanup_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 14, %for.inc.13 ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split13 ], [ 3, %cleanup.fold.split14 ], [ 4, %cleanup.fold.split15 ], [ 5, %cleanup.fold.split16 ], [ 6, %cleanup.fold.split17 ], [ 7, %cleanup.fold.split18 ], [ 8, %cleanup.fold.split19 ], [ 9, %cleanup.fold.split20 ], [ 10, %cleanup.fold.split21 ], [ 11, %cleanup.fold.split22 ], [ 12, %cleanup.fold.split23 ], [ 13, %cleanup.fold.split24 ]
  %retval.0 = getelementptr [15 x %struct.wkup_m3_wakeup_src], ptr @wakeups, i32 0, i32 %j.0.lcssa, i32 1
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wkup_m3_set_rtc_only(ptr nocapture noundef readnone %m3_ipc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m3_ipc_state, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_rtc_only = getelementptr inbounds %struct.wkup_m3_ipc, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %is_rtc_only to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %is_rtc_only, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wkup_m3_ping(ptr noundef %m3_ipc) unnamed_addr #0 align 64 {
entry:
  %dummy_msg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy_msg) #9
  %2 = ptrtoint ptr %dummy_msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dummy_msg, align 4
  %mbox = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 8
  %3 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbox, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @mbox_send_message(ptr noundef nonnull %4, ptr noundef nonnull %dummy_msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42, i32 noundef %call) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %sync_complete = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 6
  %call9 = call i32 @wait_for_completion_timeout(ptr noundef %sync_complete, i32 noundef 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46) #12
  %state = getelementptr inbounds %struct.wkup_m3_ipc, ptr %m3_ipc, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox, align 4
  call void @mbox_client_txdone(ptr noundef %7, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end6 ], [ 0, %if.end15 ], [ -5, %do.end14 ], [ -5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy_msg) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_boot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wkup_m3_ipc_suspend(ptr nocapture noundef readnone %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wkup_m3_ipc_resume(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @m3_ipc_state, align 4
  %is_rtc_only = getelementptr inbounds %struct.wkup_m3_ipc, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %is_rtc_only to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %is_rtc_only, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  tail call void @rproc_shutdown(ptr noundef %4) #9
  %5 = load ptr, ptr @m3_ipc_state, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 @rproc_boot(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = load ptr, ptr @m3_ipc_state, align 4
  %is_rtc_only2 = getelementptr inbounds %struct.wkup_m3_ipc, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %is_rtc_only2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %is_rtc_only2, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__ksymtab_wkup_m3_ipc_get, !1, !"__ksymtab_wkup_m3_ipc_get", i1 false, i1 false}
!1 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 403, i32 1}
!2 = !{ptr @__ksymtab_wkup_m3_ipc_put, !3, !"__ksymtab_wkup_m3_ipc_put", i1 false, i1 false}
!3 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 414, i32 1}
!4 = !{ptr @__initcall__kmod_wkup_m3_ipc__288_575_wkup_m3_ipc_driver_init6, !5, !"__initcall__kmod_wkup_m3_ipc__288_575_wkup_m3_ipc_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 575, i32 1}
!6 = !{ptr @__exitcall_wkup_m3_ipc_driver_exit, !5, !"__exitcall_wkup_m3_ipc_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_file289, !8, !"__UNIQUE_ID_file289", i1 false, i1 false}
!8 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 577, i32 1}
!9 = !{ptr @__UNIQUE_ID_license290, !8, !"__UNIQUE_ID_license290", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description291, !11, !"__UNIQUE_ID_description291", i1 false, i1 false}
!11 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 578, i32 1}
!12 = !{ptr @__UNIQUE_ID_author292, !13, !"__UNIQUE_ID_author292", i1 false, i1 false}
!13 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 579, i32 1}
!14 = !{ptr @m3_ipc_state, !15, !"m3_ipc_state", i1 false, i1 false}
!15 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 49, i32 28}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 569, i32 11}
!18 = !{ptr @wkup_m3_ipc_driver, !19, !"wkup_m3_ipc_driver", i1 false, i1 false}
!19 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 565, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 454, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wkup_m3_ipc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @wkup_m3_ipc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 459, i32 14}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 461, i32 3}
!32 = !{ptr @wkup_m3_ipc_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wkup_m3_ipc_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 475, i32 3}
!36 = !{ptr @wkup_m3_ipc_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wkup_m3_ipc_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 480, i32 41}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 481, i32 3}
!42 = !{ptr @wkup_m3_ipc_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wkup_m3_ipc_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 488, i32 3}
!46 = !{ptr @wkup_m3_ipc_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wkup_m3_ipc_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 504, i32 9}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 508, i32 3}
!52 = !{ptr @wkup_m3_ipc_probe._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wkup_m3_ipc_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 126, i32 4}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wkup_m3_txev_handler._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @wkup_m3_txev_handler._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 129, i32 4}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wkup_m3_txev_handler._entry.27, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @wkup_m3_txev_handler._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 143, i32 3}
!67 = !{ptr @wkup_m3_txev_handler._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wkup_m3_txev_handler._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 95, i32 6}
!71 = !{ptr @ipc_ops, !72, !"ipc_ops", i1 false, i1 false}
!72 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 378, i32 31}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 313, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @wkup_m3_prepare_low_power._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @wkup_m3_prepare_low_power._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 196, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wkup_m3_ping_noirq._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @wkup_m3_ping_noirq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 203, i32 3}
!85 = !{ptr @wkup_m3_ping_noirq._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @wkup_m3_ping_noirq._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 158, i32 3}
!89 = !{ptr @wkup_m3_ping._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @wkup_m3_ping._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @wkup_m3_ping._entry.43, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 172, i32 3}
!93 = !{ptr @wkup_m3_ping._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 180, i32 3}
!96 = !{ptr @wkup_m3_ping._entry.45, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @wkup_m3_ping._entry_ptr.47, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 341, i32 3}
!100 = !{ptr @wkup_m3_finish_low_power._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @wkup_m3_finish_low_power._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @wakeups, !103, !"wakeups", i1 false, i1 false}
!103 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 51, i32 40}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 426, i32 3}
!106 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wkup_m3_rproc_boot_thread._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @wkup_m3_rproc_boot_thread._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @init_completion.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/completion.h", i32 87, i32 2}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @wkup_m3_ipc_of_match, !113, !"wkup_m3_ipc_of_match", i1 false, i1 false}
!113 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 558, i32 34}
!114 = !{ptr @wkup_m3_ipc_pm_ops, !115, !"wkup_m3_ipc_pm_ops", i1 false, i1 false}
!115 = !{!"../drivers/soc/ti/wkup_m3_ipc.c", i32 554, i32 32}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i64 2155022423}
!127 = !{i64 4218595}
!128 = !{i64 4219013}
!129 = !{i64 2155025355}
!130 = !{i64 2155022876}
!131 = !{i64 2155023929}
