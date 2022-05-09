; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/if_sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/if_sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lbs_fw_table = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.if_sdio_card = type { ptr, ptr, i32, i32, i32, i8, %struct.wait_queue_head, [65536 x i8], %struct.spinlock, ptr, ptr, %struct.work_struct, i8 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kfifo = type { %union.anon.129, [0 x i8] }
%union.anon.129 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
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
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.if_sdio_packet = type { ptr, i16, [2 x i8], [0 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__UNIQUE_ID_firmware367 = internal constant [50 x i8] c"libertas_sdio.firmware=libertas/sd8385_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware368 = internal constant [43 x i8] c"libertas_sdio.firmware=libertas/sd8385.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware369 = internal constant [41 x i8] c"libertas_sdio.firmware=sd8385_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware370 = internal constant [34 x i8] c"libertas_sdio.firmware=sd8385.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware371 = internal constant [53 x i8] c"libertas_sdio.firmware=libertas/sd8686_v9_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware372 = internal constant [46 x i8] c"libertas_sdio.firmware=libertas/sd8686_v9.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware373 = internal constant [53 x i8] c"libertas_sdio.firmware=libertas/sd8686_v8_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware374 = internal constant [46 x i8] c"libertas_sdio.firmware=libertas/sd8686_v8.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware375 = internal constant [41 x i8] c"libertas_sdio.firmware=sd8686_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware376 = internal constant [34 x i8] c"libertas_sdio.firmware=sd8686.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware377 = internal constant [50 x i8] c"libertas_sdio.firmware=libertas/sd8688_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware378 = internal constant [43 x i8] c"libertas_sdio.firmware=libertas/sd8688.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware379 = internal constant [41 x i8] c"libertas_sdio.firmware=sd8688_helper.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware380 = internal constant [34 x i8] c"libertas_sdio.firmware=sd8688.bin\00", section ".modinfo", align 1
@user_rmmod = internal global { i1, [31 x i8] } zeroinitializer, align 32
@card_reset_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @card_reset_work, i64 4), ptr getelementptr (i8, ptr @card_reset_work, i64 4) }, ptr @if_sdio_reset_card_worker, %struct.lockdep_map { ptr @card_reset_work, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@if_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str.4, ptr @if_sdio_ids, ptr @if_sdio_probe, ptr @if_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @if_sdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_libertas_sdio__385_1411_if_sdio_init_module6 = internal global ptr @if_sdio_init_module, section ".initcall6.init", align 4
@__exitcall_if_sdio_exit_module = internal global ptr @if_sdio_exit_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_description386 = internal constant [52 x i8] c"libertas_sdio.description=Libertas SDIO WLAN Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author387 = internal constant [35 x i8] c"libertas_sdio.author=Pierre Ossman\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [71 x i8] c"libertas_sdio.file=drivers/net/wireless/marvell/libertas/libertas_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [26 x i8] c"libertas_sdio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"card_reset_work\00", [16 x i8] zeroinitializer }, align 32
@if_sdio_reset_card_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016libertas_sdio: Resetting card...\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"if_sdio_reset_card_worker\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/marvell/libertas/if_sdio.c\00", [48 x i8] zeroinitializer }, align 32
@if_sdio_reset_card_worker._entry_ptr = internal global ptr @if_sdio_reset_card_worker._entry, section ".printk_index", align 4
@reset_host = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"libertas_sdio\00", [18 x i8] zeroinitializer }, align 32
@if_sdio_ids = internal constant { [3 x %struct.sdio_device_id], [60 x i8] } { [3 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 735, i16 -28413, i32 0 }, %struct.sdio_device_id { i8 -1, i16 735, i16 -28412, i32 0 }, %struct.sdio_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@if_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @if_sdio_suspend, ptr @if_sdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"802.11 SDIO ID: %x\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ID: %x\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IBIS Wireless SDIO Card\00", [40 x i8] zeroinitializer }, align 32
@if_sdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013libertas_sdio: unable to identify card model\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"if_sdio_probe\00", [18 x i8] zeroinitializer }, align 32
@if_sdio_probe._entry_ptr = internal global ptr @if_sdio_probe._entry, section ".printk_index", align 4
@if_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@if_sdio_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&card->packet_worker)\00", [56 x i8] zeroinitializer }, align 32
@if_sdio_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&card->pwron_waitq\00", [45 x i8] zeroinitializer }, align 32
@fw_table = internal constant { [8 x %struct.lbs_fw_table], [32 x i8] } { [8 x %struct.lbs_fw_table] [%struct.lbs_fw_table { i32 4, ptr @.str.23, ptr @.str.24 }, %struct.lbs_fw_table { i32 4, ptr @.str.25, ptr @.str.26 }, %struct.lbs_fw_table { i32 11, ptr @.str.27, ptr @.str.28 }, %struct.lbs_fw_table { i32 11, ptr @.str.29, ptr @.str.30 }, %struct.lbs_fw_table { i32 11, ptr @.str.31, ptr @.str.32 }, %struct.lbs_fw_table { i32 16, ptr @.str.33, ptr @.str.34 }, %struct.lbs_fw_table { i32 16, ptr @.str.35, ptr @.str.36 }, %struct.lbs_fw_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@if_sdio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013libertas_sdio: unknown card model 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@if_sdio_probe._entry_ptr.17 = internal global ptr @if_sdio_probe._entry.15, section ".printk_index", align 4
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@if_sdio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.3, i32 1205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017libertas sdio: class = 0x%X, vendor = 0x%X, device = 0x%X, model = 0x%X, ioport = 0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@if_sdio_probe._entry_ptr.20 = internal global ptr @if_sdio_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@if_sdio_host_to_card_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013libertas_sdio: error %d sending packet to firmware\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"if_sdio_host_to_card_worker\00", [36 x i8] zeroinitializer }, align 32
@if_sdio_host_to_card_worker._entry_ptr = internal global ptr @if_sdio_host_to_card_worker._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"libertas/sd8385_helper.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"libertas/sd8385.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd8385_helper.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd8385.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"libertas/sd8686_v9_helper.bin\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"libertas/sd8686_v9.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"libertas/sd8686_v8_helper.bin\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"libertas/sd8686_v8.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd8686_helper.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd8686.bin\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"libertas/sd8688_helper.bin\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"libertas/sd8688.bin\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sd8688_helper.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sd8688.bin\00", [21 x i8] zeroinitializer }, align 32
@if_sdio_host_to_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017libertas sdio: unknown packet type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"if_sdio_host_to_card\00", [43 x i8] zeroinitializer }, align 32
@if_sdio_host_to_card._entry_ptr = internal global ptr @if_sdio_host_to_card._entry, section ".printk_index", align 4
@if_sdio_enter_deep_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas sdio: send DEEP_SLEEP command\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"if_sdio_enter_deep_sleep\00", [39 x i8] zeroinitializer }, align 32
@if_sdio_enter_deep_sleep._entry_ptr = internal global ptr @if_sdio_enter_deep_sleep._entry, section ".printk_index", align 4
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DEEP_SLEEP cmd failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdio_writeb failed!\0A\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@if_sdio_prog_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017libertas sdio: firmware status = %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"if_sdio_prog_firmware\00", [42 x i8] zeroinitializer }, align 32
@if_sdio_prog_firmware._entry_ptr = internal global ptr @if_sdio_prog_firmware._entry, section ".printk_index", align 4
@if_sdio_prog_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas sdio: scratch ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@if_sdio_prog_firmware._entry_ptr.47 = internal global ptr @if_sdio_prog_firmware._entry.45, section ".printk_index", align 4
@if_sdio_prog_firmware._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas sdio: firmware already loaded\0A\00", [54 x i8] zeroinitializer }, align 32
@if_sdio_prog_firmware._entry_ptr.50 = internal global ptr @if_sdio_prog_firmware._entry.48, section ".printk_index", align 4
@if_sdio_prog_firmware._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.3, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017libertas sdio: firmware may be running\0A\00", [54 x i8] zeroinitializer }, align 32
@if_sdio_prog_firmware._entry_ptr.53 = internal global ptr @if_sdio_prog_firmware._entry.51, section ".printk_index", align 4
@if_sdio_finish_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017libertas sdio: send function INIT command\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"if_sdio_finish_power_on\00", [40 x i8] zeroinitializer }, align 32
@if_sdio_finish_power_on._entry_ptr = internal global ptr @if_sdio_finish_power_on._entry, section ".printk_index", align 4
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CMD_FUNC_INIT cmd failed\0A\00", [38 x i8] zeroinitializer }, align 32
@if_sdio_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libertas sdio: interrupt: 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"if_sdio_interrupt\00", [46 x i8] zeroinitializer }, align 32
@if_sdio_interrupt._entry_ptr = internal global ptr @if_sdio_interrupt._entry, section ".printk_index", align 4
@if_sdio_card_to_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017libertas sdio: invalid packet size (%d bytes) from firmware\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"if_sdio_card_to_host\00", [43 x i8] zeroinitializer }, align 32
@if_sdio_card_to_host._entry_ptr = internal global ptr @if_sdio_card_to_host._entry, section ".printk_index", align 4
@if_sdio_card_to_host._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017libertas sdio: packet of type %d and size %d bytes\0A\00", [42 x i8] zeroinitializer }, align 32
@if_sdio_card_to_host._entry_ptr.63 = internal global ptr @if_sdio_card_to_host._entry.61, section ".printk_index", align 4
@if_sdio_card_to_host._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.3, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libertas sdio: packet fragment (%d > %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@if_sdio_card_to_host._entry_ptr.66 = internal global ptr @if_sdio_card_to_host._entry.64, section ".printk_index", align 4
@if_sdio_card_to_host._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017libertas sdio: packet fragment (%d < %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@if_sdio_card_to_host._entry_ptr.69 = internal global ptr @if_sdio_card_to_host._entry.67, section ".printk_index", align 4
@if_sdio_card_to_host._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.60, ptr @.str.3, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas sdio: invalid type (%d) from firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@if_sdio_card_to_host._entry_ptr.72 = internal global ptr @if_sdio_card_to_host._entry.70, section ".printk_index", align 4
@if_sdio_card_to_host._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.60, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013libertas_sdio: problem fetching packet from firmware\0A\00", [40 x i8] zeroinitializer }, align 32
@if_sdio_card_to_host._entry_ptr.75 = internal global ptr @if_sdio_card_to_host._entry.73, section ".printk_index", align 4
@if_sdio_handle_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017libertas sdio: response packet too large (%d bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"if_sdio_handle_cmd\00", [45 x i8] zeroinitializer }, align 32
@if_sdio_handle_cmd._entry_ptr = internal global ptr @if_sdio_handle_cmd._entry, section ".printk_index", align 4
@if_sdio_handle_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.78, ptr @.str.3, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"if_sdio_handle_data\00", [44 x i8] zeroinitializer }, align 32
@if_sdio_handle_data._entry_ptr = internal global ptr @if_sdio_handle_data._entry, section ".printk_index", align 4
@if_sdio_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017libertas sdio: event packet too small (%d bytes)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"if_sdio_handle_event\00", [43 x i8] zeroinitializer }, align 32
@if_sdio_handle_event._entry_ptr = internal global ptr @if_sdio_handle_event._entry, section ".printk_index", align 4
@if_sdio_do_prog_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013libertas_sdio: failed to find firmware (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"if_sdio_do_prog_firmware\00", [39 x i8] zeroinitializer }, align 32
@if_sdio_do_prog_firmware._entry_ptr = internal global ptr @if_sdio_do_prog_firmware._entry, section ".printk_index", align 4
@if_sdio_do_prog_firmware._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017libertas sdio: Helper firmware loaded\0A\00", [55 x i8] zeroinitializer }, align 32
@if_sdio_do_prog_firmware._entry_ptr.85 = internal global ptr @if_sdio_do_prog_firmware._entry.83, section ".printk_index", align 4
@if_sdio_do_prog_firmware._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.3, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017libertas sdio: Firmware loaded\0A\00", [62 x i8] zeroinitializer }, align 32
@if_sdio_do_prog_firmware._entry_ptr.88 = internal global ptr @if_sdio_do_prog_firmware._entry.86, section ".printk_index", align 4
@if_sdio_prog_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas sdio: waiting for helper to boot...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"if_sdio_prog_helper\00", [44 x i8] zeroinitializer }, align 32
@if_sdio_prog_helper._entry_ptr = internal global ptr @if_sdio_prog_helper._entry, section ".printk_index", align 4
@if_sdio_prog_helper._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013libertas_sdio: failed to load helper firmware\0A\00", [47 x i8] zeroinitializer }, align 32
@if_sdio_prog_helper._entry_ptr.93 = internal global ptr @if_sdio_prog_helper._entry.91, section ".printk_index", align 4
@if_sdio_prog_real._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017libertas sdio: firmware helper gave up early\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"if_sdio_prog_real\00", [46 x i8] zeroinitializer }, align 32
@if_sdio_prog_real._entry_ptr = internal global ptr @if_sdio_prog_real._entry, section ".printk_index", align 4
@if_sdio_prog_real._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas sdio: firmware helper signalled error\0A\00", [46 x i8] zeroinitializer }, align 32
@if_sdio_prog_real._entry_ptr.98 = internal global ptr @if_sdio_prog_real._entry.96, section ".printk_index", align 4
@if_sdio_prog_real._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017libertas sdio: waiting for firmware to boot...\0A\00", [46 x i8] zeroinitializer }, align 32
@if_sdio_prog_real._entry_ptr.101 = internal global ptr @if_sdio_prog_real._entry.99, section ".printk_index", align 4
@if_sdio_prog_real._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.3, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013libertas_sdio: failed to load firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@if_sdio_prog_real._entry_ptr.104 = internal global ptr @if_sdio_prog_real._entry.102, section ".printk_index", align 4
@if_sdio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017libertas sdio: send function SHUTDOWN command\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"if_sdio_remove\00", [17 x i8] zeroinitializer }, align 32
@if_sdio_remove._entry_ptr = internal global ptr @if_sdio_remove._entry, section ".printk_index", align 4
@if_sdio_remove._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.3, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\011libertas_sdio: CMD_FUNC_SHUTDOWN cmd failed\0A\00", [49 x i8] zeroinitializer }, align 32
@if_sdio_remove._entry_ptr.109 = internal global ptr @if_sdio_remove._entry.107, section ".printk_index", align 4
@if_sdio_remove._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.106, ptr @.str.3, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017libertas sdio: call remove card\0A\00", [61 x i8] zeroinitializer }, align 32
@if_sdio_remove._entry_ptr.112 = internal global ptr @if_sdio_remove._entry.110, section ".printk_index", align 4
@if_sdio_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.3, i32 1313, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: suspend: PM flags = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"if_sdio_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@if_sdio_suspend._entry_ptr = internal global ptr @if_sdio_suspend._entry, section ".printk_index", align 4
@if_sdio_suspend._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.114, ptr @.str.3, i32 1319, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Suspend without wake params -- powering down card\0A\00", [45 x i8] zeroinitializer }, align 32
@if_sdio_suspend._entry_ptr.119 = internal global ptr @if_sdio_suspend._entry.117, section ".printk_index", align 4
@if_sdio_suspend._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.114, ptr @.str.3, i32 1334, ptr @.str.122, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: cannot remain alive while host is suspended\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@if_sdio_suspend._entry_ptr.123 = internal global ptr @if_sdio_suspend._entry.120, section ".printk_index", align 4
@if_sdio_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.3, i32 1355, ptr @.str.115, ptr @.str.116 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: resume: we're back\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"if_sdio_resume\00", [17 x i8] zeroinitializer }, align 32
@if_sdio_resume._entry_ptr = internal global ptr @if_sdio_resume._entry, section ".printk_index", align 4
@if_sdio_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016libertas_sdio: Libertas SDIO driver\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"if_sdio_init_module\00", [44 x i8] zeroinitializer }, align 32
@if_sdio_init_module._entry_ptr = internal global ptr @if_sdio_init_module._entry, section ".printk_index", align 4
@if_sdio_init_module._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016libertas_sdio: Copyright Pierre Ossman\0A\00", [54 x i8] zeroinitializer }, align 32
@if_sdio_init_module._entry_ptr.130 = internal global ptr @if_sdio_init_module._entry.128, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 11, i64 16]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 11]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 11]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 3]
@___asan_gen_.135 = private unnamed_addr constant [11 x i8] c"user_rmmod\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"card_reset_work\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"if_sdio_driver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1372, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1050, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1046, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"reset_host\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1032, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1373, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"if_sdio_ids\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 64, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"if_sdio_pm_ops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1367, i32 32 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1144, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1147, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1149, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1156, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1180, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1186, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1187, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [9 x i8] c"fw_table\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 78, i32 34 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1195, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1202, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 424, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 79, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 79, i32 46 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 80, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 80, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 81, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 81, i32 49 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 82, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 82, i32 49 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 83, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 83, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 84, i32 16 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 84, i32 46 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 85, i32 16 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 85, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 969, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 989, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 993, i32 25 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1008, i32 25 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 707, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 708, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 725, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 729, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 802, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 805, i32 28 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1111, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 327, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 351, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 355, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 362, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 383, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 391, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 211, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 240, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 279, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 673, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 681, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 687, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 495, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 529, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 596, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 602, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 631, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 661, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1268, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1272, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1276, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1312, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1319, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1333, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1355, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1390, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.542 = private constant [51 x i8] c"../drivers/net/wireless/marvell/libertas/if_sdio.c\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 1391, i32 2 }
@llvm.compiler.used = appending global [198 x ptr] [ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_firmware368, ptr @__UNIQUE_ID_firmware369, ptr @__UNIQUE_ID_firmware370, ptr @__UNIQUE_ID_firmware371, ptr @__UNIQUE_ID_firmware372, ptr @__UNIQUE_ID_firmware373, ptr @__UNIQUE_ID_firmware374, ptr @__UNIQUE_ID_firmware375, ptr @__UNIQUE_ID_firmware376, ptr @__UNIQUE_ID_firmware377, ptr @__UNIQUE_ID_firmware378, ptr @__UNIQUE_ID_firmware379, ptr @__UNIQUE_ID_firmware380, ptr @__UNIQUE_ID_license389, ptr @__exitcall_if_sdio_exit_module, ptr @__initcall__kmod_libertas_sdio__385_1411_if_sdio_init_module6, ptr @if_sdio_card_to_host._entry, ptr @if_sdio_card_to_host._entry.61, ptr @if_sdio_card_to_host._entry.64, ptr @if_sdio_card_to_host._entry.67, ptr @if_sdio_card_to_host._entry.70, ptr @if_sdio_card_to_host._entry.73, ptr @if_sdio_card_to_host._entry_ptr, ptr @if_sdio_card_to_host._entry_ptr.63, ptr @if_sdio_card_to_host._entry_ptr.66, ptr @if_sdio_card_to_host._entry_ptr.69, ptr @if_sdio_card_to_host._entry_ptr.72, ptr @if_sdio_card_to_host._entry_ptr.75, ptr @if_sdio_do_prog_firmware._entry, ptr @if_sdio_do_prog_firmware._entry.83, ptr @if_sdio_do_prog_firmware._entry.86, ptr @if_sdio_do_prog_firmware._entry_ptr, ptr @if_sdio_do_prog_firmware._entry_ptr.85, ptr @if_sdio_do_prog_firmware._entry_ptr.88, ptr @if_sdio_enter_deep_sleep._entry, ptr @if_sdio_enter_deep_sleep._entry_ptr, ptr @if_sdio_exit_module, ptr @if_sdio_finish_power_on._entry, ptr @if_sdio_finish_power_on._entry_ptr, ptr @if_sdio_handle_cmd._entry, ptr @if_sdio_handle_cmd._entry_ptr, ptr @if_sdio_handle_data._entry, ptr @if_sdio_handle_data._entry_ptr, ptr @if_sdio_handle_event._entry, ptr @if_sdio_handle_event._entry_ptr, ptr @if_sdio_host_to_card._entry, ptr @if_sdio_host_to_card._entry_ptr, ptr @if_sdio_host_to_card_worker._entry, ptr @if_sdio_host_to_card_worker._entry_ptr, ptr @if_sdio_init_module._entry, ptr @if_sdio_init_module._entry.128, ptr @if_sdio_init_module._entry_ptr, ptr @if_sdio_init_module._entry_ptr.130, ptr @if_sdio_interrupt._entry, ptr @if_sdio_interrupt._entry_ptr, ptr @if_sdio_probe._entry, ptr @if_sdio_probe._entry.15, ptr @if_sdio_probe._entry.18, ptr @if_sdio_probe._entry_ptr, ptr @if_sdio_probe._entry_ptr.17, ptr @if_sdio_probe._entry_ptr.20, ptr @if_sdio_prog_firmware._entry, ptr @if_sdio_prog_firmware._entry.45, ptr @if_sdio_prog_firmware._entry.48, ptr @if_sdio_prog_firmware._entry.51, ptr @if_sdio_prog_firmware._entry_ptr, ptr @if_sdio_prog_firmware._entry_ptr.47, ptr @if_sdio_prog_firmware._entry_ptr.50, ptr @if_sdio_prog_firmware._entry_ptr.53, ptr @if_sdio_prog_helper._entry, ptr @if_sdio_prog_helper._entry.91, ptr @if_sdio_prog_helper._entry_ptr, ptr @if_sdio_prog_helper._entry_ptr.93, ptr @if_sdio_prog_real._entry, ptr @if_sdio_prog_real._entry.102, ptr @if_sdio_prog_real._entry.96, ptr @if_sdio_prog_real._entry.99, ptr @if_sdio_prog_real._entry_ptr, ptr @if_sdio_prog_real._entry_ptr.101, ptr @if_sdio_prog_real._entry_ptr.104, ptr @if_sdio_prog_real._entry_ptr.98, ptr @if_sdio_remove._entry, ptr @if_sdio_remove._entry.107, ptr @if_sdio_remove._entry.110, ptr @if_sdio_remove._entry_ptr, ptr @if_sdio_remove._entry_ptr.109, ptr @if_sdio_remove._entry_ptr.112, ptr @if_sdio_reset_card_worker._entry, ptr @if_sdio_reset_card_worker._entry_ptr, ptr @if_sdio_resume._entry, ptr @if_sdio_resume._entry_ptr, ptr @if_sdio_suspend._entry, ptr @if_sdio_suspend._entry.117, ptr @if_sdio_suspend._entry.120, ptr @if_sdio_suspend._entry_ptr, ptr @if_sdio_suspend._entry_ptr.119, ptr @if_sdio_suspend._entry_ptr.123, ptr @user_rmmod, ptr @card_reset_work, ptr @if_sdio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @reset_host, ptr @.str.4, ptr @if_sdio_ids, ptr @if_sdio_pm_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @if_sdio_probe.__key, ptr @.str.10, ptr @if_sdio_probe.__key.11, ptr @.str.12, ptr @if_sdio_probe.__key.13, ptr @.str.14, ptr @fw_table, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_rmmod to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_reset_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_reset_card_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_host to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_ids to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_host_to_card_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_host_to_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_enter_deep_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_firmware._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_firmware._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_finish_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_card_to_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_card_to_host._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_card_to_host._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_card_to_host._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_card_to_host._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_card_to_host._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_handle_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_handle_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_do_prog_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_do_prog_firmware._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_do_prog_firmware._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_helper._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_real._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_real._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_real._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_prog_real._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_remove._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_remove._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_suspend._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_suspend._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_sdio_init_module._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_exit_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @user_rmmod, align 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @card_reset_work) #11
  tail call void @sdio_unregister_driver(ptr noundef nonnull @if_sdio_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #14
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #14
  %call6 = tail call i32 @sdio_register_driver(ptr noundef nonnull @if_sdio_driver) #11
  store i1 false, ptr @user_rmmod, align 1
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_reset_card_worker(ptr nocapture noundef readnone %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  %0 = load ptr, ptr @reset_host, align 4
  tail call void @mmc_remove_host(ptr noundef %0) #11
  %1 = load ptr, ptr @reset_host, align 4
  %call1 = tail call i32 @mmc_add_host(ptr noundef %1) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_probe(ptr noundef %func, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %model = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %model) #11
  %0 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %model, align 4, !annotation !296
  %1 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %func, align 8
  %num_info188 = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 35
  %3 = ptrtoint ptr %num_info188 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_info188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp189.not = icmp eq i32 %4, 0
  br i1 %cmp189.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi ptr [ %24, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %i.0190 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %info = getelementptr inbounds %struct.mmc_card, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.0190
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull %model)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp3 = icmp eq i32 %call, 1
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func, align 8
  %info5 = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 36
  %12 = ptrtoint ptr %info5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info5, align 8
  %arrayidx6 = getelementptr ptr, ptr %13, i32 %i.0190
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %call7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %model)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.end.for.end_crit_edge, label %if.end10

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end10:                                         ; preds = %if.end
  %16 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %func, align 8
  %info12 = getelementptr inbounds %struct.mmc_card, ptr %17, i32 0, i32 36
  %18 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info12, align 8
  %arrayidx13 = getelementptr ptr, ptr %19, i32 %i.0190
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx13, align 4
  %call14 = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(24) @.str.7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then15, label %for.inc

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %model, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end10
  %inc = add nuw i32 %i.0190, 1
  %23 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func, align 8
  %num_info = getelementptr inbounds %struct.mmc_card, ptr %24, i32 0, i32 35
  %25 = ptrtoint ptr %num_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_info, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then15, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0187 = phi i32 [ %i.0190, %if.then15 ], [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %i.0190, %for.body.for.end_crit_edge ], [ %i.0190, %if.end.for.end_crit_edge ]
  %27 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %func, align 8
  %num_info18 = getelementptr inbounds %struct.mmc_card, ptr %28, i32 0, i32 35
  %29 = ptrtoint ptr %num_info18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_info18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0187, i32 %30)
  %cmp19 = icmp eq i32 %i.0187, %30
  br i1 %cmp19, label %do.end, label %if.end22

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 65712, i32 noundef 3520, i32 noundef 5) #16
  %tobool24.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %31 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %func, ptr %call1.i.i.i, align 4096
  %32 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %model, align 4
  %model28 = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %model28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %model28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %switch.selectcmp = icmp eq i32 %33, 11
  %switch.select = select i1 %switch.selectcmp, i32 52, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %switch.selectcmp197 = icmp eq i32 %33, 4
  %switch.select198 = select i1 %switch.selectcmp197, i32 33022, i32 %switch.select
  %scratch_reg = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.select198, ptr %scratch_reg, align 16
  %lock = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @if_sdio_probe.__key, i16 noundef signext 3) #11
  %call38 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef 0) #11
  %workqueue = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call38, ptr %workqueue, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end26.err_queue_crit_edge, label %do.body46, !prof !297

if.end26.err_queue_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_queue

do.body46:                                        ; preds = %if.end26
  %packet_worker = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 11
  call void @__init_work(ptr noundef %packet_worker, i32 noundef 0) #11
  %37 = ptrtoint ptr %packet_worker to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %packet_worker, align 128
  %lockdep_map = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 11, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @if_sdio_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry50 = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 11, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry50, ptr %prev.i, align 8
  %func52 = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 11, i32 2
  %40 = ptrtoint ptr %func52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @if_sdio_host_to_card_worker, ptr %func52, align 4
  %pwron_waitq = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 6
  call void @__init_waitqueue_head(ptr noundef %pwron_waitq, ptr noundef nonnull @.str.14, ptr noundef nonnull @if_sdio_probe.__key.13) #11
  %41 = ptrtoint ptr %model28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %model28, align 8
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %do.end74 [
    i32 4, label %do.body46.if.end78_crit_edge
    i32 11, label %do.body46.if.end78_crit_edge202
    i32 16, label %do.body46.if.end78_crit_edge203
    i32 0, label %do.body46.if.end78_crit_edge204
  ]

do.body46.if.end78_crit_edge204:                  ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.body46.if.end78_crit_edge203:                  ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.body46.if.end78_crit_edge202:                  ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.body46.if.end78_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.end74:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %model28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %model28, align 8
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %45) #14
  br label %free

if.end78:                                         ; preds = %do.body46.if.end78_crit_edge, %do.body46.if.end78_crit_edge202, %do.body46.if.end78_crit_edge203, %do.body46.if.end78_crit_edge204
  %dev = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %46 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call1.i.i.i, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %47 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %47, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp80.not = icmp eq i32 %and, 0
  br i1 %cmp80.not, label %if.end78.do.end91_crit_edge, label %do.end84

if.end78.do.end91_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end91

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %class = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 4
  %48 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %class, align 8
  %conv = zext i8 %49 to i32
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %50 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vendor, align 2
  %conv86 = zext i16 %51 to i32
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device, align 4
  %conv87 = zext i16 %53 to i32
  %54 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %model, align 4
  %ioport = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ioport, align 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv86, i32 noundef %conv87, i32 noundef %55, i32 noundef %57) #14
  br label %do.end91

do.end91:                                         ; preds = %do.end84, %if.end78.do.end91_crit_edge
  %call93 = call ptr @lbs_add_card(ptr noundef nonnull %call1.i.i.i, ptr noundef %dev) #11
  %cmp.i = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then95, label %if.end97

if.then95:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call93 to i32
  br label %free

if.end97:                                         ; preds = %do.end91
  %priv98 = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %priv98 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call93, ptr %priv98, align 4
  %card99 = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 39
  %60 = ptrtoint ptr %card99 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call1.i.i.i, ptr %card99, align 4
  %hw_host_to_card = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 46
  %61 = ptrtoint ptr %hw_host_to_card to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @if_sdio_host_to_card, ptr %hw_host_to_card, align 4
  %enter_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 50
  %62 = ptrtoint ptr %enter_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @if_sdio_enter_deep_sleep, ptr %enter_deep_sleep, align 4
  %exit_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 51
  %63 = ptrtoint ptr %exit_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @if_sdio_exit_deep_sleep, ptr %exit_deep_sleep, align 4
  %reset_deep_sleep_wakeup = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 52
  %64 = ptrtoint ptr %reset_deep_sleep_wakeup to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @if_sdio_reset_deep_sleep_wakeup, ptr %reset_deep_sleep_wakeup, align 4
  %reset_card = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 47
  %65 = ptrtoint ptr %reset_card to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @if_sdio_reset_card, ptr %reset_card, align 4
  %power_save = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 48
  %66 = ptrtoint ptr %power_save to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @if_sdio_power_save, ptr %power_save, align 4
  %power_restore = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 49
  %67 = ptrtoint ptr %power_restore to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @if_sdio_power_restore, ptr %power_restore, align 4
  %68 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %func, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 16
  %72 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %caps, align 32
  %74 = trunc i32 %73 to i8
  %75 = lshr i8 %74, 3
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  %is_polling = getelementptr inbounds %struct.lbs_private, ptr %call93, i32 0, i32 41
  %78 = ptrtoint ptr %is_polling to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %is_polling, align 1
  %call106 = call fastcc i32 @if_sdio_power_on(ptr noundef nonnull %call1.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end97.cleanup_crit_edge, label %err_activate_card

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_activate_card:                                ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %workqueue, align 4
  call void @flush_workqueue(ptr noundef %80) #11
  call void @lbs_remove_card(ptr noundef %call93) #11
  br label %free

free:                                             ; preds = %err_activate_card, %if.then95, %do.end74
  %ret.1 = phi i32 [ -19, %do.end74 ], [ %58, %if.then95 ], [ %call106, %err_activate_card ]
  %81 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %82) #11
  br label %err_queue

err_queue:                                        ; preds = %free, %if.end26.err_queue_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free ], [ -12, %if.end26.err_queue_crit_edge ]
  %packets = getelementptr inbounds %struct.if_sdio_card, ptr %call1.i.i.i, i32 0, i32 9
  %83 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %packets, align 8
  %tobool112.not194 = icmp eq ptr %84, null
  br i1 %tobool112.not194, label %err_queue.while.end_crit_edge, label %err_queue.while.body_crit_edge

err_queue.while.body_crit_edge:                   ; preds = %err_queue
  br label %while.body

err_queue.while.end_crit_edge:                    ; preds = %err_queue
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_queue.while.body_crit_edge
  %85 = phi ptr [ %90, %while.body.while.body_crit_edge ], [ %84, %err_queue.while.body_crit_edge ]
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %packets, align 8
  call void @kfree(ptr noundef nonnull %85) #11
  %89 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %packets, align 8
  %tobool112.not = icmp eq ptr %90, null
  br i1 %tobool112.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %err_queue.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end97.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end22.cleanup_crit_edge ], [ %ret.2, %while.end ], [ 0, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %model) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_remove(ptr noundef %func) #2 align 64 {
entry:
  %cmd = alloca %struct.cmd_header, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %usage_count.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !298
  %.b = load i1, ptr @user_rmmod, align 1
  br i1 %.b, label %land.lhs.true, label %entry.do.body20_crit_edge

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

land.lhs.true:                                    ; preds = %entry
  %model = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp = icmp eq i32 %4, 16
  br i1 %cmp, label %if.then, label %land.lhs.true.do.body20_crit_edge

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %6 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3.not = icmp eq i32 %and, 0
  br i1 %cmp3.not, label %if.then.do.end9_crit_edge, label %do.end

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.then.do.end9_crit_edge
  %priv = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %cmd to i32
  %call10 = call i32 @__lbs_cmd(ptr noundef %8, i16 noundef zeroext 170, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end9.if.end18_crit_edge, label %do.end15

do.end9.if.end18_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #14
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %do.end9.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  br label %do.body20

do.body20:                                        ; preds = %if.end18, %land.lhs.true.do.body20_crit_edge, %entry.do.body20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %10 = load i32, ptr @lbs_debug, align 4
  %and21 = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %do.body20.do.end32_crit_edge, label %do.end27

do.body20.do.end32_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32

do.end27:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #14
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %do.body20.do.end32_crit_edge
  %priv33 = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %priv33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv33, align 4
  call void @lbs_stop_card(ptr noundef %12) #11
  %13 = ptrtoint ptr %priv33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv33, align 4
  call void @lbs_remove_card(ptr noundef %14) #11
  %workqueue = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %16) #11
  %packets = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %packets, align 4
  %tobool35.not49 = icmp eq ptr %18, null
  br i1 %tobool35.not49, label %do.end32.while.end_crit_edge, label %do.end32.while.body_crit_edge

do.end32.while.body_crit_edge:                    ; preds = %do.end32
  br label %while.body

do.end32.while.end_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end32.while.body_crit_edge
  %19 = phi ptr [ %24, %while.body.while.body_crit_edge ], [ %18, %do.end32.while.body_crit_edge ]
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %packets, align 4
  call void @kfree(ptr noundef nonnull %19) #11
  %23 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %packets, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end32.while.end_crit_edge
  call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_host_to_card_worker(ptr noundef %work) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -65664
  %lock = getelementptr i8, ptr %work, i32 -52
  %call348 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %packets = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %packets, align 4
  %tobool.not49 = icmp eq ptr %1, null
  br i1 %tobool.not49, label %entry.while.end.critedge_crit_edge, label %if.then.lr.ph

entry.while.end.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.critedge

if.then.lr.ph:                                    ; preds = %entry
  %ioport = getelementptr i8, ptr %work, i32 -65652
  br label %if.then

if.then:                                          ; preds = %if.end26.if.then_crit_edge, %if.then.lr.ph
  %2 = phi ptr [ %1, %if.then.lr.ph ], [ %29, %if.end26.if.then_crit_edge ]
  %call350 = phi i32 [ %call348, %if.then.lr.ph ], [ %call3, %if.end26.if.then_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %packets, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call350) #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  call void @sdio_claim_host(ptr noundef %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #11
  %8 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ret.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %9, 100
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call14.i = call zeroext i8 @sdio_readb(ptr noundef %11, i32 noundef 32, ptr noundef nonnull %ret.i) #11
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not15.i = icmp eq i32 %13, 0
  br i1 %tobool.not15.i, label %if.then.if.end.i_crit_edge, label %if.then.if.end18.thread_crit_edge

if.then.if.end18.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.end.i:                                         ; preds = %if.end9.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %call16.i = phi i8 [ %call.i, %if.end9.i.if.end.i_crit_edge ], [ %call14.i, %if.then.if.end.i_crit_edge ]
  %and13.i = and i8 %call16.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and13.i)
  %cmp.i.not = icmp eq i8 %and13.i, 0
  br i1 %cmp.i.not, label %if.end5.i, label %if.end18

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %if.end5.i.if.end18.thread_crit_edge, label %if.end9.i

if.end5.i.if.end18.thread_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread

if.end9.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %17, i32 noundef 32, ptr noundef nonnull %ret.i) #11
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i, align 4
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end9.i.if.end.i_crit_edge, label %if.end9.i.if.end18.thread_crit_edge

if.end9.i.if.end18.thread_crit_edge:              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.thread

if.end9.i.if.end.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end18.thread:                                  ; preds = %if.end9.i.if.end18.thread_crit_edge, %if.end5.i.if.end18.thread_crit_edge, %if.then.if.end18.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %13, %if.then.if.end18.thread_crit_edge ], [ -110, %if.end5.i.if.end18.thread_crit_edge ], [ %19, %if.end9.i.if.end18.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  br label %do.end23

if.end18:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ioport, align 4
  %buffer = getelementptr inbounds %struct.if_sdio_packet, ptr %2, i32 0, i32 3
  %nb = getelementptr inbounds %struct.if_sdio_packet, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %nb to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nb, align 4
  %conv16 = zext i16 %25 to i32
  %call17 = call i32 @sdio_writesb(ptr noundef %21, i32 noundef %23, ptr noundef %buffer, i32 noundef %conv16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end18.if.end26_crit_edge, label %if.end18.do.end23_crit_edge

if.end18.do.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.end23:                                         ; preds = %if.end18.do.end23_crit_edge, %if.end18.thread
  %ret.047 = phi i32 [ %retval.0.i.ph, %if.end18.thread ], [ %call17, %if.end18.do.end23_crit_edge ]
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %ret.047) #14
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.end18.if.end26_crit_edge
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  call void @sdio_release_host(ptr noundef %27) #11
  call void @kfree(ptr noundef nonnull %2) #11
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %28 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %packets, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %if.end26.while.end.critedge_crit_edge, label %if.end26.if.then_crit_edge

if.end26.if.then_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end26.while.end.critedge_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.critedge

while.end.critedge:                               ; preds = %if.end26.while.end.critedge_crit_edge, %entry.while.end.critedge_crit_edge
  %call3.lcssa = phi i32 [ %call348, %entry.while.end.critedge_crit_edge ], [ %call3, %if.end26.while.end.critedge_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.lcssa) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lbs_add_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_host_to_card(ptr nocapture noundef %priv, i8 noundef zeroext %type, ptr nocapture noundef readonly %buf, i16 noundef zeroext %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %conv = zext i16 %nb to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12, i16 %nb)
  %cmp = icmp ugt i16 %nb, -12
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add = add nuw nsw i32 %conv, 4
  %call = tail call i32 @sdio_align_size(ptr noundef %3, i32 noundef %add) #11
  %conv5 = and i32 %call, 65535
  %add6 = add nuw nsw i32 %conv5, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add6, i32 noundef 2848) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end9:                                          ; preds = %if.end
  %conv4 = trunc i32 %call to i16
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call9.i.i, align 128
  %nb10 = getelementptr inbounds %struct.if_sdio_packet, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %nb10 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv4, ptr %nb10, align 4
  %conv13 = trunc i32 %add to i8
  %buffer = getelementptr inbounds %struct.if_sdio_packet, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv13, ptr %buffer, align 8
  %7 = lshr i32 %add, 8
  %conv17 = trunc i32 %7 to i8
  %arrayidx19 = getelementptr [0 x i8], ptr %buffer, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv17, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr [0 x i8], ptr %buffer, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %type, ptr %arrayidx21, align 2
  %arrayidx23 = getelementptr [0 x i8], ptr %buffer, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx23, align 1
  %add.ptr = getelementptr %struct.if_sdio_packet, ptr %call9.i.i, i32 1, i32 1
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %conv)
  %lock = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 8
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %packets = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %packets, align 4
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end9.if.end41_crit_edge, label %if.end9.while.cond_crit_edge

if.end9.while.cond_crit_edge:                     ; preds = %if.end9
  br label %while.cond

if.end9.if.end41_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end9.while.cond_crit_edge
  %cur.0 = phi ptr [ %15, %while.cond.while.cond_crit_edge ], [ %13, %if.end9.while.cond_crit_edge ]
  %14 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.0, align 4
  %tobool38.not = icmp eq ptr %15, null
  br i1 %tobool38.not, label %while.cond.if.end41_crit_edge, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.cond.if.end41_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.end41:                                         ; preds = %while.cond.if.end41_crit_edge, %if.end9.if.end41_crit_edge
  %cur.0.lcssa.sink = phi ptr [ %packets, %if.end9.if.end41_crit_edge ], [ %cur.0, %while.cond.if.end41_crit_edge ]
  %16 = ptrtoint ptr %cur.0.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i, ptr %cur.0.lcssa.sink, align 4
  %conv42 = zext i8 %type to i32
  %17 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %type, label %do.body45 [
    i8 1, label %sw.bb
    i8 0, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %dnld_sent = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %18 = ptrtoint ptr %dnld_sent to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %dnld_sent, align 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %dnld_sent44 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %19 = ptrtoint ptr %dnld_sent44 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %dnld_sent44, align 1
  br label %sw.epilog

do.body45:                                        ; preds = %if.end41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %20 = load i32, ptr @lbs_debug, align 4
  %and46 = and i32 %20, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47.not = icmp eq i32 %and46, 0
  br i1 %cmp47.not, label %do.body45.sw.epilog_crit_edge, label %do.end52

do.body45.sw.epilog_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end52:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv42) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end52, %do.body45.sw.epilog_crit_edge, %sw.bb43, %sw.bb
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call30) #11
  %workqueue = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %workqueue, align 4
  %packet_worker = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %packet_worker) #11
  br label %out

out:                                              ; preds = %sw.epilog, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_enter_deep_sleep(ptr noundef %priv) #2 align 64 {
entry:
  %cmd = alloca %struct.cmd_header, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %1 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = ptrtoint ptr %cmd to i32
  %call4 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 62, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end3.while.body.preheader_crit_edge, label %if.then5

do.end3.while.body.preheader_crit_edge:           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.41) #14
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then5, %do.end3.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.010 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 200, %while.body.preheader ]
  %dec = add nsw i32 %__ms.010, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748000) #11
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_exit_deep_sleep(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext 2, i32 noundef 3, ptr noundef nonnull %ret) #11
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.42) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %12) #11
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_reset_deep_sleep_wakeup(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %4) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @sdio_writeb(ptr noundef %6, i8 noundef zeroext 0, i32 noundef 3, ptr noundef nonnull %ret) #11
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.42) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %12) #11
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_reset_card(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = load volatile i32, ptr @card_reset_work, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  store ptr %8, ptr @reset_host, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef nonnull @card_reset_work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_power_save(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %workqueue = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  tail call void @flush_workqueue(ptr noundef %3) #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %priv2.i = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2.i, align 4
  %fw_ready.i = getelementptr inbounds %struct.lbs_private, ptr %7, i32 0, i32 42
  %8 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %fw_ready.i, align 2
  tail call void @sdio_claim_host(ptr noundef %5) #11
  %call.i = tail call i32 @sdio_release_irq(ptr noundef %5) #11
  %call3.i = tail call i32 @sdio_disable_func(ptr noundef %5) #11
  tail call void @sdio_release_host(ptr noundef %5) #11
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %10, i32 0, i32 1
  %call.i5 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_power_restore(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %call2 = tail call fastcc i32 @if_sdio_power_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.body3, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

do.body3:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1090) #11
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 42
  %4 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fw_ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.end9, label %do.body3.cleanup18_crit_edge

do.body3.cleanup18_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

if.end9:                                          ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %pwron_waitq = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 6
  %call1028 = call i32 @prepare_to_wait_event(ptr noundef %pwron_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %7 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fw_ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not29 = icmp eq i8 %8, 0
  br i1 %tobool12.not29, label %if.end9.cleanup_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  call void @schedule() #11
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %pwron_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %9 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_ready, align 2
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end9.for.end_crit_edge
  call void @finish_wait(ptr noundef %pwron_waitq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup18

cleanup18:                                        ; preds = %for.end, %do.body3.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup18_crit_edge ], [ 0, %do.body3.cleanup18_crit_edge ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @if_sdio_power_on(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  tail call void @sdio_claim_host(ptr noundef %1) #11
  %call = tail call i32 @sdio_enable_func(ptr noundef %1) #11
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.release_crit_edge

entry.release_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end:                                           ; preds = %entry
  %model = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 2
  %7 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %8)
  %cmp = icmp eq i32 %8, 11
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %caps = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 16
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 32
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true5

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true5:                                   ; preds = %land.lhs.true
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 28, i32 6
  %11 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp6 = icmp eq i8 %12, 0
  br i1 %cmp6, label %if.then8, label %land.lhs.true5.if.end20_crit_edge

land.lhs.true5.if.end20_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then8:                                         ; preds = %land.lhs.true5
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %quirks = getelementptr inbounds %struct.mmc_card, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 8
  %or = or i32 %16, 1
  store i32 %or, ptr %quirks, align 8
  %call10 = call zeroext i8 @sdio_f0_readb(ptr noundef %1, i32 noundef 7, ptr noundef nonnull %ret) #11
  %17 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %if.end13, label %if.then8.disable_crit_edge

if.then8.disable_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable

if.end13:                                         ; preds = %if.then8
  %19 = or i8 %call10, 32
  call void @sdio_f0_writeb(ptr noundef %1, i8 noundef zeroext %19, i32 noundef 7, ptr noundef nonnull %ret) #11
  %20 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  br i1 %tobool17.not, label %if.end13.if.end20_crit_edge, label %if.end13.disable_crit_edge

if.end13.disable_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %if.end13.if.end20_crit_edge, %land.lhs.true5.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %call21 = call zeroext i8 @sdio_readb(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %ret) #11
  %conv22 = zext i8 %call21 to i32
  %ioport = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 3
  %22 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv22, ptr %ioport, align 4
  %23 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.disable_crit_edge

if.end20.disable_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable

if.end25:                                         ; preds = %if.end20
  %call26 = call zeroext i8 @sdio_readb(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %ret) #11
  %conv27 = zext i8 %call26 to i32
  %shl = shl nuw nsw i32 %conv27, 8
  %25 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ioport, align 4
  %or29 = or i32 %shl, %26
  store i32 %or29, ptr %ioport, align 4
  %27 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.disable_crit_edge

if.end25.disable_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable

if.end32:                                         ; preds = %if.end25
  %call33 = call zeroext i8 @sdio_readb(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %ret) #11
  %conv34 = zext i8 %call33 to i32
  %shl35 = shl nuw nsw i32 %conv34, 16
  %29 = ptrtoint ptr %ioport to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ioport, align 4
  %or37 = or i32 %shl35, %30
  store i32 %or37, ptr %ioport, align 4
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool38.not = icmp eq i32 %32, 0
  br i1 %tobool38.not, label %if.end40, label %if.end32.disable_crit_edge

if.end32.disable_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable

if.end40:                                         ; preds = %if.end32
  call void @sdio_release_host(ptr noundef %1) #11
  %call41 = call fastcc i32 @if_sdio_prog_firmware(ptr noundef %card)
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call41, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup46_crit_edge, label %if.then43

if.end40.cleanup46_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  call void @sdio_claim_host(ptr noundef %1) #11
  br label %disable

disable:                                          ; preds = %if.then43, %if.end32.disable_crit_edge, %if.end25.disable_crit_edge, %if.end20.disable_crit_edge, %if.end13.disable_crit_edge, %if.then8.disable_crit_edge
  %call45 = call i32 @sdio_disable_func(ptr noundef %1) #11
  br label %release

release:                                          ; preds = %disable, %entry.release_crit_edge
  call void @sdio_release_host(ptr noundef %1) #11
  %34 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ret, align 4
  br label %cleanup46

cleanup46:                                        ; preds = %release, %if.end40.cleanup46_crit_edge
  %retval.0 = phi i32 [ %35, %release ], [ 0, %if.end40.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_align_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lbs_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_cmd_copyback(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @if_sdio_power_off(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %priv2 = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 42
  %4 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_ready, align 2
  tail call void @sdio_claim_host(ptr noundef %1) #11
  %call = tail call i32 @sdio_release_irq(ptr noundef %1) #11
  %call3 = tail call i32 @sdio_disable_func(ptr noundef %1) #11
  tail call void @sdio_release_host(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @sdio_f0_readb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_f0_writeb(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @if_sdio_prog_firmware(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !296
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  tail call void @sdio_claim_host(ptr noundef %2) #11
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  call void @sdio_writeb(ptr noundef %4, i8 noundef zeroext 0, i32 noundef 4, ptr noundef nonnull %ret) #11
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %6) #11
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  call void @sdio_claim_host(ptr noundef %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #11
  %9 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ret.i, align 4, !annotation !296
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %scratch_reg.i = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 4
  %12 = ptrtoint ptr %scratch_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scratch_reg.i, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %ret.i) #11
  %conv.i = zext i8 %call.i to i16
  %14 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if_sdio_read_scratch.exit_crit_edge

entry.if_sdio_read_scratch.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_read_scratch.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %18 = ptrtoint ptr %scratch_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scratch_reg.i, align 4
  %add.i = add i32 %19, 1
  %call3.i = call zeroext i8 @sdio_readb(ptr noundef %17, i32 noundef %add.i, ptr noundef nonnull %ret.i) #11
  %conv4.i = zext i8 %call3.i to i16
  %shl.i = shl nuw i16 %conv4.i, 8
  %or.i = or i16 %shl.i, %conv.i
  br label %if_sdio_read_scratch.exit

if_sdio_read_scratch.exit:                        ; preds = %if.then.i, %entry.if_sdio_read_scratch.exit_crit_edge
  %scratch.0.i = phi i16 [ %conv.i, %entry.if_sdio_read_scratch.exit_crit_edge ], [ %or.i, %if.then.i ]
  %20 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ret.i, align 4
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not.i = icmp eq i32 %21, 0
  %scratch.0..i = select i1 %tobool10.not.i, i16 %scratch.0.i, i16 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  call void @sdio_release_host(ptr noundef %24) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %25 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %25, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if_sdio_read_scratch.exit.do.body9_crit_edge, label %do.end

if_sdio_read_scratch.exit.do.body9_crit_edge:     ; preds = %if_sdio_read_scratch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9

do.end:                                           ; preds = %if_sdio_read_scratch.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %scratch.0..i to i32
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv) #14
  br label %do.body9

do.body9:                                         ; preds = %do.end, %if_sdio_read_scratch.exit.do.body9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %26 = load i32, ptr @lbs_debug, align 4
  %and10 = and i32 %26, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %do.body9.do.end21_crit_edge, label %do.end16

do.body9.do.end21_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.end16:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ret, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %28) #14
  br label %do.end21

do.end21:                                         ; preds = %do.end16, %do.body9.do.end21_crit_edge
  %29 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end23, label %do.end21.out_crit_edge

do.end21.out_crit_edge:                           ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 -292, i16 %scratch.0..i)
  %cmp25 = icmp eq i16 %scratch.0..i, -292
  br i1 %cmp25, label %do.body28, label %if.else

do.body28:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %31 = load i32, ptr @lbs_debug, align 4
  %and29 = and i32 %31, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 0
  br i1 %cmp30.not, label %do.body28.do.end40_crit_edge, label %do.end35

do.body28.do.end40_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

do.end35:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #14
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %do.body28.do.end40_crit_edge
  call fastcc void @if_sdio_finish_power_on(ptr noundef %card)
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %model = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 2
  %32 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %cmp41 = icmp ne i32 %33, 11
  %34 = and i16 %scratch.0..i, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool45.not = icmp eq i16 %34, 0
  %or.cond = select i1 %cmp41, i1 true, i1 %tobool45.not
  br i1 %or.cond, label %if.end61, label %do.body47

do.body47:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %35 = load i32, ptr @lbs_debug, align 4
  %and48 = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %cmp49.not = icmp eq i32 %and48, 0
  br i1 %cmp49.not, label %do.body47.do.end59_crit_edge, label %do.end54

do.body47.do.end59_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end59

do.end54:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #13
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #14
  br label %do.end59

do.end59:                                         ; preds = %do.end54, %do.body47.do.end59_crit_edge
  call fastcc void @if_sdio_finish_power_on(ptr noundef %card)
  br label %cleanup

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %priv = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 1
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %38 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.sdio_func, ptr %39, i32 0, i32 1
  %call64 = call i32 @lbs_get_firmware_async(ptr noundef %37, ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @fw_table, ptr noundef nonnull @if_sdio_do_prog_firmware) #11
  %40 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call64, ptr %ret, align 4
  br label %out

out:                                              ; preds = %if.end61, %do.end21.out_crit_edge
  %41 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end59, %do.end40
  %retval.0 = phi i32 [ %42, %out ], [ 0, %do.end40 ], [ 0, %do.end59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @if_sdio_finish_power_on(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cmd = alloca %struct.cmd_header, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %priv2 = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  tail call void @sdio_claim_host(ptr noundef %1) #11
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %call = tail call i32 @sdio_set_block_size(ptr noundef %5, i32 noundef 256) #11
  %model = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 2
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %7, label %if.then [
    i32 4, label %entry.if.end_crit_edge
    i32 11, label %entry.if.end_crit_edge66
  ]

entry.if.end_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #11
  %9 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ret.i, align 4, !annotation !296
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %11, i32 noundef 67, ptr noundef nonnull %ret.i) #11
  %12 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 %call.i, i8 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge66
  %.sink = phi i8 [ %spec.store.select.i, %if.then ], [ 0, %entry.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge66 ]
  %rx_unit7 = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 12
  %14 = ptrtoint ptr %rx_unit7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %rx_unit7, align 4
  %call8 = call i32 @sdio_claim_irq(ptr noundef %1, ptr noundef nonnull @if_sdio_interrupt) #11
  %15 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call8, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.release_crit_edge

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end10:                                         ; preds = %if.end
  call void @sdio_writeb(ptr noundef %1, i8 noundef zeroext 15, i32 noundef 4, ptr noundef nonnull %ret) #11
  %16 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  br i1 %tobool11.not, label %if.end13, label %release_irq

if.end13:                                         ; preds = %if.end10
  call void @sdio_release_host(ptr noundef %1) #11
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 42
  %18 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %fw_ready, align 2
  %19 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp15 = icmp eq i32 %20, 16
  br i1 %cmp15, label %if.then16, label %if.end13.if.end28_crit_edge

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %cmd, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %22 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %22, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  br i1 %cmp17.not, label %if.then16.do.end23_crit_edge, label %do.end

if.then16.do.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #14
  br label %do.end23

do.end23:                                         ; preds = %do.end, %if.then16.do.end23_crit_edge
  %23 = ptrtoint ptr %cmd to i32
  %call24 = call i32 @__lbs_cmd(ptr noundef %3, i16 noundef zeroext 169, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end23.if.end27_crit_edge, label %if.then26

do.end23.if.end27_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %25, ptr noundef nonnull @.str.56) #14
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %do.end23.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end13.if.end28_crit_edge
  %pwron_waitq = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 6
  call void @__wake_up(ptr noundef %pwron_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %started = getelementptr inbounds %struct.if_sdio_card, ptr %card, i32 0, i32 5
  %26 = ptrtoint ptr %started to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %started, align 4, !range !299
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool29.not = icmp eq i8 %27, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 @lbs_start_card(ptr noundef %3) #11
  %28 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call31, ptr %ret, align 4
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %31 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv2, align 4
  %fw_ready.i = getelementptr inbounds %struct.lbs_private, ptr %32, i32 0, i32 42
  %33 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %fw_ready.i, align 2
  call void @sdio_claim_host(ptr noundef %30) #11
  %call.i64 = call i32 @sdio_release_irq(ptr noundef %30) #11
  %call3.i = call i32 @sdio_disable_func(ptr noundef %30) #11
  call void @sdio_release_host(ptr noundef %30) #11
  %34 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33 = icmp eq i32 %35, 0
  br i1 %cmp33, label %if.then34, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %started to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %started, align 4
  %dev36 = getelementptr inbounds %struct.sdio_func, ptr %1, i32 0, i32 1
  %call.i65 = call i32 @__pm_runtime_idle(ptr noundef %dev36, i32 noundef 5) #11
  br label %cleanup

release_irq:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = call i32 @sdio_release_irq(ptr noundef %1) #11
  br label %release

release:                                          ; preds = %release_irq, %if.end.release_crit_edge
  call void @sdio_release_host(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %release, %if.then34, %if.then30.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_get_firmware_async(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_do_prog_firmware(ptr nocapture noundef readonly %priv, i32 noundef %ret, ptr nocapture noundef readonly %helper, ptr nocapture noundef readonly %mainfw) #2 align 64 {
entry:
  %ret.i168.i = alloca i32, align 4
  %ret.i.i37 = alloca i32, align 4
  %ret.i38 = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %ret.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool.not = icmp eq i32 %ret, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %ret) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %out.thread.i, label %if.end.i

out.thread.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -12, ptr %ret.i, align 4
  br label %if_sdio_prog_helper.exit

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2.i = tail call i32 @sdio_set_block_size(ptr noundef %7, i32 noundef 32) #11
  %8 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end5.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %helper to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %helper, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not109.i = icmp eq i32 %10, 0
  br i1 %tobool7.not109.i, label %if.end5.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end5.i.while.end.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end5.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %helper, i32 0, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %ioport.i = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end16.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %size.0111.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %sub.i, %if.end16.i.while.body.i_crit_edge ]
  %firmware.0110.i = phi ptr [ %12, %while.body.lr.ph.i ], [ %add.ptr17.i, %if.end16.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #11
  %13 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ret.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %14, 100
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call14.i.i = call zeroext i8 @sdio_readb(ptr noundef %16, i32 noundef 32, ptr noundef nonnull %ret.i.i) #11
  %17 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not15.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not15.i.i, label %while.body.i.if.end.i.i_crit_edge, label %while.body.i.if_sdio_wait_status.exit.thread.i_crit_edge

while.body.i.if_sdio_wait_status.exit.thread.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end9.i.i.if.end.i.i_crit_edge, %while.body.i.if.end.i.i_crit_edge
  %call16.i.i = phi i8 [ %call.i.i, %if.end9.i.i.if.end.i.i_crit_edge ], [ %call14.i.i, %while.body.i.if.end.i.i_crit_edge ]
  %and13.i.i = and i8 %call16.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %and13.i.i)
  %cmp.i.i = icmp eq i8 %and13.i.i, 9
  br i1 %cmp.i.i, label %if.end11.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp6.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp6.i.i, label %if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge, label %if.end9.i.i

if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i = call zeroext i8 @sdio_readb(ptr noundef %22, i32 noundef 32, ptr noundef nonnull %ret.i.i) #11
  %23 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ret.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i.if.end.i.i_crit_edge, label %if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge

if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i

if.end9.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if_sdio_wait_status.exit.thread.i:                ; preds = %if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge, %if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge, %while.body.i.if_sdio_wait_status.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %24, %if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge ], [ -110, %if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge ], [ %18, %while.body.i.if_sdio_wait_status.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  %25 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i.ph.i, ptr %ret.i, align 4
  br label %out.i

if.end11.i:                                       ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 429496000) #11
  %27 = call i32 @llvm.umin.i32(i32 %size.0111.i, i32 60) #11
  %28 = shl nuw nsw i32 %27, 24
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call7.i.i.i, align 8
  %30 = call ptr @memcpy(ptr %add.ptr.i, ptr %firmware.0110.i, i32 %27)
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ioport.i, align 4
  %call13.i = call i32 @sdio_writesb(ptr noundef %32, i32 noundef %34, ptr noundef nonnull %call7.i.i.i, i32 noundef 64) #11
  %35 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call13.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end11.i.out.i_crit_edge

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end16.i:                                       ; preds = %if.end11.i
  %add.ptr17.i = getelementptr i8, ptr %firmware.0110.i, i32 %27
  %sub.i = sub i32 %size.0111.i, %27
  %tobool7.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool7.not.i, label %if.end16.i.while.end.i_crit_edge, label %if.end16.i.while.body.i_crit_edge

if.end16.i.while.body.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end16.i.while.end.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end16.i.while.end.i_crit_edge, %if.end5.i.while.end.i_crit_edge
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %call7.i.i.i, align 8
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %ioport19.i = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %ioport19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ioport19.i, align 4
  %call20.i = call i32 @sdio_writesb(ptr noundef %38, i32 noundef %40, ptr noundef nonnull %call7.i.i.i, i32 noundef 64) #11
  %41 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call20.i, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body.i, label %while.end.i.out.i_crit_edge

while.end.i.out.i_crit_edge:                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.body.i:                                        ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %42 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %42, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp24.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp24.not.i, label %do.body.i.do.end31.i_crit_edge, label %do.end.i

do.body.i.do.end31.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #14
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end.i, %do.body.i.do.end31.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %43, 100
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call35112.i = call zeroext i8 @sdio_readb(ptr noundef %45, i32 noundef 16, ptr noundef nonnull %ret.i) #11
  %46 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool36.not113.i = icmp eq i32 %47, 0
  br i1 %tobool36.not113.i, label %do.end31.i.if.end38.i_crit_edge, label %do.end31.i.out.i_crit_edge

do.end31.i.out.i_crit_edge:                       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end31.i.if.end38.i_crit_edge:                  ; preds = %do.end31.i
  br label %if.end38.i

if.end38.i:                                       ; preds = %cleanup.i.if.end38.i_crit_edge, %do.end31.i.if.end38.i_crit_edge
  %call35114.i = phi i8 [ %call35.i, %cleanup.i.if.end38.i_crit_edge ], [ %call35112.i, %do.end31.i.if.end38.i_crit_edge ]
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call40.i = call zeroext i8 @sdio_readb(ptr noundef %49, i32 noundef 17, ptr noundef nonnull %ret.i) #11
  %50 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool44.not.i = icmp eq i32 %51, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end38.i.out.i_crit_edge

if.end38.i.out.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end46.i:                                       ; preds = %if.end38.i
  %conv41.i = zext i8 %call40.i to i32
  %shl.i = shl nuw nsw i32 %conv41.i, 8
  %conv42.i = zext i8 %call35114.i to i32
  %or.i = or i32 %shl.i, %conv42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp48.not.i = icmp eq i32 %or.i, 0
  br i1 %cmp48.not.i, label %if.end51.i, label %while.end57.i

if.end51.i:                                       ; preds = %if.end46.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub52.i = sub i32 %add.i, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52.i)
  %cmp53.i = icmp slt i32 %sub52.i, 0
  br i1 %cmp53.i, label %if.then55.i, label %cleanup.i

if.then55.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -110, ptr %ret.i, align 4
  br label %out.i

cleanup.i:                                        ; preds = %if.end51.i
  call void @msleep(i32 noundef 10) #11
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call35.i = call zeroext i8 @sdio_readb(ptr noundef %55, i32 noundef 16, ptr noundef nonnull %ret.i) #11
  %56 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ret.i, align 4
  %tobool36.not.i = icmp eq i32 %57, 0
  br i1 %tobool36.not.i, label %cleanup.i.if.end38.i_crit_edge, label %cleanup.i.out.i_crit_edge

cleanup.i.out.i_crit_edge:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

cleanup.i.if.end38.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

while.end57.i:                                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %ret.i, align 4
  br label %out.i

out.i:                                            ; preds = %while.end57.i, %cleanup.i.out.i_crit_edge, %if.then55.i, %if.end38.i.out.i_crit_edge, %do.end31.i.out.i_crit_edge, %while.end.i.out.i_crit_edge, %if.end11.i.out.i_crit_edge, %if_sdio_wait_status.exit.thread.i, %if.end.i.out.i_crit_edge
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %60) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %61 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr.i = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool59.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool59.not.i, label %if_sdio_prog_helper.exit.thread, label %out.i.if_sdio_prog_helper.exit_crit_edge

out.i.if_sdio_prog_helper.exit_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_prog_helper.exit

if_sdio_prog_helper.exit.thread:                  ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  br label %do.body6

if_sdio_prog_helper.exit:                         ; preds = %out.i.if_sdio_prog_helper.exit_crit_edge, %out.thread.i
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #14
  %62 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pr = load i32, ptr %ret.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool3.not = icmp eq i32 %.pr, 0
  br i1 %tobool3.not, label %if_sdio_prog_helper.exit.do.body6_crit_edge, label %if_sdio_prog_helper.exit.cleanup_crit_edge

if_sdio_prog_helper.exit.cleanup_crit_edge:       ; preds = %if_sdio_prog_helper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if_sdio_prog_helper.exit.do.body6_crit_edge:      ; preds = %if_sdio_prog_helper.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body6:                                         ; preds = %if_sdio_prog_helper.exit.do.body6_crit_edge, %if_sdio_prog_helper.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %63 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %63, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body6.do.end15_crit_edge, label %do.end10

do.body6.do.end15_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end15

do.end10:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #14
  br label %do.end15

do.end15:                                         ; preds = %do.end10, %do.body6.do.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i38) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not.i40 = icmp eq ptr %call7.i.i.i39, null
  br i1 %tobool.not.i40, label %out.thread.i41, label %if.end.i44

out.thread.i41:                                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -12, ptr %ret.i38, align 4
  br label %if_sdio_prog_real.exit

if.end.i44:                                       ; preds = %do.end15
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  call void @sdio_claim_host(ptr noundef %67) #11
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call2.i42 = call i32 @sdio_set_block_size(ptr noundef %69, i32 noundef 32) #11
  %70 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call2.i42, ptr %ret.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i42)
  %tobool3.not.i43 = icmp eq i32 %call2.i42, 0
  br i1 %tobool3.not.i43, label %if.end5.i45, label %if.end.i44.out.i78_crit_edge

if.end.i44.out.i78_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i78

if.end5.i45:                                      ; preds = %if.end.i44
  %71 = ptrtoint ptr %mainfw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mainfw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool7.not213.i = icmp eq i32 %72, 0
  br i1 %tobool7.not213.i, label %if.end5.i45.while.end85.i_crit_edge, label %while.body.lr.ph.i48

if.end5.i45.while.end85.i_crit_edge:              ; preds = %if.end5.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end85.i

while.body.lr.ph.i48:                             ; preds = %if.end5.i45
  %data.i46 = getelementptr inbounds %struct.firmware, ptr %mainfw, i32 0, i32 1
  %73 = ptrtoint ptr %data.i46 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i46, align 4
  %ioport.i47 = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 3
  br label %while.body.i51

while.cond.loopexit.i:                            ; preds = %if.end81.i.while.cond.loopexit.i_crit_edge, %if.end63.i.while.cond.loopexit.i_crit_edge
  %size.1.lcssa.i = phi i32 [ %size.0214.i, %if.end63.i.while.cond.loopexit.i_crit_edge ], [ %sub82.i, %if.end81.i.while.cond.loopexit.i_crit_edge ]
  %firmware.1.lcssa.i = phi ptr [ %firmware.0215.i, %if.end63.i.while.cond.loopexit.i_crit_edge ], [ %add.ptr.i75, %if.end81.i.while.cond.loopexit.i_crit_edge ]
  %tobool7.not.i49 = icmp eq i32 %size.1.lcssa.i, 0
  br i1 %tobool7.not.i49, label %while.cond.loopexit.i.while.end85.i_crit_edge, label %while.cond.loopexit.i.while.body.i51_crit_edge

while.cond.loopexit.i.while.body.i51_crit_edge:   ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i51

while.cond.loopexit.i.while.end85.i_crit_edge:    ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end85.i

while.body.i51:                                   ; preds = %while.cond.loopexit.i.while.body.i51_crit_edge, %while.body.lr.ph.i48
  %firmware.0215.i = phi ptr [ %74, %while.body.lr.ph.i48 ], [ %firmware.1.lcssa.i, %while.cond.loopexit.i.while.body.i51_crit_edge ]
  %size.0214.i = phi i32 [ %72, %while.body.lr.ph.i48 ], [ %size.1.lcssa.i, %while.cond.loopexit.i.while.body.i51_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add.i50 = add i32 %75, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i37) #11
  %76 = ptrtoint ptr %ret.i.i37 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %ret.i.i37, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call14.i202.i = call zeroext i8 @sdio_readb(ptr noundef %79, i32 noundef 32, ptr noundef nonnull %ret.i.i37) #11
  %80 = ptrtoint ptr %ret.i.i37 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ret.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not15.i203.i = icmp eq i32 %81, 0
  br i1 %tobool.not15.i203.i, label %while.body.i51.if.end.i.preheader.i_crit_edge, label %while.body.i51.if_sdio_wait_status.exit.thread.i63_crit_edge

while.body.i51.if_sdio_wait_status.exit.thread.i63_crit_edge: ; preds = %while.body.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i63

while.body.i51.if.end.i.preheader.i_crit_edge:    ; preds = %while.body.i51
  br label %if.end.i.preheader.i

if.end.i.preheader.i:                             ; preds = %if.end34.i.if.end.i.preheader.i_crit_edge, %while.body.i51.if.end.i.preheader.i_crit_edge
  %call14.i205.i = phi i8 [ %call14.i.i68, %if.end34.i.if.end.i.preheader.i_crit_edge ], [ %call14.i202.i, %while.body.i51.if.end.i.preheader.i_crit_edge ]
  %add.i204.in.i = phi i32 [ %104, %if.end34.i.if.end.i.preheader.i_crit_edge ], [ %77, %while.body.i51.if.end.i.preheader.i_crit_edge ]
  %add.i204.i = add i32 %add.i204.in.i, 100
  br label %if.end.i.i55

if.end.i.i55:                                     ; preds = %if.end9.i.i61.if.end.i.i55_crit_edge, %if.end.i.preheader.i
  %call16.i.i52 = phi i8 [ %call.i.i59, %if.end9.i.i61.if.end.i.i55_crit_edge ], [ %call14.i205.i, %if.end.i.preheader.i ]
  %and13.i.i53 = and i8 %call16.i.i52, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %and13.i.i53)
  %cmp.i.i54 = icmp eq i8 %and13.i.i53, 9
  br i1 %cmp.i.i54, label %if.end13.i, label %if.end5.i.i58

if.end5.i.i58:                                    ; preds = %if.end.i.i55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i56 = sub i32 %add.i204.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i56)
  %cmp6.i.i57 = icmp slt i32 %sub.i.i56, 0
  br i1 %cmp6.i.i57, label %if.end5.i.i58.if_sdio_wait_status.exit.thread.i63_crit_edge, label %if.end9.i.i61

if.end5.i.i58.if_sdio_wait_status.exit.thread.i63_crit_edge: ; preds = %if.end5.i.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i63

if.end9.i.i61:                                    ; preds = %if.end5.i.i58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #11
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %call.i.i59 = call zeroext i8 @sdio_readb(ptr noundef %85, i32 noundef 32, ptr noundef nonnull %ret.i.i37) #11
  %86 = ptrtoint ptr %ret.i.i37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ret.i.i37, align 4
  %tobool.not.i.i60 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i60, label %if.end9.i.i61.if.end.i.i55_crit_edge, label %if.end9.i.i61.if_sdio_wait_status.exit.thread.i63_crit_edge

if.end9.i.i61.if_sdio_wait_status.exit.thread.i63_crit_edge: ; preds = %if.end9.i.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i63

if.end9.i.i61.if.end.i.i55_crit_edge:             ; preds = %if.end9.i.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i55

if_sdio_wait_status.exit.thread.i63:              ; preds = %if.end34.i.if_sdio_wait_status.exit.thread.i63_crit_edge, %if.end9.i.i61.if_sdio_wait_status.exit.thread.i63_crit_edge, %if.end5.i.i58.if_sdio_wait_status.exit.thread.i63_crit_edge, %while.body.i51.if_sdio_wait_status.exit.thread.i63_crit_edge
  %retval.0.i.ph.i62 = phi i32 [ %87, %if.end9.i.i61.if_sdio_wait_status.exit.thread.i63_crit_edge ], [ -110, %if.end5.i.i58.if_sdio_wait_status.exit.thread.i63_crit_edge ], [ %108, %if.end34.i.if_sdio_wait_status.exit.thread.i63_crit_edge ], [ %81, %while.body.i51.if_sdio_wait_status.exit.thread.i63_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i37) #11
  %88 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.ph.i62, ptr %ret.i38, align 4
  br label %out.i78

if.end13.i:                                       ; preds = %if.end.i.i55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i37) #11
  %89 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %ret.i38, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call15.i = call zeroext i8 @sdio_readb(ptr noundef %91, i32 noundef 16, ptr noundef nonnull %ret.i38) #11
  %92 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ret.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool16.not.i = icmp eq i32 %93, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.out.i78_crit_edge

if.end13.i.out.i78_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i78

if.end18.i:                                       ; preds = %if.end13.i
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call20.i64 = call zeroext i8 @sdio_readb(ptr noundef %95, i32 noundef 17, ptr noundef nonnull %ret.i38) #11
  %96 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ret.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool22.not.i = icmp eq i32 %97, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end18.i.out.i78_crit_edge

if.end18.i.out.i78_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i78

if.end24.i:                                       ; preds = %if.end18.i
  %conv21.i = zext i8 %call20.i64 to i32
  %shl.i65 = shl nuw nsw i32 %conv21.i, 8
  %conv.i = zext i8 %call15.i to i32
  %or.i66 = or i32 %shl.i65, %conv.i
  %98 = ptrtoint ptr %mainfw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mainfw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0214.i, i32 %99)
  %cmp.not.i = icmp ne i32 %size.0214.i, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or.i66)
  %cmp27.i = icmp ugt i32 %or.i66, 2
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp27.i
  br i1 %or.cond.i, label %while.end.i70, label %if.end30.i

if.end30.i:                                       ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %sub.i67 = sub i32 %add.i50, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i67)
  %cmp31.i = icmp slt i32 %sub.i67, 0
  br i1 %cmp31.i, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -110, ptr %ret.i38, align 4
  br label %out.i78

if.end34.i:                                       ; preds = %if.end30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %102(i32 noundef 214748000) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i37) #11
  %103 = ptrtoint ptr %ret.i.i37 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %ret.i.i37, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call14.i.i68 = call zeroext i8 @sdio_readb(ptr noundef %106, i32 noundef 32, ptr noundef nonnull %ret.i.i37) #11
  %107 = ptrtoint ptr %ret.i.i37 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ret.i.i37, align 4
  %tobool.not15.i.i69 = icmp eq i32 %108, 0
  br i1 %tobool.not15.i.i69, label %if.end34.i.if.end.i.preheader.i_crit_edge, label %if.end34.i.if_sdio_wait_status.exit.thread.i63_crit_edge

if.end34.i.if_sdio_wait_status.exit.thread.i63_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i63

if.end34.i.if.end.i.preheader.i_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.preheader.i

while.end.i70:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i66)
  %cmp35.i = icmp eq i32 %or.i66, 0
  br i1 %cmp35.i, label %do.body.i72, label %if.end46.i74

do.body.i72:                                      ; preds = %while.end.i70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %109 = load i32, ptr @lbs_debug, align 4
  %and.i71 = and i32 %109, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71)
  %cmp38.not.i = icmp eq i32 %and.i71, 0
  br i1 %cmp38.not.i, label %do.body.i72.do.end45.i_crit_edge, label %do.end.i73

do.body.i72.do.end45.i_crit_edge:                 ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45.i

do.end.i73:                                       ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #14
  br label %do.end45.i

do.end45.i:                                       ; preds = %do.end.i73, %do.body.i72.do.end45.i_crit_edge
  %110 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -5, ptr %ret.i38, align 4
  br label %out.i78

if.end46.i74:                                     ; preds = %while.end.i70
  %and47.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end63.i, label %do.body50.i

do.body50.i:                                      ; preds = %if.end46.i74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %111 = load i32, ptr @lbs_debug, align 4
  %and51.i = and i32 %111, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %cmp52.not.i = icmp eq i32 %and51.i, 0
  br i1 %cmp52.not.i, label %do.body50.i.do.end62.i_crit_edge, label %do.end57.i

do.body50.i.do.end62.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end62.i

do.end57.i:                                       ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #13
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #14
  br label %do.end62.i

do.end62.i:                                       ; preds = %do.end57.i, %do.body50.i.do.end62.i_crit_edge
  %112 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -5, ptr %ret.i38, align 4
  br label %out.i78

if.end63.i:                                       ; preds = %if.end46.i74
  %113 = call i32 @llvm.umin.i32(i32 %or.i66, i32 %size.0214.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool69.not207.i = icmp eq i32 %113, 0
  br i1 %tobool69.not207.i, label %if.end63.i.while.cond.loopexit.i_crit_edge, label %if.end63.i.while.body70.i_crit_edge

if.end63.i.while.body70.i_crit_edge:              ; preds = %if.end63.i
  br label %while.body70.i

if.end63.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

while.body70.i:                                   ; preds = %if.end81.i.while.body70.i_crit_edge, %if.end63.i.while.body70.i_crit_edge
  %firmware.1210.i = phi ptr [ %add.ptr.i75, %if.end81.i.while.body70.i_crit_edge ], [ %firmware.0215.i, %if.end63.i.while.body70.i_crit_edge ]
  %size.1209.i = phi i32 [ %sub82.i, %if.end81.i.while.body70.i_crit_edge ], [ %size.0214.i, %if.end63.i.while.body70.i_crit_edge ]
  %req_size.1208.i = phi i32 [ %sub83.i, %if.end81.i.while.body70.i_crit_edge ], [ %113, %if.end63.i.while.body70.i_crit_edge ]
  %114 = call i32 @llvm.umin.i32(i32 %req_size.1208.i, i32 512) #11
  %115 = call ptr @memcpy(ptr %call7.i.i.i39, ptr %firmware.1210.i, i32 %114)
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %118 = ptrtoint ptr %ioport.i47 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ioport.i47, align 4
  %add77.i = add nuw nsw i32 %114, 31
  %div167.i = and i32 %add77.i, 2016
  %call78.i = call i32 @sdio_writesb(ptr noundef %117, i32 noundef %119, ptr noundef nonnull %call7.i.i.i39, i32 noundef %div167.i) #11
  %120 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call78.i, ptr %ret.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %while.body70.i.out.i78_crit_edge

while.body70.i.out.i78_crit_edge:                 ; preds = %while.body70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i78

if.end81.i:                                       ; preds = %while.body70.i
  %add.ptr.i75 = getelementptr i8, ptr %firmware.1210.i, i32 %114
  %sub82.i = sub i32 %size.1209.i, %114
  %sub83.i = sub i32 %req_size.1208.i, %114
  %tobool69.not.i = icmp eq i32 %sub83.i, 0
  br i1 %tobool69.not.i, label %if.end81.i.while.cond.loopexit.i_crit_edge, label %if.end81.i.while.body70.i_crit_edge

if.end81.i.while.body70.i_crit_edge:              ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body70.i

if.end81.i.while.cond.loopexit.i_crit_edge:       ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit.i

while.end85.i:                                    ; preds = %while.cond.loopexit.i.while.end85.i_crit_edge, %if.end5.i45.while.end85.i_crit_edge
  %121 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %ret.i38, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %122 = load i32, ptr @lbs_debug, align 4
  %and87.i = and i32 %122, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %cmp88.not.i = icmp eq i32 %and87.i, 0
  br i1 %cmp88.not.i, label %while.end85.i.do.end98.i_crit_edge, label %do.end93.i

while.end85.i.do.end98.i_crit_edge:               ; preds = %while.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98.i

do.end93.i:                                       ; preds = %while.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #14
  br label %do.end98.i

do.end98.i:                                       ; preds = %do.end93.i, %while.end85.i.do.end98.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %add99.i = add i32 %123, 100
  %scratch_reg.i.i = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i168.i) #11
  %124 = ptrtoint ptr %ret.i168.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %ret.i168.i, align 4, !annotation !296
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %127 = ptrtoint ptr %scratch_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %scratch_reg.i.i, align 4
  %call.i169216.i = call zeroext i8 @sdio_readb(ptr noundef %126, i32 noundef %128, ptr noundef nonnull %ret.i168.i) #11
  %129 = ptrtoint ptr %ret.i168.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ret.i168.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i170217.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i170217.i, label %do.end98.i.if_sdio_read_scratch.exit.i_crit_edge, label %do.end98.i.if_sdio_read_scratch.exit.thread.i_crit_edge

do.end98.i.if_sdio_read_scratch.exit.thread.i_crit_edge: ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_read_scratch.exit.thread.i

do.end98.i.if_sdio_read_scratch.exit.i_crit_edge: ; preds = %do.end98.i
  br label %if_sdio_read_scratch.exit.i

if_sdio_read_scratch.exit.thread.i:               ; preds = %cleanup.i77.if_sdio_read_scratch.exit.thread.i_crit_edge, %do.end98.i.if_sdio_read_scratch.exit.thread.i_crit_edge
  %.lcssa.i = phi i32 [ %130, %do.end98.i.if_sdio_read_scratch.exit.thread.i_crit_edge ], [ %146, %cleanup.i77.if_sdio_read_scratch.exit.thread.i_crit_edge ]
  %131 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %.lcssa.i, ptr %ret.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i168.i) #11
  br label %out.i78

if_sdio_read_scratch.exit.i:                      ; preds = %cleanup.i77.if_sdio_read_scratch.exit.i_crit_edge, %do.end98.i.if_sdio_read_scratch.exit.i_crit_edge
  %call.i169218.i = phi i8 [ %call.i169.i, %cleanup.i77.if_sdio_read_scratch.exit.i_crit_edge ], [ %call.i169216.i, %do.end98.i.if_sdio_read_scratch.exit.i_crit_edge ]
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %134 = ptrtoint ptr %scratch_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %scratch_reg.i.i, align 4
  %add.i171.i = add i32 %135, 1
  %call3.i.i = call zeroext i8 @sdio_readb(ptr noundef %133, i32 noundef %add.i171.i, ptr noundef nonnull %ret.i168.i) #11
  %136 = ptrtoint ptr %ret.i168.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %.pr.i76 = load i32, ptr %ret.i168.i, align 4
  %137 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %.pr.i76, ptr %ret.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i76)
  %tobool10.not.i.i = icmp eq i32 %.pr.i76, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i168.i) #11
  br i1 %tobool10.not.i.i, label %if.end105.i, label %if_sdio_read_scratch.exit.i.out.i78_crit_edge

if_sdio_read_scratch.exit.i.out.i78_crit_edge:    ; preds = %if_sdio_read_scratch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i78

if.end105.i:                                      ; preds = %if_sdio_read_scratch.exit.i
  %conv4.i.i = zext i8 %call3.i.i to i16
  %shl.i.i = shl nuw i16 %conv4.i.i, 8
  %conv.i.i = zext i8 %call.i169218.i to i16
  %or.i.i = or i16 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -292, i16 %or.i.i)
  %cmp107.i = icmp eq i16 %or.i.i, -292
  br i1 %cmp107.i, label %while.end116.i, label %if.end110.i

if.end110.i:                                      ; preds = %if.end105.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %sub111.i = sub i32 %add99.i, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub111.i)
  %cmp112.i = icmp slt i32 %sub111.i, 0
  br i1 %cmp112.i, label %if.then114.i, label %cleanup.i77

if.then114.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -110, ptr %ret.i38, align 4
  br label %out.i78

cleanup.i77:                                      ; preds = %if.end110.i
  call void @msleep(i32 noundef 10) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i168.i) #11
  %140 = ptrtoint ptr %ret.i168.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %ret.i168.i, align 4, !annotation !296
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %143 = ptrtoint ptr %scratch_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %scratch_reg.i.i, align 4
  %call.i169.i = call zeroext i8 @sdio_readb(ptr noundef %142, i32 noundef %144, ptr noundef nonnull %ret.i168.i) #11
  %145 = ptrtoint ptr %ret.i168.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ret.i168.i, align 4
  %tobool.not.i170.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i170.i, label %cleanup.i77.if_sdio_read_scratch.exit.i_crit_edge, label %cleanup.i77.if_sdio_read_scratch.exit.thread.i_crit_edge

cleanup.i77.if_sdio_read_scratch.exit.thread.i_crit_edge: ; preds = %cleanup.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_read_scratch.exit.thread.i

cleanup.i77.if_sdio_read_scratch.exit.i_crit_edge: ; preds = %cleanup.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_read_scratch.exit.i

while.end116.i:                                   ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %ret.i38, align 4
  br label %out.i78

out.i78:                                          ; preds = %while.end116.i, %if.then114.i, %if_sdio_read_scratch.exit.i.out.i78_crit_edge, %if_sdio_read_scratch.exit.thread.i, %while.body70.i.out.i78_crit_edge, %do.end62.i, %do.end45.i, %if.then33.i, %if.end18.i.out.i78_crit_edge, %if.end13.i.out.i78_crit_edge, %if_sdio_wait_status.exit.thread.i63, %if.end.i44.out.i78_crit_edge
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %149) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i39) #11
  %150 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pr182.i = load i32, ptr %ret.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr182.i)
  %tobool118.not.i = icmp eq i32 %.pr182.i, 0
  br i1 %tobool118.not.i, label %if_sdio_prog_real.exit.thread, label %out.i78.if_sdio_prog_real.exit_crit_edge

out.i78.if_sdio_prog_real.exit_crit_edge:         ; preds = %out.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_prog_real.exit

if_sdio_prog_real.exit.thread:                    ; preds = %out.i78
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i38) #11
  br label %do.body20

if_sdio_prog_real.exit:                           ; preds = %out.i78.if_sdio_prog_real.exit_crit_edge, %out.thread.i41
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #14
  %151 = ptrtoint ptr %ret.i38 to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pr80 = load i32, ptr %ret.i38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr80)
  %tobool17.not = icmp eq i32 %.pr80, 0
  br i1 %tobool17.not, label %if_sdio_prog_real.exit.do.body20_crit_edge, label %if_sdio_prog_real.exit.cleanup_crit_edge

if_sdio_prog_real.exit.cleanup_crit_edge:         ; preds = %if_sdio_prog_real.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if_sdio_prog_real.exit.do.body20_crit_edge:       ; preds = %if_sdio_prog_real.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body20

do.body20:                                        ; preds = %if_sdio_prog_real.exit.do.body20_crit_edge, %if_sdio_prog_real.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %152 = load i32, ptr @lbs_debug, align 4
  %and21 = and i32 %152, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %do.body20.do.end31_crit_edge, label %do.end26

do.body20.do.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end26:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body20.do.end31_crit_edge
  call fastcc void @if_sdio_finish_power_on(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if_sdio_prog_real.exit.cleanup_crit_edge, %if_sdio_prog_helper.exit.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_sdio_interrupt(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  %ret.i = alloca i32, align 4
  %ret.i179.i = alloca i32, align 4
  %ret.i.i.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #11
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !296
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call2 = call zeroext i8 @sdio_readb(ptr noundef %4, i32 noundef 5, ptr noundef nonnull %ret) #11
  %5 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %tobool3.not = icmp eq i8 %call2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %7 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %.pre = zext i8 %call2 to i32
  br i1 %cmp.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %.pre) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %neg = xor i8 %call2, -1
  call void @sdio_writeb(ptr noundef %9, i8 noundef zeroext %neg, i32 noundef 5, ptr noundef nonnull %ret) #11
  %10 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  br i1 %tobool13.not, label %if.end15, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %priv = getelementptr inbounds %struct.if_sdio_card, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %is_activity_detected = getelementptr inbounds %struct.lbs_private, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %is_activity_detected to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %is_activity_detected, align 4
  %and17 = and i32 %.pre, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end21_crit_edge, label %if.then19

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  call void @lbs_host_to_card_done(ptr noundef %16) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %and23 = and i32 %.pre, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.then25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i) #11
  %17 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ret.i.i, align 4, !annotation !296
  %model.i.i = getelementptr inbounds %struct.if_sdio_card, ptr %2, i32 0, i32 2
  %18 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %model.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %19, label %sw.default.i.i [
    i32 4, label %if.then25.sw.bb.i.i_crit_edge
    i32 11, label %if.then25.sw.bb.i.i_crit_edge85
  ]

if.then25.sw.bb.i.i_crit_edge85:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

if.then25.sw.bb.i.i_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.then25.sw.bb.i.i_crit_edge, %if.then25.sw.bb.i.i_crit_edge85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i.i.i) #11
  %21 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %ret.i.i.i, align 4, !annotation !296
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %scratch_reg.i.i.i = getelementptr inbounds %struct.if_sdio_card, ptr %2, i32 0, i32 4
  %24 = ptrtoint ptr %scratch_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scratch_reg.i.i.i, align 4
  %call.i.i.i = call zeroext i8 @sdio_readb(ptr noundef %23, i32 noundef %25, ptr noundef nonnull %ret.i.i.i) #11
  %26 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %if_sdio_read_rx_len.exit.i, label %if_sdio_read_rx_len.exit.i.thread71

if_sdio_read_rx_len.exit.i.thread71:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  br label %do.end144.i

sw.default.i.i:                                   ; preds = %if.then25
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %call2.i.i = call zeroext i8 @sdio_readb(ptr noundef %29, i32 noundef 66, ptr noundef nonnull %ret.i.i) #11
  %30 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ret.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if_sdio_read_rx_len.exit.i.thread, label %if_sdio_read_rx_len.exit.thread.i

if_sdio_read_rx_len.exit.thread.i:                ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  br label %do.end144.i

if_sdio_read_rx_len.exit.i.thread:                ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %rx_unit.i.i = getelementptr inbounds %struct.if_sdio_card, ptr %2, i32 0, i32 12
  %32 = ptrtoint ptr %rx_unit.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rx_unit.i.i, align 4
  %conv3.i.i = zext i8 %33 to i32
  %conv4.i.i = zext i8 %call2.i.i to i32
  %shl.i.i = shl i32 %conv4.i.i, %conv3.i.i
  %conv5.i.i = trunc i32 %shl.i.i to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  br label %if.end.i

if_sdio_read_rx_len.exit.i:                       ; preds = %sw.bb.i.i
  %conv.i.i.i = zext i8 %call.i.i.i to i16
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %36 = ptrtoint ptr %scratch_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scratch_reg.i.i.i, align 4
  %add.i.i.i = add i32 %37, 1
  %call3.i.i.i = call zeroext i8 @sdio_readb(ptr noundef %35, i32 noundef %add.i.i.i, ptr noundef nonnull %ret.i.i.i) #11
  %conv4.i.i.i = zext i8 %call3.i.i.i to i16
  %shl.i.i.i = shl nuw i16 %conv4.i.i.i, 8
  %or.i.i.i = or i16 %shl.i.i.i, %conv.i.i.i
  %38 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %ret.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not.i.i.i = icmp eq i32 %.pr, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i.i) #11
  br i1 %tobool10.not.i.i.i, label %if_sdio_read_rx_len.exit.i.if.end.i_crit_edge, label %if_sdio_read_rx_len.exit.i.do.end144.i_crit_edge

if_sdio_read_rx_len.exit.i.do.end144.i_crit_edge: ; preds = %if_sdio_read_rx_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

if_sdio_read_rx_len.exit.i.if.end.i_crit_edge:    ; preds = %if_sdio_read_rx_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if_sdio_read_rx_len.exit.i.if.end.i_crit_edge, %if_sdio_read_rx_len.exit.i.thread
  %rx_len.0.i.i70 = phi i16 [ %conv5.i.i, %if_sdio_read_rx_len.exit.i.thread ], [ %or.i.i.i, %if_sdio_read_rx_len.exit.i.if.end.i_crit_edge ]
  %conv.i = zext i16 %rx_len.0.i.i70 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %rx_len.0.i.i70)
  %cmp.i = icmp ult i16 %rx_len.0.i.i70, 4
  br i1 %cmp.i, label %do.body.i, label %if.end12.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %39 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %39, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp3.not.i, label %do.body.i.do.end144.i_crit_edge, label %do.end.i

do.body.i.do.end144.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv.i) #14
  br label %do.end144.i

if.end12.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i179.i) #11
  %40 = ptrtoint ptr %ret.i179.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ret.i179.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %41, 100
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %2, align 4
  %call14.i.i = call zeroext i8 @sdio_readb(ptr noundef %43, i32 noundef 32, ptr noundef nonnull %ret.i179.i) #11
  %44 = ptrtoint ptr %ret.i179.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ret.i179.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not15.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not15.i.i, label %if.end12.i.if.end.i.i_crit_edge, label %if.end12.i.if_sdio_wait_status.exit.thread.i_crit_edge

if.end12.i.if_sdio_wait_status.exit.thread.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i

if.end12.i.if.end.i.i_crit_edge:                  ; preds = %if.end12.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end9.i.i.if.end.i.i_crit_edge, %if.end12.i.if.end.i.i_crit_edge
  %call16.i.i = phi i8 [ %call.i.i, %if.end9.i.i.if.end.i.i_crit_edge ], [ %call14.i.i, %if.end12.i.if.end.i.i_crit_edge ]
  %and13.i.i = and i8 %call16.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and13.i.i)
  %cmp.i.not.i = icmp eq i8 %and13.i.i, 0
  br i1 %cmp.i.not.i, label %if.end5.i.i, label %if.end16.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp6.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp6.i.i, label %if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge, label %if.end9.i.i

if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #11
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %call.i.i = call zeroext i8 @sdio_readb(ptr noundef %49, i32 noundef 32, ptr noundef nonnull %ret.i179.i) #11
  %50 = ptrtoint ptr %ret.i179.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ret.i179.i, align 4
  %tobool.not.i180.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i180.i, label %if.end9.i.i.if.end.i.i_crit_edge, label %if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge

if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if_sdio_wait_status.exit.thread.i

if.end9.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if_sdio_wait_status.exit.thread.i:                ; preds = %if.end9.i.i.if_sdio_wait_status.exit.thread.i_crit_edge, %if.end5.i.i.if_sdio_wait_status.exit.thread.i_crit_edge, %if.end12.i.if_sdio_wait_status.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i179.i) #11
  br label %do.end144.i

if.end16.i:                                       ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i179.i) #11
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %2, align 4
  %call18.i = call i32 @sdio_align_size(ptr noundef %53, i32 noundef %conv.i) #11
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %2, align 4
  %buffer.i = getelementptr inbounds %struct.if_sdio_card, ptr %2, i32 0, i32 7
  %ioport.i = getelementptr inbounds %struct.if_sdio_card, ptr %2, i32 0, i32 3
  %56 = ptrtoint ptr %ioport.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ioport.i, align 4
  %conv21.i = and i32 %call18.i, 65535
  %call22.i = call i32 @sdio_readsb(ptr noundef %55, ptr noundef %buffer.i, i32 noundef %57, i32 noundef %conv21.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end16.i.do.end144.i_crit_edge

if.end16.i.do.end144.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

if.end25.i:                                       ; preds = %if.end16.i
  %58 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buffer.i, align 4
  %conv27.i = zext i8 %59 to i16
  %arrayidx29.i = getelementptr %struct.if_sdio_card, ptr %2, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %61 to i16
  %shl.i = shl nuw i16 %conv30.i, 8
  %or.i = or i16 %shl.i, %conv27.i
  %arrayidx33.i = getelementptr %struct.if_sdio_card, ptr %2, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx33.i, align 2
  %conv34.i = zext i8 %63 to i16
  %arrayidx36.i = getelementptr %struct.if_sdio_card, ptr %2, i32 0, i32 7, i32 3
  %64 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %65 to i16
  %shl38.i = shl nuw i16 %conv37.i, 8
  %or39.i = or i16 %shl38.i, %conv34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %66 = load i32, ptr @lbs_debug, align 4
  %and42.i = and i32 %66, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %cmp43.not.i = icmp eq i32 %and42.i, 0
  br i1 %cmp43.not.i, label %if.end25.do.end55_crit_edge.i, label %do.end48.i

if.end25.do.end55_crit_edge.i:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i = zext i16 %or.i to i32
  br label %do.end55.i

do.end48.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv50.i = zext i16 %or39.i to i32
  %conv51.i = zext i16 %or.i to i32
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv50.i, i32 noundef %conv51.i) #14
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end48.i, %if.end25.do.end55_crit_edge.i
  %conv56.pre-phi.i = phi i32 [ %.pre.i, %if.end25.do.end55_crit_edge.i ], [ %conv51.i, %do.end48.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %rx_len.0.i.i70)
  %cmp58.i = icmp ugt i16 %or.i, %rx_len.0.i.i70
  br i1 %cmp58.i, label %do.body61.i, label %if.end76.i

do.body61.i:                                      ; preds = %do.end55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %67 = load i32, ptr @lbs_debug, align 4
  %and62.i = and i32 %67, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %cmp63.not.i = icmp eq i32 %and62.i, 0
  br i1 %cmp63.not.i, label %do.body61.i.do.end144.i_crit_edge, label %do.end68.i

do.body61.i.do.end144.i_crit_edge:                ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

do.end68.i:                                       ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #13
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv56.pre-phi.i, i32 noundef %conv.i) #14
  br label %do.end144.i

if.end76.i:                                       ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %rx_len.0.i.i70)
  %cmp79.i = icmp ult i16 %or.i, %rx_len.0.i.i70
  br i1 %cmp79.i, label %do.body82.i, label %if.end76.i.if.end97.i_crit_edge

if.end76.i.if.end97.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.i

do.body82.i:                                      ; preds = %if.end76.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %68 = load i32, ptr @lbs_debug, align 4
  %and83.i = and i32 %68, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %cmp84.not.i = icmp eq i32 %and83.i, 0
  br i1 %cmp84.not.i, label %do.body82.i.if.end97.i_crit_edge, label %do.end89.i

do.body82.i.if.end97.i_crit_edge:                 ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97.i

do.end89.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #13
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %conv56.pre-phi.i, i32 noundef %conv.i) #14
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.end89.i, %do.body82.i.if.end97.i_crit_edge, %if.end76.i.if.end97.i_crit_edge
  %conv98.i = zext i16 %or39.i to i32
  %69 = zext i16 %or39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.134)
  switch i16 %or39.i, label %do.body126.i [
    i16 1, label %sw.bb.i
    i16 0, label %sw.bb106.i
    i16 3, label %sw.bb116.i
  ]

sw.bb.i:                                          ; preds = %if.end97.i
  %add.ptr.i = getelementptr %struct.if_sdio_card, ptr %2, i32 0, i32 7, i32 4
  %sub.i = add nsw i32 %conv56.pre-phi.i, -4
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub.i)
  %cmp.i59 = icmp ugt i32 %sub.i, 2048
  br i1 %cmp.i59, label %do.body.i61, label %do.body9.i

do.body.i61:                                      ; preds = %sw.bb.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %72 = load i32, ptr @lbs_debug, align 4
  %and.i60 = and i32 %72, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %cmp2.not.i = icmp eq i32 %and.i60, 0
  br i1 %cmp2.not.i, label %do.body.i61.do.end144.i_crit_edge, label %do.end.i63

do.body.i61.do.end144.i_crit_edge:                ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

do.end.i63:                                       ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #13
  %call.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %sub.i) #14
  br label %do.end144.i

do.body9.i:                                       ; preds = %sw.bb.i
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %71, i32 0, i32 87
  %call13.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #11
  %resp_idx.i = getelementptr inbounds %struct.lbs_private, ptr %71, i32 0, i32 66
  %73 = ptrtoint ptr %resp_idx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %resp_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp19.i = icmp eq i8 %74, 0
  %idxprom.i = zext i1 %cmp19.i to i32
  %arrayidx.i = getelementptr %struct.lbs_private, ptr %71, i32 0, i32 68, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i64 = icmp eq i32 %76, 0
  br i1 %tobool.not.i64, label %do.end34.i, label %do.body26.i, !prof !300

do.body26.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/if_sdio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 220, 0\0A.popsection", ""() #11, !srcloc !301
  unreachable

do.end34.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv21.i65 = zext i1 %cmp19.i to i8
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %arrayidx39.i = getelementptr %struct.lbs_private, ptr %71, i32 0, i32 67, i32 %idxprom.i
  %78 = call ptr @memcpy(ptr %arrayidx39.i, ptr %add.ptr.i, i32 %sub.i)
  call void @lbs_notify_command_response(ptr noundef %71, i8 noundef zeroext %conv21.i65) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call13.i) #11
  br label %cleanup

sw.bb106.i:                                       ; preds = %if.end97.i
  %add.ptr109.i = getelementptr %struct.if_sdio_card, ptr %2, i32 0, i32 7, i32 4
  %sub111.i = add nsw i32 %conv56.pre-phi.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1578, i32 %sub111.i)
  %cmp.i48 = icmp ugt i32 %sub111.i, 1578
  br i1 %cmp.i48, label %do.body.i50, label %if.end6.i

do.body.i50:                                      ; preds = %sw.bb106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %79 = load i32, ptr @lbs_debug, align 4
  %and.i49 = and i32 %79, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %cmp1.not.i = icmp eq i32 %and.i49, 0
  br i1 %cmp1.not.i, label %do.body.i50.do.end144.i_crit_edge, label %do.end.i52

do.body.i50.do.end144.i_crit_edge:                ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

do.end.i52:                                       ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #13
  %call.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %sub111.i) #14
  br label %do.end144.i

if.end6.i:                                        ; preds = %sw.bb106.i
  %call.i.i.i53 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1580, i32 noundef 2592) #11
  %tobool.not.i54 = icmp eq ptr %call.i.i.i53, null
  br i1 %tobool.not.i54, label %if.end6.i.do.end144.i_crit_edge, label %if.end9.i

if.end6.i.do.end144.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 19
  %80 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %81, i32 2
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i53, i32 0, i32 16
  %82 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %83, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i.i55 = call ptr @skb_put(ptr noundef nonnull %call.i.i.i53, i32 noundef %sub111.i) #11
  %84 = call ptr @memcpy(ptr %call.i.i55, ptr %add.ptr109.i, i32 %sub111.i)
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 4
  %call11.i = call i32 @lbs_process_rxed_packet(ptr noundef %86, ptr noundef nonnull %call.i.i.i53) #11
  br label %cleanup

sw.bb116.i:                                       ; preds = %if.end97.i
  %add.ptr119.i = getelementptr %struct.if_sdio_card, ptr %2, i32 0, i32 7, i32 4
  %sub121.i = add nsw i32 %conv56.pre-phi.i, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret.i) #11
  %87 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %ret.i, align 4, !annotation !296
  %88 = ptrtoint ptr %model.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %model.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %89)
  %cmp.i41 = icmp eq i32 %89, 4
  br i1 %cmp.i41, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb116.i
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %2, align 4
  %call.i = call zeroext i8 @sdio_readb(ptr noundef %91, i32 noundef 33020, ptr noundef nonnull %ret.i) #11
  %92 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i42 = icmp eq i32 %93, 0
  br i1 %tobool.not.i42, label %if.end.i43, label %if.then.i.out.i.thread83_crit_edge

if.then.i.out.i.thread83_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.thread83

if.end.i43:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = lshr i8 %call.i, 3
  br label %out.i

if.else.i:                                        ; preds = %sw.bb116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub121.i)
  %cmp2.i = icmp ult i32 %sub121.i, 4
  br i1 %cmp2.i, label %do.body.i45, label %if.end13.i

do.body.i45:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %95 = load i32, ptr @lbs_debug, align 4
  %and.i44 = and i32 %95, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %cmp5.not.i = icmp eq i32 %and.i44, 0
  br i1 %cmp5.not.i, label %do.body.i45.out.i.thread83_crit_edge, label %do.end.i46

do.body.i45.out.i.thread83_crit_edge:             ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.thread83

do.end.i46:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %sub121.i) #14
  br label %out.i.thread83

if.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %add.ptr119.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr119.i, align 1
  br label %out.i

do.body126.i:                                     ; preds = %if.end97.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %98 = load i32, ptr @lbs_debug, align 4
  %and127.i = and i32 %98, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %cmp128.not.i = icmp eq i32 %and127.i, 0
  br i1 %cmp128.not.i, label %do.body126.i.do.end144.i_crit_edge, label %do.end133.i

do.body126.i.do.end144.i_crit_edge:               ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end144.i

do.end133.i:                                      ; preds = %do.body126.i
  call void @__sanitizer_cov_trace_pc() #13
  %call136.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv98.i) #14
  br label %do.end144.i

out.i.thread83:                                   ; preds = %do.end.i46, %do.body.i45.out.i.thread83_crit_edge, %if.then.i.out.i.thread83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  br label %do.end144.i

out.i:                                            ; preds = %if.end13.i, %if.end.i43
  %event.0.in.i = phi i8 [ %94, %if.end.i43 ], [ %97, %if.end13.i ]
  %event.0.i = zext i8 %event.0.in.i to i32
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 4
  call void @lbs_queue_event(ptr noundef %100, i32 noundef %event.0.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret.i) #11
  br label %cleanup

do.end144.i:                                      ; preds = %out.i.thread83, %do.end133.i, %do.body126.i.do.end144.i_crit_edge, %if.end6.i.do.end144.i_crit_edge, %do.end.i52, %do.body.i50.do.end144.i_crit_edge, %do.end.i63, %do.body.i61.do.end144.i_crit_edge, %do.end68.i, %do.body61.i.do.end144.i_crit_edge, %if.end16.i.do.end144.i_crit_edge, %if_sdio_wait_status.exit.thread.i, %do.end.i, %do.body.i.do.end144.i_crit_edge, %if_sdio_read_rx_len.exit.i.do.end144.i_crit_edge, %if_sdio_read_rx_len.exit.thread.i, %if_sdio_read_rx_len.exit.i.thread71
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end144.i, %out.i, %if.end9.i, %do.end34.i, %if.end21.cleanup_crit_edge, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_start_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_host_to_card_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_notify_command_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_process_rxed_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_queue_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_stop_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv2 = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %call3 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %add.ptr) #11
  %power_up_on_resume = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %power_up_on_resume to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %power_up_on_resume, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i.i, align 4
  %mesh_dev.i = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %mesh_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mesh_dev.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.lbs_iface_active.exit_crit_edge, label %if.then.i

entry.lbs_iface_active.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lbs_iface_active.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %state.i8.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i8.i, align 4
  %13 = or i32 %12, %8
  br label %lbs_iface_active.exit

lbs_iface_active.exit:                            ; preds = %if.then.i, %entry.lbs_iface_active.exit_crit_edge
  %r.0.in.in.in.i = phi i32 [ %13, %if.then.i ], [ %8, %entry.lbs_iface_active.exit_crit_edge ]
  %r.0.in.in.i = and i32 %r.0.in.in.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.in.in.i)
  %tobool.not = icmp eq i32 %r.0.in.in.i, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %lbs_iface_active.exit
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 42
  %14 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fw_ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %power_up_on_resume to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %power_up_on_resume, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv2, align 4
  %fw_ready.i = getelementptr inbounds %struct.lbs_private, ptr %20, i32 0, i32 42
  %21 = ptrtoint ptr %fw_ready.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %fw_ready.i, align 2
  tail call void @sdio_claim_host(ptr noundef %18) #11
  %call.i = tail call i32 @sdio_release_irq(ptr noundef %18) #11
  %call3.i = tail call i32 @sdio_disable_func(ptr noundef %18) #11
  tail call void @sdio_release_host(ptr noundef %18) #11
  br label %cleanup

do.end:                                           ; preds = %lbs_iface_active.exit
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i72 = icmp eq ptr %23, null
  br i1 %tobool.not.i72, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.113, ptr noundef %retval.0.i, i32 noundef %call3) #14
  %wol_criteria = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 77
  %26 = ptrtoint ptr %wol_criteria to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wol_criteria, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp = icmp eq i32 %27, -1
  br i1 %cmp, label %do.end15, label %if.end26

do.end15:                                         ; preds = %dev_name.exit
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.118) #14
  %fw_ready16 = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 42
  %28 = ptrtoint ptr %fw_ready16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fw_ready16, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool17.not = icmp eq i8 %29, 0
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.then18

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then18:                                        ; preds = %do.end15
  %call19 = tail call i32 @lbs_suspend(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %power_up_on_resume to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %power_up_on_resume, align 1
  tail call fastcc void @if_sdio_power_off(ptr noundef %1)
  br label %cleanup

if.end26:                                         ; preds = %dev_name.exit
  %and = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end26
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i74 = icmp eq ptr %32, null
  br i1 %tobool.not.i74, label %if.end.i75, label %do.end31.dev_name.exit77_crit_edge

do.end31.dev_name.exit77_crit_edge:               ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit77

if.end.i75:                                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  br label %dev_name.exit77

dev_name.exit77:                                  ; preds = %if.end.i75, %do.end31.dev_name.exit77_crit_edge
  %retval.0.i76 = phi ptr [ %34, %if.end.i75 ], [ %32, %do.end31.dev_name.exit77_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.121, ptr noundef %retval.0.i76) #14
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %call35 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @lbs_suspend(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %add.ptr, i32 noundef 2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %dev_name.exit77, %if.end22, %if.then18.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ -38, %dev_name.exit77 ], [ 0, %if.then6 ], [ 0, %if.then.cleanup_crit_edge ], [ %call19, %if.then18.cleanup_crit_edge ], [ 0, %if.end22 ], [ 0, %do.end15.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_sdio_resume(ptr noundef %dev) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.124, ptr noundef %retval.0.i) #14
  %priv = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %power_up_on_resume = getelementptr inbounds %struct.lbs_private, ptr %7, i32 0, i32 45
  %8 = ptrtoint ptr %power_up_on_resume to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %power_up_on_resume, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %dev_name.exit.if.end25_crit_edge, label %if.then

dev_name.exit.if.end25_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then:                                          ; preds = %dev_name.exit
  %call4 = tail call fastcc i32 @if_sdio_power_on(ptr noundef %1)
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1359) #11
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %11, i32 0, i32 42
  %12 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fw_ready, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %pwron_waitq = getelementptr inbounds %struct.if_sdio_card, ptr %1, i32 0, i32 6
  %call1541 = call i32 @prepare_to_wait_event(ptr noundef %pwron_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %fw_ready1742 = getelementptr inbounds %struct.lbs_private, ptr %16, i32 0, i32 42
  %17 = ptrtoint ptr %fw_ready1742 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fw_ready1742, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not43 = icmp eq i8 %18, 0
  br i1 %tobool18.not43, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #11
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %pwron_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %fw_ready17 = getelementptr inbounds %struct.lbs_private, ptr %20, i32 0, i32 42
  %21 = ptrtoint ptr %fw_ready17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fw_ready17, align 2
  %tobool18.not = icmp eq i8 %22, 0
  br i1 %tobool18.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %pwron_waitq, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.then.if.end25_crit_edge, %dev_name.exit.if.end25_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %call27 = call i32 @lbs_resume(ptr noundef %24) #11
  ret i32 %call27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !44, !46, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !259, !260, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286}
!llvm.module.flags = !{!287, !288, !289, !290, !291, !292, !293, !294}
!llvm.ident = !{!295}

!0 = !{ptr @__UNIQUE_ID_firmware367, !1, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 88, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware368, !3, !"__UNIQUE_ID_firmware368", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 89, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware369, !5, !"__UNIQUE_ID_firmware369", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 90, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware370, !7, !"__UNIQUE_ID_firmware370", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 91, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware371, !9, !"__UNIQUE_ID_firmware371", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 92, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware372, !11, !"__UNIQUE_ID_firmware372", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 93, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware373, !13, !"__UNIQUE_ID_firmware373", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 94, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware374, !15, !"__UNIQUE_ID_firmware374", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 95, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware375, !17, !"__UNIQUE_ID_firmware375", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 96, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware376, !19, !"__UNIQUE_ID_firmware376", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 97, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware377, !21, !"__UNIQUE_ID_firmware377", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 98, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware378, !23, !"__UNIQUE_ID_firmware378", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 99, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware379, !25, !"__UNIQUE_ID_firmware379", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 100, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware380, !27, !"__UNIQUE_ID_firmware380", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 101, i32 1}
!28 = !{ptr @__initcall__kmod_libertas_sdio__385_1411_if_sdio_init_module6, !29, !"__initcall__kmod_libertas_sdio__385_1411_if_sdio_init_module6", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1411, i32 1}
!30 = !{ptr @__exitcall_if_sdio_exit_module, !31, !"__exitcall_if_sdio_exit_module", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1412, i32 1}
!32 = !{ptr @__UNIQUE_ID_description386, !33, !"__UNIQUE_ID_description386", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1414, i32 1}
!34 = !{ptr @__UNIQUE_ID_author387, !35, !"__UNIQUE_ID_author387", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1415, i32 1}
!36 = !{ptr @__UNIQUE_ID_file388, !37, !"__UNIQUE_ID_file388", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1416, i32 1}
!38 = !{ptr @__UNIQUE_ID_license389, !37, !"__UNIQUE_ID_license389", i1 false, i1 false}
!39 = distinct !{null, !40, !"user_rmmod", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 62, i32 11}
!41 = !{ptr @.str, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1050, i32 8}
!43 = !{ptr @card_reset_work, !42, !"card_reset_work", i1 false, i1 false}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1046, i32 2}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @if_sdio_reset_card_worker._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @if_sdio_reset_card_worker._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @reset_host, !51, !"reset_host", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1032, i32 25}
!52 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1373, i32 11}
!54 = !{ptr @if_sdio_driver, !55, !"if_sdio_driver", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1372, i32 27}
!56 = !{ptr @if_sdio_ids, !57, !"if_sdio_ids", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 64, i32 36}
!58 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1144, i32 5}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1147, i32 5}
!62 = !{ptr @.str.7, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1149, i32 36}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1156, i32 3}
!66 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @if_sdio_probe._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @if_sdio_probe._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @if_sdio_probe.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1180, i32 2}
!71 = !{ptr @.str.10, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @if_sdio_probe.__key.11, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1186, i32 2}
!74 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @if_sdio_probe.__key.13, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1187, i32 2}
!77 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1195, i32 3}
!80 = !{ptr @if_sdio_probe._entry.15, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @if_sdio_probe._entry_ptr.17, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1202, i32 2}
!84 = !{ptr @if_sdio_probe._entry.18, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @if_sdio_probe._entry_ptr.20, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 424, i32 4}
!88 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @if_sdio_host_to_card_worker._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @if_sdio_host_to_card_worker._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 79, i32 16}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 79, i32 46}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 80, i32 16}
!97 = !{ptr @.str.26, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 80, i32 37}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 81, i32 16}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 81, i32 49}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 82, i32 16}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 82, i32 49}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 83, i32 16}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 83, i32 37}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 84, i32 16}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 84, i32 46}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 85, i32 16}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 85, i32 37}
!119 = !{ptr @fw_table, !120, !"fw_table", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 78, i32 34}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 969, i32 3}
!123 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @if_sdio_host_to_card._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @if_sdio_host_to_card._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 989, i32 2}
!128 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @if_sdio_enter_deep_sleep._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @if_sdio_enter_deep_sleep._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 993, i32 25}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1008, i32 25}
!135 = !{ptr @.str.43, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 707, i32 2}
!137 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @if_sdio_prog_firmware._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @if_sdio_prog_firmware._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 708, i32 2}
!142 = !{ptr @if_sdio_prog_firmware._entry.45, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @if_sdio_prog_firmware._entry_ptr.47, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 725, i32 3}
!146 = !{ptr @if_sdio_prog_firmware._entry.48, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @if_sdio_prog_firmware._entry_ptr.50, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 729, i32 3}
!150 = !{ptr @if_sdio_prog_firmware._entry.51, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @if_sdio_prog_firmware._entry_ptr.53, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 802, i32 3}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @if_sdio_finish_power_on._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @if_sdio_finish_power_on._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 805, i32 28}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1111, i32 2}
!161 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @if_sdio_interrupt._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @if_sdio_interrupt._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 327, i32 3}
!166 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @if_sdio_card_to_host._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @if_sdio_card_to_host._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 351, i32 2}
!171 = !{ptr @if_sdio_card_to_host._entry.61, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @if_sdio_card_to_host._entry_ptr.63, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 355, i32 3}
!175 = !{ptr @if_sdio_card_to_host._entry.64, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @if_sdio_card_to_host._entry_ptr.66, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 362, i32 3}
!179 = !{ptr @if_sdio_card_to_host._entry.67, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @if_sdio_card_to_host._entry_ptr.69, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 383, i32 3}
!183 = !{ptr @if_sdio_card_to_host._entry.70, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @if_sdio_card_to_host._entry_ptr.72, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.74, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 391, i32 3}
!187 = !{ptr @if_sdio_card_to_host._entry.73, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @if_sdio_card_to_host._entry_ptr.75, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.76, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 211, i32 3}
!191 = !{ptr @.str.77, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @if_sdio_handle_cmd._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @if_sdio_handle_cmd._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 240, i32 3}
!196 = !{ptr @if_sdio_handle_data._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @if_sdio_handle_data._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.79, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 279, i32 4}
!200 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @if_sdio_handle_event._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @if_sdio_handle_event._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 673, i32 3}
!205 = !{ptr @.str.82, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @if_sdio_do_prog_firmware._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @if_sdio_do_prog_firmware._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.84, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 681, i32 2}
!210 = !{ptr @if_sdio_do_prog_firmware._entry.83, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @if_sdio_do_prog_firmware._entry_ptr.85, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 687, i32 2}
!214 = !{ptr @if_sdio_do_prog_firmware._entry.86, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @if_sdio_do_prog_firmware._entry_ptr.88, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 495, i32 2}
!218 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @if_sdio_prog_helper._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @if_sdio_prog_helper._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 529, i32 3}
!223 = !{ptr @if_sdio_prog_helper._entry.91, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @if_sdio_prog_helper._entry_ptr.93, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.94, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 596, i32 4}
!227 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @if_sdio_prog_real._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @if_sdio_prog_real._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 602, i32 4}
!232 = !{ptr @if_sdio_prog_real._entry.96, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @if_sdio_prog_real._entry_ptr.98, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.100, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 631, i32 2}
!236 = !{ptr @if_sdio_prog_real._entry.99, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @if_sdio_prog_real._entry_ptr.101, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 661, i32 3}
!240 = !{ptr @if_sdio_prog_real._entry.102, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @if_sdio_prog_real._entry_ptr.104, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1268, i32 3}
!244 = !{ptr @.str.106, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @if_sdio_remove._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @if_sdio_remove._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1272, i32 4}
!249 = !{ptr @if_sdio_remove._entry.107, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @if_sdio_remove._entry_ptr.109, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.111, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1276, i32 2}
!253 = !{ptr @if_sdio_remove._entry.110, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @if_sdio_remove._entry_ptr.112, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @if_sdio_pm_ops, !256, !"if_sdio_pm_ops", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1367, i32 32}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1312, i32 2}
!259 = !{ptr @.str.114, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.115, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @if_sdio_suspend._entry, !258, !"_entry", i1 false, i1 false}
!263 = !{ptr @if_sdio_suspend._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.118, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1319, i32 3}
!266 = !{ptr @if_sdio_suspend._entry.117, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @if_sdio_suspend._entry_ptr.119, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1333, i32 3}
!270 = !{ptr @.str.122, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @if_sdio_suspend._entry.120, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @if_sdio_suspend._entry_ptr.123, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.124, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1355, i32 2}
!275 = !{ptr @.str.125, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @if_sdio_resume._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @if_sdio_resume._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.126, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1390, i32 2}
!280 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @if_sdio_init_module._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @if_sdio_init_module._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.129, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/marvell/libertas/if_sdio.c", i32 1391, i32 2}
!285 = !{ptr @if_sdio_init_module._entry.128, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @if_sdio_init_module._entry_ptr.130, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{i32 1, !"wchar_size", i32 2}
!288 = !{i32 1, !"min_enum_size", i32 4}
!289 = !{i32 8, !"branch-target-enforcement", i32 0}
!290 = !{i32 8, !"sign-return-address", i32 0}
!291 = !{i32 8, !"sign-return-address-all", i32 0}
!292 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!293 = !{i32 7, !"uwtable", i32 1}
!294 = !{i32 7, !"frame-pointer", i32 2}
!295 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!296 = !{!"auto-init"}
!297 = !{!"branch_weights", i32 1, i32 2000}
!298 = !{i64 2148239787, i64 2148239813, i64 2148239842, i64 2148239876, i64 2148239907, i64 2148239930}
!299 = !{i8 0, i8 2}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{i64 2157473638, i64 2157474150, i64 2157473675, i64 2157473731, i64 2157473765, i64 2157473789, i64 2157473830, i64 2157473851, i64 2157473879, i64 2157473913}
