; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/rtsx_pci_sdmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/rtsx_pci_sdmmc.c"
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
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.realtek_pci_sdmmc = type { ptr, ptr, ptr, ptr, %struct.work_struct, %struct.mutex, i8, i32, i8, i8, i8, i8, i32, i32, i32, i32, i8 }
%struct.rtsx_pcr = type { ptr, i32, %struct.rtsx_cr_option, %struct.rtsx_hw_param, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i16, i32, ptr, i8, i8, i8, i8 }
%struct.rtsx_cr_option = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.rtsx_hw_param = type { i32, i8 }
%struct.rtsx_slot = type { ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_rtsx_pci_sdmmc__305_1577_rtsx_pci_sdmmc_driver_init6 = internal global ptr @rtsx_pci_sdmmc_driver_init, section ".initcall6.init", align 4
@rtsx_pci_sdmmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rtsx_pci_sdmmc_drv_probe, ptr @rtsx_pci_sdmmc_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtsx_pci_sdmmc_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rtsx_pci_sdmmc_driver_exit = internal global ptr @rtsx_pci_sdmmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file306 = internal constant [52 x i8] c"rtsx_pci_sdmmc.file=drivers/mmc/host/rtsx_pci_sdmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [27 x i8] c"rtsx_pci_sdmmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [57 x i8] c"rtsx_pci_sdmmc.author=Wei WANG <wei_wang@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [65 x i8] c"rtsx_pci_sdmmc.description=Realtek PCI-E SD/MMC Card Host Driver\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtsx_pci_sdmmc\00", [17 x i8] zeroinitializer }, align 32
@rtsx_pci_sdmmc_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"rtsx_pci_sdmmc\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtsx_pci_sdmmc_drv_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtsx_pci_sdmmc_drv_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mmc/host/rtsx_pci_sdmmc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c": Realtek PCI-E SDMMC controller found\0A\00", [56 x i8] zeroinitializer }, align 32
@rtsx_pci_sdmmc_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&host->work)\00", [33 x i8] zeroinitializer }, align 32
@rtsx_pci_sdmmc_drv_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&host->host_mutex\00", [46 x i8] zeroinitializer }, align 32
@sd_request.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd_request\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CMD %d 0x%08x error(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sd_send_cmd_get_rsp\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: SD/MMC CMD %d, arg = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtsx_pci_send_cmd error (err = %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid response bit\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CRC7 error\0A\00", [20 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmd->resp[%d] = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.15, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cmd->resp[0] = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_rw_multi.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_rw_multi\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: sg_count = %d is invalid\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_read_long_data.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.10, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd_read_long_data\00", [46 x i8] zeroinitializer }, align 32
@sd_write_long_data.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.10, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sd_write_long_data\00", [45 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.10, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_read_data\00", [19 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtsx_pci_send_cmd fail (err = %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@sd_read_data.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtsx_pci_read_ppbuf fail (err = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_write_data.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.10, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd_write_data\00", [18 x i8] zeroinitializer }, align 32
@sd_write_data.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtsx_pci_write_ppbuf fail (err = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@sd_write_data.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.21, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@realtek_pci_sdmmc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @sdmmc_post_req, ptr @sdmmc_pre_req, ptr @sdmmc_request, ptr null, ptr @sdmmc_set_ios, ptr @sdmmc_get_ro, ptr @sdmmc_get_cd, ptr null, ptr null, ptr null, ptr @sdmmc_switch_voltage, ptr null, ptr @sdmmc_execute_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdmmc_init_sd_express }, [32 x i8] zeroinitializer }, align 32
@sdmmc_pre_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 192, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: reset data->host_cookie = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdmmc_pre_req\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdmmc_pre_req._entry_ptr = internal global ptr @sdmmc_pre_req._entry, section ".printk_index", align 4
@sdmmc_pre_req.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pre dma sg: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sd_pre_dma_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 161, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error: data->host_cookie = %d, host->cookie = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sd_pre_dma_transfer\00", [44 x i8] zeroinitializer }, align 32
@sd_pre_dma_transfer._entry_ptr = internal global ptr @sd_pre_dma_transfer._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__const.sd_set_bus_width.width = private unnamed_addr constant [4 x i8] c"\00\00\01\02", align 1
@sdmmc_get_ro.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdmmc_get_ro\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: RTSX_BIPR = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@sdmmc_get_cd.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.33, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdmmc_get_cd\00", [19 x i8] zeroinitializer }, align 32
@sdmmc_switch_voltage.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 1, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdmmc_switch_voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: signal_voltage = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sd_wait_voltage_stable_2.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sd_wait_voltage_stable_2\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: SD_BUS_STAT = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@sd_change_phase.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sd_change_phase\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%s): sample_point = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@sd_tuning_rx.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd_tuning_rx\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX raw_phase_map[%d] = 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@sd_tuning_rx.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX phase_map = 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_search_final_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 669, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phase error: [map:%x]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sd_search_final_phase\00", [42 x i8] zeroinitializer }, align 32
@sd_search_final_phase._entry_ptr = internal global ptr @sd_search_final_phase._entry, section ".printk_index", align 4
@sd_search_final_phase.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"phase: [map:%x] [maxlen:%d] [final:%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@init_extra_caps.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 1, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_extra_caps\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcr->extra_caps = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtsx_pci_sdmmc_drv_remove\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Controller removed during transfer\0A\00", [56 x i8] zeroinitializer }, align 32
@rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 1, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c": Realtek PCI-E SDMMC controller has been removed\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 17, i64 18, i64 24, i64 25, i64 53]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 7, i64 17, i64 21, i64 29]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 7, i64 17, i64 21, i64 29]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 17, i64 18, i64 24, i64 25, i64 53]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 5, i64 6, i64 7]
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"rtsx_pci_sdmmc_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1568, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1573, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"rtsx_pci_sdmmc_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1559, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1477, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1489, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1494, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 865, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 226, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 274, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 290, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 298, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 313, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 318, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 564, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 444, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 505, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 337, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 366, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 374, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 390, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 403, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"realtek_pci_sdmmc_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1392, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 190, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 197, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 159, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1143, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1168, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1257, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1239, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 623, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 765, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 769, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 669, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 683, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1409, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1533, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [37 x i8] c"../drivers/mmc/host/rtsx_pci_sdmmc.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1553, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_rtsx_pci_sdmmc_driver_exit, ptr @__initcall__kmod_rtsx_pci_sdmmc__305_1577_rtsx_pci_sdmmc_driver_init6, ptr @rtsx_pci_sdmmc_driver_exit, ptr @sd_pre_dma_transfer._entry, ptr @sd_pre_dma_transfer._entry_ptr, ptr @sd_search_final_phase._entry, ptr @sd_search_final_phase._entry_ptr, ptr @sdmmc_pre_req._entry, ptr @sdmmc_pre_req._entry_ptr, ptr @rtsx_pci_sdmmc_driver, ptr @.str, ptr @rtsx_pci_sdmmc_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtsx_pci_sdmmc_drv_probe.__key, ptr @.str.4, ptr @rtsx_pci_sdmmc_drv_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @realtek_pci_sdmmc_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_sdmmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_sdmmc_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_sdmmc_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtsx_pci_sdmmc_drv_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_pci_sdmmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc_pre_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pre_dma_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_search_final_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_sdmmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rtsx_pci_sdmmc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_pci_sdmmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rtsx_pci_sdmmc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_sdmmc_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_sdmmc_drv_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pci_sdmmc_drv_probe, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !150

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_sdmmc_drv_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call12 = tail call ptr @mmc_alloc_host(i32 noundef 184, ptr noundef %dev) #7
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end.cleanup_crit_edge, label %if.end15

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 0, i32 70
  %pcr17 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %4 = ptrtoint ptr %pcr17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pcr17, align 4
  %mmc18 = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1
  %5 = ptrtoint ptr %mmc18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %mmc18, align 4
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %private.i, align 4
  %cookie = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 8
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cookie, align 4
  %power_state = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 6
  %8 = ptrtoint ptr %power_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %power_state, align 4
  %work = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 0, i32 1, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 0, i32 5
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtsx_pci_sdmmc_drv_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry24 = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %entry24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry24, ptr %entry24, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry24, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sd_request, ptr %func, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %slots = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 50
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slots, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pdev, ptr %15, align 4
  %17 = load ptr, ptr %slots, align 4
  %card_event = getelementptr inbounds %struct.rtsx_slot, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %card_event to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtsx_pci_sdmmc_card_event, ptr %card_event, align 4
  %host_mutex = getelementptr inbounds %struct.mmc_host, ptr %call12, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  tail call void @__mutex_init(ptr noundef %host_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtsx_pci_sdmmc_drv_probe.__key.5) #7
  %19 = ptrtoint ptr %mmc18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc18, align 4
  %21 = ptrtoint ptr %pcr17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcr17, align 4
  %f_min.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %f_min.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 250000, ptr %f_min.i, align 4
  %f_max.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 6
  %24 = ptrtoint ptr %f_max.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 208000000, ptr %f_max.i, align 8
  %ocr_avail.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 8
  %25 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3145856, ptr %ocr_avail.i, align 64
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 16
  %26 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 229383, ptr %caps.i, align 32
  %rtd3_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %22, i32 0, i32 54
  %27 = ptrtoint ptr %rtd3_en.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rtd3_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 229383, i32 229511
  %29 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select.i, ptr %caps.i, align 32
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 17
  %30 = ptrtoint ptr %caps2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 540676, ptr %caps2.i, align 4
  %max_current_330.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 13
  %31 = ptrtoint ptr %max_current_330.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 400, ptr %max_current_330.i, align 4
  %max_current_180.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 15
  %32 = ptrtoint ptr %max_current_180.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 800, ptr %max_current_180.i, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 3
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @realtek_pci_sdmmc_ops, ptr %ops.i, align 4
  tail call fastcc void @init_extra_caps(ptr noundef %private.i) #7
  %max_segs.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 21
  %34 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 256, ptr %max_segs.i, align 4
  %max_seg_size.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 20
  %35 = ptrtoint ptr %max_seg_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 65536, ptr %max_seg_size.i, align 16
  %max_blk_size.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 24
  %36 = ptrtoint ptr %max_blk_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 512, ptr %max_blk_size.i, align 4
  %max_blk_count.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 25
  %37 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65535, ptr %max_blk_count.i, align 128
  %max_req_size.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 23
  %38 = ptrtoint ptr %max_req_size.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 524288, ptr %max_req_size.i, align 8
  %rtd3_en = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 54
  %39 = ptrtoint ptr %rtd3_en to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rtd3_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool33.not = icmp eq i8 %40, 0
  br i1 %tobool33.not, label %if.end15.if.end38_crit_edge, label %if.then34

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 5000) #7
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end15.if.end38_crit_edge
  %call39 = tail call i32 @mmc_add_host(ptr noundef nonnull %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtsx_pci_sdmmc_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr1, align 4
  %slots = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slots, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  %7 = load ptr, ptr %slots, align 4
  %card_event = getelementptr inbounds %struct.rtsx_slot, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %card_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %card_event, align 4
  %mmc4 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mmc4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc4, align 4
  %rtd3_en = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 54
  %11 = ptrtoint ptr %rtd3_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rtd3_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %work = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 4
  %call9 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #7
  %host_mutex = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #7
  %mrq = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mrq, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end8.if.end29_crit_edge, label %do.body

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pci_sdmmc_drv_remove, %if.then16)) #7
          to label %do.end [label %if.then16], !srcloc !150

if.then16:                                        ; preds = %do.body
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.dev_name.exit_crit_edge

if.then16.dev_name.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then16.dev_name.exit_crit_edge
  %retval.0.i77 = phi ptr [ %18, %if.end.i ], [ %16, %if.then16.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug303, ptr noundef %dev17, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i77) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  tail call void @rtsx_pci_complete_unfinished_transfer(ptr noundef %3) #7
  %19 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mrq, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -123, ptr %error, align 4
  %24 = load ptr, ptr %mrq, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stop, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %do.end.if.end27_crit_edge, label %if.then23

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %error26 = getelementptr inbounds %struct.mmc_command, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %error26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -123, ptr %error26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.end.if.end27_crit_edge
  %28 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mrq, align 4
  tail call void @mmc_request_done(ptr noundef %10, ptr noundef %29) #7
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end8.if.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef %host_mutex) #7
  tail call void @mmc_remove_host(ptr noundef %10) #7
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %eject to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %eject, align 2
  %call32 = tail call zeroext i1 @flush_work(ptr noundef %work) #7
  tail call void @mmc_free_host(ptr noundef %10) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx_pci_sdmmc_drv_remove, %if.then45)) #7
          to label %cleanup [label %if.then45], !srcloc !150

if.then45:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %dev46 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug304, ptr noundef %dev46, ptr noundef nonnull @.str.53) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end29, %entry.cleanup_crit_edge
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
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_request(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %pcr1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %mmc2 = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc2, align 4
  %mrq3 = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %mrq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq3, align 4
  %cmd4 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd4, align 4
  %data5 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data5, align 4
  %eject = getelementptr i8, ptr %work, i32 146
  %10 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %eject, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcr1, align 4
  %remap_addr.i = getelementptr inbounds %struct.rtsx_pcr, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %error = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -123, ptr %error, align 4
  br label %finish

if.end:                                           ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcr1, align 4
  %call8 = tail call i32 @rtsx_pci_card_exclusive_check(ptr noundef %20, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %error11 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %21 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call8, ptr %error11, align 4
  br label %finish

if.end12:                                         ; preds = %if.end
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #7
  tail call void @rtsx_pci_start_run(ptr noundef %1) #7
  %clock = getelementptr i8, ptr %work, i32 140
  %22 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock, align 4
  %ssc_depth = getelementptr i8, ptr %work, i32 136
  %24 = ptrtoint ptr %ssc_depth to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ssc_depth, align 4
  %initial_mode = getelementptr i8, ptr %work, i32 147
  %26 = ptrtoint ptr %initial_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %initial_mode, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool13 = icmp ne i8 %27, 0
  %double_clk = getelementptr i8, ptr %work, i32 145
  %28 = ptrtoint ptr %double_clk to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %double_clk, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14 = icmp ne i8 %29, 0
  %vpclk = getelementptr i8, ptr %work, i32 144
  %30 = ptrtoint ptr %vpclk to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vpclk, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool15 = icmp ne i8 %31, 0
  %call16 = tail call i32 @rtsx_pci_switch_clock(ptr noundef %1, i32 noundef %23, i8 noundef zeroext %25, i1 noundef zeroext %tobool13, i1 noundef zeroext %tobool14, i1 noundef zeroext %tobool15) #7
  %call17 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -676, i8 noundef zeroext 7, i8 noundef zeroext 2) #7
  %call18 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -686, i8 noundef zeroext 15, i8 noundef zeroext 4) #7
  %host_mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #7
  %32 = ptrtoint ptr %mrq3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %5, ptr %mrq3, align 4
  tail call void @mutex_unlock(ptr noundef %host_mutex) #7
  %33 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data5, align 4
  %tobool22.not = icmp eq ptr %34, null
  br i1 %tobool22.not, label %if.end12.if.then26_crit_edge, label %if.then23

if.end12.if.then26_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then23:                                        ; preds = %if.end12
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  %mul = mul i32 %38, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %phi.cmp = icmp eq i32 %mul, 0
  br i1 %phi.cmp, label %if.then23.if.then26_crit_edge, label %if.else

if.then23.if.then26_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %if.then23.if.then26_crit_edge, %if.end12.if.then26_crit_edge
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %add.ptr, ptr noundef %7)
  br label %if.end47

if.else:                                          ; preds = %if.then23
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %7, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %40, label %if.else.if.else45_crit_edge [
    i32 25, label %if.else.if.then32_crit_edge
    i32 18, label %if.else.if.then32_crit_edge145
    i32 17, label %if.else.if.then32_crit_edge146
    i32 24, label %if.else.if.then32_crit_edge147
    i32 53, label %sdio_extblock_cmd.exit
  ]

if.else.if.then32_crit_edge147:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.else.if.then32_crit_edge146:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.else.if.then32_crit_edge145:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.else.if.then32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.else.if.else45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else45

sdio_extblock_cmd.exit:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %38)
  %cmp1.i.not = icmp eq i32 %38, 512
  br i1 %cmp1.i.not, label %sdio_extblock_cmd.exit.if.then32_crit_edge, label %sdio_extblock_cmd.exit.if.else45_crit_edge

sdio_extblock_cmd.exit.if.else45_crit_edge:       ; preds = %sdio_extblock_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else45

sdio_extblock_cmd.exit.if.then32_crit_edge:       ; preds = %sdio_extblock_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.then32:                                        ; preds = %sdio_extblock_cmd.exit.if.then32_crit_edge, %if.else.if.then32_crit_edge, %if.else.if.then32_crit_edge145, %if.else.if.then32_crit_edge146, %if.else.if.then32_crit_edge147
  %call33 = tail call fastcc i32 @sd_rw_multi(ptr noundef %add.ptr, ptr noundef %5)
  %error34 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %42 = ptrtoint ptr %error34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call33, ptr %error34, align 4
  %using_cookie = getelementptr i8, ptr %work, i32 164
  %43 = ptrtoint ptr %using_cookie to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %using_cookie, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool35.not = icmp eq i8 %44, 0
  br i1 %tobool35.not, label %if.then36, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmc2, align 4
  %47 = ptrtoint ptr %mrq3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mrq3, align 4
  tail call void @sdmmc_post_req(ptr noundef %46, ptr noundef %48, i32 noundef 0)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then32.if.end39_crit_edge
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %7, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %50, label %if.end39.if.end47_crit_edge [
    i32 25, label %if.end39.land.lhs.true_crit_edge
    i32 18, label %if.end39.land.lhs.true_crit_edge148
  ]

if.end39.land.lhs.true_crit_edge148:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end39.land.lhs.true_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end39.land.lhs.true_crit_edge, %if.end39.land.lhs.true_crit_edge148
  %stop = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %52 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stop, align 4
  %tobool41.not = icmp eq ptr %53, null
  br i1 %tobool41.not, label %land.lhs.true.if.end47_crit_edge, label %if.then42

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %add.ptr, ptr noundef nonnull %53)
  br label %if.end47

if.else45:                                        ; preds = %sdio_extblock_cmd.exit.if.else45_crit_edge, %if.else.if.else45_crit_edge
  tail call fastcc void @sd_normal_rw(ptr noundef %add.ptr, ptr noundef %5)
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then42, %land.lhs.true.if.end47_crit_edge, %if.end39.if.end47_crit_edge, %if.then26
  %54 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data5, align 4
  %tobool49.not = icmp eq ptr %55, null
  br i1 %tobool49.not, label %if.end47.if.end63_crit_edge, label %if.then50

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then50:                                        ; preds = %if.end47
  %error51 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %56 = ptrtoint ptr %error51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool52.not = icmp eq i32 %57, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %if.then50.if.end63.sink.split_crit_edge

if.then50.if.end63.sink.split_crit_edge:          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.sink.split

lor.lhs.false53:                                  ; preds = %if.then50
  %error54 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 5
  %58 = ptrtoint ptr %error54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %error54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool55.not = icmp eq i32 %59, 0
  br i1 %tobool55.not, label %if.else57, label %lor.lhs.false53.if.end63.sink.split_crit_edge

lor.lhs.false53.if.end63.sink.split_crit_edge:    ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.sink.split

if.else57:                                        ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #9
  %blocks58 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %60 = ptrtoint ptr %blocks58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blocks58, align 4
  %blksz59 = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %62 = ptrtoint ptr %blksz59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %blksz59, align 4
  %mul60 = mul i32 %63, %61
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %if.else57, %lor.lhs.false53.if.end63.sink.split_crit_edge, %if.then50.if.end63.sink.split_crit_edge
  %.sink = phi i32 [ %mul60, %if.else57 ], [ 0, %lor.lhs.false53.if.end63.sink.split_crit_edge ], [ 0, %if.then50.if.end63.sink.split_crit_edge ]
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 7
  %64 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink, ptr %bytes_xfered, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.end47.if.end63_crit_edge
  tail call void @mutex_unlock(ptr noundef %pcr_mutex) #7
  br label %finish

finish:                                           ; preds = %if.end63, %if.then10, %if.then
  %error65 = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %65 = ptrtoint ptr %error65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool66.not = icmp eq i32 %66, 0
  br i1 %tobool66.not, label %finish.if.end78_crit_edge, label %do.body

finish.if.end78_crit_edge:                        ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.body:                                          ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_request.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_request, %if.then73)) #7
          to label %if.end78 [label %if.then73], !srcloc !150

if.then73:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %7, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %71 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arg, align 4
  %73 = ptrtoint ptr %error65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %error65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_request.__UNIQUE_ID_ddebug296, ptr noundef %dev.i, ptr noundef nonnull @.str.8, i32 noundef %70, i32 noundef %72, i32 noundef %74) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.body, %finish.if.end78_crit_edge
  %host_mutex79 = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %host_mutex79, i32 noundef 0) #7
  %75 = ptrtoint ptr %mrq3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %mrq3, align 4
  tail call void @mutex_unlock(ptr noundef %host_mutex79) #7
  tail call void @mmc_request_done(ptr noundef %3, ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx_pci_sdmmc_card_event(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cookie = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cookie, align 4
  %mmc = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc, align 4
  tail call void @mmc_detect_change(ptr noundef %4, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_exclusive_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_start_run(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_switch_clock(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_send_cmd_get_rsp(ptr nocapture noundef readonly %host, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 4
  %arg2 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %conv6 = and i32 %3, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug277, ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %conv6, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 31
  %10 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and.i, label %do.end.out.thread_crit_edge [
    i32 0, label %do.end.if.end17_crit_edge
    i32 21, label %do.end.if.end10.thread.thread321_crit_edge
    i32 17, label %sw.bb2.i
    i32 29, label %if.then14
    i32 7, label %if.end10.thread.thread313
    i32 1, label %sw.bb5.i
  ]

do.end.if.end10.thread.thread321_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread.thread321

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end.out.thread_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end10.thread.thread313:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread.thread321

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.thread.thread321

if.end10.thread.thread321:                        ; preds = %sw.bb5.i, %sw.bb2.i, %do.end.if.end10.thread.thread321_crit_edge
  %retval.0.i270.ph.ph.ph.ph = phi i32 [ 5, %sw.bb2.i ], [ 5, %sw.bb5.i ], [ 1, %do.end.if.end10.thread.thread321_crit_edge ]
  br label %if.end17

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %busy_timeout = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %11 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %busy_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool15.not, i32 3000, i32 %12
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.thread.thread321, %if.end10.thread.thread313, %do.end.if.end17_crit_edge
  %switch.select6.i289 = phi i32 [ 5, %if.then14 ], [ 16, %if.end10.thread.thread313 ], [ 5, %if.end10.thread.thread321 ], [ %and.i, %do.end.if.end17_crit_edge ]
  %switch.selectcmp5.i288 = phi i1 [ false, %if.then14 ], [ false, %if.end10.thread.thread313 ], [ false, %if.end10.thread.thread321 ], [ true, %do.end.if.end17_crit_edge ]
  %switch.selectcmp.i287 = phi i1 [ false, %if.then14 ], [ true, %if.end10.thread.thread313 ], [ false, %if.end10.thread.thread321 ], [ false, %do.end.if.end17_crit_edge ]
  %retval.0.i270.ph286 = phi i32 [ 9, %if.then14 ], [ 2, %if.end10.thread.thread313 ], [ %retval.0.i270.ph.ph.ph.ph, %if.end10.thread.thread321 ], [ 4, %do.end.if.end17_crit_edge ]
  %timeout.0 = phi i32 [ %spec.select, %if.then14 ], [ 100, %if.end10.thread.thread313 ], [ 100, %if.end10.thread.thread321 ], [ 100, %do.end.if.end17_crit_edge ]
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %14)
  %cmp19 = icmp eq i32 %14, 11
  br i1 %cmp19, label %if.then21, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21:                                        ; preds = %if.end17
  %call22 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -1, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then21.out.thread_crit_edge, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then21.out.thread_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ci, align 4
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd, align 4
  %18 = trunc i32 %17 to i8
  %conv.i = or i8 %18, 64
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -599, i8 noundef zeroext -1, i8 noundef zeroext %conv.i) #7
  %19 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg2, align 4
  %shr.i.i = lshr i32 %20, 24
  %conv.i.i = trunc i32 %shr.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -598, i8 noundef zeroext -1, i8 noundef zeroext %conv.i.i) #7
  %shr3.i.i = lshr i32 %20, 16
  %conv4.i.i = trunc i32 %shr3.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -597, i8 noundef zeroext -1, i8 noundef zeroext %conv4.i.i) #7
  %shr8.i.i = lshr i32 %20, 8
  %conv9.i.i = trunc i32 %shr8.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -596, i8 noundef zeroext -1, i8 noundef zeroext %conv9.i.i) #7
  %conv13.i.i = trunc i32 %20 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -595, i8 noundef zeroext -1, i8 noundef zeroext %conv13.i.i) #7
  %conv28 = trunc i32 %retval.0.i270.ph286 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext %conv28) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext -120) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 96, i8 noundef zeroext 96) #7
  br i1 %switch.selectcmp.i287, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1536, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1535, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1534, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1533, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1532, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1531, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1530, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1529, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1528, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1527, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -1526, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %if.end47.sink.split

if.else:                                          ; preds = %if.end27
  br i1 %switch.selectcmp5.i288, label %if.else.if.end47_crit_edge, label %if.else.if.end47.sink.split_crit_edge

if.else.if.end47.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.sink.split

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end47.sink.split:                              ; preds = %if.else.if.end47.sink.split_crit_edge, %for.body.preheader
  %.sink327 = phi i16 [ -1525, %for.body.preheader ], [ -599, %if.else.if.end47.sink.split_crit_edge ]
  %.sink326 = phi i16 [ -1524, %for.body.preheader ], [ -598, %if.else.if.end47.sink.split_crit_edge ]
  %.sink325 = phi i16 [ -1523, %for.body.preheader ], [ -597, %if.else.if.end47.sink.split_crit_edge ]
  %.sink324 = phi i16 [ -1522, %for.body.preheader ], [ -596, %if.else.if.end47.sink.split_crit_edge ]
  %.sink = phi i16 [ -1521, %for.body.preheader ], [ -595, %if.else.if.end47.sink.split_crit_edge ]
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink327, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink326, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink325, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink324, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %.sink, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else.if.end47_crit_edge
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext -605, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %call48 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef %timeout.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.end69

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcr1, align 4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %22, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then64)) #7
          to label %out [label %if.then64], !srcloc !150

if.then64:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %dev.i271 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug278, ptr noundef %dev.i271, ptr noundef nonnull @.str.11, i32 noundef %call48) #7
  br label %out

if.end69:                                         ; preds = %if.end47
  br i1 %switch.selectcmp5.i288, label %if.end69.out.thread_crit_edge, label %if.end73

if.end69.out.thread_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end73:                                         ; preds = %if.end69
  %host_cmds_ptr.i = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %host_cmds_ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_cmds_ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %28)
  %cmp76.not = icmp ult i8 %28, 64
  br i1 %cmp76.not, label %if.end96, label %if.then78

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then91)) #7
          to label %out [label %if.then91], !srcloc !150

if.then91:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %dev.i272 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug279, ptr noundef %dev.i272, ptr noundef nonnull @.str.12) #7
  br label %out

if.end96:                                         ; preds = %if.end73
  %and97 = and i32 %retval.0.i270.ph286, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then99, label %if.end96.if.end123_crit_edge

if.end96.if.end123_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then99:                                        ; preds = %if.end96
  %arrayidx100 = getelementptr i8, ptr %add.ptr, i32 %switch.select6.i289
  %31 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool103.not = icmp sgt i8 %32, -1
  br i1 %tobool103.not, label %if.then99.if.end123_crit_edge, label %if.then104

if.then99.if.end123_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then104:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then117)) #7
          to label %out [label %if.then117], !srcloc !150

if.then117:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %dev.i273 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug280, ptr noundef %dev.i273, ptr noundef nonnull @.str.13) #7
  br label %out

if.end123:                                        ; preds = %if.then99.if.end123_crit_edge, %if.end96.if.end123_crit_edge
  br i1 %switch.selectcmp.i287, label %if.then126, label %if.else158

if.then126:                                       ; preds = %if.end123
  %arrayidx127 = getelementptr i8, ptr %26, i32 17
  %35 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %arrayidx127, align 1
  %add.ptr132 = getelementptr i8, ptr %26, i32 2
  br label %for.body131

for.body131:                                      ; preds = %for.inc155.for.body131_crit_edge, %if.then126
  %i.2304 = phi i32 [ 0, %if.then126 ], [ %inc156, %for.inc155.for.body131_crit_edge ]
  %mul = shl i32 %i.2304, 2
  %add.ptr133 = getelementptr i8, ptr %add.ptr132, i32 %mul
  %36 = ptrtoint ptr %add.ptr133 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %add.ptr133, align 1
  %arrayidx135 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 %i.2304
  %38 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx135, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then148)) #7
          to label %for.inc155 [label %if.then148], !srcloc !150

if.then148:                                       ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host, align 4
  %dev.i274 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx135, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug281, ptr noundef %dev.i274, ptr noundef nonnull @.str.14, i32 noundef %i.2304, i32 noundef %42) #7
  br label %for.inc155

for.inc155:                                       ; preds = %if.then148, %for.body131
  %inc156 = add nuw nsw i32 %i.2304, 1
  %exitcond.not = icmp eq i32 %inc156, 4
  br i1 %exitcond.not, label %for.inc155.out_crit_edge, label %for.inc155.for.body131_crit_edge

for.inc155.for.body131_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body131

for.inc155.out_crit_edge:                         ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else158:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr159 = getelementptr i8, ptr %26, i32 2
  %43 = ptrtoint ptr %add.ptr159 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %add.ptr159, align 1
  %resp161 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %45 = ptrtoint ptr %resp161 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %resp161, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_send_cmd_get_rsp, %if.then175)) #7
          to label %out [label %if.then175], !srcloc !150

if.then175:                                       ; preds = %if.else158
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host, align 4
  %dev.i275 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %resp161 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resp161, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug282, ptr noundef %dev.i275, ptr noundef nonnull @.str.15, i32 noundef %49) #7
  br label %out

out.thread:                                       ; preds = %if.end69.out.thread_crit_edge, %if.then21.out.thread_crit_edge, %do.end.out.thread_crit_edge
  %err.0.ph = phi i32 [ 0, %do.end.out.thread_crit_edge ], [ 0, %if.end69.out.thread_crit_edge ], [ %call22, %if.then21.out.thread_crit_edge ]
  %error297 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %error297 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %err.0.ph, ptr %error297, align 4
  br label %if.end188

out:                                              ; preds = %if.then175, %if.else158, %for.inc155.out_crit_edge, %if.then117, %if.then104, %if.then91, %if.then78, %if.then64, %if.then51
  %err.0 = phi i32 [ %call48, %if.then64 ], [ -84, %if.then91 ], [ %call48, %if.then175 ], [ -84, %if.then117 ], [ %call48, %if.then51 ], [ -84, %if.then78 ], [ -84, %if.then104 ], [ %call48, %if.else158 ], [ %call48, %for.inc155.out_crit_edge ]
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %51 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %err.0, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool183.not = icmp eq i32 %err.0, 0
  %clock_toggled.1.off0.not = xor i1 %cmp19, true
  %brmerge = select i1 %tobool183.not, i1 true, i1 %clock_toggled.1.off0.not
  br i1 %brmerge, label %out.if.end188_crit_edge, label %if.then186

out.if.end188_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end188

if.then186:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %call187 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext 0) #7
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %out.if.end188_crit_edge, %out.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_rw_multi(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %sg_count = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 13
  %2 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %error = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_rw_multi.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_rw_multi, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !150

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_rw_multi.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.then
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end20, label %if.then11

if.then11:                                        ; preds = %if.end9
  %initial_mode = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 11
  %13 = ptrtoint ptr %initial_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %initial_mode, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %if.then11.if.end14_crit_edge, label %if.then13

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %pcr.i = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %15 = ptrtoint ptr %pcr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcr.i, align 4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %16, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext 0) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11.if.end14_crit_edge
  %call15 = tail call fastcc i32 @sd_read_long_data(ptr noundef %host, ptr noundef %mrq)
  %17 = ptrtoint ptr %initial_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %initial_mode, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.then18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %pcr.i36 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %19 = ptrtoint ptr %pcr.i36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcr.i36, align 4
  %call.i37 = tail call i32 @rtsx_pci_write_register(ptr noundef %20, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext -128) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call fastcc i32 @sd_write_long_data(ptr noundef %host, ptr noundef %mrq)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ %call21, %if.end20 ], [ %call15, %if.then18 ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  tail call void @rtsx_pci_dma_unmap_sg(ptr noundef %1, ptr noundef %7, i32 noundef %9, i1 noundef zeroext %tobool) #7
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %host_cookie, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_normal_rw(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blksz, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3328) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -12, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %initial_mode = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 11
  %9 = ptrtoint ptr %initial_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %initial_mode, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.then4.if.end7_crit_edge, label %if.then6

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %pcr.i = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %11 = ptrtoint ptr %pcr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcr.i, align 4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %12, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext 0) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4.if.end7_crit_edge
  %13 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blksz, align 4
  %conv = trunc i32 %14 to i16
  %call10 = tail call fastcc i32 @sd_read_data(ptr noundef %host, ptr noundef %1, i16 noundef zeroext %conv, ptr noundef nonnull %call9.i.i, i32 noundef %14, i32 noundef 200)
  %error11 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call10, ptr %error11, align 4
  %16 = ptrtoint ptr %initial_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %initial_mode, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  br i1 %tobool13.not, label %if.end7.if.end15_crit_edge, label %if.then14

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %pcr.i56 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %18 = ptrtoint ptr %pcr.i56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcr.i56, align 4
  %call.i57 = tail call i32 @rtsx_pci_write_register(ptr noundef %19, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext -128) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end7.if.end15_crit_edge
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_len, align 4
  %24 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blksz, align 4
  %call17 = tail call i32 @sg_copy_from_buffer(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %call9.i.i, i32 noundef %25) #7
  br label %if.end27

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sg18 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %sg18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg18, align 4
  %sg_len19 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %sg_len19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_len19, align 4
  %30 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blksz, align 4
  %call21 = tail call i32 @sg_copy_to_buffer(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %call9.i.i, i32 noundef %31) #7
  %32 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blksz, align 4
  %conv23 = trunc i32 %33 to i16
  %call25 = tail call fastcc i32 @sd_write_data(ptr noundef %host, ptr noundef %1, i16 noundef zeroext %conv23, ptr noundef nonnull %call9.i.i, i32 noundef %33)
  %error26 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %error26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call25, ptr %error26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_read_long_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %mmc2 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc2, align 4
  %card3 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card3, align 4
  %cmd4 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %6 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd4, align 4
  %data5 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %8 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data5, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 28, i32 7
  %12 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %timing.i, align 4
  %14 = add i8 %13, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %14)
  %15 = icmp ult i8 %14, -5
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  %mul = mul i32 %19, %17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_long_data.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_long_data, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_long_data.__UNIQUE_ID_ddebug289, ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18, i32 noundef %23, i32 noundef %25) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 3
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 31
  %28 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and.i, label %do.end.cleanup_crit_edge [
    i32 0, label %do.end.if.end12_crit_edge
    i32 21, label %sw.bb1.i
    i32 17, label %sw.bb2.i
    i32 29, label %sw.bb3.i
    i32 7, label %sw.bb4.i
    i32 1, label %sw.bb5.i
  ]

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.bb2.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end.if.end12_crit_edge
  %retval.0.i77.ph = phi i8 [ 4, %do.end.if.end12_crit_edge ], [ 1, %sw.bb1.i ], [ 5, %sw.bb2.i ], [ 9, %sw.bb3.i ], [ 2, %sw.bb4.i ], [ 5, %sw.bb5.i ]
  %spec.select = select i1 %15, i8 32, i8 0
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %ci, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %7, align 4
  %32 = trunc i32 %31 to i8
  %conv.i = or i8 %32, 64
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -599, i8 noundef zeroext -1, i8 noundef zeroext %conv.i) #7
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %33 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arg.i, align 4
  %shr.i.i = lshr i32 %34, 24
  %conv.i.i = trunc i32 %shr.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -598, i8 noundef zeroext -1, i8 noundef zeroext %conv.i.i) #7
  %shr3.i.i = lshr i32 %34, 16
  %conv4.i.i = trunc i32 %shr3.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -597, i8 noundef zeroext -1, i8 noundef zeroext %conv4.i.i) #7
  %shr8.i.i = lshr i32 %34, 8
  %conv9.i.i = trunc i32 %shr8.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -596, i8 noundef zeroext -1, i8 noundef zeroext %conv9.i.i) #7
  %conv13.i.i = trunc i32 %34 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -595, i8 noundef zeroext -1, i8 noundef zeroext %conv13.i.i) #7
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks, align 4
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  %conv.i78 = trunc i32 %36 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext %conv.i78) #7
  %39 = lshr i32 %36, 8
  %conv2.i = trunc i32 %39 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #7
  %conv3.i = trunc i32 %38 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #7
  %40 = lshr i32 %38, 8
  %conv6.i = trunc i32 %40 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext %conv6.i) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -479, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %shr = lshr i32 %mul, 24
  %conv21 = trunc i32 %shr to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -469, i8 noundef zeroext -1, i8 noundef zeroext %conv21) #7
  %shr22 = lshr i32 %mul, 16
  %conv23 = trunc i32 %shr22 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -470, i8 noundef zeroext -1, i8 noundef zeroext %conv23) #7
  %shr24 = lshr i32 %mul, 8
  %conv25 = trunc i32 %shr24 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -471, i8 noundef zeroext -1, i8 noundef zeroext %conv25) #7
  %conv26 = trunc i32 %mul to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -472, i8 noundef zeroext -1, i8 noundef zeroext %conv26) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -468, i8 noundef zeroext 51, i8 noundef zeroext 35) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %or28 = or i8 %retval.0.i77.ph, %spec.select
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext %or28) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext -114) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_pci_send_cmd_no_wait(ptr noundef %1) #7
  %sg = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 12
  %41 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sg, align 4
  %sg_count = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 13
  %43 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sg_count, align 4
  %call30 = tail call i32 @rtsx_pci_dma_transfer(ptr noundef %1, ptr noundef %42, i32 noundef %44, i1 noundef zeroext true, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcr1, align 4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %46, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.then33 ], [ 0, %if.end12.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_write_long_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %mmc2 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc2, align 4
  %card3 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card3, align 4
  %cmd4 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %6 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd4, align 4
  %data5 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %8 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data5, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 28, i32 7
  %12 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %timing.i, align 4
  %14 = add i8 %13, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %14)
  %15 = icmp ult i8 %14, -5
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 3
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  %mul = mul i32 %19, %17
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %host, ptr noundef %7)
  %error = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_long_data.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_long_data, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !150

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_long_data.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.19, i32 noundef %25, i32 noundef %27) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %spec.select = select i1 %15, i8 -92, i8 -124
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ci, align 4
  %29 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blocks, align 4
  %31 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blksz, align 4
  %conv.i = trunc i32 %30 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext %conv.i) #7
  %33 = lshr i32 %30, 8
  %conv2.i = trunc i32 %33 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext %conv2.i) #7
  %conv3.i = trunc i32 %32 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #7
  %34 = lshr i32 %32, 8
  %conv6.i = trunc i32 %34 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext %conv6.i) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -479, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %shr = lshr i32 %mul, 24
  %conv22 = trunc i32 %shr to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -469, i8 noundef zeroext -1, i8 noundef zeroext %conv22) #7
  %shr23 = lshr i32 %mul, 16
  %conv24 = trunc i32 %shr23 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -470, i8 noundef zeroext -1, i8 noundef zeroext %conv24) #7
  %shr25 = lshr i32 %mul, 8
  %conv26 = trunc i32 %shr25 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -471, i8 noundef zeroext -1, i8 noundef zeroext %conv26) #7
  %conv27 = trunc i32 %mul to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -472, i8 noundef zeroext -1, i8 noundef zeroext %conv27) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -468, i8 noundef zeroext 51, i8 noundef zeroext 33) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext %spec.select) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  tail call void @rtsx_pci_send_cmd_no_wait(ptr noundef %1) #7
  %sg = getelementptr inbounds %struct.mmc_data, ptr %9, i32 0, i32 12
  %35 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sg, align 4
  %sg_count = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 13
  %37 = ptrtoint ptr %sg_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg_count, align 4
  %call28 = tail call i32 @rtsx_pci_dma_transfer(ptr noundef %1, ptr noundef %36, i32 noundef %38, i1 noundef zeroext false, i32 noundef 10000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %if.then30, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcr1, align 4
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %40, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.then30 ], [ %21, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_send_cmd_no_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_dma_transfer(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_dma_unmap_sg(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_read_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %cmd, i16 noundef zeroext %byte_cnt, ptr noundef %buf, i32 noundef %buf_len, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug283, ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.20, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %buf, null
  %spec.select = select i1 %tobool5.not, i32 0, i32 %buf_len
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %9)
  %cmp = icmp eq i32 %9, 19
  %trans_mode.0 = select i1 %cmp, i8 -113, i8 -116
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ci, align 4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  %13 = trunc i32 %12 to i8
  %conv.i = or i8 %13, 64
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -599, i8 noundef zeroext -1, i8 noundef zeroext %conv.i) #7
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arg.i, align 4
  %shr.i.i = lshr i32 %15, 24
  %conv.i.i = trunc i32 %shr.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -598, i8 noundef zeroext -1, i8 noundef zeroext %conv.i.i) #7
  %shr3.i.i = lshr i32 %15, 16
  %conv4.i.i = trunc i32 %shr3.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -597, i8 noundef zeroext -1, i8 noundef zeroext %conv4.i.i) #7
  %shr8.i.i = lshr i32 %15, 8
  %conv9.i.i = trunc i32 %shr8.i.i to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -596, i8 noundef zeroext -1, i8 noundef zeroext %conv9.i.i) #7
  %conv13.i.i = trunc i32 %15 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -595, i8 noundef zeroext -1, i8 noundef zeroext %conv13.i.i) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %conv3.i = trunc i16 %byte_cnt to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #7
  %16 = lshr i16 %byte_cnt, 8
  %conv6.i = trunc i16 %16 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext %conv6.i) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  br i1 %cmp, label %do.end.if.end14_crit_edge, label %if.then13

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -677, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %do.end.if.end14_crit_edge
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext %trans_mode.0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call17 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef %timeout) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.body21, label %if.end38

do.body21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then33)) #7
          to label %cleanup [label %if.then33], !srcloc !150

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %dev.i96 = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug284, ptr noundef %dev.i96, ptr noundef nonnull @.str.21, i32 noundef %call17) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool40.not = icmp eq i32 %spec.select, 0
  %or.cond = or i1 %tobool5.not, %tobool40.not
  br i1 %or.cond, label %if.end38.cleanup_crit_edge, label %if.then41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  %call42 = tail call i32 @rtsx_pci_read_ppbuf(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.body46, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body46:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_read_data.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_read_data, %if.then58)) #7
          to label %cleanup [label %if.then58], !srcloc !150

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %dev.i97 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_read_data.__UNIQUE_ID_ddebug285, ptr noundef %dev.i97, ptr noundef nonnull @.str.22, i32 noundef %call42) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body46, %if.then41.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then33, %do.body21
  %retval.0 = phi i32 [ %call17, %if.then33 ], [ %call42, %if.then58 ], [ 0, %if.then41.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %call17, %do.body21 ], [ %call42, %do.body46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_write_data(ptr nocapture noundef readonly %host, ptr nocapture noundef %cmd, i16 noundef zeroext %byte_cnt, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug286, ptr noundef %dev.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %buf, null
  %spec.select = select i1 %tobool5.not, i32 0, i32 %buf_len
  tail call fastcc void @sd_send_cmd_get_rsp(ptr noundef %host, ptr noundef %cmd)
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool13.not = icmp eq i32 %spec.select, 0
  %or.cond = or i1 %tobool5.not, %tobool13.not
  br i1 %or.cond, label %if.end11.if.end35_crit_edge, label %if.then14

if.end11.if.end35_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @rtsx_pci_write_ppbuf(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %do.body17, label %if.then14.if.end35_crit_edge

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then29)) #7
          to label %cleanup [label %if.then29], !srcloc !150

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %dev.i7 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug287, ptr noundef %dev.i7, ptr noundef nonnull @.str.24, i32 noundef %call15) #7
  br label %cleanup

if.end35:                                         ; preds = %if.then14.if.end35_crit_edge, %if.end11.if.end35_crit_edge
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -591, i8 noundef zeroext -1, i8 noundef zeroext 1) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -590, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  %conv3.i = trunc i16 %byte_cnt to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -593, i8 noundef zeroext -1, i8 noundef zeroext %conv3.i) #7
  %13 = lshr i16 %byte_cnt, 8
  %conv6.i = trunc i16 %13 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -592, i8 noundef zeroext -1, i8 noundef zeroext %conv6.i) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -607, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext -589, i8 noundef zeroext -1, i8 noundef zeroext -127) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext -589, i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call36 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %1, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %do.body39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_write_data.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_write_data, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !150

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %dev.i8 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_write_data.__UNIQUE_ID_ddebug288, ptr noundef %dev.i8, ptr noundef nonnull @.str.21, i32 noundef %call36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %if.end35.cleanup_crit_edge, %if.then29, %do.body17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end.cleanup_crit_edge ], [ %call15, %if.then29 ], [ %call36, %if.then51 ], [ 0, %if.end35.cleanup_crit_edge ], [ %call15, %do.body17 ], [ %call36, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_ppbuf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_extra_caps(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %pcr2 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %pcr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_extra_caps.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_extra_caps, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extra_caps, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_extra_caps.__UNIQUE_ID_ddebug301, ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %extra_caps6 = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 31
  %8 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %extra_caps6, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 32
  %or = or i32 %11, 262144
  store i32 %or, ptr %caps, align 32
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %12 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %extra_caps6, align 4
  %and11 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end16_crit_edge, label %if.then13

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %caps14 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %caps14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps14, align 32
  %or15 = or i32 %15, 524288
  store i32 %or15, ptr %caps14, align 32
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end9.if.end16_crit_edge
  %16 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %extra_caps6, align 4
  %and18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end23_crit_edge, label %if.then20

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %caps21 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %caps21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps21, align 32
  %or22 = or i32 %19, 1048576
  store i32 %or22, ptr %caps21, align 32
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %20 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %extra_caps6, align 4
  %and25 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %caps28 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %caps28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %caps28, align 32
  %or29 = or i32 %23, 4096
  store i32 %or29, ptr %caps28, align 32
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %24 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %extra_caps6, align 4
  %and32 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.then34

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %caps35 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %caps35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps35, align 32
  %or36 = or i32 %27, 64
  store i32 %or36, ptr %caps35, align 32
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %28 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %extra_caps6, align 4
  %and39 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end43_crit_edge, label %if.then41

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caps2, align 4
  %or42 = or i32 %31, 4194304
  store i32 %or42, ptr %caps2, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end37.if.end43_crit_edge
  %32 = ptrtoint ptr %extra_caps6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %extra_caps6, align 4
  %and45 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %if.then47

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %caps248 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %caps248 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps248, align 4
  %or49 = or i32 %35, 384
  store i32 %or49, ptr %caps248, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end43.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_pre_req(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %3) #11
  %6 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %host_cookie, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pcr1.i = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %7 = ptrtoint ptr %pcr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcr1.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 512
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.i = icmp ne i32 %and.i, 0
  %call14.i = tail call i32 @rtsx_pci_dma_map_sg(ptr noundef %8, ptr noundef %12, i32 noundef %14, i1 noundef zeroext %tobool13.i) #7
  %cookie_sg_count18.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %15 = ptrtoint ptr %cookie_sg_count18.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call14.i, ptr %cookie_sg_count18.i, align 4
  %cookie19.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %16 = ptrtoint ptr %cookie19.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cookie19.i, align 4
  %inc.i = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp20.i = icmp slt i32 %inc.i, 0
  %spec.select.i = select i1 %cmp20.i, i32 1, i32 %inc.i
  %18 = ptrtoint ptr %cookie19.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i, ptr %cookie19.i, align 4
  %19 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %host_cookie, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_pre_req.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_pre_req, %if.then11)) #7
          to label %do.end15 [label %if.then11], !srcloc !150

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private.i, align 4
  %dev.i22 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cookie_sg_count18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cookie_sg_count18.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_pre_req.__UNIQUE_ID_ddebug276, ptr noundef %dev.i22, ptr noundef nonnull @.str.29, i32 noundef %23) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %host_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  tail call void @mutex_lock_nested(ptr noundef %host_mutex, i32 noundef 0) #7
  %mrq2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mrq2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mrq, ptr %mrq2, align 4
  tail call void @mutex_unlock(ptr noundef %host_mutex) #7
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %6, label %entry.if.end_crit_edge [
    i32 25, label %entry.if.then_crit_edge
    i32 18, label %entry.if.then_crit_edge23
    i32 17, label %entry.if.then_crit_edge24
    i32 24, label %entry.if.then_crit_edge25
    i32 53, label %sdio_extblock_cmd.exit
  ]

entry.if.then_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sdio_extblock_cmd.exit:                           ; preds = %entry
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blksz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %cmp1.i.not = icmp eq i32 %9, 512
  br i1 %cmp1.i.not, label %sdio_extblock_cmd.exit.if.then_crit_edge, label %sdio_extblock_cmd.exit.if.end_crit_edge

sdio_extblock_cmd.exit.if.end_crit_edge:          ; preds = %sdio_extblock_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sdio_extblock_cmd.exit.if.then_crit_edge:         ; preds = %sdio_extblock_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %sdio_extblock_cmd.exit.if.then_crit_edge, %entry.if.then_crit_edge, %entry.if.then_crit_edge23, %entry.if.then_crit_edge24, %entry.if.then_crit_edge25
  %pcr1.i = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %10 = ptrtoint ptr %pcr1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcr1.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 512
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %if.then.lor.lhs.false.i_crit_edge, label %land.lhs.true3.i

if.then.lor.lhs.false.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

land.lhs.true3.i:                                 ; preds = %if.then
  %cookie.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %16 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cookie.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not.i = icmp eq i32 %15, %17
  br i1 %cmp.not.i, label %land.lhs.true3.i.lor.lhs.false.i_crit_edge, label %do.end.i

land.lhs.true3.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

do.end.i:                                         ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.30, i32 noundef %15, i32 noundef %17) #11
  %20 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %host_cookie.i, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.end.i, %land.lhs.true3.i.lor.lhs.false.i_crit_edge, %if.then.lor.lhs.false.i_crit_edge
  %21 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_cookie.i, align 4
  %cookie10.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %23 = ptrtoint ptr %cookie10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cookie10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp11.not.i = icmp eq i32 %22, %24
  br i1 %cmp11.not.i, label %if.end15.thread.i, label %if.end15.i

if.end15.thread.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %cookie_sg_count.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9
  %25 = ptrtoint ptr %cookie_sg_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cookie_sg_count.i, align 4
  br label %sd_pre_dma_transfer.exit

if.end15.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.i = icmp ne i32 %and.i, 0
  %call14.i = tail call i32 @rtsx_pci_dma_map_sg(ptr noundef %11, ptr noundef %28, i32 noundef %30, i1 noundef zeroext %tobool13.i) #7
  br label %sd_pre_dma_transfer.exit

sd_pre_dma_transfer.exit:                         ; preds = %if.end15.i, %if.end15.thread.i
  %count.053.i = phi i32 [ %26, %if.end15.thread.i ], [ %call14.i, %if.end15.i ]
  %sg_count.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 7
  %31 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %count.053.i, ptr %sg_count.i, align 4
  %using_cookie = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %frombool = zext i1 %cmp11.not.i to i8
  %32 = ptrtoint ptr %using_cookie to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool, ptr %using_cookie, align 4
  br label %if.end

if.end:                                           ; preds = %sd_pre_dma_transfer.exit, %sdio_extblock_cmd.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %work = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdmmc_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  %test_mode.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 10
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eject, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rtsx_pci_card_exclusive_check(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #7
  tail call void @rtsx_pci_start_run(ptr noundef %1) #7
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %4 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp.i = icmp ult i8 %5, 4
  br i1 %cmp.i, label %if.then.i, label %if.end6.sd_set_bus_width.exit_crit_edge

if.end6.sd_set_bus_width.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_bus_width.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %5 to i32
  %6 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcr1, align 4
  %arrayidx.i = getelementptr [4 x i8], ptr @__const.sd_set_bus_width.width, i32 0, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %7, i16 noundef zeroext -608, i8 noundef zeroext 3, i8 noundef zeroext %9) #7
  br label %sd_set_bus_width.exit

sd_set_bus_width.exit:                            ; preds = %if.then.i, %if.end6.sd_set_bus_width.exit_crit_edge
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %10 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.i58 = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcr1, align 4
  br i1 %cmp.i58, label %if.then.i59, label %if.else.i

if.then.i59:                                      ; preds = %sd_set_bus_width.exit
  %power_state.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 6
  %14 = ptrtoint ptr %power_state.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %power_state.i.i, align 4
  %ci.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %13, i32 0, i32 11
  %15 = ptrtoint ptr %ci.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ci.i.i, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext -663, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  %call.i.i = tail call i32 @rtsx_pci_send_cmd(ptr noundef %13, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i59.sd_set_power_mode.exit_crit_edge, label %if.end.i.i

if.then.i59.sd_set_power_mode.exit_crit_edge:     ; preds = %if.then.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_power_mode.exit

if.end.i.i:                                       ; preds = %if.then.i59
  %call2.i.i = tail call i32 @rtsx_pci_card_power_off(ptr noundef %13, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.sd_set_power_mode.exit_crit_edge, label %if.end5.i.i

if.end.i.i.sd_set_power_mode.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_set_power_mode.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 @rtsx_pci_card_pull_ctl_disable(ptr noundef %13, i32 noundef 0) #7
  br label %sd_set_power_mode.exit

if.else.i:                                        ; preds = %sd_set_bus_width.exit
  %mmc2.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %16 = ptrtoint ptr %mmc2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %test_mode.i.i) #7
  %18 = ptrtoint ptr %test_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %test_mode.i.i, align 1, !annotation !154
  %power_state.i2.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 6
  %19 = ptrtoint ptr %power_state.i2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_state.i2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i3.i = icmp eq i32 %20, 1
  br i1 %cmp.i3.i, label %if.else.i.sd_power_on.exit.i_crit_edge, label %if.end.i7.i

if.else.i.sd_power_on.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_power_on.exit.i

if.end.i7.i:                                      ; preds = %if.else.i
  tail call void @msleep(i32 noundef 100) #7
  %ci.i4.i = getelementptr inbounds %struct.rtsx_pcr, ptr %13, i32 0, i32 11
  %21 = ptrtoint ptr %ci.i4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ci.i4.i, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext -676, i8 noundef zeroext 7, i8 noundef zeroext 2) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext -686, i8 noundef zeroext 15, i8 noundef zeroext 4) #7
  tail call void @rtsx_pci_add_cmd(ptr noundef %13, i8 noundef zeroext 1, i16 noundef zeroext -663, i8 noundef zeroext 4, i8 noundef zeroext 4) #7
  %call.i5.i = tail call i32 @rtsx_pci_send_cmd(ptr noundef %13, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp3.i6.i = icmp slt i32 %call.i5.i, 0
  br i1 %cmp3.i6.i, label %if.end.i7.i.sd_power_on.exit.i_crit_edge, label %if.end5.i9.i

if.end.i7.i.sd_power_on.exit.i_crit_edge:         ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_power_on.exit.i

if.end5.i9.i:                                     ; preds = %if.end.i7.i
  %call6.i8.i = tail call i32 @rtsx_pci_card_pull_ctl_enable(ptr noundef %13, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i8.i)
  %cmp7.i.i = icmp slt i32 %call6.i8.i, 0
  br i1 %cmp7.i.i, label %if.end5.i9.i.sd_power_on.exit.i_crit_edge, label %if.end9.i.i

if.end5.i9.i.sd_power_on.exit.i_crit_edge:        ; preds = %if.end5.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_power_on.exit.i

if.end9.i.i:                                      ; preds = %if.end5.i9.i
  %call10.i.i = tail call i32 @rtsx_pci_card_power_on(ptr noundef %13, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %if.end9.i.i.sd_power_on.exit.i_crit_edge, label %if.end13.i.i

if.end9.i.i.sd_power_on.exit.i_crit_edge:         ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_power_on.exit.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %call14.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %13, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp15.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.end13.i.i.sd_power_on.exit.i_crit_edge, label %if.end17.i.i

if.end13.i.i.sd_power_on.exit.i_crit_edge:        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_power_on.exit.i

if.end17.i.i:                                     ; preds = %if.end13.i.i
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %13, align 4
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21089, i16 %25)
  %cmp18.i.i = icmp eq i16 %25, 21089
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.end17.i.i.if.end39.i.i_crit_edge

if.end17.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  %call21.i.i = call i32 @rtsx_pci_read_register(ptr noundef %13, i16 noundef zeroext -176, ptr noundef nonnull %test_mode.i.i) #7
  %26 = ptrtoint ptr %test_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %test_mode.i.i, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %if.end25.i.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i.i = call i32 @sdmmc_init_sd_express(ptr noundef %17, ptr noundef null) #7
  br label %sd_power_on.exit.i

if.end25.i.i:                                     ; preds = %if.then20.i.i
  %extra_caps.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %13, i32 0, i32 31
  %29 = ptrtoint ptr %extra_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extra_caps.i.i, align 4
  %and26.i.i = and i32 %30, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end25.i.i.if.end29.i.i_crit_edge, label %if.then28.i.i

if.end25.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %caps2.i.i = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 17
  %31 = ptrtoint ptr %caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps2.i.i, align 4
  %or.i.i = or i32 %32, 384
  store i32 %or.i.i, ptr %caps2.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then28.i.i, %if.end25.i.i.if.end29.i.i_crit_edge
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %13, i32 0, i32 5
  %33 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 20
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %36 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool32.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool32.not.i.i, label %if.end29.i.i.if.end39.i.i_crit_edge, label %if.then33.i.i

if.end29.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i.i

if.then33.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %extra_caps.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %extra_caps.i.i, align 4
  %and35.i.i = and i32 %38, -257
  store i32 %and35.i.i, ptr %extra_caps.i.i, align 4
  %caps236.i.i = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 17
  %39 = ptrtoint ptr %caps236.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps236.i.i, align 4
  %and37.i.i = and i32 %40, -385
  store i32 %and37.i.i, ptr %caps236.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then33.i.i, %if.end29.i.i.if.end39.i.i_crit_edge, %if.end17.i.i.if.end39.i.i_crit_edge
  %41 = ptrtoint ptr %power_state.i2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %power_state.i2.i, align 4
  br label %sd_power_on.exit.i

sd_power_on.exit.i:                               ; preds = %if.end39.i.i, %if.then23.i.i, %if.end13.i.i.sd_power_on.exit.i_crit_edge, %if.end9.i.i.sd_power_on.exit.i_crit_edge, %if.end5.i9.i.sd_power_on.exit.i_crit_edge, %if.end.i7.i.sd_power_on.exit.i_crit_edge, %if.else.i.sd_power_on.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test_mode.i.i) #7
  br label %sd_set_power_mode.exit

sd_set_power_mode.exit:                           ; preds = %sd_power_on.exit.i, %if.end5.i.i, %if.end.i.i.sd_set_power_mode.exit_crit_edge, %if.then.i59.sd_set_power_mode.exit_crit_edge
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %42 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %timing, align 4
  %44 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcr1, align 4
  %ci.i = getelementptr inbounds %struct.rtsx_pcr, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ci.i, align 4
  %47 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %43, label %sw.default.i [
    i8 6, label %sd_set_power_mode.exit.sw.bb.i_crit_edge
    i8 5, label %sd_set_power_mode.exit.sw.bb.i_crit_edge61
    i8 8, label %sd_set_power_mode.exit.sw.bb2.i_crit_edge
    i8 7, label %sd_set_power_mode.exit.sw.bb2.i_crit_edge62
    i8 1, label %sd_set_power_mode.exit.sw.bb3.i_crit_edge
    i8 2, label %sd_set_power_mode.exit.sw.bb3.i_crit_edge63
  ]

sd_set_power_mode.exit.sw.bb3.i_crit_edge63:      ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sd_set_power_mode.exit.sw.bb3.i_crit_edge:        ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sd_set_power_mode.exit.sw.bb2.i_crit_edge62:      ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sd_set_power_mode.exit.sw.bb2.i_crit_edge:        ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

sd_set_power_mode.exit.sw.bb.i_crit_edge61:       ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sd_set_power_mode.exit.sw.bb.i_crit_edge:         ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sd_set_power_mode.exit.sw.bb.i_crit_edge, %sd_set_power_mode.exit.sw.bb.i_crit_edge61
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 24) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  br label %sd_set_timing.exit

sw.bb2.i:                                         ; preds = %sd_set_power_mode.exit.sw.bb2.i_crit_edge, %sd_set_power_mode.exit.sw.bb2.i_crit_edge62
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 20) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -600, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -601, i8 noundef zeroext -96, i8 noundef zeroext -96) #7
  br label %sd_set_timing.exit

sw.bb3.i:                                         ; preds = %sd_set_power_mode.exit.sw.bb3.i_crit_edge, %sd_set_power_mode.exit.sw.bb3.i_crit_edge63
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 12, i8 noundef zeroext 0) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 36) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -600, i8 noundef zeroext 16, i8 noundef zeroext 16) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -601, i8 noundef zeroext 8, i8 noundef zeroext 8) #7
  br label %sd_set_timing.exit

sw.default.i:                                     ; preds = %sd_set_power_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -608, i8 noundef zeroext 12, i8 noundef zeroext 0) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 36) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -600, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  call void @rtsx_pci_add_cmd(ptr noundef %45, i8 noundef zeroext 1, i16 noundef zeroext -601, i8 noundef zeroext 8, i8 noundef zeroext 0) #7
  br label %sd_set_timing.exit

sd_set_timing.exit:                               ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %call.i60 = call i32 @rtsx_pci_send_cmd(ptr noundef %45, i32 noundef 100) #7
  %vpclk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 5
  %48 = ptrtoint ptr %vpclk to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %vpclk, align 4
  %double_clk = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 9
  %49 = ptrtoint ptr %double_clk to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %double_clk, align 1
  %50 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %timing, align 4
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %51, label %sw.default [
    i8 6, label %sd_set_timing.exit.sw.bb_crit_edge
    i8 5, label %sd_set_timing.exit.sw.bb_crit_edge64
    i8 8, label %sd_set_timing.exit.sw.bb13_crit_edge
    i8 7, label %sd_set_timing.exit.sw.bb13_crit_edge65
    i8 4, label %sd_set_timing.exit.sw.bb13_crit_edge66
  ]

sd_set_timing.exit.sw.bb13_crit_edge66:           ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sd_set_timing.exit.sw.bb13_crit_edge65:           ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sd_set_timing.exit.sw.bb13_crit_edge:             ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13

sd_set_timing.exit.sw.bb_crit_edge64:             ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sd_set_timing.exit.sw.bb_crit_edge:               ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %sd_set_timing.exit.sw.bb_crit_edge, %sd_set_timing.exit.sw.bb_crit_edge64
  %ssc_depth = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %53 = ptrtoint ptr %ssc_depth to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %ssc_depth, align 4
  %54 = ptrtoint ptr %vpclk to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %vpclk, align 4
  %55 = ptrtoint ptr %double_clk to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %double_clk, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %sd_set_timing.exit.sw.bb13_crit_edge, %sd_set_timing.exit.sw.bb13_crit_edge65, %sd_set_timing.exit.sw.bb13_crit_edge66
  %ssc_depth14 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %56 = ptrtoint ptr %ssc_depth14 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %ssc_depth14, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %sd_set_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ssc_depth15 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %57 = ptrtoint ptr %ssc_depth15 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %ssc_depth15, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb
  %58 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %59)
  %cmp = icmp ult i32 %59, 1000001
  %initial_mode = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 11
  %frombool = zext i1 %cmp to i8
  %60 = ptrtoint ptr %initial_mode to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %frombool, ptr %initial_mode, align 1
  %61 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ios, align 4
  %clock19 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 4
  %63 = ptrtoint ptr %clock19 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %clock19, align 4
  %64 = load i32, ptr %ios, align 4
  %ssc_depth21 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 3
  %65 = ptrtoint ptr %ssc_depth21 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ssc_depth21, align 4
  %67 = ptrtoint ptr %double_clk to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %double_clk, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool25 = icmp ne i8 %68, 0
  %69 = ptrtoint ptr %vpclk to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vpclk, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool27 = icmp ne i8 %70, 0
  %call28 = call i32 @rtsx_pci_switch_clock(ptr noundef %1, i32 noundef %64, i8 noundef zeroext %66, i1 noundef zeroext %cmp, i1 noundef zeroext %tobool25, i1 noundef zeroext %tobool27) #7
  call void @mutex_unlock(ptr noundef %pcr_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_get_ro(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 10
  %0 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eject, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr1, align 4
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #7
  tail call void @rtsx_pci_start_run(ptr noundef %3) #7
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !152
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_get_ro.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_get_ro, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_get_ro.__UNIQUE_ID_ddebug297, ptr noundef %dev.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %and = lshr i32 %7, 19
  %and.lobit = and i32 %and, 1
  tail call void @mutex_unlock(ptr noundef %pcr_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %do.end ], [ -123, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_get_cd(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 10
  %0 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eject, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr1, align 4
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %3, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #7
  tail call void @rtsx_pci_start_run(ptr noundef %3) #7
  %call2 = tail call i32 @rtsx_pci_card_exist(ptr noundef %3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_get_cd.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_get_cd, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !150

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_get_cd.__UNIQUE_ID_ddebug298, ptr noundef %dev.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %call2) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %and = lshr i32 %call2, 16
  %and.lobit = and i32 %and, 1
  tail call void @mutex_unlock(ptr noundef %pcr_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_switch_voltage(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  %stat.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdmmc_switch_voltage.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdmmc_switch_voltage, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %4 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %signal_voltage, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdmmc_switch_voltage.__UNIQUE_ID_ddebug300, ptr noundef %dev.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 10
  %6 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %eject, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %8 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcr1, align 4
  %call10 = tail call i32 @rtsx_pci_card_exclusive_check(ptr noundef %9, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #7
  tail call void @rtsx_pci_start_run(ptr noundef %1) #7
  %signal_voltage14 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %10 = ptrtoint ptr %signal_voltage14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %signal_voltage14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i8
  br i1 %cmp, label %if.end28.thread, label %if.then22

if.end28.thread:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call2969 = tail call i32 @rtsx_pci_switch_output_voltage(ptr noundef %1, i8 noundef zeroext %.) #7
  br label %out

if.then22:                                        ; preds = %if.end13
  %12 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcr1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat.i) #7
  %14 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %stat.i, align 1, !annotation !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %13, i16 noundef zeroext -603, ptr noundef nonnull %stat.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then22.sd_wait_voltage_stable_1.exit.thread_crit_edge, label %if.end.i

if.then22.sd_wait_voltage_stable_1.exit.thread_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_voltage_stable_1.exit.thread

if.end.i:                                         ; preds = %if.then22
  %16 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %stat.i, align 1
  %18 = and i8 %17, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %sd_wait_voltage_stable_1.exit, label %if.end.i.sd_wait_voltage_stable_1.exit.thread_crit_edge

if.end.i.sd_wait_voltage_stable_1.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_wait_voltage_stable_1.exit.thread

sd_wait_voltage_stable_1.exit.thread:             ; preds = %if.end.i.sd_wait_voltage_stable_1.exit.thread_crit_edge, %if.then22.sd_wait_voltage_stable_1.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  br label %out

sd_wait_voltage_stable_1.exit:                    ; preds = %if.end.i
  %call4.i = call i32 @rtsx_pci_write_register(ptr noundef %13, i16 noundef zeroext -603, i8 noundef zeroext -1, i8 noundef zeroext 64) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp24 = icmp slt i32 %call4.i, 0
  br i1 %cmp24, label %sd_wait_voltage_stable_1.exit.out_crit_edge, label %if.end28

sd_wait_voltage_stable_1.exit.out_crit_edge:      ; preds = %sd_wait_voltage_stable_1.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end28:                                         ; preds = %sd_wait_voltage_stable_1.exit
  %call29 = call i32 @rtsx_pci_switch_output_voltage(ptr noundef %1, i8 noundef zeroext %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.out_crit_edge, label %if.then37

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @sd_wait_voltage_stable_2(ptr noundef %private.i)
  br label %out

out:                                              ; preds = %if.then37, %if.end28.out_crit_edge, %sd_wait_voltage_stable_1.exit.out_crit_edge, %sd_wait_voltage_stable_1.exit.thread, %if.end28.thread
  %call44 = call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext 0) #7
  call void @mutex_unlock(ptr noundef %pcr_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %out ], [ -123, %do.end.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_execute_tuning(ptr nocapture noundef readonly %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 10
  %2 = ptrtoint ptr %eject to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %eject, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @rtsx_pci_card_exclusive_check(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pcr_mutex = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 24
  tail call void @mutex_lock_nested(ptr noundef %pcr_mutex, i32 noundef 0) #7
  tail call void @rtsx_pci_start_run(ptr noundef %1) #7
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 7
  %4 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %timing, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %5, label %if.end6.if.end22_crit_edge [
    i8 6, label %sw.bb
    i8 5, label %sw.bb9
    i8 7, label %sw.bb14
  ]

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %tx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 40
  %7 = ptrtoint ptr %tx_initial_phase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_initial_phase, align 4
  br label %if.end22thread-pre-split

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %tx_initial_phase10 = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_initial_phase10, align 4
  %shr = lshr i32 %10, 8
  br label %if.end22thread-pre-split

sw.bb14:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %tx_initial_phase15 = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 40
  %11 = ptrtoint ptr %tx_initial_phase15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_initial_phase15, align 4
  %shr16 = lshr i32 %12, 16
  br label %if.end22thread-pre-split

if.end22thread-pre-split:                         ; preds = %sw.bb14, %sw.bb9, %sw.bb
  %shr16.sink = phi i32 [ %shr16, %sw.bb14 ], [ %shr, %sw.bb9 ], [ %8, %sw.bb ]
  %conv18 = trunc i32 %shr16.sink to i8
  tail call fastcc void @sd_change_phase(ptr noundef %private.i, i8 noundef zeroext %conv18, i1 noundef zeroext false)
  %13 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr = load i8, ptr %timing, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end22thread-pre-split, %if.end6.if.end22_crit_edge
  %14 = phi i8 [ %.pr, %if.end22thread-pre-split ], [ %5, %if.end6.if.end22_crit_edge ]
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %14, label %if.end22.out_crit_edge [
    i8 6, label %if.end22.if.then32_crit_edge
    i8 5, label %if.end22.if.then32_crit_edge70
    i8 7, label %if.then40
  ]

if.end22.if.then32_crit_edge70:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.end22.if.then32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then32:                                        ; preds = %if.end22.if.then32_crit_edge, %if.end22.if.then32_crit_edge70
  %conv33 = trunc i32 %opcode to i8
  %call34 = tail call fastcc i32 @sd_tuning_rx(ptr noundef %private.i, i8 noundef zeroext %conv33)
  br label %out

if.then40:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 41
  %16 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_initial_phase, align 4
  %shr41 = lshr i32 %17, 16
  %conv43 = trunc i32 %shr41 to i8
  tail call fastcc void @sd_change_phase(ptr noundef %private.i, i8 noundef zeroext %conv43, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.then40, %if.then32, %if.end22.out_crit_edge
  %err.1 = phi i32 [ %call34, %if.then32 ], [ 0, %if.then40 ], [ 0, %if.end22.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pcr_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -123, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdmmc_init_sd_express(ptr nocapture noundef %mmc, ptr nocapture noundef readnone %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -255, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -254, i8 noundef zeroext -1, i8 noundef zeroext -113) #7
  %call7 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -253, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %call8 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -253, i8 noundef zeroext -128, i8 noundef zeroext -128) #7
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 2, i32 13
  %2 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sd_800mA_ocp_thd, align 4
  %call9 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -142, i8 noundef zeroext -32, i8 noundef zeroext %3) #7
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %disable_auto_blink = getelementptr inbounds %struct.pcr_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %disable_auto_blink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_auto_blink, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 %7(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw_param = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %hw_param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_param, align 4
  %and = and i32 %9, -33554433
  store i32 %and, ptr %hw_param, align 4
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #7, !srcloc !156
  %call15 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -129, i8 noundef zeroext 32, i8 noundef zeroext 32) #7
  %call16 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -172, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %call17 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -171, i8 noundef zeroext 2, i8 noundef zeroext 2) #7
  %call18 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -171, i8 noundef zeroext 29, i8 noundef zeroext 5) #7
  %eject = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %private.i, i32 0, i32 10
  %13 = ptrtoint ptr %eject to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %eject, align 2
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_dma_map_sg(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_power_off(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_pull_ctl_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_pull_ctl_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_power_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_card_exist(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_switch_output_voltage(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_wait_voltage_stable_2(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #7
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %stat, align 1, !annotation !154
  tail call void @msleep(i32 noundef 50) #7
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -1, i8 noundef zeroext -128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #7
  %call2 = call i32 @rtsx_pci_read_register(ptr noundef %1, i16 noundef zeroext -603, ptr noundef nonnull %stat) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stat, align 1
  %5 = and i8 %4, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %5)
  %cmp8.not = icmp eq i8 %5, 31
  br i1 %cmp8.not, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_wait_voltage_stable_2.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_wait_voltage_stable_2, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !150

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %stat, align 1
  %conv16 = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_wait_voltage_stable_2.__UNIQUE_ID_ddebug299, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %conv16) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %call18 = call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -603, i8 noundef zeroext -64, i8 noundef zeroext 0) #7
  %call19 = call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -663, i8 noundef zeroext -1, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sd_change_phase(ptr nocapture noundef readonly %host, i8 noundef zeroext %sample_point, i1 noundef zeroext %rx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr1 = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %pcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_change_phase.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_change_phase, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %cond = select i1 %rx, ptr @.str.41, ptr @.str.42
  %conv = zext i8 %sample_point to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_change_phase.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %. = select i1 %rx, i16 -981, i16 -982
  %call11 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext %., i8 noundef zeroext 31, i8 noundef zeroext %sample_point) #7
  %call13 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext %., i8 noundef zeroext 64, i8 noundef zeroext 0) #7
  %call14 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext %., i8 noundef zeroext 64, i8 noundef zeroext 64) #7
  %call15 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %call16 = tail call i32 @rtsx_pci_write_register(ptr noundef %1, i16 noundef zeroext -608, i8 noundef zeroext 16, i8 noundef zeroext 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sd_tuning_rx(ptr nocapture noundef readonly %host, i8 noundef zeroext %opcode) unnamed_addr #2 align 64 {
entry:
  %val.i.i.i = alloca i8, align 1
  %cmd.i.i = alloca %struct.mmc_command, align 4
  %raw_phase_map = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %raw_phase_map) #7
  %0 = call ptr @memset(ptr %raw_phase_map, i32 0, i32 12)
  %1 = getelementptr inbounds i8, ptr %cmd.i.i, i32 4
  %pcr1.i.i = getelementptr inbounds %struct.realtek_pci_sdmmc, ptr %host, i32 0, i32 1
  %conv.i.i = zext i8 %opcode to i32
  br label %for.body

for.body:                                         ; preds = %if.then3.i.for.body_crit_edge, %entry
  %i.082 = phi i32 [ 0, %entry ], [ %inc, %if.then3.i.for.body_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %raw_phase_map.08.i = phi i32 [ 0, %for.body ], [ %14, %for.cond.i.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.06.i to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd.i.i) #7
  %2 = call ptr @memset(ptr %1, i32 0, i32 44)
  %3 = ptrtoint ptr %pcr1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr1.i.i, align 4
  call fastcc void @sd_change_phase(ptr noundef %host, i8 noundef zeroext %conv.i, i1 noundef zeroext true) #7
  %call2.i.i = call i32 @rtsx_pci_write_register(ptr noundef %4, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 1) #7
  %5 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i.i, ptr %cmd.i.i, align 4
  %call4.i.i = call fastcc i32 @sd_read_data(ptr noundef %host, ptr noundef nonnull %cmd.i.i, i16 noundef zeroext 64, ptr noundef null, i32 noundef 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %sd_tuning_rx_cmd.exit.thread.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #7
  %6 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i.i, align 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i
  %i.03.i.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %pcr1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcr1.i.i, align 4
  %call.i.i.i = call i32 @rtsx_pci_read_register(ptr noundef %8, i16 noundef zeroext -586, ptr noundef nonnull %val.i.i.i) #7
  %9 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not.i.i.i = icmp sgt i8 %10, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge

for.body.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_tuning_rx_cmd.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 21474800) #7
  %inc.i.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 100
  br i1 %exitcond.not.i.i.i, label %if.end.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

if.end.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sd_tuning_rx_cmd.exit.i

sd_tuning_rx_cmd.exit.thread.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i = call i32 @rtsx_pci_write_register(ptr noundef %4, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i.i) #7
  %shl3.pn.i = shl nuw i32 1, %i.06.i
  %or5.i = or i32 %shl3.pn.i, %raw_phase_map.08.i
  br label %for.cond.i

sd_tuning_rx_cmd.exit.i:                          ; preds = %if.end.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge, %for.body.i.i.i.sd_tuning_rx_cmd.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #7
  %12 = ptrtoint ptr %pcr1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcr1.i.i, align 4
  %call.i18.i.i = call i32 @rtsx_pci_write_register(ptr noundef %13, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #7
  %call6.i.i = call i32 @rtsx_pci_write_register(ptr noundef %4, i16 noundef zeroext -606, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd.i.i) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %sd_tuning_rx_cmd.exit.i, %sd_tuning_rx_cmd.exit.thread.i
  %14 = phi i32 [ %or5.i, %sd_tuning_rx_cmd.exit.thread.i ], [ %raw_phase_map.08.i, %sd_tuning_rx_cmd.exit.i ]
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %if.then3.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then3.i:                                       ; preds = %for.cond.i
  %arrayidx = getelementptr [3 x i32], ptr %raw_phase_map, i32 0, i32 %i.082
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3 = icmp eq i32 %14, 0
  %inc = add nuw nsw i32 %i.082, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 3
  %or.cond = select i1 %cmp3, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.then3.i.do.body_crit_edge, label %if.then3.i.for.body_crit_edge

if.then3.i.for.body_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then3.i.do.body_crit_edge:                     ; preds = %if.then3.i
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %if.then3.i.do.body_crit_edge
  %i.184 = phi i32 [ %inc18, %do.end.do.body_crit_edge ], [ 0, %if.then3.i.do.body_crit_edge ]
  %phase_map.083 = phi i32 [ %and, %do.end.do.body_crit_edge ], [ -1, %if.then3.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !150

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %arrayidx14 = getelementptr [3 x i32], ptr %raw_phase_map, i32 0, i32 %i.184
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %i.184, i32 noundef %19) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %arrayidx16 = getelementptr [3 x i32], ptr %raw_phase_map, i32 0, i32 %i.184
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %and = and i32 %21, %phase_map.083
  %inc18 = add nuw nsw i32 %i.184, 1
  %exitcond87.not = icmp eq i32 %inc18, 3
  br i1 %exitcond87.not, label %do.body20, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body20:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_tuning_rx.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then32)) #7
          to label %do.end36 [label %if.then32], !srcloc !150

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %dev.i76 = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_tuning_rx.__UNIQUE_ID_ddebug295, ptr noundef %dev.i76, ptr noundef nonnull @.str.45, i32 noundef %and) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.end36.cleanup_crit_edge, label %do.end36.for.body.i.preheader.i_crit_edge

do.end36.for.body.i.preheader.i_crit_edge:        ; preds = %do.end36
  br label %for.body.i.preheader.i

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.preheader.i:                           ; preds = %while.cond.i.for.body.i.preheader.i_crit_edge, %do.end36.for.body.i.preheader.i_crit_edge
  %start.050.i = phi i32 [ %add.i, %while.cond.i.for.body.i.preheader.i_crit_edge ], [ 0, %do.end36.for.body.i.preheader.i_crit_edge ]
  %len_final.049.i = phi i32 [ %spec.select3644.i, %while.cond.i.for.body.i.preheader.i_crit_edge ], [ 0, %do.end36.for.body.i.preheader.i_crit_edge ]
  %start_final.048.i = phi i32 [ %spec.select43.i, %while.cond.i.for.body.i.preheader.i_crit_edge ], [ 0, %do.end36.for.body.i.preheader.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.05.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %add.i.i = add i32 %i.05.i.i, %start.050.i
  %rem.i.i.i = and i32 %add.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp1.i.i, label %sd_get_phase_len.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %sd_get_phase_len.exit.thread.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

sd_get_phase_len.exit.thread.i:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len_final.049.i)
  %cmp339.i = icmp ult i32 %len_final.049.i, 32
  %spec.select40.i = select i1 %cmp339.i, i32 %start.050.i, i32 %start_final.048.i
  %24 = call i32 @llvm.smax.i32(i32 %len_final.049.i, i32 32) #7
  br label %while.cond.i

sd_get_phase_len.exit.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %len_final.049.i, i32 %i.05.i.i)
  %cmp3.i = icmp ult i32 %len_final.049.i, %i.05.i.i
  %spec.select.i = select i1 %cmp3.i, i32 %start.050.i, i32 %start_final.048.i
  %25 = call i32 @llvm.smax.i32(i32 %len_final.049.i, i32 %i.05.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.05.i.i)
  %tobool.not.i77 = icmp eq i32 %i.05.i.i, 0
  %spec.select46.i = select i1 %tobool.not.i77, i32 1, i32 %i.05.i.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %sd_get_phase_len.exit.i, %sd_get_phase_len.exit.thread.i
  %spec.select3644.i = phi i32 [ %24, %sd_get_phase_len.exit.thread.i ], [ %25, %sd_get_phase_len.exit.i ]
  %spec.select43.i = phi i32 [ %spec.select40.i, %sd_get_phase_len.exit.thread.i ], [ %spec.select.i, %sd_get_phase_len.exit.i ]
  %26 = phi i32 [ 32, %sd_get_phase_len.exit.thread.i ], [ %spec.select46.i, %sd_get_phase_len.exit.i ]
  %add.i = add i32 %26, %start.050.i
  %cmp1.i = icmp slt i32 %add.i, 32
  br i1 %cmp1.i, label %while.cond.i.for.body.i.preheader.i_crit_edge, label %while.end.i

while.cond.i.for.body.i.preheader.i_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader.i

while.end.i:                                      ; preds = %while.cond.i
  %div.i = sdiv i32 %spec.select3644.i, 2
  %add6.i = add i32 %div.i, %spec.select43.i
  %rem.i = srem i32 %add6.i, 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sd_search_final_phase.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sd_tuning_rx, %if.then12.i)) #7
          to label %sd_search_final_phase.exit [label %if.then12.i], !srcloc !150

if.then12.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %conv14.i = and i32 %rem.i, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sd_search_final_phase.__UNIQUE_ID_ddebug293, ptr noundef %dev.i.i, ptr noundef nonnull @.str.48, i32 noundef %and, i32 noundef %spec.select3644.i, i32 noundef %conv14.i) #7
  br label %sd_search_final_phase.exit

sd_search_final_phase.exit:                       ; preds = %if.then12.i, %while.end.i
  %conv.i78 = trunc i32 %rem.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i78)
  %cmp40 = icmp eq i8 %conv.i78, -1
  br i1 %cmp40, label %sd_search_final_phase.exit.cleanup_crit_edge, label %if.end43

sd_search_final_phase.exit.cleanup_crit_edge:     ; preds = %sd_search_final_phase.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %sd_search_final_phase.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @sd_change_phase(ptr noundef %host, i8 noundef zeroext %conv.i78, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %sd_search_final_phase.exit.cleanup_crit_edge, %do.end36.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -22, %sd_search_final_phase.exit.cleanup_crit_edge ], [ -22, %do.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %raw_phase_map) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_complete_unfinished_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !79, !80, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_rtsx_pci_sdmmc__305_1577_rtsx_pci_sdmmc_driver_init6, !1, !"__initcall__kmod_rtsx_pci_sdmmc__305_1577_rtsx_pci_sdmmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1577, i32 1}
!2 = !{ptr @__exitcall_rtsx_pci_sdmmc_driver_exit, !1, !"__exitcall_rtsx_pci_sdmmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file306, !4, !"__UNIQUE_ID_file306", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1579, i32 1}
!5 = !{ptr @__UNIQUE_ID_license307, !4, !"__UNIQUE_ID_license307", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author308, !7, !"__UNIQUE_ID_author308", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1580, i32 1}
!8 = !{ptr @__UNIQUE_ID_description309, !9, !"__UNIQUE_ID_description309", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1581, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1573, i32 11}
!12 = !{ptr @rtsx_pci_sdmmc_driver, !13, !"rtsx_pci_sdmmc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1568, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1477, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtsx_pci_sdmmc_drv_probe.__UNIQUE_ID_ddebug302, !15, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!19 = !{ptr @rtsx_pci_sdmmc_drv_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1489, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtsx_pci_sdmmc_drv_probe.__key.5, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1494, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 865, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sd_request.__UNIQUE_ID_ddebug296, !26, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 226, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug277, !30, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 274, i32 3}
!35 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug278, !34, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 290, i32 3}
!38 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug279, !37, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 298, i32 4}
!41 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug280, !40, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 313, i32 4}
!44 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug281, !43, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 318, i32 3}
!47 = !{ptr @sd_send_cmd_get_rsp.__UNIQUE_ID_ddebug282, !46, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 564, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sd_rw_multi.__UNIQUE_ID_ddebug291, !49, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 444, i32 2}
!54 = !{ptr @sd_read_long_data.__UNIQUE_ID_ddebug289, !53, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 505, i32 2}
!57 = !{ptr @sd_write_long_data.__UNIQUE_ID_ddebug290, !56, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 337, i32 2}
!60 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug283, !59, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 366, i32 3}
!63 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug284, !62, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 374, i32 4}
!66 = !{ptr @sd_read_data.__UNIQUE_ID_ddebug285, !65, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 390, i32 2}
!69 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug286, !68, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 403, i32 4}
!72 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug287, !71, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!73 = !{ptr @sd_write_data.__UNIQUE_ID_ddebug288, !74, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 422, i32 3}
!75 = !{ptr @realtek_pci_sdmmc_ops, !76, !"realtek_pci_sdmmc_ops", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1392, i32 34}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 190, i32 3}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sdmmc_pre_req._entry, !78, !"_entry", i1 false, i1 false}
!83 = !{ptr @sdmmc_pre_req._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 197, i32 2}
!86 = !{ptr @sdmmc_pre_req.__UNIQUE_ID_ddebug276, !85, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 159, i32 3}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sd_pre_dma_transfer._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sd_pre_dma_transfer._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1143, i32 2}
!94 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sdmmc_get_ro.__UNIQUE_ID_ddebug297, !93, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1168, i32 2}
!98 = !{ptr @sdmmc_get_cd.__UNIQUE_ID_ddebug298, !97, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1257, i32 2}
!101 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sdmmc_switch_voltage.__UNIQUE_ID_ddebug300, !100, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1239, i32 3}
!105 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @sd_wait_voltage_stable_2.__UNIQUE_ID_ddebug299, !104, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 623, i32 2}
!109 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sd_change_phase.__UNIQUE_ID_ddebug292, !108, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!111 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 765, i32 3}
!115 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug294, !114, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 769, i32 2}
!119 = !{ptr @sd_tuning_rx.__UNIQUE_ID_ddebug295, !118, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 669, i32 3}
!122 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @sd_search_final_phase._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @sd_search_final_phase._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 683, i32 2}
!127 = !{ptr @sd_search_final_phase.__UNIQUE_ID_ddebug293, !126, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!128 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1409, i32 2}
!130 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @init_extra_caps.__UNIQUE_ID_ddebug301, !129, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1533, i32 3}
!134 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug303, !133, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!136 = !{ptr @.str.53, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1553, i32 2}
!138 = !{ptr @rtsx_pci_sdmmc_drv_remove.__UNIQUE_ID_ddebug304, !137, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!139 = !{ptr @rtsx_pci_sdmmc_ids, !140, !"rtsx_pci_sdmmc_ids", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/rtsx_pci_sdmmc.c", i32 1559, i32 40}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2148991122, i64 2148991127, i64 2148991140, i64 2148991184, i64 2148991218, i64 2148991239}
!151 = !{i8 0, i8 2}
!152 = !{i64 6163842}
!153 = !{i64 2153704191}
!154 = !{!"auto-init"}
!155 = !{i64 2153705546}
!156 = !{i64 6163424}
