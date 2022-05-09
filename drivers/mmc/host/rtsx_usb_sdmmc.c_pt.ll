; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/rtsx_usb_sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/rtsx_usb_sdmmc.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtsx_usb_sdmmc = type { ptr, ptr, ptr, ptr, %struct.mutex, i8, i32, i8, i8, i8, i8, i8, i8, i8, %struct.led_classdev, [32 x i8], %struct.work_struct }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.rtsx_ucr = type { i16, i16, i32, i8, i8, i32, ptr, i32, ptr, ptr, ptr, %struct.usb_sg_request, ptr, i32, %struct.timer_list, %struct.mutex }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }

@__initcall__kmod_rtsx_usb_sdmmc__316_1460_rtsx_usb_sdmmc_driver_init6 = internal global ptr @rtsx_usb_sdmmc_driver_init, section ".initcall6.init", align 4
@rtsx_usb_sdmmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtsx_usb_sdmmc_drv_probe, ptr @rtsx_usb_sdmmc_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtsx_usb_sdmmc_dev_pm_ops, ptr null, ptr null }, ptr @rtsx_usb_sdmmc_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtsx_usb_sdmmc_driver_exit = internal global ptr @rtsx_usb_sdmmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file317 = internal constant [52 x i8] c"rtsx_usb_sdmmc.file=drivers/mmc/host/rtsx_usb_sdmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [30 x i8] c"rtsx_usb_sdmmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [58 x i8] c"rtsx_usb_sdmmc.author=Roger Tseng <rogerable@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [63 x i8] c"rtsx_usb_sdmmc.description=Realtek USB SD/MMC Card Host Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtsx_usb_sdmmc\00", [17 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtsx_usb_sdmmc_runtime_suspend, ptr @rtsx_usb_sdmmc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"rtsx_usb_sdmmc\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_drv_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtsx_usb_sdmmc_drv_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mmc/host/rtsx_usb_sdmmc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c": Realtek USB SD/MMC controller found\0A\00", [57 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&host->host_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s::\00", [27 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1367, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register LED device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_drv_probe._entry_ptr = internal global ptr @rtsx_usb_sdmmc_drv_probe._entry, section ".printk_index", align 4
@rtsx_usb_sdmmc_drv_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&host->led_work)\00", [61 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @sdmmc_request, ptr null, ptr @sdmmc_set_ios, ptr @sdmmc_get_ro, ptr @sdmmc_get_cd, ptr null, ptr null, ptr null, ptr @sdmmc_switch_voltage, ptr @sdmmc_card_busy, ptr @sdmmc_execute_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sdmmc_request.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdmmc_request\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sdmmc_request.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmd->error = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sd_send_cmd_get_rsp\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: SD/MMC CMD %d, arg = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd->flag is not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtsx_usb_send_cmd error (err = %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Transfer failed (SD_TRANSFER = %02x)\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtsx_usb_get_rsp failed (err = %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.20, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid response bit\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.21, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CRC7 error\0A\00", [20 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.22, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd->resp[%d] = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.23, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cmd->resp[0] = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_rw_multi.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_rw_multi\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: read %zu bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@sd_rw_multi.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: write %zu bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@sd_rw_multi.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.27, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtsx_usb_transfer_data error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_read_data\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: SD/MMC CMD%d\0A\00", [46 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtsx_usb_send_cmd failed (err = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.18, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_read_data.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.19, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_read_data.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.23, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_read_data.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rtsx_usb_read_ppbuf failed (err = %d)\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_write_data.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd_write_data\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rtsx_usb_write_ppbuf failed (err = %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@sd_write_data.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.29, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_write_data.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.30, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_write_data.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.19, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sd_write_data.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.23, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sdmmc_set_ios.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.12, i8 1, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdmmc_set_ios\00", [18 x i8] zeroinitializer }, align 32
@sdmmc_set_ios.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s end\0A\00", [24 x i8] zeroinitializer }, align 32
@sd_power_off.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.12, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_power_off\00", [19 x i8] zeroinitializer }, align 32
@sd_power_on.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.12, i8 0, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_power_on\00", [20 x i8] zeroinitializer }, align 32
@sd_set_bus_width.width = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\01\02", [28 x i8] zeroinitializer }, align 32
@sdmmc_switch_voltage.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdmmc_switch_voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: signal_voltage = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sdmmc_card_busy.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.12, i8 1, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdmmc_card_busy\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sd_tuning_rx.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_tuning_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX phase setting failed\0A\00", [39 x i8] zeroinitializer }, align 32
@sd_tuning_rx.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX raw_phase_map[%d] = 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_tuning_rx.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX phase_map = 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_change_phase.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sd_change_phase\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s sample_point = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_search_final_phase\00", [42 x i8] zeroinitializer }, align 32
@sd_search_final_phase.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Phase: [map:%x] [maxlen:%d] [final:%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtsx_usb_sdmmc_drv_remove\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Controller removed during transfer\0A\00", [56 x i8] zeroinitializer }, align 32
@rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c": Realtek USB SD/MMC module has been removed\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 8, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 7, i64 17, i64 21, i64 29]
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"rtsx_usb_sdmmc_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1450, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1455, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"rtsx_usb_sdmmc_dev_pm_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1436, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"rtsx_usb_sdmmc_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1441, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1340, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1352, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1358, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1366, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1368, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"rtsx_usb_sdmmc_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1254, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 813, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 869, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 299, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 329, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 379, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 390, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 395, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 413, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 421, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 436, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 441, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 461, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 467, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 524, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 104, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 152, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 184, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 212, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1110, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1143, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 997, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 958, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 884, i32 18 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1152, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1204, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 711, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 725, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 729, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 583, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 630, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 644, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1389, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [37 x i8] c"../drivers/mmc/host/rtsx_usb_sdmmc.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 1410, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_rtsx_usb_sdmmc_driver_exit, ptr @__initcall__kmod_rtsx_usb_sdmmc__316_1460_rtsx_usb_sdmmc_driver_init6, ptr @rtsx_usb_sdmmc_driver_exit, ptr @rtsx_usb_sdmmc_drv_probe._entry, ptr @rtsx_usb_sdmmc_drv_probe._entry_ptr, ptr @rtsx_usb_sdmmc_driver, ptr @.str, ptr @rtsx_usb_sdmmc_dev_pm_ops, ptr @rtsx_usb_sdmmc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtsx_usb_sdmmc_drv_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rtsx_usb_sdmmc_drv_probe.__key.9, ptr @.str.10, ptr @rtsx_usb_sdmmc_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sd_set_bus_width.width, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_drv_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_usb_sdmmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_set_bus_width.width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_sdmmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtsx_usb_sdmmc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_sdmmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtsx_usb_sdmmc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_sdmmc_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_sdmmc_drv_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_usb_sdmmc_drv_probe, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !172

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_sdmmc_drv_probe.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call10 = tail call ptr @mmc_alloc_host(i32 noundef 600, ptr noundef %dev) #10
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 70
  %ucr15 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %4 = ptrtoint ptr %ucr15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ucr15, align 4
  %mmc16 = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1
  %5 = ptrtoint ptr %mmc16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %mmc16, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i84 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i84 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %private.i, ptr %driver_data.i.i84, align 4
  %host_mutex = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %host_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtsx_usb_sdmmc_drv_probe.__key) #10
  %8 = ptrtoint ptr %mmc16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc16, align 4
  %f_min.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %f_min.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 250000, ptr %f_min.i, align 4
  %f_max.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 6
  %11 = ptrtoint ptr %f_max.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 208000000, ptr %f_max.i, align 8
  %ocr_avail.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3145856, ptr %ocr_avail.i, align 64
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 16
  %13 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2588679, ptr %caps.i, align 32
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 17
  %14 = ptrtoint ptr %caps2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 540676, ptr %caps2.i, align 4
  %max_current_330.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 13
  %15 = ptrtoint ptr %max_current_330.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 400, ptr %max_current_330.i, align 4
  %max_current_180.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 15
  %16 = ptrtoint ptr %max_current_180.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 800, ptr %max_current_180.i, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rtsx_usb_sdmmc_ops, ptr %ops.i, align 4
  %max_segs.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 21
  %18 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %max_segs.i, align 4
  %max_seg_size.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 20
  %19 = ptrtoint ptr %max_seg_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65536, ptr %max_seg_size.i, align 16
  %max_blk_size.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 24
  %20 = ptrtoint ptr %max_blk_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %max_blk_size.i, align 4
  %max_blk_count.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 25
  %21 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %max_blk_count.i, align 128
  %max_req_size.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 23
  %22 = ptrtoint ptr %max_req_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 524288, ptr %max_req_size.i, align 8
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 5
  %23 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %power_mode.i, align 2
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %led_name = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 12, i32 8, i32 0, i32 0, i32 1
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i85 = phi ptr [ %27, %if.end.i ], [ %25, %if.end13.dev_name.exit_crit_edge ]
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %led_name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i85)
  %led = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %28 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %led_name, ptr %led, align 4
  %brightness = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %29 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %brightness, align 4
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i87 = icmp eq ptr %31, null
  br i1 %tobool.not.i87, label %if.end.i88, label %dev_name.exit.dev_name.exit90_crit_edge

dev_name.exit.dev_name.exit90_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit90

if.end.i88:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit90

dev_name.exit90:                                  ; preds = %if.end.i88, %dev_name.exit.dev_name.exit90_crit_edge
  %retval.0.i89 = phi ptr [ %33, %if.end.i88 ], [ %31, %dev_name.exit.dev_name.exit90_crit_edge ]
  %default_trigger = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 9, i32 1, i32 1
  %34 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i89, ptr %default_trigger, align 4
  %brightness_set = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 1
  %35 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rtsx_usb_led_control, ptr %brightness_set, align 4
  %36 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call10, align 128
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %37, ptr noundef %led, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %dev_name.exit90.do.body41_crit_edge, label %do.end38

dev_name.exit90.do.body41_crit_edge:              ; preds = %dev_name.exit90
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body41

do.end38:                                         ; preds = %dev_name.exit90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call.i) #13
  br label %do.body41

do.body41:                                        ; preds = %do.end38, %dev_name.exit90.do.body41_crit_edge
  %led_work = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 12, i32 8, i32 3
  tail call void @__init_work(ptr noundef %led_work, i32 noundef 0) #10
  %38 = ptrtoint ptr %led_work to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %led_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @rtsx_usb_sdmmc_drv_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry45 = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 12, i32 8, i32 4
  %39 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry45, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry45, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 12, i32 9
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @rtsx_usb_update_led, ptr %func, align 4
  %call49 = tail call i32 @mmc_add_host(ptr noundef nonnull %call10) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body41 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_sdmmc_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmc1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc1, align 4
  %host_removal = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %host_removal to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %host_removal, align 2
  %host_mutex = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #10
  %mrq = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mrq, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end20_crit_edge, label %do.body

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_usb_sdmmc_drv_remove, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !172

if.then8:                                         ; preds = %do.body
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.dev_name.exit_crit_edge

if.then8.dev_name.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then8.dev_name.exit_crit_edge
  %retval.0.i63 = phi ptr [ %10, %if.end.i ], [ %8, %if.then8.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef %retval.0.i63) #10
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %11 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -123, ptr %error, align 4
  %16 = load ptr, ptr %mrq, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stop, align 4
  %tobool13.not = icmp eq ptr %18, null
  br i1 %tobool13.not, label %do.end.if.end18_crit_edge, label %if.then14

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %error17 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %error17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -123, ptr %error17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %do.end.if.end18_crit_edge
  %20 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mrq, align 4
  tail call void @mmc_request_done(ptr noundef %3, ptr noundef %21) #10
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %host_mutex) #10
  tail call void @mmc_remove_host(ptr noundef %3) #10
  %led_work = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 16
  %call22 = tail call zeroext i1 @cancel_work_sync(ptr noundef %led_work) #10
  %led = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 14
  tail call void @led_classdev_unregister(ptr noundef %led) #10
  tail call void @mmc_free_host(ptr noundef %3) #10
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev23, i1 noundef zeroext true) #10
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_usb_sdmmc_drv_remove, %if.then36)) #10
          to label %cleanup [label %if.then36], !srcloc !172

if.then36:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug315, ptr noundef %dev23, ptr noundef nonnull @.str.54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end20, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_led_control(ptr noundef %led, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_removal = getelementptr i8, ptr %led, i32 -6
  %0 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %brightness2 = getelementptr inbounds %struct.led_classdev, ptr %led, i32 0, i32 1
  %2 = ptrtoint ptr %brightness2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %brightness, ptr %brightness2, align 4
  %led_work = getelementptr i8, ptr %led, i32 432
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %led_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_usb_update_led(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -556
  %ucr1 = getelementptr i8, ptr %work, i32 -552
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !174
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %power_mode = getelementptr i8, ptr %work, i32 -434
  %5 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %brightness = getelementptr i8, ptr %work, i32 -428
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  %. = select i1 %cmp3, i8 3, i8 2
  %call.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %1, i16 noundef zeroext -682, i8 noundef zeroext 3, i8 noundef zeroext %.) #10
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #10
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %dev.i20 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %call.i21 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev.i20, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %cmd2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd2, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_request.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_request, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_request.__UNIQUE_ID_ddebug305, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %host_removal = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 9
  %8 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -123, ptr %error, align 4
  br label %finish

if.end10:                                         ; preds = %do.end
  %card_exist = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 10
  %11 = ptrtoint ptr %card_exist to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %card_exist, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %error13 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -123, ptr %error13, align 4
  br label %finish_detect_card

if.end14:                                         ; preds = %if.end10
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %host_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #10
  %mrq15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %mrq15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mrq, ptr %mrq15, align 4
  tail call void @mutex_unlock(ptr noundef %host_mutex) #10
  %15 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data3, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %if.end14.if.then22_crit_edge, label %if.end20

if.end14.if.then22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end20:                                         ; preds = %if.end14
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  %mul = mul i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool21.not = icmp eq i32 %mul, 0
  br i1 %tobool21.not, label %if.end20.if.then22_crit_edge, label %if.else

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.end14.if.then22_crit_edge
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %private.i, ptr noundef %3)
  br label %if.end42

if.else:                                          ; preds = %if.end20
  %rem = and i32 %mul, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool23.not = icmp eq i32 %rem, 0
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  br i1 %tobool23.not, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %22)
  %cmp.not = icmp eq i32 %22, 8
  br i1 %cmp.not, label %land.lhs.true.if.else40_crit_edge, label %land.lhs.true.if.then26_crit_edge

land.lhs.true.if.then26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

lor.lhs.false:                                    ; preds = %if.else
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %lor.lhs.false.if.else40_crit_edge [
    i32 25, label %lor.lhs.false.if.then26_crit_edge
    i32 18, label %lor.lhs.false.if.then26_crit_edge145
  ]

lor.lhs.false.if.then26_crit_edge145:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

lor.lhs.false.if.else40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge145, %land.lhs.true.if.then26_crit_edge
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %private.i, ptr noundef %3)
  %error27 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %error27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool28.not = icmp eq i32 %25, 0
  br i1 %tobool28.not, label %if.then29, label %if.then26.if.end42_crit_edge

if.then26.if.end42_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then29:                                        ; preds = %if.then26
  tail call fastcc void @sd_rw_multi(ptr noundef %private.i, ptr noundef %mrq)
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %27, label %if.then29.if.end42_crit_edge [
    i32 25, label %if.then29.land.lhs.true33_crit_edge
    i32 18, label %if.then29.land.lhs.true33_crit_edge146
  ]

if.then29.land.lhs.true33_crit_edge146:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true33

if.then29.land.lhs.true33_crit_edge:              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true33

if.then29.if.end42_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true33:                                  ; preds = %if.then29.land.lhs.true33_crit_edge, %if.then29.land.lhs.true33_crit_edge146
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %29 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %land.lhs.true33.if.end42_crit_edge, label %if.then35

land.lhs.true33.if.end42_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %private.i, ptr noundef nonnull %30)
  %call37 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  br label %if.end42

if.else40:                                        ; preds = %lor.lhs.false.if.else40_crit_edge, %land.lhs.true.if.else40_crit_edge
  %31 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd2, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 2
  %33 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blksz.i, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3328) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -12, ptr %error.i, align 4
  br label %if.end42

if.end.i:                                         ; preds = %if.else40
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 6
  %36 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %37, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %initial_mode.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  %38 = ptrtoint ptr %initial_mode.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %initial_mode.i, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not.i = icmp eq i8 %39, 0
  br i1 %tobool5.not.i, label %if.then4.i.if.end7.i_crit_edge, label %if.then6.i

if.then4.i.if.end7.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ucr1, align 4
  %call.i.i = tail call i32 @rtsx_usb_write_register(ptr noundef %41, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext 0) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then4.i.if.end7.i_crit_edge
  %42 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %blksz.i, align 4
  %conv.i = trunc i32 %43 to i16
  %call10.i = tail call fastcc i32 @sd_read_data(ptr noundef %private.i, ptr noundef %32, i16 noundef zeroext %conv.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %43, i32 noundef 200) #10
  %error11.i = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  %44 = ptrtoint ptr %error11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call10.i, ptr %error11.i, align 4
  %45 = ptrtoint ptr %initial_mode.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %initial_mode.i, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool13.not.i = icmp eq i8 %46, 0
  br i1 %tobool13.not.i, label %if.end7.i.if.end15.i_crit_edge, label %if.then14.i

if.end7.i.if.end15.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ucr1, align 4
  %call.i57.i = tail call i32 @rtsx_usb_write_register(ptr noundef %48, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext -128) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end7.i.if.end15.i_crit_edge
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 12
  %49 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 10
  %51 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg_len.i, align 4
  %53 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blksz.i, align 4
  %call17.i = tail call i32 @sg_copy_from_buffer(ptr noundef %50, i32 noundef %52, ptr noundef nonnull %call9.i.i.i, i32 noundef %54) #10
  br label %if.end27.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %sg18.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 12
  %55 = ptrtoint ptr %sg18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sg18.i, align 4
  %sg_len19.i = getelementptr inbounds %struct.mmc_data, ptr %16, i32 0, i32 10
  %57 = ptrtoint ptr %sg_len19.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sg_len19.i, align 4
  %59 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blksz.i, align 4
  %call21.i = tail call i32 @sg_copy_to_buffer(ptr noundef %56, i32 noundef %58, ptr noundef nonnull %call9.i.i.i, i32 noundef %60) #10
  %61 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blksz.i, align 4
  %conv23.i = trunc i32 %62 to i16
  %call25.i = tail call fastcc i32 @sd_write_data(ptr noundef %private.i, ptr noundef %32, i16 noundef zeroext %conv23.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %62) #10
  %error26.i = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 5
  %63 = ptrtoint ptr %error26.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call25.i, ptr %error26.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %if.end15.i
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  br label %if.end42

if.end42:                                         ; preds = %if.end27.i, %if.then.i, %if.then35, %land.lhs.true33.if.end42_crit_edge, %if.then29.if.end42_crit_edge, %if.then26.if.end42_crit_edge, %if.then22
  %64 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data3, align 4
  %tobool44.not = icmp eq ptr %65, null
  br i1 %tobool44.not, label %if.end42.if.end58_crit_edge, label %if.then45

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then45:                                        ; preds = %if.end42
  %error46 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %66 = ptrtoint ptr %error46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %error46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool47.not = icmp eq i32 %67, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %if.then45.if.end58.sink.split_crit_edge

if.then45.if.end58.sink.split_crit_edge:          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

lor.lhs.false48:                                  ; preds = %if.then45
  %error49 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %68 = ptrtoint ptr %error49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %error49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool50.not = icmp eq i32 %69, 0
  br i1 %tobool50.not, label %if.else52, label %lor.lhs.false48.if.end58.sink.split_crit_edge

lor.lhs.false48.if.end58.sink.split_crit_edge:    ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.sink.split

if.else52:                                        ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #12
  %blocks53 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %70 = ptrtoint ptr %blocks53 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blocks53, align 4
  %blksz54 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %72 = ptrtoint ptr %blksz54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %blksz54, align 4
  %mul55 = mul i32 %73, %71
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %if.else52, %lor.lhs.false48.if.end58.sink.split_crit_edge, %if.then45.if.end58.sink.split_crit_edge
  %.sink = phi i32 [ %mul55, %if.else52 ], [ 0, %lor.lhs.false48.if.end58.sink.split_crit_edge ], [ 0, %if.then45.if.end58.sink.split_crit_edge ]
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %74 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink, ptr %bytes_xfered, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.end42.if.end58_crit_edge
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #10
  br label %finish_detect_card

finish_detect_card:                               ; preds = %if.end58, %if.then12
  %error60 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %75 = ptrtoint ptr %error60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %error60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool61.not = icmp eq i32 %76, 0
  br i1 %tobool61.not, label %finish_detect_card.finish_crit_edge, label %if.then62

finish_detect_card.finish_crit_edge:              ; preds = %finish_detect_card
  call void @__sanitizer_cov_trace_pc() #12
  br label %finish

if.then62:                                        ; preds = %finish_detect_card
  %77 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ucr1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %79 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -1, ptr %val.i, align 2, !annotation !175
  %80 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i137 = icmp eq i8 %81, 0
  br i1 %tobool.not.i137, label %if.end.i138, label %if.then62.sdmmc_get_cd.exit_crit_edge

if.then62.sdmmc_get_cd.exit_crit_edge:            ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdmmc_get_cd.exit

if.end.i138:                                      ; preds = %if.then62
  %dev_mutex.i = getelementptr inbounds %struct.rtsx_ucr, ptr %78, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex.i, i32 noundef 0) #10
  %call2.i = call i32 @rtsx_usb_get_card_status(ptr noundef %78, ptr noundef nonnull %val.i) #10
  call void @mutex_unlock(ptr noundef %dev_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i138.no_card.i_crit_edge

if.end.i138.no_card.i_crit_edge:                  ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_card.i

if.end6.i:                                        ; preds = %if.end.i138
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %val.i, align 2
  %84 = and i16 %83, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool7.not.i = icmp eq i16 %84, 0
  br i1 %tobool7.not.i, label %if.end6.i.no_card.i_crit_edge, label %if.end6.i.cleanup.sink.split.i_crit_edge

if.end6.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end6.i.no_card.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_card.i

no_card.i:                                        ; preds = %if.end6.i.no_card.i_crit_edge, %if.end.i138.no_card.i_crit_edge
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %no_card.i, %if.end6.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %no_card.i ], [ 1, %if.end6.i.cleanup.sink.split.i_crit_edge ]
  %85 = ptrtoint ptr %card_exist to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %.sink.i, ptr %card_exist, align 1
  br label %sdmmc_get_cd.exit

sdmmc_get_cd.exit:                                ; preds = %cleanup.sink.split.i, %if.then62.sdmmc_get_cd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_request.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_request, %if.then76)) #10
          to label %finish [label %if.then76], !srcloc !172

if.then76:                                        ; preds = %sdmmc_get_cd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private.i, align 4
  %dev.i140 = getelementptr inbounds %struct.platform_device, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %error60 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %error60, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_request.__UNIQUE_ID_ddebug306, ptr noundef %dev.i140, ptr noundef nonnull @.str.13, i32 noundef %89) #10
  br label %finish

finish:                                           ; preds = %if.then76, %sdmmc_get_cd.exit, %finish_detect_card.finish_crit_edge, %if.then9
  %host_mutex83 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %host_mutex83, i32 noundef 0) #10
  %mrq84 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %90 = ptrtoint ptr %mrq84 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %mrq84, align 4
  call void @mutex_unlock(ptr noundef %host_mutex83) #10
  call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_set_ios.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_set_ios, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_set_ios.__UNIQUE_ID_ddebug309, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.34) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i = icmp eq i8 %5, 0
  %spec.store.select.i = select i1 %cmp.not.i, i8 0, i8 2
  %power_mode3.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 5
  %6 = ptrtoint ptr %power_mode3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_mode3.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.store.select.i, i8 %7)
  %cmp5.i = icmp eq i8 %spec.store.select.i, %7
  br i1 %cmp5.i, label %do.end.sd_set_power_mode.exit_crit_edge, label %if.end8.i

do.end.sd_set_power_mode.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sd_set_power_mode.exit

if.end8.i:                                        ; preds = %do.end
  br i1 %cmp.not.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end8.i
  %call.i = tail call fastcc i32 @sd_power_off(ptr noundef %private.i) #10
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !177
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then12.i.if.end16.i_crit_edge, label %do.end11.i.i.i.i.i

if.then12.i.if.end16.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

do.end11.i.i.i.i.i:                               ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !178
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  %usage_count.i2.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i2.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i2.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i2.i, ptr %usage_count.i2.i, i32 1, ptr elementtype(i32) %usage_count.i2.i) #10, !srcloc !174
  %call15.i = tail call fastcc i32 @sd_power_on(ptr noundef %private.i) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %do.end11.i.i.i.i.i, %if.then12.i.if.end16.i_crit_edge
  %err.0.i = phi i32 [ %call15.i, %if.else.i ], [ %call.i, %if.then12.i.if.end16.i_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool.not.i, label %if.then17.i, label %if.end16.i.sd_set_power_mode.exit_crit_edge

if.end16.i.sd_set_power_mode.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sd_set_power_mode.exit

if.then17.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %power_mode3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.store.select.i, ptr %power_mode3.i, align 2
  br label %sd_set_power_mode.exit

sd_set_power_mode.exit:                           ; preds = %if.then17.i, %if.end16.i.sd_set_power_mode.exit_crit_edge, %do.end.sd_set_power_mode.exit_crit_edge
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %15 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp.i = icmp ult i8 %16, 4
  br i1 %cmp.i, label %if.then.i, label %sd_set_power_mode.exit.sd_set_bus_width.exit_crit_edge

sd_set_power_mode.exit.sd_set_bus_width.exit_crit_edge: ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sd_set_bus_width.exit

if.then.i:                                        ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ucr1, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @sd_set_bus_width.width, i32 0, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %call.i78 = tail call i32 @rtsx_usb_write_register(ptr noundef %18, i16 noundef zeroext -608, i8 noundef zeroext 3, i8 noundef zeroext %20) #10
  br label %sd_set_bus_width.exit

sd_set_bus_width.exit:                            ; preds = %if.then.i, %sd_set_power_mode.exit.sd_set_bus_width.exit_crit_edge
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %21 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %timing, align 4
  %ddr_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 4
  %23 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ucr1, align 4
  %25 = ptrtoint ptr %ddr_mode to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ddr_mode, align 1
  %cmd_buf.i.i = getelementptr inbounds %struct.rtsx_ucr, ptr %24, i32 0, i32 6
  %26 = ptrtoint ptr %cmd_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd_buf.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 82, ptr %27, align 1
  %29 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx2.i.i = getelementptr i8, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 84, ptr %arrayidx2.i.i, align 1
  %31 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx4.i.i = getelementptr i8, ptr %31, i32 2
  %32 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 67, ptr %arrayidx4.i.i, align 1
  %33 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %33, i32 3
  %34 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 82, ptr %arrayidx6.i.i, align 1
  %cmd_idx.i.i = getelementptr inbounds %struct.rtsx_ucr, ptr %24, i32 0, i32 7
  %35 = ptrtoint ptr %cmd_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cmd_idx.i.i, align 4
  %36 = load ptr, ptr %cmd_buf.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx8.i.i, align 1
  %38 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %22, label %sw.default.i [
    i8 6, label %sd_set_bus_width.exit.sw.bb.i_crit_edge
    i8 5, label %sd_set_bus_width.exit.sw.bb.i_crit_edge83
    i8 7, label %sw.bb2.i
    i8 1, label %sd_set_bus_width.exit.sw.bb3.i_crit_edge
    i8 2, label %sd_set_bus_width.exit.sw.bb3.i_crit_edge84
  ]

sd_set_bus_width.exit.sw.bb3.i_crit_edge84:       ; preds = %sd_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sd_set_bus_width.exit.sw.bb3.i_crit_edge:         ; preds = %sd_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3.i

sd_set_bus_width.exit.sw.bb.i_crit_edge83:        ; preds = %sd_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sd_set_bus_width.exit.sw.bb.i_crit_edge:          ; preds = %sd_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sd_set_bus_width.exit.sw.bb.i_crit_edge, %sd_set_bus_width.exit.sw.bb.i_crit_edge83
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 24) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #10
  br label %sd_set_timing.exit

sw.bb2.i:                                         ; preds = %sd_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %ddr_mode to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %ddr_mode, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 20) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -600, i8 noundef zeroext -128, i8 noundef zeroext -128) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -601, i8 noundef zeroext -96, i8 noundef zeroext -96) #10
  br label %sd_set_timing.exit

sw.bb3.i:                                         ; preds = %sd_set_bus_width.exit.sw.bb3.i_crit_edge, %sd_set_bus_width.exit.sw.bb3.i_crit_edge84
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 12, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 36) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -600, i8 noundef zeroext 16, i8 noundef zeroext 16) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -601, i8 noundef zeroext 8, i8 noundef zeroext 8) #10
  br label %sd_set_timing.exit

sw.default.i:                                     ; preds = %sd_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 12, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 36) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -600, i8 noundef zeroext -1, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %24, i8 noundef zeroext 1, i16 noundef zeroext -601, i8 noundef zeroext 8, i8 noundef zeroext 0) #10
  br label %sd_set_timing.exit

sd_set_timing.exit:                               ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %call.i79 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %24, i8 noundef zeroext 0, i32 noundef 100) #10
  %vpclk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  %40 = ptrtoint ptr %vpclk to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %vpclk, align 4
  %double_clk = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 8
  %41 = ptrtoint ptr %double_clk to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %double_clk, align 1
  %42 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %timing, align 4
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %43, label %sw.default [
    i8 6, label %sd_set_timing.exit.sw.bb_crit_edge
    i8 5, label %sd_set_timing.exit.sw.bb_crit_edge85
    i8 7, label %sd_set_timing.exit.sw.bb12_crit_edge
    i8 4, label %sd_set_timing.exit.sw.bb12_crit_edge86
  ]

sd_set_timing.exit.sw.bb12_crit_edge86:           ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sd_set_timing.exit.sw.bb12_crit_edge:             ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sd_set_timing.exit.sw.bb_crit_edge85:             ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sd_set_timing.exit.sw.bb_crit_edge:               ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %sd_set_timing.exit.sw.bb_crit_edge, %sd_set_timing.exit.sw.bb_crit_edge85
  %ssc_depth = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %45 = ptrtoint ptr %ssc_depth to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %ssc_depth, align 4
  %46 = ptrtoint ptr %vpclk to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %vpclk, align 4
  %47 = ptrtoint ptr %double_clk to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %double_clk, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %sd_set_timing.exit.sw.bb12_crit_edge, %sd_set_timing.exit.sw.bb12_crit_edge86
  %ssc_depth13 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %48 = ptrtoint ptr %ssc_depth13 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %ssc_depth13, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ssc_depth14 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %49 = ptrtoint ptr %ssc_depth14 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 3, ptr %ssc_depth14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb
  %50 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %51)
  %cmp = icmp ult i32 %51, 1000001
  %initial_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  %frombool17 = zext i1 %cmp to i8
  %52 = ptrtoint ptr %initial_mode to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool17, ptr %initial_mode, align 4
  %53 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ios, align 4
  %clock19 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %55 = ptrtoint ptr %clock19 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %clock19, align 4
  %56 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ucr1, align 4
  %ssc_depth22 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %58 = ptrtoint ptr %ssc_depth22 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ssc_depth22, align 4
  %60 = ptrtoint ptr %double_clk to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %double_clk, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool26 = icmp ne i8 %61, 0
  %62 = ptrtoint ptr %vpclk to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vpclk, align 4, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool28 = icmp ne i8 %63, 0
  %call29 = tail call i32 @rtsx_usb_switch_clock(ptr noundef %57, i32 noundef %54, i8 noundef zeroext %59, i1 noundef zeroext %cmp, i1 noundef zeroext %tobool26, i1 noundef zeroext %tobool28) #10
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_set_ios.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_set_ios, %if.then43)) #10
          to label %do.end47 [label %if.then43], !srcloc !172

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private.i, align 4
  %dev.i80 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_set_ios.__UNIQUE_ID_ddebug310, ptr noundef %dev.i80, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %sw.epilog
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !175
  %host_removal = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 9
  %3 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %call2 = call i32 @rtsx_usb_get_card_status(ptr noundef %1, ptr noundef nonnull %val) #10
  call void @mutex_unlock(ptr noundef %dev_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = lshr i16 %6, 3
  %.lobit = and i16 %7, 1
  %8 = zext i16 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -123, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %8, %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_get_cd(ptr nocapture noundef %mmc) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val, align 2, !annotation !175
  %host_removal = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 9
  %3 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %call2 = call i32 @rtsx_usb_get_card_status(ptr noundef %1, ptr noundef nonnull %val) #10
  call void @mutex_unlock(ptr noundef %dev_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.no_card_crit_edge

if.end.no_card_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_card

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool7.not = icmp eq i16 %7, 0
  br i1 %tobool7.not, label %if.end6.no_card_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end6.no_card_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_card

no_card:                                          ; preds = %if.end6.no_card_crit_edge, %if.end.no_card_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %no_card, %if.end6.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ 0, %no_card ], [ 1, %if.end6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %no_card ], [ 1, %if.end6.cleanup.sink.split_crit_edge ]
  %card_exist10 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 10
  %8 = ptrtoint ptr %card_exist10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %card_exist10, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -123, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_switch_voltage(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_switch_voltage.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_switch_voltage, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %4 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %signal_voltage, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_switch_voltage.__UNIQUE_ID_ddebug311, ptr noundef %dev.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %host_removal = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 9
  %6 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %signal_voltage9 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %8 = ptrtoint ptr %signal_voltage9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal_voltage9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %call14 = tail call i32 @rtsx_usb_card_exclusive_check(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end13
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd_buf.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 82, ptr %11, align 1
  %13 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 84, ptr %arrayidx2.i, align 1
  %15 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 67, ptr %arrayidx4.i, align 1
  %17 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cmd_idx.i, align 4
  %20 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx8.i, align 1
  %22 = ptrtoint ptr %signal_voltage9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %signal_voltage9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp21 = icmp eq i8 %23, 0
  br i1 %cmp21, label %if.end18.if.end24_crit_edge, label %if.else

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext 64) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end18.if.end24_crit_edge
  %.sink46 = phi i8 [ -128, %if.else ], [ 127, %if.end18.if.end24_crit_edge ]
  %.sink = phi i8 [ 4, %if.else ], [ 28, %if.end18.if.end24_crit_edge ]
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -602, i8 noundef zeroext -128, i8 noundef zeroext %.sink46) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -645, i8 noundef zeroext 28, i8 noundef zeroext %.sink) #10
  %call25 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24, %if.end13.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call25, %if.end24 ], [ %call14, %if.end13.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -123, %do.end.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  %stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #10
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stat, align 1, !annotation !175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_card_busy.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_card_busy, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_card_busy.__UNIQUE_ID_ddebug312, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.40) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %call6 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext -128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.out.thread_crit_edge

do.end.out.thread_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end9:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #10
  %call10 = call i32 @rtsx_usb_read_register(ptr noundef %1, i16 noundef zeroext -603, ptr noundef nonnull %stat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %out, label %if.end9.out.thread_crit_edge

if.end9.out.thread_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

out.thread:                                       ; preds = %if.end9.out.thread_crit_edge, %do.end.out.thread_crit_edge
  %err.0.ph = phi i32 [ %call10, %if.end9.out.thread_crit_edge ], [ %call6, %do.end.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %dev_mutex) #10
  br label %cleanup

out:                                              ; preds = %if.end9
  %call14 = call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext 0) #10
  call void @mutex_unlock(ptr noundef %dev_mutex) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool16.not = icmp eq i32 %call14, 0
  br i1 %tobool16.not, label %if.end18, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stat, align 1
  %8 = and i8 %7, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %8)
  %cmp.not = icmp ne i8 %8, 30
  %. = zext i1 %cmp.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %out.cleanup_crit_edge, %out.thread
  %retval.0 = phi i32 [ %call14, %out.cleanup_crit_edge ], [ %., %if.end18 ], [ %err.0.ph, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_execute_tuning(ptr nocapture noundef readonly %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host_removal = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 9
  %0 = ptrtoint ptr %host_removal to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %host_removal, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucr1, align 4
  %dev_mutex = getelementptr inbounds %struct.rtsx_ucr, ptr %3, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #10
  %ddr_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %ddr_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ddr_mode, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call fastcc i32 @sd_tuning_rx(ptr noundef %private.i)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %err.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %call4, %if.then3 ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end5 ], [ -123, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_send_cmd_get_rsp(ptr nocapture noundef readonly %host, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 4
  %arg2 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %conv6 = and i32 %3, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %conv6, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 31
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and, label %do.body12 [
    i32 0, label %do.end.if.end34_crit_edge
    i32 21, label %sw.bb7
    i32 17, label %sw.bb8
    i32 29, label %if.then31
    i32 7, label %sw.bb10
    i32 1, label %sw.bb11
  ]

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then24)) #10
          to label %out [label %if.then24], !srcloc !172

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %dev.i356 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288, ptr noundef %dev.i356, ptr noundef nonnull @.str.16) #10
  br label %out

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %13 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool32.not = icmp eq i32 %14, 0
  %spec.select = select i1 %tobool32.not, i32 3000, i32 %14
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %sw.bb11, %sw.bb10, %sw.bb8, %sw.bb7, %do.end.if.end34_crit_edge
  %rsp_type.0378 = phi i8 [ 9, %if.then31 ], [ 4, %do.end.if.end34_crit_edge ], [ 1, %sw.bb7 ], [ 5, %sw.bb8 ], [ 2, %sw.bb10 ], [ 5, %sw.bb11 ]
  %cmp60.not376 = phi i1 [ false, %if.then31 ], [ true, %do.end.if.end34_crit_edge ], [ false, %sw.bb7 ], [ false, %sw.bb8 ], [ false, %sw.bb10 ], [ false, %sw.bb11 ]
  %cmp53375 = phi i1 [ false, %if.then31 ], [ false, %do.end.if.end34_crit_edge ], [ false, %sw.bb7 ], [ false, %sw.bb8 ], [ true, %sw.bb10 ], [ false, %sw.bb11 ]
  %timeout.0 = phi i32 [ %spec.select, %if.then31 ], [ 100, %do.end.if.end34_crit_edge ], [ 100, %sw.bb7 ], [ 100, %sw.bb8 ], [ 100, %sw.bb10 ], [ 100, %sw.bb11 ]
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %16)
  %cmp36 = icmp eq i32 %16, 11
  br i1 %cmp36, label %if.then38, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then38:                                        ; preds = %if.end34
  %call39 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext -128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.out_crit_edge

if.then38.out_crit_edge:                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_buf.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 82, ptr %18, align 1
  %20 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 84, ptr %arrayidx2.i, align 1
  %22 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %22, i32 2
  %23 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 67, ptr %arrayidx4.i, align 1
  %24 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %24, i32 3
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cmd_idx.i, align 4
  %27 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx8.i, align 1
  %29 = trunc i32 %3 to i8
  %conv45 = or i8 %29, 64
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -599, i8 noundef zeroext -1, i8 noundef zeroext %conv45) #10
  %shr = lshr i32 %5, 24
  %conv46 = trunc i32 %shr to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -598, i8 noundef zeroext -1, i8 noundef zeroext %conv46) #10
  %shr47 = lshr i32 %5, 16
  %conv48 = trunc i32 %shr47 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -597, i8 noundef zeroext -1, i8 noundef zeroext %conv48) #10
  %shr49 = lshr i32 %5, 8
  %conv50 = trunc i32 %shr49 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -596, i8 noundef zeroext -1, i8 noundef zeroext %conv50) #10
  %conv51 = trunc i32 %5 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -595, i8 noundef zeroext -1, i8 noundef zeroext %conv51) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext %rsp_type.0378) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext -120) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 96, i8 noundef zeroext 96) #10
  br i1 %cmp53375, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1534, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1533, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1532, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1531, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1530, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1529, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1528, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1527, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1526, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end72.sink.split

if.else:                                          ; preds = %if.end43
  br i1 %cmp60.not376, label %if.else.if.end72_crit_edge, label %if.else.if.end72.sink.split_crit_edge

if.else.if.end72.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.sink.split

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end72.sink.split:                              ; preds = %if.else.if.end72.sink.split_crit_edge, %for.body.preheader
  %.sink395 = phi i16 [ -1525, %for.body.preheader ], [ -599, %if.else.if.end72.sink.split_crit_edge ]
  %.sink394 = phi i16 [ -1524, %for.body.preheader ], [ -598, %if.else.if.end72.sink.split_crit_edge ]
  %.sink393 = phi i16 [ -1523, %for.body.preheader ], [ -597, %if.else.if.end72.sink.split_crit_edge ]
  %.sink392 = phi i16 [ -1522, %for.body.preheader ], [ -596, %if.else.if.end72.sink.split_crit_edge ]
  %.sink = phi i16 [ -1521, %for.body.preheader ], [ -595, %if.else.if.end72.sink.split_crit_edge ]
  %stat_idx.0.ph = phi i32 [ 16, %for.body.preheader ], [ 5, %if.else.if.end72.sink.split_crit_edge ]
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink395, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink394, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink393, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink392, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %if.else.if.end72_crit_edge
  %stat_idx.0 = phi i32 [ 0, %if.else.if.end72_crit_edge ], [ %stat_idx.0.ph, %if.end72.sink.split ]
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -605, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %call73 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end93, label %do.body76

do.body76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then88)) #10
          to label %out [label %if.then88], !srcloc !172

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host, align 4
  %dev.i357 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289, ptr noundef %dev.i357, ptr noundef nonnull @.str.17, i32 noundef %call73) #10
  br label %out

if.end93:                                         ; preds = %if.end72
  %add = or i32 %stat_idx.0, 2
  %call94 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef %add, i32 noundef %timeout.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %lor.lhs.false, label %do.body123.critedge

lor.lhs.false:                                    ; preds = %if.end93
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rsp_buf, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %36 = and i8 %35, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool98.not = icmp eq i8 %36, 0
  br i1 %tobool98.not, label %if.end141, label %do.body102.critedge

do.body102.critedge:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ucr1, align 4
  %call.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %38, i16 noundef zeroext -685, i8 noundef zeroext 68, i8 noundef zeroext 68) #10
  %call.i.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %38, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call1.i.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %38, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call.i4.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %38, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then114)) #10
          to label %out [label %if.then114], !srcloc !172

if.then114:                                       ; preds = %do.body102.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host, align 4
  %dev.i358 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rsp_buf, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv118 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug290, ptr noundef %dev.i358, ptr noundef nonnull @.str.18, i32 noundef %conv118) #10
  br label %out

do.body123.critedge:                              ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ucr1, align 4
  %call.i360 = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %46, i16 noundef zeroext -685, i8 noundef zeroext 68, i8 noundef zeroext 68) #10
  %call.i.i361 = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %46, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call1.i.i362 = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %46, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call.i4.i363 = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %46, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then135)) #10
          to label %out [label %if.then135], !srcloc !172

if.then135:                                       ; preds = %do.body123.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host, align 4
  %dev.i364 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291, ptr noundef %dev.i364, ptr noundef nonnull @.str.19, i32 noundef %call94) #10
  br label %out

if.end141:                                        ; preds = %lor.lhs.false
  br i1 %cmp60.not376, label %if.end141.out_crit_edge, label %if.end146

if.end141.out_crit_edge:                          ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end146:                                        ; preds = %if.end141
  %add.ptr = getelementptr i8, ptr %33, i32 1
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %50)
  %cmp151.not = icmp ult i8 %50, 64
  br i1 %cmp151.not, label %if.end171, label %if.then153

if.then153:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then166)) #10
          to label %out [label %if.then166], !srcloc !172

if.then166:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host, align 4
  %dev.i365 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292, ptr noundef %dev.i365, ptr noundef nonnull @.str.20) #10
  br label %out

if.end171:                                        ; preds = %if.end146
  %53 = and i8 %rsp_type.0378, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool174.not = icmp eq i8 %53, 0
  br i1 %tobool174.not, label %if.then175, label %if.end171.if.end199_crit_edge

if.end171.if.end199_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then175:                                       ; preds = %if.end171
  %arrayidx176 = getelementptr i8, ptr %add.ptr, i32 %stat_idx.0
  %54 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %55)
  %tobool179.not = icmp sgt i8 %55, -1
  br i1 %tobool179.not, label %if.then175.if.end199_crit_edge, label %if.then180

if.then175.if.end199_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then180:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then193)) #10
          to label %out [label %if.then193], !srcloc !172

if.then193:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host, align 4
  %dev.i366 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293, ptr noundef %dev.i366, ptr noundef nonnull @.str.21) #10
  br label %out

if.end199:                                        ; preds = %if.then175.if.end199_crit_edge, %if.end171.if.end199_crit_edge
  br i1 %cmp53375, label %if.then203, label %if.else235

if.then203:                                       ; preds = %if.end199
  %arrayidx204 = getelementptr i8, ptr %33, i32 17
  %58 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %arrayidx204, align 1
  %add.ptr209 = getelementptr i8, ptr %33, i32 2
  br label %for.body208

for.body208:                                      ; preds = %for.inc232.for.body208_crit_edge, %if.then203
  %i.2389 = phi i32 [ 0, %if.then203 ], [ %inc233, %for.inc232.for.body208_crit_edge ]
  %mul = shl i32 %i.2389, 2
  %add.ptr210 = getelementptr i8, ptr %add.ptr209, i32 %mul
  %59 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %add.ptr210, align 1
  %arrayidx212 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 %i.2389
  %61 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx212, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then225)) #10
          to label %for.inc232 [label %if.then225], !srcloc !172

if.then225:                                       ; preds = %for.body208
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 4
  %dev.i367 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx212, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug294, ptr noundef %dev.i367, ptr noundef nonnull @.str.22, i32 noundef %i.2389, i32 noundef %65) #10
  br label %for.inc232

for.inc232:                                       ; preds = %if.then225, %for.body208
  %inc233 = add nuw nsw i32 %i.2389, 1
  %exitcond.not = icmp eq i32 %inc233, 4
  br i1 %exitcond.not, label %for.inc232.out_crit_edge, label %for.inc232.for.body208_crit_edge

for.inc232.for.body208_crit_edge:                 ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body208

for.inc232.out_crit_edge:                         ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else235:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr236 = getelementptr i8, ptr %33, i32 2
  %66 = ptrtoint ptr %add.ptr236 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr236, align 1
  %resp238 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %68 = ptrtoint ptr %resp238 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %resp238, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then252)) #10
          to label %out [label %if.then252], !srcloc !172

if.then252:                                       ; preds = %if.else235
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %host, align 4
  %dev.i368 = getelementptr inbounds %struct.platform_device, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %resp238 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %resp238, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug295, ptr noundef %dev.i368, ptr noundef nonnull @.str.23, i32 noundef %72) #10
  br label %out

out:                                              ; preds = %if.then252, %if.else235, %for.inc232.out_crit_edge, %if.then193, %if.then180, %if.then166, %if.then153, %if.end141.out_crit_edge, %if.then135, %do.body123.critedge, %if.then114, %do.body102.critedge, %if.then88, %do.body76, %if.then38.out_crit_edge, %if.then24, %do.body12
  %err.0 = phi i32 [ %call39, %if.then38.out_crit_edge ], [ %call73, %if.then88 ], [ %call94, %if.then135 ], [ -84, %if.then166 ], [ 0, %if.then252 ], [ -84, %if.then193 ], [ -22, %if.then24 ], [ -5, %if.then114 ], [ 0, %if.end141.out_crit_edge ], [ -22, %do.body12 ], [ %call73, %do.body76 ], [ -5, %do.body102.critedge ], [ %call94, %do.body123.critedge ], [ -84, %if.then153 ], [ -84, %if.then180 ], [ 0, %if.else235 ], [ 0, %for.inc232.out_crit_edge ]
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %73 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %err.0, ptr %error, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_rw_multi(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks, align 4
  %mul = mul i32 %9, %7
  br i1 %tobool.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw_multi.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw_multi, %if.then7)) #10
          to label %if.end26 [label %if.then7], !srcloc !172

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw_multi.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef %mul) #10
  br label %if.end26

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw_multi.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw_multi, %if.then21)) #10
          to label %if.end26 [label %if.then21], !srcloc !172

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %dev.i7 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw_multi.__UNIQUE_ID_ddebug297, ptr noundef %dev.i7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24, i32 noundef %mul) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body9, %if.then7, %do.body
  %.15 = phi i8 [ 5, %do.body9 ], [ 3, %do.body ], [ 5, %if.then21 ], [ 3, %if.then7 ]
  %. = phi i8 [ 9, %do.body9 ], [ 11, %do.body ], [ 9, %if.then21 ], [ 11, %if.then7 ]
  %trans_mode.0 = phi i8 [ -127, %do.body9 ], [ -123, %do.body ], [ -127, %if.then21 ], [ -123, %if.then7 ]
  %cfg2.0 = phi i8 [ -124, %do.body9 ], [ 0, %do.body ], [ -124, %if.then21 ], [ 0, %if.then7 ]
  %cmd_buf.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd_buf.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 82, ptr %15, align 1
  %17 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i = getelementptr i8, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 84, ptr %arrayidx2.i, align 1
  %19 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 67, ptr %arrayidx4.i, align 1
  %21 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 82, ptr %arrayidx6.i, align 1
  %cmd_idx.i = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cmd_idx.i, align 4
  %24 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx8.i, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext 2) #10
  %26 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blocks, align 4
  %conv = trunc i32 %27 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext %conv) #10
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks, align 4
  %shr = lshr i32 %29, 8
  %conv29 = trunc i32 %shr to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext %conv29) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %shr30 = lshr i32 %mul, 24
  %conv31 = trunc i32 %shr30 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -236, i8 noundef zeroext -1, i8 noundef zeroext %conv31) #10
  %shr32 = lshr i32 %mul, 16
  %conv33 = trunc i32 %shr32 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -237, i8 noundef zeroext -1, i8 noundef zeroext %conv33) #10
  %shr34 = lshr i32 %mul, 8
  %conv35 = trunc i32 %shr34 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -238, i8 noundef zeroext -1, i8 noundef zeroext %conv35) #10
  %conv36 = trunc i32 %mul to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -239, i8 noundef zeroext -1, i8 noundef zeroext %conv36) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -240, i8 noundef zeroext 15, i8 noundef zeroext %.) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext %cfg2.0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext %trans_mode.0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #10
  %call43 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext %.15, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %if.end26
  %pusb_dev53 = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %pusb_dev53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pusb_dev53, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i8 = shl i32 %33, 8
  %.16 = select i1 %tobool.not, i32 -1073709056, i32 -1073676160
  %or55 = or i32 %shl.i8, %.16
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %36 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_len, align 4
  %call57 = tail call i32 @rtsx_usb_transfer_data(ptr noundef %1, i32 noundef %or55, ptr noundef %35, i32 noundef %mul, i32 noundef %37, ptr noundef null, i32 noundef 10000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end77, label %do.body60

do.body60:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw_multi.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw_multi, %if.then72)) #10
          to label %do.end76 [label %if.then72], !srcloc !172

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host, align 4
  %dev.i10 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw_multi.__UNIQUE_ID_ddebug298, ptr noundef %dev.i10, ptr noundef nonnull @.str.27, i32 noundef %call57) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then72, %do.body60
  %40 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ucr1, align 4
  %call.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %41, i16 noundef zeroext -685, i8 noundef zeroext 68, i8 noundef zeroext 68) #10
  %call.i.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %41, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call1.i.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %41, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call.i4.i = tail call i32 @rtsx_usb_ep0_write_register(ptr noundef %41, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #10
  br label %cleanup

if.end77:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef 1, i32 noundef 2000) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end76, %if.end26.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_usb_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_send_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_get_rsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_ep0_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_transfer_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_read_data(ptr nocapture noundef readonly %host, ptr noundef %cmd, i16 noundef zeroext %byte_cnt, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %tobool.not = icmp eq ptr %buf, null
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
  %cmp.not = icmp eq ptr %cmd, null
  br i1 %cmp.not, label %entry.if.end26_crit_edge, label %do.body

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !172

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug276, ptr noundef %dev.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %19)
  %cmp10 = icmp eq i32 %19, 19
  %20 = trunc i32 %19 to i8
  %conv15 = or i8 %20, 64
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -599, i8 noundef zeroext -1, i8 noundef zeroext %conv15) #10
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %21 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arg, align 4
  %shr = lshr i32 %22, 24
  %conv16 = trunc i32 %shr to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -598, i8 noundef zeroext -1, i8 noundef zeroext %conv16) #10
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arg, align 4
  %shr18 = lshr i32 %24, 16
  %conv19 = trunc i32 %shr18 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -597, i8 noundef zeroext -1, i8 noundef zeroext %conv19) #10
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arg, align 4
  %shr21 = lshr i32 %26, 8
  %conv22 = trunc i32 %shr21 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -596, i8 noundef zeroext -1, i8 noundef zeroext %conv22) #10
  %27 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arg, align 4
  %conv24 = trunc i32 %28 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -595, i8 noundef zeroext -1, i8 noundef zeroext %conv24) #10
  %spec.select = select i1 %cmp10, i32 15, i32 12
  br label %if.end26

if.end26:                                         ; preds = %do.end, %entry.if.end26_crit_edge
  %trans_mode.1 = phi i32 [ 5, %entry.if.end26_crit_edge ], [ %spec.select, %do.end ]
  %conv27 = trunc i16 %byte_cnt to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext %conv27) #10
  %conv28 = zext i16 %byte_cnt to i32
  %29 = lshr i16 %byte_cnt, 8
  %conv30 = trunc i16 %29 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext %conv30) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %trans_mode.1)
  %cmp32.not = icmp eq i32 %trans_mode.1, 15
  br i1 %cmp32.not, label %if.end26.if.end35_crit_edge, label %if.then34

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end26.if.end35_crit_edge
  %30 = trunc i32 %trans_mode.1 to i8
  %conv38 = or i8 %30, -128
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext %conv38) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #10
  br i1 %cmp.not, label %if.end35.if.end42_crit_edge, label %if.then41

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -598, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -597, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -596, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -595, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end35.if.end42_crit_edge
  %call43 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i32 noundef %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end63, label %do.body46

do.body46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then58)) #10
          to label %cleanup [label %if.then58], !srcloc !172

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host, align 4
  %dev.i257 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug277, ptr noundef %dev.i257, ptr noundef nonnull @.str.30, i32 noundef %call43) #10
  br label %cleanup

if.end63:                                         ; preds = %if.end42
  %cond = select i1 %cmp.not, i32 1, i32 5
  %call67 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef %cond, i32 noundef %timeout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %lor.lhs.false, label %do.body95

lor.lhs.false:                                    ; preds = %if.end63
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rsp_buf, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %37 = and i8 %36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool70.not = icmp eq i8 %37, 0
  br i1 %tobool70.not, label %if.end113, label %do.body74.critedge

do.body74.critedge:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then86)) #10
          to label %cleanup [label %if.then86], !srcloc !172

if.then86:                                        ; preds = %do.body74.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host, align 4
  %dev.i258 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rsp_buf, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv90 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug278, ptr noundef %dev.i258, ptr noundef nonnull @.str.18, i32 noundef %conv90) #10
  br label %cleanup

do.body95:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then107)) #10
          to label %cleanup [label %if.then107], !srcloc !172

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host, align 4
  %dev.i259 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug279, ptr noundef %dev.i259, ptr noundef nonnull @.str.19, i32 noundef %call67) #10
  br label %cleanup

if.end113:                                        ; preds = %lor.lhs.false
  br i1 %cmp.not, label %if.end113.if.end139_crit_edge, label %if.then116

if.end113.if.end139_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %34, i32 1
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %add.ptr, align 1
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %48 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %resp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then132)) #10
          to label %if.end139 [label %if.then132], !srcloc !172

if.then132:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host, align 4
  %dev.i260 = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %resp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug280, ptr noundef %dev.i260, ptr noundef nonnull @.str.23, i32 noundef %52) #10
  br label %if.end139

if.end139:                                        ; preds = %if.then132, %if.then116, %if.end113.if.end139_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool141.not268 = icmp eq i32 %buf_len, 0
  %tobool141.not = or i1 %tobool.not, %tobool141.not268
  br i1 %tobool141.not, label %if.end139.cleanup_crit_edge, label %if.then142

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then142:                                       ; preds = %if.end139
  %sub = and i32 %conv28, 65534
  %call145 = tail call i32 @rtsx_usb_read_ppbuf(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end165, label %do.body148

do.body148:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then160)) #10
          to label %cleanup [label %if.then160], !srcloc !172

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host, align 4
  %dev.i261 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug281, ptr noundef %dev.i261, ptr noundef nonnull @.str.31, i32 noundef %call145) #10
  br label %cleanup

if.end165:                                        ; preds = %if.then142
  %rem = and i32 %conv28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool168.not = icmp eq i32 %rem, 0
  br i1 %tobool168.not, label %if.end165.cleanup_crit_edge, label %if.then169

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i16 %byte_cnt, -1536
  %add.ptr173 = getelementptr i8, ptr %buf, i32 %conv28
  %add.ptr174 = getelementptr i8, ptr %add.ptr173, i32 -1
  %call175 = tail call i32 @rtsx_usb_read_register(ptr noundef %1, i16 noundef zeroext %add, ptr noundef %add.ptr174) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then169, %if.end165.cleanup_crit_edge, %if.then160, %do.body148, %if.end139.cleanup_crit_edge, %if.then107, %do.body95, %if.then86, %do.body74.critedge, %if.then58, %do.body46
  %retval.0 = phi i32 [ %call175, %if.then169 ], [ %call43, %if.then58 ], [ %call67, %if.then107 ], [ -5, %if.then86 ], [ %call145, %if.then160 ], [ 0, %if.end165.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ], [ %call43, %do.body46 ], [ -5, %do.body74.critedge ], [ %call67, %do.body95 ], [ %call145, %do.body148 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_write_data(ptr nocapture noundef readonly %host, ptr noundef %cmd, i16 noundef zeroext %byte_cnt, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  %tobool.not = icmp eq ptr %buf, null
  %spec.select = select i1 %tobool.not, i32 0, i32 %buf_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool3.not = icmp eq i32 %spec.select, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.if.end15_crit_edge, label %if.then4

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then4:                                         ; preds = %entry
  %call = tail call i32 @rtsx_usb_write_ppbuf(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.if.end15_crit_edge, label %do.body

if.then4.if.end15_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then11)) #10
          to label %cleanup [label %if.then11], !srcloc !172

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug282, ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %call) #10
  br label %cleanup

if.end15:                                         ; preds = %if.then4.if.end15_crit_edge, %entry.if.end15_crit_edge
  %cmp.not = icmp eq ptr %cmd, null
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
  br i1 %cmp.not, label %if.end15.if.end49_crit_edge, label %do.body19

if.end15.if.end49_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.body19:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then31)) #10
          to label %do.end35 [label %if.then31], !srcloc !172

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %dev.i13 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug283, ptr noundef %dev.i13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, i32 noundef %19) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body19
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd, align 4
  %22 = trunc i32 %21 to i8
  %conv39 = or i8 %22, 64
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -599, i8 noundef zeroext -1, i8 noundef zeroext %conv39) #10
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arg, align 4
  %shr = lshr i32 %24, 24
  %conv40 = trunc i32 %shr to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -598, i8 noundef zeroext -1, i8 noundef zeroext %conv40) #10
  %25 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arg, align 4
  %shr42 = lshr i32 %26, 16
  %conv43 = trunc i32 %shr42 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -597, i8 noundef zeroext -1, i8 noundef zeroext %conv43) #10
  %27 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arg, align 4
  %shr45 = lshr i32 %28, 8
  %conv46 = trunc i32 %shr45 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -596, i8 noundef zeroext -1, i8 noundef zeroext %conv46) #10
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 4
  %conv48 = trunc i32 %30 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -595, i8 noundef zeroext -1, i8 noundef zeroext %conv48) #10
  br label %if.end49

if.end49:                                         ; preds = %do.end35, %if.end15.if.end49_crit_edge
  %conv54 = phi i8 [ -118, %do.end35 ], [ -127, %if.end15.if.end49_crit_edge ]
  %conv50 = trunc i16 %byte_cnt to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext %conv50) #10
  %31 = lshr i16 %byte_cnt, 8
  %conv53 = trunc i16 %31 to i8
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext %conv53) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext 1) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -675, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext %conv54) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #10
  br i1 %cmp.not, label %if.end49.if.end60_crit_edge, label %if.then59

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then59:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -598, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -597, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -596, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -595, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end49.if.end60_crit_edge
  %call61 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i32 noundef 200) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end81, label %do.body64

do.body64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then76)) #10
          to label %cleanup [label %if.then76], !srcloc !172

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %dev.i14 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug284, ptr noundef %dev.i14, ptr noundef nonnull @.str.30, i32 noundef %call61) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end60
  %cond85 = select i1 %cmp.not, i32 1, i32 5
  %call86 = tail call i32 @rtsx_usb_get_rsp(ptr noundef %1, i32 noundef %cond85, i32 noundef 200) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end106, label %do.body89

do.body89:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then101)) #10
          to label %cleanup [label %if.then101], !srcloc !172

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host, align 4
  %dev.i15 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug285, ptr noundef %dev.i15, ptr noundef nonnull @.str.19, i32 noundef %call86) #10
  br label %cleanup

if.end106:                                        ; preds = %if.end81
  br i1 %cmp.not, label %if.end106.cleanup_crit_edge, label %if.then109

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %rsp_buf = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rsp_buf, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 1
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr, align 1
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %40 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %resp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then123)) #10
          to label %cleanup [label %if.then123], !srcloc !172

if.then123:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %dev.i16 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %resp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug286, ptr noundef %dev.i16, ptr noundef nonnull @.str.23, i32 noundef %44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.then109, %if.end106.cleanup_crit_edge, %if.then101, %do.body89, %if.then76, %do.body64, %if.then11, %do.body
  %retval.0 = phi i32 [ %call, %if.then11 ], [ %call61, %if.then76 ], [ %call86, %if.then101 ], [ 0, %if.then123 ], [ 0, %if.end106.cleanup_crit_edge ], [ %call, %do.body ], [ %call61, %do.body64 ], [ %call86, %do.body89 ], [ 0, %if.then109 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_read_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_write_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_switch_clock(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_power_off(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_power_off.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_power_off, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_power_off.__UNIQUE_ID_ddebug308, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.36) #10
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
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -647, i8 noundef zeroext 4, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -684, i8 noundef zeroext 4, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -646, i8 noundef zeroext 3, i8 noundef zeroext 3) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -646, i8 noundef zeroext 15, i8 noundef zeroext 11) #10
  %call5 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %package = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %package, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
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
  %. = select i1 %cmp, i8 85, i8 101
  %.34 = select i1 %cmp, i8 85, i8 86
  %.35 = select i1 %cmp, i8 -91, i8 89
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext %.) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext 85) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext -107) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext 85) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext %.34) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext %.35) #10
  %call.i30 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end.cleanup_crit_edge ], [ %call.i30, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_power_on(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_power_on.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_power_on, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_power_on.__UNIQUE_ID_ddebug307, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.37) #10
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
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -674, i8 noundef zeroext 7, i8 noundef zeroext 2) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -687, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -647, i8 noundef zeroext 4, i8 noundef zeroext 4) #10
  %call5 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %package = getelementptr inbounds %struct.rtsx_ucr, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %package, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
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
  %. = select i1 %cmp, i8 -86, i8 -91
  %.59 = select i1 %cmp, i8 -86, i8 -102
  %.60 = select i1 %cmp, i8 -87, i8 -91
  %.61 = select i1 %cmp, i8 85, i8 -102
  %.62 = select i1 %cmp, i8 85, i8 101
  %.63 = select i1 %cmp, i8 -91, i8 90
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -672, i8 noundef zeroext -1, i8 noundef zeroext %.) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -671, i8 noundef zeroext -1, i8 noundef zeroext %.59) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -670, i8 noundef zeroext -1, i8 noundef zeroext %.60) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -669, i8 noundef zeroext -1, i8 noundef zeroext %.61) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -668, i8 noundef zeroext -1, i8 noundef zeroext %.62) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -667, i8 noundef zeroext -1, i8 noundef zeroext %.63) #10
  %call.i46 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool13.not = icmp eq i32 %call.i46, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %call16 = tail call i32 @rtsx_usb_write_register(ptr noundef %1, i16 noundef zeroext -646, i8 noundef zeroext 3, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 800, i32 noundef 1000, i32 noundef 2) #10
  %30 = ptrtoint ptr %cmd_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 82, ptr %31, align 1
  %33 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx2.i48 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx2.i48 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 84, ptr %arrayidx2.i48, align 1
  %35 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx4.i49 = getelementptr i8, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx4.i49 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 67, ptr %arrayidx4.i49, align 1
  %37 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx6.i50 = getelementptr i8, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx6.i50 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 82, ptr %arrayidx6.i50, align 1
  %39 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cmd_idx.i, align 4
  %40 = load ptr, ptr %cmd_buf.i, align 4
  %arrayidx8.i52 = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %arrayidx8.i52 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx8.i52, align 1
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -646, i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -684, i8 noundef zeroext 4, i8 noundef zeroext 4) #10
  %call20 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ %call5, %do.end.cleanup_crit_edge ], [ %call.i46, %if.end8.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_get_card_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_card_exclusive_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_tuning_rx(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %val.i.i.i = alloca i8, align 1
  %cmd.i.i = alloca %struct.mmc_command, align 4
  %raw_phase_map = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %raw_phase_map) #10
  %0 = call ptr @memset(ptr %raw_phase_map, i32 0, i32 6)
  %call = tail call fastcc i32 @sd_change_phase(ptr noundef %host, i8 noundef zeroext 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body

for.cond.preheader:                               ; preds = %entry
  %1 = getelementptr inbounds i8, ptr %cmd.i.i, i32 4
  %ucr.i.i.i = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  br label %for.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !172

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug302, ptr noundef %dev.i, ptr noundef nonnull @.str.42) #10
  br label %cleanup

for.body:                                         ; preds = %if.then4.i.for.body_crit_edge, %for.cond.preheader
  %i.013 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.then4.i.for.body_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %raw_phase_map.013.i = phi i16 [ 0, %for.body ], [ %13, %for.cond.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ 15, %for.body ], [ %dec.i, %for.cond.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.011.i to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i.i) #10
  %4 = call ptr @memset(ptr %1, i32 0, i32 44)
  %call.i.i = call fastcc i32 @sd_change_phase(ptr noundef %host, i8 noundef zeroext %conv.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sd_tuning_rx_cmd.exit.thread6.i

sd_tuning_rx_cmd.exit.thread6.i:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i.i) #10
  br label %for.cond.i

if.end.i.i:                                       ; preds = %for.body.i
  %5 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 19, ptr %cmd.i.i, align 4
  %call2.i.i = call fastcc i32 @sd_read_data(ptr noundef %host, ptr noundef nonnull %cmd.i.i, i16 noundef zeroext 64, ptr noundef null, i32 noundef 0, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %sd_tuning_rx_cmd.exit.thread.i, label %if.then4.i.i

sd_tuning_rx_cmd.exit.thread.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i.i) #10
  %.pn.in.i = shl nuw i32 1, %i.011.i
  %.pn.i = trunc i32 %.pn.in.i to i16
  %conv25.i = or i16 %raw_phase_map.013.i, %.pn.i
  br label %for.cond.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #10
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then4.i.i
  %i.03.i.i.i = phi i32 [ 0, %if.then4.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %ucr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ucr.i.i.i, align 4
  %call.i.i.i = call i32 @rtsx_usb_ep0_read_register(ptr noundef %8, i16 noundef zeroext -586, ptr noundef nonnull %val.i.i.i) #10
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not.i.i.i = icmp sgt i8 %10, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge

for.body.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sd_tuning_rx_cmd.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #10
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 100
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.end.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sd_tuning_rx_cmd.exit.i

sd_tuning_rx_cmd.exit.i:                          ; preds = %if.end.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge, %for.body.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #10
  %11 = ptrtoint ptr %ucr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ucr.i.i.i, align 4
  %call.i1.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %12, i16 noundef zeroext -685, i8 noundef zeroext 68, i8 noundef zeroext 68) #10
  %call.i.i.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %12, i16 noundef zeroext -254, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call1.i.i.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %12, i16 noundef zeroext -235, i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %call.i4.i.i.i = call i32 @rtsx_usb_ep0_write_register(ptr noundef %12, i16 noundef zeroext -1020, i8 noundef zeroext -8, i8 noundef zeroext -8) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %sd_tuning_rx_cmd.exit.i, %sd_tuning_rx_cmd.exit.thread.i, %sd_tuning_rx_cmd.exit.thread6.i
  %13 = phi i16 [ %conv25.i, %sd_tuning_rx_cmd.exit.thread.i ], [ %raw_phase_map.013.i, %sd_tuning_rx_cmd.exit.i ], [ %raw_phase_map.013.i, %sd_tuning_rx_cmd.exit.thread6.i ]
  %dec.i = add nsw i32 %i.011.i, -1
  %cmp.i.not = icmp eq i32 %i.011.i, 0
  br i1 %cmp.i.not, label %if.then4.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.then4.i:                                       ; preds = %for.cond.i
  %arrayidx = getelementptr [3 x i16], ptr %raw_phase_map, i32 0, i32 %i.013
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp9 = icmp eq i16 %13, 0
  %inc = add nuw nsw i32 %i.013, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 3
  %or.cond = select i1 %cmp9, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.then4.i.do.body17_crit_edge, label %if.then4.i.for.body_crit_edge

if.then4.i.for.body_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.then4.i.do.body17_crit_edge:                   ; preds = %if.then4.i
  br label %do.body17

do.body17:                                        ; preds = %do.end35.do.body17_crit_edge, %if.then4.i.do.body17_crit_edge
  %i.115 = phi i32 [ %inc41, %do.end35.do.body17_crit_edge ], [ 0, %if.then4.i.do.body17_crit_edge ]
  %phase_map.014 = phi i16 [ %and1, %do.end35.do.body17_crit_edge ], [ -1, %if.then4.i.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then29)) #10
          to label %do.end35 [label %if.then29], !srcloc !172

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %dev.i8 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %arrayidx31 = getelementptr [3 x i16], ptr %raw_phase_map, i32 0, i32 %i.115
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx31, align 2
  %conv32 = zext i16 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug303, ptr noundef %dev.i8, ptr noundef nonnull @.str.43, i32 noundef %i.115, i32 noundef %conv32) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %do.body17
  %arrayidx36 = getelementptr [3 x i16], ptr %raw_phase_map, i32 0, i32 %i.115
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx36, align 2
  %and1 = and i16 %20, %phase_map.014
  %inc41 = add nuw nsw i32 %i.115, 1
  %exitcond17.not = icmp eq i32 %inc41, 3
  br i1 %exitcond17.not, label %do.body43, label %do.end35.do.body17_crit_edge

do.end35.do.body17_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.body43:                                        ; preds = %do.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then55)) #10
          to label %do.end60 [label %if.then55], !srcloc !172

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %dev.i9 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %conv57 = zext i16 %and1 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug304, ptr noundef %dev.i9, ptr noundef nonnull @.str.44, i32 noundef %conv57) #10
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and1)
  %tobool61.not = icmp eq i16 %and1, 0
  br i1 %tobool61.not, label %do.end60.cleanup_crit_edge, label %if.then62

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #12
  %conv63 = zext i16 %and1 to i32
  %call64 = call fastcc zeroext i8 @sd_search_final_phase(ptr noundef %host, i32 noundef %conv63)
  %call70 = call fastcc i32 @sd_change_phase(ptr noundef %host, i8 noundef zeroext %call64, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %do.end60.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ %call, %if.then5 ], [ -22, %do.end60.cleanup_crit_edge ], [ %call70, %if.then62 ], [ %call, %do.body ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %raw_phase_map) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_change_phase(ptr nocapture noundef readonly %host, i8 noundef zeroext %sample_point, i32 noundef %tx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ucr1 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %ucr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !172

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx)
  %tobool5.not = icmp eq i32 %tx, 0
  %cond = select i1 %tobool5.not, ptr @.str.48, ptr @.str.47
  %conv = zext i8 %sample_point to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug299, ptr noundef %dev.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond, i32 noundef %conv) #10
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
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -1021, i8 noundef zeroext -128, i8 noundef zeroext -128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx)
  %tobool6.not = icmp eq i32 %tx, 0
  %. = select i1 %tobool6.not, i16 -981, i16 -982
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %., i8 noundef zeroext 15, i8 noundef zeroext %sample_point) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 64) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -1021, i8 noundef zeroext -128, i8 noundef zeroext 0) #10
  tail call void @rtsx_usb_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 16, i8 noundef zeroext 0) #10
  %call9 = tail call i32 @rtsx_usb_send_cmd(ptr noundef %1, i8 noundef zeroext 0, i32 noundef 100) #10
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sd_search_final_phase(ptr nocapture noundef readonly %host, i32 noundef %phase_map) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry
  %start.061 = phi i32 [ 0, %entry ], [ %add, %while.cond.while.body_crit_edge ]
  %start_final.060 = phi i32 [ 0, %entry ], [ %spec.select4957, %while.cond.while.body_crit_edge ]
  %len_final.059 = phi i32 [ 0, %entry ], [ %spec.select56, %while.cond.while.body_crit_edge ]
  %and.i.i = and i32 %start.061, 15
  %shl.i.i = shl nuw nsw i32 1, %and.i.i
  %and1.i.i = and i32 %shl.i.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp1.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp1.i, label %while.body.while.cond_crit_edge, label %for.inc.i

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

for.inc.i:                                        ; preds = %while.body
  %add.1.i = add nsw i32 %start.061, 1
  %and.i.1.i = and i32 %add.1.i, 15
  %shl.i.1.i = shl nuw nsw i32 1, %and.i.1.i
  %and1.i.1.i = and i32 %shl.i.1.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.1.i)
  %cmp1.1.i = icmp eq i32 %and1.i.1.i, 0
  br i1 %cmp1.1.i, label %for.inc.i.get_phase_len.exit.thread_crit_edge, label %for.inc.1.i

for.inc.i.get_phase_len.exit.thread_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.1.i:                                      ; preds = %for.inc.i
  %add.2.i = add nsw i32 %start.061, 2
  %and.i.2.i = and i32 %add.2.i, 15
  %shl.i.2.i = shl nuw nsw i32 1, %and.i.2.i
  %and1.i.2.i = and i32 %shl.i.2.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.2.i)
  %cmp1.2.i = icmp eq i32 %and1.i.2.i, 0
  br i1 %cmp1.2.i, label %for.inc.1.i.get_phase_len.exit.thread_crit_edge, label %for.inc.2.i

for.inc.1.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %add.3.i = add nsw i32 %start.061, 3
  %and.i.3.i = and i32 %add.3.i, 15
  %shl.i.3.i = shl nuw nsw i32 1, %and.i.3.i
  %and1.i.3.i = and i32 %shl.i.3.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.3.i)
  %cmp1.3.i = icmp eq i32 %and1.i.3.i, 0
  br i1 %cmp1.3.i, label %for.inc.2.i.get_phase_len.exit.thread_crit_edge, label %for.inc.3.i

for.inc.2.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %add.4.i = add nsw i32 %start.061, 4
  %and.i.4.i = and i32 %add.4.i, 15
  %shl.i.4.i = shl nuw nsw i32 1, %and.i.4.i
  %and1.i.4.i = and i32 %shl.i.4.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.4.i)
  %cmp1.4.i = icmp eq i32 %and1.i.4.i, 0
  br i1 %cmp1.4.i, label %for.inc.3.i.get_phase_len.exit.thread_crit_edge, label %for.inc.4.i

for.inc.3.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %add.5.i = add nsw i32 %start.061, 5
  %and.i.5.i = and i32 %add.5.i, 15
  %shl.i.5.i = shl nuw nsw i32 1, %and.i.5.i
  %and1.i.5.i = and i32 %shl.i.5.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.5.i)
  %cmp1.5.i = icmp eq i32 %and1.i.5.i, 0
  br i1 %cmp1.5.i, label %for.inc.4.i.get_phase_len.exit.thread_crit_edge, label %for.inc.5.i

for.inc.4.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %add.6.i = add nsw i32 %start.061, 6
  %and.i.6.i = and i32 %add.6.i, 15
  %shl.i.6.i = shl nuw nsw i32 1, %and.i.6.i
  %and1.i.6.i = and i32 %shl.i.6.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.6.i)
  %cmp1.6.i = icmp eq i32 %and1.i.6.i, 0
  br i1 %cmp1.6.i, label %for.inc.5.i.get_phase_len.exit.thread_crit_edge, label %for.inc.6.i

for.inc.5.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %add.7.i = add nsw i32 %start.061, 7
  %and.i.7.i = and i32 %add.7.i, 15
  %shl.i.7.i = shl nuw nsw i32 1, %and.i.7.i
  %and1.i.7.i = and i32 %shl.i.7.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.7.i)
  %cmp1.7.i = icmp eq i32 %and1.i.7.i, 0
  br i1 %cmp1.7.i, label %for.inc.6.i.get_phase_len.exit.thread_crit_edge, label %for.inc.7.i

for.inc.6.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %add.8.i = add nsw i32 %start.061, 8
  %and.i.8.i = and i32 %add.8.i, 15
  %shl.i.8.i = shl nuw nsw i32 1, %and.i.8.i
  %and1.i.8.i = and i32 %shl.i.8.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.8.i)
  %cmp1.8.i = icmp eq i32 %and1.i.8.i, 0
  br i1 %cmp1.8.i, label %for.inc.7.i.get_phase_len.exit.thread_crit_edge, label %for.inc.8.i

for.inc.7.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %add.9.i = add nsw i32 %start.061, 9
  %and.i.9.i = and i32 %add.9.i, 15
  %shl.i.9.i = shl nuw nsw i32 1, %and.i.9.i
  %and1.i.9.i = and i32 %shl.i.9.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.9.i)
  %cmp1.9.i = icmp eq i32 %and1.i.9.i, 0
  br i1 %cmp1.9.i, label %for.inc.8.i.get_phase_len.exit.thread_crit_edge, label %for.inc.9.i

for.inc.8.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %add.10.i = add nsw i32 %start.061, 10
  %and.i.10.i = and i32 %add.10.i, 15
  %shl.i.10.i = shl nuw nsw i32 1, %and.i.10.i
  %and1.i.10.i = and i32 %shl.i.10.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.10.i)
  %cmp1.10.i = icmp eq i32 %and1.i.10.i, 0
  br i1 %cmp1.10.i, label %for.inc.9.i.get_phase_len.exit.thread_crit_edge, label %for.inc.10.i

for.inc.9.i.get_phase_len.exit.thread_crit_edge:  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %add.11.i = add nsw i32 %start.061, 11
  %and.i.11.i = and i32 %add.11.i, 15
  %shl.i.11.i = shl nuw nsw i32 1, %and.i.11.i
  %and1.i.11.i = and i32 %shl.i.11.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.11.i)
  %cmp1.11.i = icmp eq i32 %and1.i.11.i, 0
  br i1 %cmp1.11.i, label %for.inc.10.i.get_phase_len.exit.thread_crit_edge, label %for.inc.11.i

for.inc.10.i.get_phase_len.exit.thread_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %add.12.i = add nsw i32 %start.061, 12
  %and.i.12.i = and i32 %add.12.i, 15
  %shl.i.12.i = shl nuw nsw i32 1, %and.i.12.i
  %and1.i.12.i = and i32 %shl.i.12.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.12.i)
  %cmp1.12.i = icmp eq i32 %and1.i.12.i, 0
  br i1 %cmp1.12.i, label %for.inc.11.i.get_phase_len.exit.thread_crit_edge, label %for.inc.12.i

for.inc.11.i.get_phase_len.exit.thread_crit_edge: ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %add.13.i = add nsw i32 %start.061, 13
  %and.i.13.i = and i32 %add.13.i, 15
  %shl.i.13.i = shl nuw nsw i32 1, %and.i.13.i
  %and1.i.13.i = and i32 %shl.i.13.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.13.i)
  %cmp1.13.i = icmp eq i32 %and1.i.13.i, 0
  br i1 %cmp1.13.i, label %for.inc.12.i.get_phase_len.exit.thread_crit_edge, label %for.inc.13.i

for.inc.12.i.get_phase_len.exit.thread_crit_edge: ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.13.i:                                     ; preds = %for.inc.12.i
  %add.14.i = add nsw i32 %start.061, 14
  %and.i.14.i = and i32 %add.14.i, 15
  %shl.i.14.i = shl nuw nsw i32 1, %and.i.14.i
  %and1.i.14.i = and i32 %shl.i.14.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.14.i)
  %cmp1.14.i = icmp eq i32 %and1.i.14.i, 0
  br i1 %cmp1.14.i, label %for.inc.13.i.get_phase_len.exit.thread_crit_edge, label %for.inc.14.i

for.inc.13.i.get_phase_len.exit.thread_crit_edge: ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_phase_len.exit.thread

for.inc.14.i:                                     ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.15.i = add nsw i32 %start.061, 15
  %and.i.15.i = and i32 %add.15.i, 15
  %shl.i.15.i = shl nuw nsw i32 1, %and.i.15.i
  %and1.i.15.i = and i32 %shl.i.15.i, %phase_map
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.15.i)
  %cmp1.15.i = icmp eq i32 %and1.i.15.i, 0
  %spec.select.i = select i1 %cmp1.15.i, i32 15, i32 16
  br label %get_phase_len.exit.thread

get_phase_len.exit.thread:                        ; preds = %for.inc.14.i, %for.inc.13.i.get_phase_len.exit.thread_crit_edge, %for.inc.12.i.get_phase_len.exit.thread_crit_edge, %for.inc.11.i.get_phase_len.exit.thread_crit_edge, %for.inc.10.i.get_phase_len.exit.thread_crit_edge, %for.inc.9.i.get_phase_len.exit.thread_crit_edge, %for.inc.8.i.get_phase_len.exit.thread_crit_edge, %for.inc.7.i.get_phase_len.exit.thread_crit_edge, %for.inc.6.i.get_phase_len.exit.thread_crit_edge, %for.inc.5.i.get_phase_len.exit.thread_crit_edge, %for.inc.4.i.get_phase_len.exit.thread_crit_edge, %for.inc.3.i.get_phase_len.exit.thread_crit_edge, %for.inc.2.i.get_phase_len.exit.thread_crit_edge, %for.inc.1.i.get_phase_len.exit.thread_crit_edge, %for.inc.i.get_phase_len.exit.thread_crit_edge
  %retval.0.i50.ph = phi i32 [ %spec.select.i, %for.inc.14.i ], [ 14, %for.inc.13.i.get_phase_len.exit.thread_crit_edge ], [ 13, %for.inc.12.i.get_phase_len.exit.thread_crit_edge ], [ 12, %for.inc.11.i.get_phase_len.exit.thread_crit_edge ], [ 11, %for.inc.10.i.get_phase_len.exit.thread_crit_edge ], [ 10, %for.inc.9.i.get_phase_len.exit.thread_crit_edge ], [ 9, %for.inc.8.i.get_phase_len.exit.thread_crit_edge ], [ 8, %for.inc.7.i.get_phase_len.exit.thread_crit_edge ], [ 7, %for.inc.6.i.get_phase_len.exit.thread_crit_edge ], [ 6, %for.inc.5.i.get_phase_len.exit.thread_crit_edge ], [ 5, %for.inc.4.i.get_phase_len.exit.thread_crit_edge ], [ 4, %for.inc.3.i.get_phase_len.exit.thread_crit_edge ], [ 3, %for.inc.2.i.get_phase_len.exit.thread_crit_edge ], [ 2, %for.inc.1.i.get_phase_len.exit.thread_crit_edge ], [ 1, %for.inc.i.get_phase_len.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len_final.059, i32 %retval.0.i50.ph)
  %cmp852 = icmp slt i32 %len_final.059, %retval.0.i50.ph
  %0 = tail call i32 @llvm.smax.i32(i32 %len_final.059, i32 %retval.0.i50.ph)
  %spec.select4954 = select i1 %cmp852, i32 %start.061, i32 %start_final.060
  br label %while.cond

while.cond:                                       ; preds = %get_phase_len.exit.thread, %while.body.while.cond_crit_edge
  %spec.select4957 = phi i32 [ %spec.select4954, %get_phase_len.exit.thread ], [ %start_final.060, %while.body.while.cond_crit_edge ]
  %spec.select56 = phi i32 [ %0, %get_phase_len.exit.thread ], [ %len_final.059, %while.body.while.cond_crit_edge ]
  %1 = phi i32 [ %retval.0.i50.ph, %get_phase_len.exit.thread ], [ 1, %while.body.while.cond_crit_edge ]
  %add = add nsw i32 %1, %start.061
  %cmp6 = icmp slt i32 %add, 16
  br i1 %cmp6, label %while.cond.while.body_crit_edge, label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.cond
  %div = sdiv i32 %spec.select56, 2
  %add12 = add i32 %spec.select4957, %div
  %2 = trunc i32 %add12 to i8
  %conv = and i8 %2, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_search_final_phase, %if.then25)) #10
          to label %cleanup [label %if.then25], !srcloc !172

if.then25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %conv27 = zext i8 %conv to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.51, i32 noundef %phase_map, i32 noundef %spec.select56, i32 noundef %conv27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %while.end
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_usb_ep0_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtsx_usb_sdmmc_runtime_suspend(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mmc = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, -33
  store i32 %and, ptr %caps, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_usb_sdmmc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mmc = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %or = or i32 %5, 32
  store i32 %or, ptr %caps, align 32
  %6 = load ptr, ptr %mmc, align 4
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 70
  %ucr1.i = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ucr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ucr1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val.i, align 2, !annotation !175
  %host_removal.i = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %host_removal.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %host_removal.i, align 2, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %sdmmc_get_cd.exit.thread

sdmmc_get_cd.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %dev_mutex.i = getelementptr inbounds %struct.rtsx_ucr, ptr %8, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex.i, i32 noundef 0) #10
  %call2.i = call i32 @rtsx_usb_get_card_status(ptr noundef %8, ptr noundef nonnull %val.i) #10
  call void @mutex_unlock(ptr noundef %dev_mutex.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool4.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.sdmmc_get_cd.exit_crit_edge

if.end.i.sdmmc_get_cd.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdmmc_get_cd.exit

if.end6.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val.i, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool7.not.i = icmp eq i16 %14, 0
  br i1 %tobool7.not.i, label %if.end6.i.sdmmc_get_cd.exit_crit_edge, label %if.then

if.end6.i.sdmmc_get_cd.exit_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sdmmc_get_cd.exit

sdmmc_get_cd.exit:                                ; preds = %if.end6.i.sdmmc_get_cd.exit_crit_edge, %if.end.i.sdmmc_get_cd.exit_crit_edge
  %card_exist10.i = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %card_exist10.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %card_exist10.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  br label %if.end

if.then:                                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %card_exist10.i11 = getelementptr inbounds %struct.rtsx_usb_sdmmc, ptr %private.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %card_exist10.i11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %card_exist10.i11, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 4
  call void @mmc_detect_change(ptr noundef %18, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sdmmc_get_cd.exit, %sdmmc_get_cd.exit.thread
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !91, !93, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !141, !142, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !156, !158, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__initcall__kmod_rtsx_usb_sdmmc__316_1460_rtsx_usb_sdmmc_driver_init6, !1, !"__initcall__kmod_rtsx_usb_sdmmc__316_1460_rtsx_usb_sdmmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1460, i32 1}
!2 = !{ptr @__exitcall_rtsx_usb_sdmmc_driver_exit, !1, !"__exitcall_rtsx_usb_sdmmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file317, !4, !"__UNIQUE_ID_file317", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1462, i32 1}
!5 = !{ptr @__UNIQUE_ID_license318, !4, !"__UNIQUE_ID_license318", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author319, !7, !"__UNIQUE_ID_author319", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1463, i32 1}
!8 = !{ptr @__UNIQUE_ID_description320, !9, !"__UNIQUE_ID_description320", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1464, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1455, i32 11}
!12 = !{ptr @rtsx_usb_sdmmc_driver, !13, !"rtsx_usb_sdmmc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1450, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1340, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtsx_usb_sdmmc_drv_probe.__UNIQUE_ID_ddebug313, !15, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!19 = !{ptr @rtsx_usb_sdmmc_drv_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1352, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1358, i32 3}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1366, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtsx_usb_sdmmc_drv_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtsx_usb_sdmmc_drv_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rtsx_usb_sdmmc_drv_probe.__key.9, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1368, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtsx_usb_sdmmc_ops, !34, !"rtsx_usb_sdmmc_ops", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1254, i32 34}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 813, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sdmmc_request.__UNIQUE_ID_ddebug305, !36, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 869, i32 3}
!41 = !{ptr @sdmmc_request.__UNIQUE_ID_ddebug306, !40, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 299, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug287, !43, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 329, i32 3}
!48 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug288, !47, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 379, i32 3}
!51 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug289, !50, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 390, i32 4}
!54 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug290, !53, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 395, i32 4}
!57 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug291, !56, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 413, i32 3}
!60 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug292, !59, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 421, i32 4}
!63 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug293, !62, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 436, i32 4}
!66 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug294, !65, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 441, i32 3}
!69 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug295, !68, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 461, i32 3}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sd_rw_multi.__UNIQUE_ID_ddebug296, !71, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 467, i32 3}
!76 = !{ptr @sd_rw_multi.__UNIQUE_ID_ddebug297, !75, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 524, i32 3}
!79 = !{ptr @sd_rw_multi.__UNIQUE_ID_ddebug298, !78, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 104, i32 3}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug276, !81, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 152, i32 3}
!86 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug277, !85, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!87 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug278, !88, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 162, i32 4}
!89 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug279, !90, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 167, i32 4}
!91 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug280, !92, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 176, i32 3}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 184, i32 4}
!95 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug281, !94, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 212, i32 4}
!98 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug282, !97, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!100 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug283, !101, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 223, i32 3}
!102 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug284, !103, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 263, i32 3}
!104 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug285, !105, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 271, i32 3}
!106 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug286, !107, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!107 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 278, i32 3}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1110, i32 2}
!110 = !{ptr @sdmmc_set_ios.__UNIQUE_ID_ddebug309, !109, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1143, i32 2}
!113 = !{ptr @sdmmc_set_ios.__UNIQUE_ID_ddebug310, !112, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 997, i32 2}
!116 = !{ptr @sd_power_off.__UNIQUE_ID_ddebug308, !115, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 958, i32 2}
!119 = !{ptr @sd_power_on.__UNIQUE_ID_ddebug307, !118, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!120 = !{ptr @sd_set_bus_width.width, !121, !"width", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 884, i32 18}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1152, i32 2}
!124 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sdmmc_switch_voltage.__UNIQUE_ID_ddebug311, !123, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1204, i32 2}
!128 = !{ptr @sdmmc_card_busy.__UNIQUE_ID_ddebug312, !127, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 711, i32 3}
!131 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug302, !130, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 725, i32 3}
!135 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug303, !134, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!136 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 729, i32 2}
!138 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug304, !137, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 583, i32 2}
!141 = !{ptr @.str.46, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug299, !140, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!143 = !{ptr @.str.47, !140, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.48, !140, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 630, i32 3}
!147 = distinct !{null, !146, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !146, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 644, i32 2}
!151 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug301, !150, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!152 = !{ptr @.str.52, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1389, i32 3}
!154 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug314, !153, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1410, i32 2}
!158 = !{ptr @rtsx_usb_sdmmc_drv_remove.__UNIQUE_ID_ddebug315, !157, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!159 = !{ptr @rtsx_usb_sdmmc_dev_pm_ops, !160, !"rtsx_usb_sdmmc_dev_pm_ops", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1436, i32 32}
!161 = !{ptr @rtsx_usb_sdmmc_ids, !162, !"rtsx_usb_sdmmc_ids", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/rtsx_usb_sdmmc.c", i32 1441, i32 40}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148988266, i64 2148988271, i64 2148988284, i64 2148988328, i64 2148988362, i64 2148988383}
!173 = !{i8 0, i8 2}
!174 = !{i64 2148374889, i64 2148374915, i64 2148374944, i64 2148374978, i64 2148375009, i64 2148375032}
!175 = !{!"auto-init"}
!176 = !{i64 2148374308}
!177 = !{i64 859928, i64 859953, i64 859975, i64 859991, i64 860003, i64 860023, i64 860047, i64 860063, i64 860075}
!178 = !{i64 2148374496}
