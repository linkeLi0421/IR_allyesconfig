; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/sdio.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/sdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sdio_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdio_device_id = type { i8, i16, i16, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.99 }
%struct.atomic_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
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
%struct.ath6kl_sdio = type { ptr, %struct.spinlock, %struct.list_head, [64 x %struct.bus_request], ptr, ptr, %struct.mutex, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, i8, i8, ptr, %struct.work_struct, %struct.list_head, %struct.spinlock }
%struct.bus_request = type { %struct.list_head, i32, ptr, i32, i32, ptr, i32, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.132, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.133 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.132 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.129, ptr, ptr, ptr }
%union.anon.129 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.anon.133 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.134, ptr, i32, i8, i8 }
%struct.anon.134 = type { i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.hif_scatter_req = type { %struct.list_head, i32, i32, i32, i8, ptr, i32, i32, ptr, ptr, ptr, i32, [0 x %struct.hif_scatter_item] }
%struct.hif_scatter_item = type { ptr, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.97, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.97 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.htc_target = type { [9 x %struct.htc_endpoint], %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], %struct.anon.131 }
%struct.htc_endpoint = type { i32, i16, %struct.list_head, %struct.list_head, %struct.htc_endpoint_credit_dist, %struct.htc_ep_callbacks, i32, i32, i32, i32, ptr, i8, i32, %struct.htc_endpoint_stats, i16, %struct.anon.130 }
%struct.htc_endpoint_credit_dist = type { %struct.list_head, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.htc_endpoint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.130 = type { i8, i8, %struct.list_head, i8 }
%struct.anon.131 = type { ptr, [256 x i8], i32, i8, [9 x %struct.htc_pipe_txcredit_alloc] }
%struct.htc_pipe_txcredit_alloc = type { i16, i8 }

@ath6kl_sdio_driver = internal global { %struct.sdio_driver, [36 x i8] } { %struct.sdio_driver { ptr @.str, ptr @ath6kl_sdio_devices, ptr @ath6kl_sdio_probe, ptr @ath6kl_sdio_remove, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_sdio_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ath6kl_sdio__393_1447_ath6kl_sdio_init6 = internal global ptr @ath6kl_sdio_init, section ".initcall6.init", align 4
@__exitcall_ath6kl_sdio_exit = internal global ptr @ath6kl_sdio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author394 = internal constant [48 x i8] c"ath6kl_sdio.author=Atheros Communications, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description395 = internal constant [71 x i8] c"ath6kl_sdio.description=Driver support for Atheros AR600x SDIO devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file396 = internal constant [61 x i8] c"ath6kl_sdio.file=drivers/net/wireless/ath/ath6kl/ath6kl_sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license397 = internal constant [33 x i8] c"ath6kl_sdio.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware398 = internal constant [52 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.0/otp.bin.z77\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware399 = internal constant [56 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.0/athwlan.bin.z77\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware400 = internal constant [55 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.0/data.patch.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware401 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.0/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware402 = internal constant [55 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.0/bdata.SD31.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware403 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.1.1/otp.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware404 = internal constant [54 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.1.1/athwlan.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware405 = internal constant [57 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.1.1/data.patch.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware406 = internal constant [52 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.1.1/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware407 = internal constant [57 x i8] c"ath6kl_sdio.firmware=ath6k/AR6003/hw2.1.1/bdata.SD31.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware408 = internal constant [51 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.0/fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware409 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.0/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware410 = internal constant [56 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.0/bdata.DB132.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware411 = internal constant [51 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.1/fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware412 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.1/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware413 = internal constant [56 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.1/bdata.DB132.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware414 = internal constant [51 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.2/fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware415 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.2/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware416 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.2/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware417 = internal constant [51 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.3/fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware418 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.3/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware419 = internal constant [50 x i8] c"ath6kl_sdio.firmware=ath6k/AR6004/hw1.3/bdata.bin\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ath6kl_sdio\00", [20 x i8] zeroinitializer }, align 32
@ath6kl_sdio_devices = internal constant { [8 x %struct.sdio_device_id], [32 x i8] } { [8 x %struct.sdio_device_id] [%struct.sdio_device_id { i8 -1, i16 625, i16 768, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 769, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 1024, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 1025, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 1026, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 1048, i32 0 }, %struct.sdio_device_id { i8 -1, i16 625, i16 1049, i32 0 }, %struct.sdio_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ath6kl_sdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ath6kl_sdio_pm_suspend, ptr @ath6kl_sdio_pm_resume, ptr @ath6kl_sdio_pm_suspend, ptr @ath6kl_sdio_pm_resume, ptr @ath6kl_sdio_pm_suspend, ptr @ath6kl_sdio_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@ath6kl_sdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ar_sdio->lock\00", [17 x i8] zeroinitializer }, align 32
@ath6kl_sdio_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ar_sdio->scat_lock\00", [44 x i8] zeroinitializer }, align 32
@ath6kl_sdio_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ar_sdio->wr_async_lock\00", [40 x i8] zeroinitializer }, align 32
@ath6kl_sdio_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ar_sdio->dma_buffer_mutex\00", [37 x i8] zeroinitializer }, align 32
@ath6kl_sdio_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&ar_sdio->wr_async_work)\00", [53 x i8] zeroinitializer }, align 32
@ath6kl_sdio_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ar_sdio->irq_wq\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to alloc ath6kl core\0A\00", [35 x i8] zeroinitializer }, align 32
@ath6kl_sdio_ops = internal constant { %struct.ath6kl_hif_ops, [40 x i8] } { %struct.ath6kl_hif_ops { ptr @ath6kl_sdio_read_write_sync, ptr @ath6kl_sdio_write_async, ptr @ath6kl_sdio_irq_enable, ptr @ath6kl_sdio_irq_disable, ptr @ath6kl_sdio_scatter_req_get, ptr @ath6kl_sdio_scatter_req_add, ptr @ath6kl_sdio_enable_scatter, ptr @ath6kl_sdio_async_rw_scatter, ptr @ath6kl_sdio_cleanup_scatter, ptr @ath6kl_sdio_suspend, ptr @ath6kl_sdio_resume, ptr @ath6kl_sdio_diag_read32, ptr @ath6kl_sdio_diag_write32, ptr @ath6kl_sdio_bmi_read, ptr @ath6kl_sdio_bmi_write, ptr @ath6kl_sdio_power_on, ptr @ath6kl_sdio_power_off, ptr @ath6kl_sdio_stop, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to config sdio: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init ath6kl core\0A\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Scatter write request failed:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s addr 0x%x%s buf 0x%p len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wr\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (fixed)\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio \00", [26 x i8] zeroinitializer }, align 32
@__tracepoint_ath6kl_sdio = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath6kl/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath6kl_sdio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"hif-scatter: (%s) addr: 0x%X, (block len: %d, block count: %d) , (tot:%d,sg:%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WR\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RD\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%d: addr:0x%p, len:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_ath6kl_sdio_scat = external dso_local global %struct.tracepoint, align 4
@trace_ath6kl_sdio_scat.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: bus request 0x%p\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ath6kl_sdio_free_bus_req = private unnamed_addr constant [25 x i8] c"ath6kl_sdio_free_bus_req\00", align 1
@ath6kl_sdio_write_async.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ath/ath6kl/sdio.c\00", [57 x i8] zeroinitializer }, align 32
@__func__.ath6kl_sdio_alloc_busreq = private unnamed_addr constant [25 x i8] c"ath6kl_sdio_alloc_busreq\00", align 1
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to claim sdio irq: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irq\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to release sdio irq: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"host only supports scatter of :%d entries, need: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hif-scatter enabled requests %d entries %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"hif scatter resource setup failed, trying virtual scatter method\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to alloc virtual scatter resources !\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"virtual scatter enabled requests %d entries %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"hif-scatter: total len: %d scatter entries: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wow suspend failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdio suspend pm_caps 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set sdio keep pwr flag failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set sdio wake irq flag failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sdio resume configuring sdio\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: failed to read from window data addr\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.ath6kl_sdio_diag_read32 = private unnamed_addr constant [24 x i8] c"ath6kl_sdio_diag_read32\00", align 1
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: failed to write initial bytes of 0x%x to window reg: 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ath6kl_set_addrwin_reg = private unnamed_addr constant [23 x i8] c"ath6kl_set_addrwin_reg\00", align 1
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed to write 0x%x to window reg: 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: failed to write 0x%x to window data addr\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.ath6kl_sdio_diag_write32 = private unnamed_addr constant [25 x i8] c"ath6kl_sdio_diag_write32\00", align 1
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to read the bmi data from the device: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to read RX_LOOKAHEAD_VALID\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bmi_recv_buf FIFO empty\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to send the bmi data to the device\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unable to decrement the command credit count register: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bmi communication timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdio power on\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to enable sdio func: %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdio power off\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to enable 4-bit async irq mode %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"4-bit async irq mode enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Set sdio block size %d failed: %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sdio removed func %d vendor 0x%x device 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdio pm suspend\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdio pm resume\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sdio driver registration failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967189]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"ath6kl_sdio_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1423, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1424, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant [20 x i8] c"ath6kl_sdio_devices\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1410, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"ath6kl_sdio_pm_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1295, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1315, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1335, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1336, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1337, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1338, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1344, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1346, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1353, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"ath6kl_sdio_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1254, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1368, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1374, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 335, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 180, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 181, i32 28 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 181, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 182, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 182, i32 49 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 183, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath6kl/trace.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 85, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 108, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 233, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 234, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 234, i32 43 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 247, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 215, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 575, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 602, i32 14 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 484, i32 30 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 634, i32 14 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 745, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 758, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 767, i32 16 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 777, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 783, i32 7 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 683, i32 6 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 877, i32 15 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 841, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 849, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 856, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 934, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1033, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 995, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1010, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1051, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1214, i32 14 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1116, i32 15 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1125, i32 14 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1146, i32 14 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1084, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1096, i32 14 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 512, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 518, i32 14 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 551, i32 30 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 808, i32 15 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 813, i32 31 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 821, i32 14 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1395, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1283, i32 33 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1290, i32 33 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [42 x i8] c"../drivers/net/wireless/ath/ath6kl/sdio.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1437, i32 14 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author394, ptr @__UNIQUE_ID_description395, ptr @__UNIQUE_ID_file396, ptr @__UNIQUE_ID_firmware398, ptr @__UNIQUE_ID_firmware399, ptr @__UNIQUE_ID_firmware400, ptr @__UNIQUE_ID_firmware401, ptr @__UNIQUE_ID_firmware402, ptr @__UNIQUE_ID_firmware403, ptr @__UNIQUE_ID_firmware404, ptr @__UNIQUE_ID_firmware405, ptr @__UNIQUE_ID_firmware406, ptr @__UNIQUE_ID_firmware407, ptr @__UNIQUE_ID_firmware408, ptr @__UNIQUE_ID_firmware409, ptr @__UNIQUE_ID_firmware410, ptr @__UNIQUE_ID_firmware411, ptr @__UNIQUE_ID_firmware412, ptr @__UNIQUE_ID_firmware413, ptr @__UNIQUE_ID_firmware414, ptr @__UNIQUE_ID_firmware415, ptr @__UNIQUE_ID_firmware416, ptr @__UNIQUE_ID_firmware417, ptr @__UNIQUE_ID_firmware418, ptr @__UNIQUE_ID_firmware419, ptr @__UNIQUE_ID_license397, ptr @__exitcall_ath6kl_sdio_exit, ptr @__initcall__kmod_ath6kl_sdio__393_1447_ath6kl_sdio_init6, ptr @ath6kl_sdio_exit, ptr @ath6kl_sdio_driver, ptr @.str, ptr @ath6kl_sdio_devices, ptr @ath6kl_sdio_pm_ops, ptr @.str.1, ptr @ath6kl_sdio_probe.__key, ptr @.str.2, ptr @ath6kl_sdio_probe.__key.3, ptr @.str.4, ptr @ath6kl_sdio_probe.__key.5, ptr @.str.6, ptr @ath6kl_sdio_probe.__key.7, ptr @.str.8, ptr @ath6kl_sdio_probe.__key.9, ptr @.str.10, ptr @ath6kl_sdio_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @ath6kl_sdio_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_devices to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_sdio_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sdio_unregister_driver(ptr noundef nonnull @ath6kl_sdio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sdio_register_driver(ptr noundef nonnull @ath6kl_sdio_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.65, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_probe(ptr noundef %func, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 2
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 4
  %conv1 = zext i16 %5 to i32
  %max_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 7
  %6 = ptrtoint ptr %max_blksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_blksize, align 8
  %cur_blksize = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 8
  %8 = ptrtoint ptr %cur_blksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_blksize, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %conv, i32 noundef %conv1, i32 noundef %7, i32 noundef %9) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 2672) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #12
  %dma_buffer = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i.i.i, ptr %dma_buffer, align 4
  %tobool4.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool4.not, label %if.end.err_hif_crit_edge, label %if.end6

if.end.err_hif_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hif

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %func, ptr %call7.i.i, align 8
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %id8 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %id8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %id, ptr %id8, align 4
  %is_disabled = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_disabled, align 1
  %lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ath6kl_sdio_probe.__key, i16 noundef signext 3) #8
  %scat_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %scat_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ath6kl_sdio_probe.__key.3, i16 noundef signext 3) #8
  %wr_async_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %wr_async_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ath6kl_sdio_probe.__key.5, i16 noundef signext 3) #8
  %dma_buffer_mutex = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %dma_buffer_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath6kl_sdio_probe.__key.7) #8
  %scat_req = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %scat_req to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %scat_req, ptr %scat_req, align 4
  %prev.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %scat_req, ptr %prev.i, align 8
  %bus_req_freeq = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %bus_req_freeq to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %bus_req_freeq, ptr %bus_req_freeq, align 8
  %prev.i101 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bus_req_freeq, ptr %prev.i101, align 4
  %wr_asyncq = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 15
  %20 = ptrtoint ptr %wr_asyncq to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %wr_asyncq, ptr %wr_asyncq, align 4
  %prev.i102 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 15, i32 1
  %21 = ptrtoint ptr %prev.i102 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wr_asyncq, ptr %prev.i102, align 8
  %wr_async_work = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %wr_async_work, i32 noundef 0) #8
  %22 = ptrtoint ptr %wr_async_work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %wr_async_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @ath6kl_sdio_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry25 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 14, i32 1
  %23 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i103 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i103 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry25, ptr %prev.i103, align 8
  %func27 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 14, i32 2
  %25 = ptrtoint ptr %func27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ath6kl_sdio_write_async_work, ptr %func27, align 4
  %irq_wq = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %irq_wq, ptr noundef nonnull @.str.12, ptr noundef nonnull @ath6kl_sdio_probe.__key.11) #8
  br label %for.body

for.body:                                         ; preds = %ath6kl_sdio_free_bus_req.exit.for.body_crit_edge, %if.end6
  %count.0104 = phi i32 [ 0, %if.end6 ], [ %inc, %ath6kl_sdio_free_bus_req.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 3, i32 %count.0104
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ath6kl_sdio_free_bus_req, ptr noundef %arrayidx) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %26 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i101, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %27, ptr noundef %bus_req_freeq) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.ath6kl_sdio_free_bus_req.exit_crit_edge

for.body.ath6kl_sdio_free_bus_req.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_free_bus_req.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i101 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx, ptr %prev.i101, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bus_req_freeq, ptr %arrayidx, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx, ptr %27, align 4
  br label %ath6kl_sdio_free_bus_req.exit

ath6kl_sdio_free_bus_req.exit:                    ; preds = %if.end.i.i.i, %for.body.ath6kl_sdio_free_bus_req.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %inc = add nuw nsw i32 %count.0104, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %ath6kl_sdio_free_bus_req.exit.for.body_crit_edge

ath6kl_sdio_free_bus_req.exit.for.body_crit_edge: ; preds = %ath6kl_sdio_free_bus_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ath6kl_sdio_free_bus_req.exit
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  %dev35 = getelementptr inbounds %struct.sdio_func, ptr %33, i32 0, i32 1
  %call36 = tail call ptr @ath6kl_core_create(ptr noundef %dev35) #8
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.13) #8
  br label %err_dma

if.end39:                                         ; preds = %for.end
  %ar40 = getelementptr inbounds %struct.ath6kl_sdio, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %ar40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call36, ptr %ar40, align 8
  %hif_type = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 11
  %35 = ptrtoint ptr %hif_type to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %hif_type, align 4
  %hif_priv = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 12
  %36 = ptrtoint ptr %hif_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %hif_priv, align 4
  %hif_ops = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 5
  %37 = ptrtoint ptr %hif_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ath6kl_sdio_ops, ptr %hif_ops, align 4
  %max_data_size = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %max_data_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 256, ptr %max_data_size, align 4
  %mbox_info1.i = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 73
  %39 = ptrtoint ptr %mbox_info1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2048, ptr %mbox_info1.i, align 4
  %htc_ext_addr.i = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 73, i32 1
  %40 = ptrtoint ptr %htc_ext_addr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16384, ptr %htc_ext_addr.i, align 4
  %htc_ext_sz.i = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 73, i32 2
  %41 = ptrtoint ptr %htc_ext_sz.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 12288, ptr %htc_ext_sz.i, align 4
  %block_size.i = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 73, i32 3
  %42 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 128, ptr %block_size.i, align 4
  %gmbox_addr.i = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 73, i32 4
  %43 = ptrtoint ptr %gmbox_addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 28672, ptr %gmbox_addr.i, align 4
  %gmbox_sz.i = getelementptr inbounds %struct.ath6kl, ptr %call36, i32 0, i32 73, i32 5
  %44 = ptrtoint ptr %gmbox_sz.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16384, ptr %gmbox_sz.i, align 4
  %call41 = tail call fastcc i32 @ath6kl_sdio_config(ptr noundef nonnull %call36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.14, i32 noundef %call41) #8
  br label %err_core_alloc

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @ath6kl_core_init(ptr noundef nonnull %call36, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.15) #8
  br label %err_core_alloc

err_core_alloc:                                   ; preds = %if.then47, %if.then43
  %ret.0 = phi i32 [ %call41, %if.then43 ], [ %call45, %if.then47 ]
  %45 = ptrtoint ptr %ar40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ar40, align 8
  tail call void @ath6kl_core_destroy(ptr noundef %46) #8
  br label %err_dma

err_dma:                                          ; preds = %err_core_alloc, %if.then38
  %ret.1 = phi i32 [ %ret.0, %err_core_alloc ], [ -12, %if.then38 ]
  %47 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_buffer, align 4
  tail call void @kfree(ptr noundef %48) #8
  br label %err_hif

err_hif:                                          ; preds = %err_dma, %if.end.err_hif_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_dma ], [ -12, %if.end.err_hif_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_hif, %if.end44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_hif ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_remove(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num, align 4
  %vendor = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 5
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 2
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 6
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 4
  %conv1 = zext i16 %5 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.62, i32 noundef %1, i32 noundef %conv, i32 noundef %conv1) #8
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %ar = getelementptr inbounds %struct.ath6kl_sdio, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar, align 4
  tail call void @ath6kl_stop_txrx(ptr noundef %9) #8
  %wr_async_work = getelementptr inbounds %struct.ath6kl_sdio, ptr %7, i32 0, i32 14
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wr_async_work) #8
  %10 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar, align 4
  tail call void @ath6kl_core_cleanup(ptr noundef %11) #8
  %12 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar, align 4
  tail call void @ath6kl_core_destroy(ptr noundef %13) #8
  %dma_buffer = getelementptr inbounds %struct.ath6kl_sdio, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_buffer, align 4
  tail call void @kfree(ptr noundef %15) #8
  tail call void @kfree(ptr noundef %7) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_write_async_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2576
  %wr_async_lock = getelementptr i8, ptr %work, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #8
  %wr_asyncq = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %wr_asyncq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_asyncq, align 4
  %cmp.not29 = icmp eq ptr %1, %wr_asyncq
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ar.i = getelementptr i8, ptr %work, i32 -216
  %lock.i.i = getelementptr i8, ptr %work, i32 -2572
  %bus_req_freeq.i.i = getelementptr i8, ptr %work, i32 -2528
  %prev.i.i.i = getelementptr i8, ptr %work, i32 -2524
  br label %for.body

for.body:                                         ; preds = %__ath6kl_sdio_write_async.exit.for.body_crit_edge, %for.body.lr.ph
  %req.030 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp_req.0, %__ath6kl_sdio_write_async.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %req.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_req.0 = load ptr, ptr %req.030, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.030) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.030, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %req.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %req.030 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %req.030, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.030, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #8
  %scat_req.i = getelementptr inbounds %struct.bus_request, ptr %req.030, i32 0, i32 7
  %11 = ptrtoint ptr %scat_req.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scat_req.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @ath6kl_sdio_scat_rw(ptr noundef %add.ptr, ptr noundef %req.030) #8
  br label %__ath6kl_sdio_write_async.exit

if.else.i:                                        ; preds = %list_del.exit
  %13 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ar.i, align 4
  %address.i = getelementptr inbounds %struct.bus_request, ptr %req.030, i32 0, i32 1
  %15 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address.i, align 4
  %buffer.i = getelementptr inbounds %struct.bus_request, ptr %req.030, i32 0, i32 2
  %17 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer.i, align 4
  %length.i = getelementptr inbounds %struct.bus_request, ptr %req.030, i32 0, i32 3
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length.i, align 4
  %request.i = getelementptr inbounds %struct.bus_request, ptr %req.030, i32 0, i32 4
  %21 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %request.i, align 4
  %call1.i = tail call i32 @ath6kl_sdio_read_write_sync(ptr noundef %14, i32 noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef %22) #8
  %packet.i = getelementptr inbounds %struct.bus_request, ptr %req.030, i32 0, i32 5
  %23 = ptrtoint ptr %packet.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %packet.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ath6kl_sdio_free_bus_req, ptr noundef %req.030) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i) #8
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req.030, ptr noundef %26, ptr noundef %bus_req_freeq.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.ath6kl_sdio_free_bus_req.exit.i_crit_edge

if.else.i.ath6kl_sdio_free_bus_req.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_free_bus_req.exit.i

if.end.i.i.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req.030, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %req.030 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %bus_req_freeq.i.i, ptr %req.030, align 4
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %req.030, ptr %26, align 4
  br label %ath6kl_sdio_free_bus_req.exit.i

ath6kl_sdio_free_bus_req.exit.i:                  ; preds = %if.end.i.i.i.i, %if.else.i.ath6kl_sdio_free_bus_req.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i) #8
  %call2.i = tail call i32 @ath6kl_hif_rw_comp_handler(ptr noundef %24, i32 noundef %call1.i) #8
  br label %__ath6kl_sdio_write_async.exit

__ath6kl_sdio_write_async.exit:                   ; preds = %ath6kl_sdio_free_bus_req.exit.i, %if.then.i
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #8
  %cmp.not = icmp eq ptr %tmp_req.0, %wr_asyncq
  br i1 %cmp.not, label %__ath6kl_sdio_write_async.exit.for.end_crit_edge, label %__ath6kl_sdio_write_async.exit.for.body_crit_edge

__ath6kl_sdio_write_async.exit.for.body_crit_edge: ; preds = %__ath6kl_sdio_write_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

__ath6kl_sdio_write_async.exit.for.end_crit_edge: ; preds = %__ath6kl_sdio_write_async.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %__ath6kl_sdio_write_async.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_core_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_sdio_config(ptr nocapture noundef readonly %ar) unnamed_addr #2 align 64 {
entry:
  %io_cmd.i = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #8
  %id = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id, align 4
  %device = getelementptr inbounds %struct.sdio_device_id, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 767, i16 %7)
  %cmp = icmp ugt i16 %7, 767
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %io_cmd.i) #8
  %10 = getelementptr inbounds i8, ptr %io_cmd.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 1
  %12 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2080251647, ptr %arg.i, align 4
  %13 = ptrtoint ptr %io_cmd.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 52, ptr %io_cmd.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %io_cmd.i, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 21, ptr %flags.i, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 8
  %call.i = call i32 @mmc_wait_for_cmd(ptr noundef %16, ptr noundef nonnull %io_cmd.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %io_cmd.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.59, i32 noundef %call.i) #8
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.60) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %enable_timeout = getelementptr inbounds %struct.sdio_func, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %enable_timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %enable_timeout, align 8
  %call6 = call i32 @sdio_set_block_size(ptr noundef %3, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.then8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.61, i32 noundef 128, i32 noundef %call6) #8
  br label %out

out:                                              ; preds = %if.then8, %if.end5.out_crit_edge, %if.then4
  %ret.0 = phi i32 [ %call.i, %if.then4 ], [ %call6, %if.then8 ], [ 0, %if.end5.out_crit_edge ]
  call void @sdio_release_host(ptr noundef %3) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_core_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_core_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_sdio_scat_rw(ptr nocapture noundef readonly %ar_sdio, ptr nocapture noundef readonly %req) unnamed_addr #2 align 64 {
entry:
  %mmc_req = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mmc_req) #8
  %0 = call ptr @memset(ptr %mmc_req, i32 255, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %1 = call ptr @memset(ptr %cmd, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #8
  %2 = call ptr @memset(ptr %data, i32 255, i32 56)
  %scat_req1 = getelementptr inbounds %struct.bus_request, ptr %req, i32 0, i32 7
  %3 = ptrtoint ptr %scat_req1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scat_req1, align 4
  %virt_scat = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %virt_scat to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %virt_scat, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len2 = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2, align 4
  %req3 = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %req3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %req3, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %and6 = and i32 %8, -128
  %spec.select = select i1 %tobool4.not, i32 %8, i32 %and6
  %11 = ptrtoint ptr %ar_sdio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ar_sdio, align 4
  %addr = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %virt_dma_buf = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 10
  %15 = ptrtoint ptr %virt_dma_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_dma_buf, align 4
  %call = tail call fastcc i32 @ath6kl_sdio_io(ptr noundef %12, i32 noundef %10, i32 noundef %14, ptr noundef %16, i32 noundef %spec.select)
  br label %scat_complete

if.end8:                                          ; preds = %entry
  %17 = call ptr @memset(ptr %mmc_req, i32 0, i32 156)
  %18 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  %19 = call ptr @memset(ptr %data, i32 0, i32 56)
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %blksz.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %blksz.i, align 4
  %len.i = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 3
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %div50.i = lshr i32 %22, 7
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %23 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div50.i, ptr %blocks.i, align 4
  %req.i = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 2
  %24 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %req.i, align 4
  %and.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.28, ptr @.str.27
  %addr.i = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 1
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 4
  %scat_entries.i = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 7
  %28 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scat_entries.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond.i, i32 noundef %27, i32 noundef 128, i32 noundef %div50.i, i32 noundef %22, i32 noundef %29) #8
  %30 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %req.i, align 4
  %and5.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cond7.i = select i1 %tobool6.not.i, i32 512, i32 256
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond7.i, ptr %flags.i, align 4
  %sgentries.i = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 9
  %33 = ptrtoint ptr %sgentries.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sgentries.i, align 4
  %35 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scat_entries.i, align 4
  tail call void @sg_init_table(ptr noundef %34, i32 noundef %36) #8
  %37 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scat_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp51.i = icmp sgt i32 %38, 0
  br i1 %cmp51.i, label %if.end8.for.body.i_crit_edge, label %if.end8.ath6kl_sdio_setup_scat_data.exit_crit_edge

if.end8.ath6kl_sdio_setup_scat_data.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_setup_scat_data.exit

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

for.body.i:                                       ; preds = %sg_set_buf.exit.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.053.i = phi i32 [ %inc.i, %sg_set_buf.exit.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %sg.052.i = phi ptr [ %incdec.ptr.i, %sg_set_buf.exit.i.for.body.i_crit_edge ], [ %34, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hif_scatter_req, ptr %4, i32 0, i32 12, i32 %i.053.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %len12.i = getelementptr %struct.hif_scatter_req, ptr %4, i32 0, i32 12, i32 %i.053.i, i32 1
  %41 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len12.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.29, i32 noundef %i.053.i, ptr noundef %40, i32 noundef %42) #8
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %len12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len12.i, align 4
  %47 = ptrtoint ptr %44 to i32
  %cmp.i.i = icmp ugt ptr %44, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.i.do.body5.i.i_crit_edge, !prof !218

for.body.i.do.body5.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %48 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %48, %44
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !218

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %47, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %49, %shr.i.i
  %call.i.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !219

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %for.body.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !220
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %50, i32 %shr.i.i
  %51 = ptrtoint ptr %sg.052.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg.052.i, align 4
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !218

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !221
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !218

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !222
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %47, 4095
  %and.i.i.i.i = and i32 %52, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %53
  %54 = ptrtoint ptr %sg.052.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i.i.i.i, ptr %sg.052.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.052.i, i32 0, i32 1
  %55 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.052.i, i32 0, i32 2
  %56 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %46, ptr %length.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %sg.052.i, i32 1
  %57 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scat_entries.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %58
  br i1 %cmp.i, label %sg_set_buf.exit.i.for.body.i_crit_edge, label %sg_set_buf.exit.i.ath6kl_sdio_setup_scat_data.exit_crit_edge

sg_set_buf.exit.i.ath6kl_sdio_setup_scat_data.exit_crit_edge: ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_setup_scat_data.exit

sg_set_buf.exit.i.for.body.i_crit_edge:           ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ath6kl_sdio_setup_scat_data.exit:                 ; preds = %sg_set_buf.exit.i.ath6kl_sdio_setup_scat_data.exit_crit_edge, %if.end8.ath6kl_sdio_setup_scat_data.exit_crit_edge
  %59 = ptrtoint ptr %sgentries.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sgentries.i, align 4
  %sg20.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %61 = ptrtoint ptr %sg20.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %sg20.i, align 4
  %62 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scat_entries.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %64 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sg_len.i, align 4
  %65 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %req.i, align 4
  %and13 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %ath6kl_sdio_setup_scat_data.exit.if.end31_crit_edge, label %if.then20

ath6kl_sdio_setup_scat_data.exit.if.end31_crit_edge: ; preds = %ath6kl_sdio_setup_scat_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then20:                                        ; preds = %ath6kl_sdio_setup_scat_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %68)
  %cmp = icmp eq i32 %68, 2048
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  %sub27 = add i32 %68, 12288
  %.sink = select i1 %cmp, i32 4096, i32 %sub27
  %add = sub i32 %.sink, %70
  %71 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %addr.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then20, %ath6kl_sdio_setup_scat_data.exit.if.end31_crit_edge
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %72 = ptrtoint ptr %ar_sdio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ar_sdio, align 4
  %num = getelementptr inbounds %struct.sdio_func, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num, align 4
  %76 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr.i, align 4
  %78 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blocks.i, align 4
  %80 = shl nuw i32 %and13, 30
  %81 = shl i32 %75, 28
  %shl3.i = and i32 %81, 1879048192
  %or.i = or i32 %shl3.i, %80
  %82 = shl i32 %66, 18
  %83 = and i32 %82, 67108864
  %84 = or i32 %or.i, %83
  %and12.i = shl i32 %77, 9
  %shl13.i = and i32 %and12.i, 67108352
  %85 = or i32 %84, %shl13.i
  %86 = and i32 %79, 511
  %87 = or i32 %85, %86
  %or17.i = xor i32 %87, 201326592
  %88 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or17.i, ptr %arg, align 4
  %89 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 53, ptr %cmd, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %90 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 437, ptr %flags, align 4
  %cmd37 = getelementptr inbounds %struct.mmc_request, ptr %mmc_req, i32 0, i32 1
  %91 = ptrtoint ptr %cmd37 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %cmd, ptr %cmd37, align 4
  %data38 = getelementptr inbounds %struct.mmc_request, ptr %mmc_req, i32 0, i32 2
  %92 = ptrtoint ptr %data38 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %data, ptr %data38, align 4
  call void @sdio_claim_host(ptr noundef %73) #8
  %93 = ptrtoint ptr %ar_sdio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ar_sdio, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 8
  call void @mmc_set_data_timeout(ptr noundef nonnull %data, ptr noundef %96) #8
  %97 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %addr.i, align 4
  %99 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %req.i, align 4
  %101 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len.i, align 4
  %103 = ptrtoint ptr %scat_entries.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scat_entries.i, align 4
  %scat_list = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 12
  call fastcc void @trace_ath6kl_sdio_scat(i32 noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104, ptr noundef %scat_list)
  %105 = ptrtoint ptr %ar_sdio to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ar_sdio, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  call void @mmc_wait_for_req(ptr noundef %110, ptr noundef nonnull %mmc_req) #8
  %111 = ptrtoint ptr %ar_sdio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ar_sdio, align 4
  call void @sdio_release_host(ptr noundef %112) #8
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %113 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool47.not = icmp eq i32 %114, 0
  br i1 %tobool47.not, label %cond.false, label %scat_complete.thread

scat_complete.thread:                             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %status5199 = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 6
  %115 = ptrtoint ptr %status5199 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %status5199, align 4
  br label %if.then54

cond.false:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %error49 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %116 = ptrtoint ptr %error49 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %error49, align 4
  br label %scat_complete

scat_complete:                                    ; preds = %cond.false, %if.then
  %status.0 = phi i32 [ %call, %if.then ], [ %117, %cond.false ]
  %status51 = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 6
  %118 = ptrtoint ptr %status51 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %status.0, ptr %status51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool53.not = icmp eq i32 %status.0, 0
  br i1 %tobool53.not, label %scat_complete.if.end56_crit_edge, label %scat_complete.if.then54_crit_edge

scat_complete.if.then54_crit_edge:                ; preds = %scat_complete
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54

scat_complete.if.end56_crit_edge:                 ; preds = %scat_complete
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then54:                                        ; preds = %scat_complete.if.then54_crit_edge, %scat_complete.thread
  %status.0101 = phi i32 [ %114, %scat_complete.thread ], [ %status.0, %scat_complete.if.then54_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.16, i32 noundef %status.0101) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %scat_complete.if.end56_crit_edge
  %status.0102 = phi i32 [ %status.0101, %if.then54 ], [ 0, %scat_complete.if.end56_crit_edge ]
  %req57 = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 2
  %119 = ptrtoint ptr %req57 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %req57, align 4
  %and58 = and i32 %120, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end61_crit_edge, label %if.then60

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.hif_scatter_req, ptr %4, i32 0, i32 5
  %121 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %complete, align 4
  %ar = getelementptr inbounds %struct.ath6kl_sdio, ptr %ar_sdio, i32 0, i32 4
  %123 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ar, align 4
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %124, i32 0, i32 10
  %125 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %htc_target, align 4
  call void %122(ptr noundef %126, ptr noundef %4) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end56.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mmc_req) #8
  ret i32 %status.0102
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_read_write_sync(ptr nocapture noundef readonly %ar, i32 noundef %addr, ptr noundef %buf, i32 noundef %len, i32 noundef %request) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %and = and i32 %request, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %len, -128
  %spec.select = select i1 %tobool.not, i32 %len, i32 %and1
  %2 = ptrtoint ptr %buf to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cmp.i = icmp ugt ptr %buf, inttoptr (i32 -1073741825 to ptr)
  %or.cond.i = and i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %land.lhs.true.i, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %3 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %3, %buf
  br i1 %cmp1.i, label %buf_needs_bounce.exit, label %land.lhs.true.i.if.then3_crit_edge

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

buf_needs_bounce.exit:                            ; preds = %land.lhs.true.i
  %sub.i = add i32 %2, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %4, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.i, label %buf_needs_bounce.exit.if.then3_crit_edge, label %buf_needs_bounce.exit.if.end12_crit_edge

buf_needs_bounce.exit.if.end12_crit_edge:         ; preds = %buf_needs_bounce.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

buf_needs_bounce.exit.if.then3_crit_edge:         ; preds = %buf_needs_bounce.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %buf_needs_bounce.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge, %entry.if.then3_crit_edge
  %dma_buffer = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_buffer, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %dma_buffer_mutex = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %dma_buffer_mutex, i32 noundef 0) #8
  %7 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_buffer, align 4
  %and8 = and i32 %request, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %8, ptr %buf, i32 %spec.select)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge, %buf_needs_bounce.exit.if.end12_crit_edge
  %10 = phi i1 [ true, %if.then10 ], [ true, %if.end6.if.end12_crit_edge ], [ false, %buf_needs_bounce.exit.if.end12_crit_edge ]
  %tbuf.0 = phi ptr [ %8, %if.then10 ], [ %8, %if.end6.if.end12_crit_edge ], [ %buf, %buf_needs_bounce.exit.if.end12_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call13 = tail call fastcc i32 @ath6kl_sdio_io(ptr noundef %12, i32 noundef %request, i32 noundef %addr, ptr noundef %tbuf.0, i32 noundef %spec.select)
  %and14 = and i32 %request, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp ne i32 %and14, 0
  %13 = and i1 %tobool15.not, %10
  br i1 %13, label %if.then17, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = call ptr @memcpy(ptr %buf, ptr %tbuf.0, i32 %spec.select)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  br i1 %10, label %if.then20, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex21 = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %dma_buffer_mutex21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3.cleanup_crit_edge ], [ %call13, %if.then20 ], [ %call13, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_rw_comp_handler(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_sdio_io(ptr noundef %func, i32 noundef %request, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdio_claim_host(ptr noundef %func) #8
  %and = and i32 %request, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else13, label %if.then

if.then:                                          ; preds = %entry
  %0 = add i32 %addr, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %0)
  %1 = icmp ult i32 %0, 6144
  %sub = sub i32 2048, %len
  %add = select i1 %1, i32 %sub, i32 0
  %addr.addr.0 = add i32 %add, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %addr.addr.0)
  %cmp3 = icmp eq i32 %addr.addr.0, 16384
  %add6 = sub i32 28672, %len
  %addr.addr.1 = select i1 %cmp3, i32 %add6, i32 %addr.addr.0
  %and8 = and i32 %request, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @sdio_writesb(ptr noundef %func, i32 noundef %addr.addr.1, ptr noundef %buf, i32 noundef %len) #8
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @sdio_memcpy_toio(ptr noundef %func, i32 noundef %addr.addr.1, ptr noundef %buf, i32 noundef %len) #8
  br label %if.end21

if.else13:                                        ; preds = %entry
  %and14 = and i32 %request, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 @sdio_readsb(ptr noundef %func, ptr noundef %buf, i32 noundef %addr, i32 noundef %len) #8
  br label %if.end21

if.else18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @sdio_memcpy_fromio(ptr noundef %func, ptr noundef %buf, i32 noundef %addr, i32 noundef %len) #8
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16, %if.else, %if.then10
  %tobool25.not = phi ptr [ @.str.20, %if.then16 ], [ @.str.21, %if.else18 ], [ @.str.20, %if.then10 ], [ @.str.21, %if.else ]
  %cond = phi ptr [ @.str.19, %if.then16 ], [ @.str.19, %if.else18 ], [ @.str.18, %if.then10 ], [ @.str.18, %if.else ]
  %addr.addr.2 = phi i32 [ %addr, %if.then16 ], [ %addr, %if.else18 ], [ %addr.addr.1, %if.then10 ], [ %addr.addr.1, %if.else ]
  %ret.0 = phi i32 [ %call17, %if.then16 ], [ %call19, %if.else18 ], [ %call, %if.then10 ], [ %call11, %if.else ]
  tail call void @sdio_release_host(ptr noundef %func) #8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, i32 noundef %addr.addr.2, ptr noundef nonnull %tobool25.not, ptr noundef %buf, i32 noundef %len) #8
  tail call void @ath6kl_dbg_dump(i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %buf, i32 noundef %len) #8
  tail call fastcc void @trace_ath6kl_sdio(i32 noundef %addr.addr.2, i32 noundef %request, ptr noundef %buf, i32 noundef %len)
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_claim_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_sdio_scat(i32 noundef %addr, i32 noundef %flags, i32 noundef %total_len, i32 noundef %entries, ptr noundef %list) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio_scat, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_sdio_scat, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !223

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !218

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !224
  %call42 = tail call i32 @__traceiter_ath6kl_sdio_scat(ptr noundef null, i32 noundef %addr, i32 noundef %flags, i32 noundef %total_len, i32 noundef %entries, ptr noundef %list) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !225
  %13 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !218

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio_scat, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio_scat, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath6kl_sdio_scat.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ath6kl_sdio_scat.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 172, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !227
  %31 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_writesb(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_toio(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_readsb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_memcpy_fromio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg_dump(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath6kl_sdio(i32 noundef %addr, i32 noundef %flags, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio, i32 0, i32 1), ptr blockaddress(@trace_ath6kl_sdio, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !223

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !218

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !228
  %call42 = tail call i32 @__traceiter_ath6kl_sdio(ptr noundef null, i32 noundef %addr, i32 noundef %flags, ptr noundef %buf, i32 noundef %buf_len) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !229
  %13 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !218

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath6kl_sdio, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath6kl_sdio.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ath6kl_sdio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 118, ptr noundef nonnull @.str.24) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !227
  %31 = tail call i32 @llvm.read_register.i32(metadata !207) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_sdio(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath6kl_sdio_scat(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_write_async(ptr nocapture noundef readonly %ar, i32 noundef %address, ptr noundef %buffer, i32 noundef %length, i32 noundef %request, ptr noundef %packet) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %lock.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %bus_req_freeq.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bus_req_freeq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %bus_req_freeq.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %bus_req_freeq.i
  br i1 %cmp.i.not.i, label %ath6kl_sdio_alloc_busreq.exit.thread, label %if.end.i

ath6kl_sdio_alloc_busreq.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %land.rhs

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.ath6kl_sdio_alloc_busreq.exit_crit_edge

if.end.i.ath6kl_sdio_alloc_busreq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_alloc_busreq.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %ath6kl_sdio_alloc_busreq.exit

ath6kl_sdio_alloc_busreq.exit:                    ; preds = %if.end.i.i.i, %if.end.i.ath6kl_sdio_alloc_busreq.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ath6kl_sdio_alloc_busreq, ptr noundef %3) #8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ath6kl_sdio_alloc_busreq.exit.land.rhs_crit_edge, label %if.end40

ath6kl_sdio_alloc_busreq.exit.land.rhs_crit_edge: ; preds = %ath6kl_sdio_alloc_busreq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %ath6kl_sdio_alloc_busreq.exit.land.rhs_crit_edge, %ath6kl_sdio_alloc_busreq.exit.thread
  %.b62 = load i1, ptr @ath6kl_sdio_write_async.__already_done, align 1
  br i1 %.b62, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !218

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ath6kl_sdio_write_async.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 575, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end40:                                         ; preds = %ath6kl_sdio_alloc_busreq.exit
  %address41 = getelementptr inbounds %struct.bus_request, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %address41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %address, ptr %address41, align 4
  %buffer42 = getelementptr inbounds %struct.bus_request, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %buffer42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buffer, ptr %buffer42, align 4
  %length43 = getelementptr inbounds %struct.bus_request, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %length43 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %length, ptr %length43, align 4
  %request44 = getelementptr inbounds %struct.bus_request, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %request44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %request, ptr %request44, align 4
  %packet45 = getelementptr inbounds %struct.bus_request, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %packet45 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %packet, ptr %packet45, align 4
  %wr_async_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #8
  %wr_asyncq = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 15, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %18, ptr noundef %wr_asyncq) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_add_tail.exit_crit_edge

if.end40.list_add_tail.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %prev.i, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wr_asyncq, ptr %3, align 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %3, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end40.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #8
  %ath6kl_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 88
  %23 = ptrtoint ptr %ath6kl_wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ath6kl_wq, align 4
  %wr_async_work = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %wr_async_work) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %if.then ], [ -12, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_irq_enable(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @sdio_claim_irq(ptr noundef %5, ptr noundef nonnull @ath6kl_sdio_irq_handler) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.32, i32 noundef %call2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_irq_disable(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %3) #8
  %irq_handling = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_handling, i32 noundef 4) #8
  %4 = ptrtoint ptr %irq_handling to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %irq_handling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %7) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 625) #8
  %8 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hif_priv.i, align 4
  %irq_handling.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %9, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %irq_handling.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %irq_handling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.if.end20_crit_edge, label %if.then7

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %irq_wq = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 9
  %call962 = call i32 @prepare_to_wait_event(ptr noundef %irq_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %13 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_priv.i, align 4
  %irq_handling.i4663 = getelementptr inbounds %struct.ath6kl_sdio, ptr %14, i32 0, i32 8
  %call.i.i.i4764 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_handling.i4663, i32 noundef 4) #8
  %15 = ptrtoint ptr %irq_handling.i4663 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %irq_handling.i4663, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i4865 = icmp eq i32 %16, 0
  br i1 %tobool.not.i4865, label %if.then7.if.end16.thread58_crit_edge, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  br label %if.end

if.then7.if.end16.thread58_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.thread58

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then7.if.end_crit_edge
  %call966 = phi i32 [ %call9, %cleanup.if.end_crit_edge ], [ %call962, %if.then7.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call966)
  %tobool12.not = icmp eq i32 %call966, 0
  br i1 %tobool12.not, label %cleanup, label %if.end16

cleanup:                                          ; preds = %if.end
  call void @schedule() #8
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %irq_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %17 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hif_priv.i, align 4
  %irq_handling.i46 = getelementptr inbounds %struct.ath6kl_sdio, ptr %18, i32 0, i32 8
  %call.i.i.i47 = call zeroext i1 @__kasan_check_read(ptr noundef %irq_handling.i46, i32 noundef 4) #8
  %19 = ptrtoint ptr %irq_handling.i46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %irq_handling.i46, align 4
  %tobool.not.i48 = icmp eq i32 %20, 0
  br i1 %tobool.not.i48, label %cleanup.if.end16.thread58_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup.if.end16.thread58_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.thread58

if.end16.thread58:                                ; preds = %cleanup.if.end16.thread58_crit_edge, %if.then7.if.end16.thread58_crit_edge
  call void @finish_wait(ptr noundef %irq_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end20

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup29

if.end20:                                         ; preds = %if.end16.thread58, %if.then.if.end20_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  call void @sdio_claim_host(ptr noundef %22) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %entry.if.end22_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call24 = call i32 @sdio_release_irq(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.if.end27_crit_edge, label %if.then26

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.34, i32 noundef %call24) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end22.if.end27_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  call void @sdio_release_host(ptr noundef %26) #8
  br label %cleanup29

cleanup29:                                        ; preds = %if.end27, %if.end16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ath6kl_sdio_scatter_req_get(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %scat_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %scat_lock) #8
  %scat_req = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %scat_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %scat_req, align 4
  %cmp.i.not = icmp eq ptr %3, %scat_req
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %list_del.exit
  %tmp_list.0.in.i = phi ptr [ %scat_req, %list_del.exit ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %list_del.exit ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %scat_req
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %scat_q_depth = getelementptr inbounds %struct.hif_scatter_req, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %scat_q_depth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %depth.0.i, ptr %scat_q_depth, align 4
  br label %if.end

if.end:                                           ; preds = %get_queue_depth.exit, %entry.if.end_crit_edge
  %node.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %3, %get_queue_depth.exit ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %scat_lock) #8
  ret ptr %node.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_scatter_req_add(ptr nocapture noundef readonly %ar, ptr noundef %s_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %scat_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %scat_lock) #8
  %scat_req = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %s_req, ptr noundef %3, ptr noundef %scat_req) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %s_req, ptr %prev.i, align 4
  %5 = ptrtoint ptr %s_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %scat_req, ptr %s_req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %s_req, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %s_req, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %scat_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_enable_scatter(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 10
  %2 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htc_target, align 4
  %scatter_enabled = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %scatter_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scatter_enabled, align 4, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %scatter_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %scatter_enabled, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %max_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %14)
  %cmp = icmp ult i16 %14, 16
  br i1 %cmp, label %if.then3, label %if.then11.critedge

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %14 to i32
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef 16) #8
  br label %if.then21

if.then11.critedge:                               ; preds = %if.end
  %call13 = tail call fastcc i32 @ath6kl_sdio_alloc_prep_scat_req(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %cleanup.critedge, label %if.else

if.else:                                          ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath6kl_sdio_cleanup_scatter(ptr noundef %ar)
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.37) #8
  br label %if.then21

if.then21:                                        ; preds = %if.else, %if.then3
  %call23 = tail call fastcc i32 @ath6kl_sdio_alloc_prep_scat_req(ptr noundef %1, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.38) #8
  tail call void @ath6kl_sdio_cleanup_scatter(ptr noundef %ar)
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.39, i32 noundef 4, i32 noundef 16) #8
  %max_scat_entries27 = getelementptr inbounds %struct.htc_target, ptr %3, i32 0, i32 22
  %15 = ptrtoint ptr %max_scat_entries27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %max_scat_entries27, align 4
  %max_xfer_szper_scatreq28 = getelementptr inbounds %struct.htc_target, ptr %3, i32 0, i32 23
  %16 = ptrtoint ptr %max_xfer_szper_scatreq28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16384, ptr %max_xfer_szper_scatreq28, align 4
  br label %cleanup

cleanup.critedge:                                 ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.36, i32 noundef 4, i32 noundef 16) #8
  %max_scat_entries.c = getelementptr inbounds %struct.htc_target, ptr %3, i32 0, i32 22
  %17 = ptrtoint ptr %max_scat_entries.c to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %max_scat_entries.c, align 4
  %max_xfer_szper_scatreq.c = getelementptr inbounds %struct.htc_target, ptr %3, i32 0, i32 23
  %18 = ptrtoint ptr %max_xfer_szper_scatreq.c to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32768, ptr %max_xfer_szper_scatreq.c, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %if.end26, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then25 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end26 ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_async_rw_scatter(ptr nocapture noundef readonly %ar, ptr nocapture noundef readonly %scat_req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %len = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %req = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  %scat_entries = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 7
  %6 = ptrtoint ptr %scat_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scat_entries, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.40, i32 noundef %3, i32 noundef %7) #8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %busrequest = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 8
  %8 = ptrtoint ptr %busrequest to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %busrequest, align 4
  %call4 = tail call fastcc i32 @ath6kl_sdio_scat_rw(ptr noundef %1, ptr noundef %9)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %wr_async_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #8
  %busrequest5 = getelementptr inbounds %struct.hif_scatter_req, ptr %scat_req, i32 0, i32 8
  %10 = ptrtoint ptr %busrequest5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %busrequest5, align 4
  %wr_asyncq = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 15, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %13, ptr noundef %wr_asyncq) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wr_asyncq, ptr %11, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %11, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #8
  %ath6kl_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 88
  %18 = ptrtoint ptr %ath6kl_wq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ath6kl_wq, align 4
  %wr_async_work = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 14
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %wr_async_work) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.then3 ], [ 0, %list_add_tail.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_cleanup_scatter(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %scat_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %scat_lock) #8
  %scat_req = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %scat_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scat_req, align 4
  %cmp.not37 = icmp eq ptr %3, %scat_req
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 1
  %bus_req_freeq.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 2
  %prev.i.i35 = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %s_req.038 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp_req.040, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %s_req.038 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_req.040 = load ptr, ptr %s_req.038, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s_req.038) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %s_req.038, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %s_req.038 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_req.038, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %s_req.038 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %s_req.038, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %s_req.038, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %scat_lock) #8
  %busrequest = getelementptr inbounds %struct.hif_scatter_req, ptr %s_req.038, i32 0, i32 8
  %13 = ptrtoint ptr %busrequest to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %busrequest, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %scat_req10 = getelementptr inbounds %struct.bus_request, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %scat_req10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scat_req10, align 4
  %16 = ptrtoint ptr %busrequest to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %busrequest, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ath6kl_sdio_free_bus_req, ptr noundef %17) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %18 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i35, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %17, ptr noundef %19, ptr noundef %bus_req_freeq.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.ath6kl_sdio_free_bus_req.exit_crit_edge

if.then.ath6kl_sdio_free_bus_req.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_free_bus_req.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i.i35, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bus_req_freeq.i, ptr %17, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %17, ptr %19, align 4
  br label %ath6kl_sdio_free_bus_req.exit

ath6kl_sdio_free_bus_req.exit:                    ; preds = %if.end.i.i.i, %if.then.ath6kl_sdio_free_bus_req.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %if.end

if.end:                                           ; preds = %ath6kl_sdio_free_bus_req.exit, %list_del.exit.if.end_crit_edge
  %virt_dma_buf = getelementptr inbounds %struct.hif_scatter_req, ptr %s_req.038, i32 0, i32 10
  %24 = ptrtoint ptr %virt_dma_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt_dma_buf, align 4
  tail call void @kfree(ptr noundef %25) #8
  %sgentries = getelementptr inbounds %struct.hif_scatter_req, ptr %s_req.038, i32 0, i32 9
  %26 = ptrtoint ptr %sgentries to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sgentries, align 4
  tail call void @kfree(ptr noundef %27) #8
  tail call void @kfree(ptr noundef %s_req.038) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %scat_lock) #8
  %cmp.not = icmp eq ptr %tmp_req.040, %scat_req
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %scat_lock) #8
  %scatter_enabled = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %scatter_enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %scatter_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_suspend(ptr noundef %ar, ptr noundef %wow) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %suspend_mode = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 69
  %4 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %suspend_mode, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.if.end36_crit_edge [
    i16 3, label %entry.if.then_crit_edge
    i16 0, label %land.lhs.true
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %entry
  %tobool4.not = icmp eq ptr %wow, null
  br i1 %tobool4.not, label %land.lhs.true.if.then47_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %call2.i = tail call i32 @sdio_get_host_pm_caps(ptr noundef %3) #8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.42, i32 noundef %call2.i) #8
  %7 = and i32 %call2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %.not.i = icmp eq i32 %7, 3
  br i1 %.not.i, label %if.end.i, label %if.then.cut_pwr_crit_edge

if.then.cut_pwr_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

if.end.i:                                         ; preds = %if.then
  %call5.i = tail call i32 @sdio_set_host_pm_flags(ptr noundef %3, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.43, i32 noundef %call5.i) #8
  br label %cut_pwr

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @sdio_set_host_pm_flags(ptr noundef %3, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.44, i32 noundef %call9.i) #8
  br label %cut_pwr

if.end:                                           ; preds = %if.end8.i
  %call8 = tail call i32 @ath6kl_cfg80211_suspend(ptr noundef %ar, i32 noundef 2, ptr noundef %wow) #8
  %8 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call8, label %if.then13 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -107, label %if.end.land.lhs.true16_crit_edge
  ]

if.end.land.lhs.true16_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.41, i32 noundef %call8) #8
  br label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.then13, %if.end.land.lhs.true16_crit_edge
  %wow_suspend_mode = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 70
  %9 = ptrtoint ptr %wow_suspend_mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wow_suspend_mode, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %10, label %if.end32.thread.fold.split [
    i16 0, label %land.lhs.true16.if.end32.thread_crit_edge
    i16 2, label %land.lhs.true16.if.end32.thread_crit_edge116
    i16 1, label %land.lhs.true16.cut_pwr_crit_edge
  ]

land.lhs.true16.cut_pwr_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

land.lhs.true16.if.end32.thread_crit_edge116:     ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.thread

land.lhs.true16.if.end32.thread_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.thread

if.end32.thread.fold.split:                       ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.thread

if.end32.thread:                                  ; preds = %if.end32.thread.fold.split, %land.lhs.true16.if.end32.thread_crit_edge, %land.lhs.true16.if.end32.thread_crit_edge116
  %try_deepsleep.0.ph = phi i1 [ true, %land.lhs.true16.if.end32.thread_crit_edge ], [ true, %land.lhs.true16.if.end32.thread_crit_edge116 ], [ false, %if.end32.thread.fold.split ]
  %12 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load2_noabort(i32 %12)
  %.pr = load i16, ptr %suspend_mode, align 2
  br label %if.end36

if.end36:                                         ; preds = %if.end32.thread, %entry.if.end36_crit_edge
  %13 = phi i16 [ %.pr, %if.end32.thread ], [ %5, %entry.if.end36_crit_edge ]
  %try_deepsleep.1.off0 = phi i1 [ %try_deepsleep.0.ph, %if.end32.thread ], [ false, %entry.if.end36_crit_edge ]
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %13, label %lor.lhs.false44 [
    i16 2, label %if.end36.if.then47_crit_edge
    i16 0, label %if.end36.if.then47_crit_edge117
  ]

if.end36.if.then47_crit_edge117:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end36.if.then47_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

lor.lhs.false44:                                  ; preds = %if.end36
  br i1 %try_deepsleep.1.off0, label %lor.lhs.false44.if.then47_crit_edge, label %lor.lhs.false44.cut_pwr_crit_edge

lor.lhs.false44.cut_pwr_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

lor.lhs.false44.if.then47_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.then47:                                        ; preds = %lor.lhs.false44.if.then47_crit_edge, %if.end36.if.then47_crit_edge, %if.end36.if.then47_crit_edge117, %land.lhs.true.if.then47_crit_edge
  %call48 = tail call i32 @sdio_get_host_pm_caps(ptr noundef %3) #8
  %and = and i32 %call48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.then47.cut_pwr_crit_edge, label %if.end51

if.then47.cut_pwr_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

if.end51:                                         ; preds = %if.then47
  %call52 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %3, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cut_pwr_crit_edge

if.end51.cut_pwr_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

if.end55:                                         ; preds = %if.end51
  %and56 = and i32 %call48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end63_crit_edge, label %if.then58

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then58:                                        ; preds = %if.end55
  %call59 = tail call i32 @sdio_set_host_pm_flags(ptr noundef %3, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then58.if.end63_crit_edge, label %if.then58.cut_pwr_crit_edge

if.then58.cut_pwr_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

if.then58.if.end63_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.end63:                                         ; preds = %if.then58.if.end63_crit_edge, %if.end55.if.end63_crit_edge
  %call64 = tail call i32 @ath6kl_cfg80211_suspend(ptr noundef %ar, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %if.end63.cut_pwr_crit_edge

if.end63.cut_pwr_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cut_pwr

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cut_pwr:                                          ; preds = %if.end63.cut_pwr_crit_edge, %if.then58.cut_pwr_crit_edge, %if.end51.cut_pwr_crit_edge, %if.then47.cut_pwr_crit_edge, %lor.lhs.false44.cut_pwr_crit_edge, %land.lhs.true16.cut_pwr_crit_edge, %if.then11.i, %if.then7.i, %if.then.cut_pwr_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %tobool69.not = icmp eq ptr %16, null
  br i1 %tobool69.not, label %cut_pwr.if.end77_crit_edge, label %land.lhs.true70

cut_pwr.if.end77_crit_edge:                       ; preds = %cut_pwr
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

land.lhs.true70:                                  ; preds = %cut_pwr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool72.not = icmp eq ptr %18, null
  br i1 %tobool72.not, label %land.lhs.true70.if.end77_crit_edge, label %if.then73

land.lhs.true70.if.end77_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #10
  %pm_flags = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 51
  %19 = ptrtoint ptr %pm_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pm_flags, align 4
  %and76 = and i32 %20, -2
  store i32 %and76, ptr %pm_flags, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %land.lhs.true70.if.end77_crit_edge, %cut_pwr.if.end77_crit_edge
  %call78 = tail call i32 @ath6kl_cfg80211_suspend(ptr noundef %ar, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end63.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call78, %if.end77 ], [ 0, %if.end63.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_resume(ptr noundef %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge4
  ]

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.45) #8
  %call = tail call fastcc i32 @ath6kl_sdio_config(ptr noundef %ar)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %call1 = tail call i32 @ath6kl_cfg80211_resume(ptr noundef %ar) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_diag_read32(ptr nocapture noundef readonly %ar, i32 noundef %address, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ath6kl_set_addrwin_reg(ptr noundef %ar, i32 noundef 1148, i32 noundef %address)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ath6kl_sdio_read_write_sync(ptr noundef %ar, i32 noundef 1140, ptr noundef %data, i32 noundef 4, i32 noundef 593)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.ath6kl_sdio_diag_read32) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_diag_write32(ptr nocapture noundef readonly %ar, i32 noundef %address, i32 noundef %data) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %data, ptr %val, align 4
  %hif_priv.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %1 = ptrtoint ptr %hif_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hif_priv.i.i, align 4
  %3 = ptrtoint ptr %val to i32
  %cmp.i.i = icmp ugt ptr %val, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.if.then3.i_crit_edge

entry.if.then3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

land.lhs.true.i.i:                                ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %4 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %4, %val
  br i1 %cmp1.i.i, label %buf_needs_bounce.exit.i, label %land.lhs.true.i.i.if.then3.i_crit_edge

land.lhs.true.i.i.if.then3.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

buf_needs_bounce.exit.i:                          ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %3, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %5, %shr.i.i
  %call.i.i = call i32 @pfn_valid(i32 noundef %add.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.i.i, label %buf_needs_bounce.exit.i.if.then3.i_crit_edge, label %buf_needs_bounce.exit.i.if.end12.i_crit_edge

buf_needs_bounce.exit.i.if.end12.i_crit_edge:     ; preds = %buf_needs_bounce.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

buf_needs_bounce.exit.i.if.then3.i_crit_edge:     ; preds = %buf_needs_bounce.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %buf_needs_bounce.exit.i.if.then3.i_crit_edge, %land.lhs.true.i.i.if.then3.i_crit_edge, %entry.if.then3.i_crit_edge
  %dma_buffer.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %if.then3.i.if.then_crit_edge, label %if.end6.i

if.then3.i.if.then_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %2, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %dma_buffer_mutex.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_buffer.i, align 4
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %9, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end6.i, %buf_needs_bounce.exit.i.if.end12.i_crit_edge
  %13 = phi i1 [ true, %if.end6.i ], [ false, %buf_needs_bounce.exit.i.if.end12.i_crit_edge ]
  %tbuf.0.i = phi ptr [ %9, %if.end6.i ], [ %val, %buf_needs_bounce.exit.i.if.end12.i_crit_edge ]
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  call void @sdio_claim_host(ptr noundef %15) #8
  %call11.i = call i32 @sdio_memcpy_toio(ptr noundef %15, i32 noundef 1140, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  call void @sdio_release_host(ptr noundef %15) #8
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 1140, ptr noundef nonnull @.str.21, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  call void @ath6kl_dbg_dump(i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  call fastcc void @trace_ath6kl_sdio(i32 noundef 1140, i32 noundef 594, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  br i1 %13, label %if.then20.i, label %if.end12.i.ath6kl_sdio_read_write_sync.exit_crit_edge

if.end12.i.ath6kl_sdio_read_write_sync.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_read_write_sync.exit

if.then20.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex21.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %2, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %dma_buffer_mutex21.i) #8
  br label %ath6kl_sdio_read_write_sync.exit

ath6kl_sdio_read_write_sync.exit:                 ; preds = %if.then20.i, %if.end12.i.ath6kl_sdio_read_write_sync.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not = icmp eq i32 %call11.i, 0
  br i1 %tobool.not, label %if.end, label %ath6kl_sdio_read_write_sync.exit.if.then_crit_edge

ath6kl_sdio_read_write_sync.exit.if.then_crit_edge: ; preds = %ath6kl_sdio_read_write_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %ath6kl_sdio_read_write_sync.exit.if.then_crit_edge, %if.then3.i.if.then_crit_edge
  %retval.0.i8 = phi i32 [ %call11.i, %ath6kl_sdio_read_write_sync.exit.if.then_crit_edge ], [ -12, %if.then3.i.if.then_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.ath6kl_sdio_diag_write32, i32 noundef %data) #8
  br label %cleanup

if.end:                                           ; preds = %ath6kl_sdio_read_write_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call fastcc i32 @ath6kl_set_addrwin_reg(ptr noundef %ar, i32 noundef 1144, i32 noundef %address)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i8, %if.then ], [ %call1, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_bmi_read(ptr nocapture noundef readonly %ar, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %rx_word.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp ugt i32 %len, 3
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_word.i) #8
  %0 = ptrtoint ptr %rx_word.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rx_word.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %1
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub11.i = add i32 %add.neg.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.i)
  %cmp12.i = icmp slt i32 %sub11.i, 0
  br i1 %cmp12.i, label %if.then.land.rhs.i_crit_edge, label %if.then.ath6kl_bmi_get_rx_lkahd.exit_crit_edge

if.then.ath6kl_bmi_get_rx_lkahd.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_bmi_get_rx_lkahd.exit

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %3 = phi i32 [ %and.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.then.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.ath6kl_bmi_get_rx_lkahd.exit.thread_crit_edge

land.rhs.i.ath6kl_bmi_get_rx_lkahd.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_bmi_get_rx_lkahd.exit.thread

while.body.i:                                     ; preds = %land.rhs.i
  %call1.i = call i32 @ath6kl_sdio_read_write_sync(ptr noundef %ar, i32 noundef 1029, ptr noundef nonnull %rx_word.i, i32 noundef 4, i32 noundef 593) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %while.body.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge

while.body.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_bmi_get_rx_lkahd.exit

if.end.i:                                         ; preds = %while.body.i
  %4 = ptrtoint ptr %rx_word.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_word.i, align 4
  %and.i = and i32 %5, 1
  store i32 %and.i, ptr %rx_word.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %6, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.land.rhs.i_crit_edge, label %while.end.i

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %while.end.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge, label %while.end.i.ath6kl_bmi_get_rx_lkahd.exit.thread_crit_edge

while.end.i.ath6kl_bmi_get_rx_lkahd.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_bmi_get_rx_lkahd.exit.thread

while.end.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_bmi_get_rx_lkahd.exit

ath6kl_bmi_get_rx_lkahd.exit.thread:              ; preds = %while.end.i.ath6kl_bmi_get_rx_lkahd.exit.thread_crit_edge, %land.rhs.i.ath6kl_bmi_get_rx_lkahd.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_word.i) #8
  br label %if.end2

ath6kl_bmi_get_rx_lkahd.exit:                     ; preds = %while.end.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge, %while.body.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge, %if.then.ath6kl_bmi_get_rx_lkahd.exit_crit_edge
  %.str.52.sink.i = phi ptr [ @.str.52, %while.end.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge ], [ @.str.52, %if.then.ath6kl_bmi_get_rx_lkahd.exit_crit_edge ], [ @.str.51, %while.body.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %while.end.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge ], [ -22, %if.then.ath6kl_bmi_get_rx_lkahd.exit_crit_edge ], [ %call1.i, %while.body.i.ath6kl_bmi_get_rx_lkahd.exit_crit_edge ]
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull %.str.52.sink.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_word.i) #8
  br label %cleanup

if.end2:                                          ; preds = %ath6kl_bmi_get_rx_lkahd.exit.thread, %entry.if.end2_crit_edge
  %mbox_info = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 73
  %7 = ptrtoint ptr %mbox_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox_info, align 4
  %call3 = call i32 @ath6kl_sdio_read_write_sync(ptr noundef %ar, i32 noundef %8, ptr noundef %buf, i32 noundef %len, i32 noundef 593)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.50, i32 noundef %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %ath6kl_bmi_get_rx_lkahd.exit
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %retval.0.ph.i, %ath6kl_bmi_get_rx_lkahd.exit ], [ 0, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_bmi_write(ptr noundef %ar, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bmi.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4
  %0 = ptrtoint ptr %bmi.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bmi.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %1
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub24.i = add i32 %add.neg.i, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24.i)
  %cmp25.i = icmp slt i32 %sub24.i, 0
  br i1 %cmp25.i, label %entry.land.rhs.i_crit_edge, label %entry.if.then12.i_crit_edge

entry.if.then12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %3 = phi i32 [ %and.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %entry.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %while.body.i, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.i:                                     ; preds = %land.rhs.i
  %call5.i = tail call i32 @ath6kl_sdio_read_write_sync(ptr noundef %ar, i32 noundef 1104, ptr noundef %bmi.i, i32 noundef 4, i32 noundef 593) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.54, i32 noundef %call5.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %4 = ptrtoint ptr %bmi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bmi.i, align 4
  %and.i = and i32 %5, 255
  store i32 %and.i, ptr %bmi.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %6, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.land.rhs.i_crit_edge, label %while.end.i

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %while.end.i.if.then12.i_crit_edge, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.end.i.if.then12.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then12.i:                                      ; preds = %while.end.i.if.then12.i_crit_edge, %entry.if.then12.i_crit_edge
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end:                                           ; preds = %while.end.i.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %mbox_info = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 73
  %7 = ptrtoint ptr %mbox_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mbox_info, align 4
  %call1 = tail call i32 @ath6kl_sdio_read_write_sync(ptr noundef %ar, i32 noundef %8, ptr noundef %buf, i32 noundef %len, i32 noundef 594)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.53) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then12.i, %if.then.i
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %call5.i, %if.then.i ], [ -110, %if.then12.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_power_on(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %is_disabled = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_disabled, align 1, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.56) #8
  tail call void @sdio_claim_host(ptr noundef %3) #8
  %call2 = tail call i32 @sdio_enable_func(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.57, i32 noundef %call2) #8
  tail call void @sdio_release_host(ptr noundef %3) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @sdio_release_host(ptr noundef %3) #8
  tail call void @msleep(i32 noundef 10) #8
  %call6 = tail call fastcc i32 @ath6kl_sdio_config(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.14, i32 noundef %call6) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_disabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end9 ], [ %call6, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_power_off(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %is_disabled = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %is_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_disabled, align 1, !range !217
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 262144, ptr noundef nonnull @.str.58) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @sdio_disable_func(ptr noundef %7) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %is_disabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_disabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_stop(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %wr_async_work = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 14
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %wr_async_work) #8
  %wr_async_lock = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %wr_async_lock) #8
  %wr_asyncq = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %wr_asyncq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_asyncq, align 4
  %cmp.not65 = icmp eq ptr %3, %wr_asyncq
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ar11 = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 1
  %bus_req_freeq.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 2
  %prev.i.i63 = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %req.066 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp_req.067, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %req.066 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp_req.067 = load ptr, ptr %req.066, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req.066) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %req.066, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %req.066 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.066, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %req.066 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %req.066, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %req.066, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %scat_req = getelementptr inbounds %struct.bus_request, ptr %req.066, i32 0, i32 7
  %13 = ptrtoint ptr %scat_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scat_req, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.hif_scatter_req, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -125, ptr %status, align 4
  %16 = ptrtoint ptr %scat_req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %scat_req, align 4
  %complete = getelementptr inbounds %struct.hif_scatter_req, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %complete, align 4
  %20 = ptrtoint ptr %ar11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ar11, align 4
  %htc_target = getelementptr inbounds %struct.ath6kl, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %htc_target to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %htc_target, align 4
  tail call void %19(ptr noundef %23, ptr noundef %17) #8
  br label %for.inc

if.else:                                          ; preds = %list_del.exit
  %packet = getelementptr inbounds %struct.bus_request, ptr %req.066, i32 0, i32 5
  %24 = ptrtoint ptr %packet to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %packet, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ath6kl_sdio_free_bus_req, ptr noundef %req.066) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %26 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i63, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req.066, ptr noundef %27, ptr noundef %bus_req_freeq.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.ath6kl_sdio_free_bus_req.exit_crit_edge

if.else.ath6kl_sdio_free_bus_req.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_free_bus_req.exit

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %req.066, ptr %prev.i.i63, align 4
  %29 = ptrtoint ptr %req.066 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bus_req_freeq.i, ptr %req.066, align 4
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %req.066, ptr %27, align 4
  br label %ath6kl_sdio_free_bus_req.exit

ath6kl_sdio_free_bus_req.exit:                    ; preds = %if.end.i.i.i, %if.else.ath6kl_sdio_free_bus_req.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %call13 = tail call i32 @ath6kl_hif_rw_comp_handler(ptr noundef %25, i32 noundef -125) #8
  br label %for.inc

for.inc:                                          ; preds = %ath6kl_sdio_free_bus_req.exit, %if.then
  %cmp.not = icmp eq ptr %tmp_req.067, %wr_asyncq
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %wr_async_lock) #8
  %scat_req20 = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.end
  %tmp_list.0.in.i = phi ptr [ %scat_req20, %for.end ], [ %tmp_list.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %for.end ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %32 = ptrtoint ptr %tmp_list.0.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp_list.0.i = load ptr, ptr %tmp_list.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %tmp_list.0.i, %scat_req20
  %inc.i = add i32 %depth.0.i, 1
  br i1 %cmp.i.not.i, label %get_queue_depth.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

get_queue_depth.exit:                             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %depth.0.i)
  %cmp22.not = icmp eq i32 %depth.0.i, 4
  br i1 %cmp22.not, label %get_queue_depth.exit.if.end38_crit_edge, label %do.end, !prof !218

get_queue_depth.exit.if.end38_crit_edge:          ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end:                                           ; preds = %get_queue_depth.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1251, i32 noundef 9, ptr noundef null) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end, %get_queue_depth.exit.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_claim_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_sdio_irq_handler(ptr nocapture noundef readonly %func) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 65536, ptr noundef nonnull @.str.33) #8
  %driver_data.i = getelementptr inbounds %struct.sdio_func, ptr %func, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq_handling = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_handling, i32 noundef 4) #8
  %2 = ptrtoint ptr %irq_handling to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %irq_handling, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @sdio_release_host(ptr noundef %4) #8
  %ar = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ar, align 4
  %call2 = tail call i32 @ath6kl_hif_intr_bh_handler(ptr noundef %6) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void @sdio_claim_host(ptr noundef %8) #8
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %irq_handling, i32 noundef 4) #8
  %9 = ptrtoint ptr %irq_handling to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %irq_handling, align 4
  %irq_wq = getelementptr inbounds %struct.ath6kl_sdio, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %irq_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %10 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call2, label %do.end [
    i32 -125, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge32
  ]

entry.if.end_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 500, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_hif_intr_bh_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @sdio_release_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_sdio_alloc_prep_scat_req(ptr noundef %ar_sdio, i1 noundef zeroext %virt_scat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %virt_scat to i8
  %. = select i1 %virt_scat, i32 16640, i32 320
  %lock.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %ar_sdio, i32 0, i32 1
  %bus_req_freeq.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %ar_sdio, i32 0, i32 2
  %ar = getelementptr inbounds %struct.ath6kl_sdio, ptr %ar_sdio, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %if.end24.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 244) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %for.body.cleanup_crit_edge, label %if.end4

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %., i32 noundef 3520) #12
  br i1 %virt_scat, label %if.end8.i.i, label %if.end8.i.i21

if.end8.i.i:                                      ; preds = %if.end4
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end10

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %virt_dma_buf = getelementptr inbounds %struct.hif_scatter_req, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %virt_dma_buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %virt_dma_buf, align 4
  br label %if.end18

if.end8.i.i21:                                    ; preds = %if.end4
  %sgentries = getelementptr inbounds %struct.hif_scatter_req, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %sgentries to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %sgentries, align 8
  %tobool15.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool15.not, label %if.end8.i.i21.cleanup.sink.split_crit_edge, label %if.end8.i.i21.if.end18_crit_edge

if.end8.i.i21.if.end18_crit_edge:                 ; preds = %if.end8.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end8.i.i21.cleanup.sink.split_crit_edge:       ; preds = %if.end8.i.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end8.i.i21.if.end18_crit_edge, %if.end10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %3 = ptrtoint ptr %bus_req_freeq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %bus_req_freeq.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %bus_req_freeq.i
  br i1 %cmp.i.not.i, label %ath6kl_sdio_alloc_busreq.exit.thread, label %if.end.i

ath6kl_sdio_alloc_busreq.exit.thread:             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %if.then21

if.end.i:                                         ; preds = %if.end18
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.ath6kl_sdio_alloc_busreq.exit_crit_edge

if.end.i.ath6kl_sdio_alloc_busreq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_alloc_busreq.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %ath6kl_sdio_alloc_busreq.exit

ath6kl_sdio_alloc_busreq.exit:                    ; preds = %if.end.i.i.i, %if.end.i.ath6kl_sdio_alloc_busreq.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4096, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ath6kl_sdio_alloc_busreq, ptr noundef %4) #8
  %tobool20.not = icmp eq ptr %4, null
  br i1 %tobool20.not, label %ath6kl_sdio_alloc_busreq.exit.if.then21_crit_edge, label %if.end24

ath6kl_sdio_alloc_busreq.exit.if.then21_crit_edge: ; preds = %ath6kl_sdio_alloc_busreq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %ath6kl_sdio_alloc_busreq.exit.if.then21_crit_edge, %ath6kl_sdio_alloc_busreq.exit.thread
  %sgentries22 = getelementptr inbounds %struct.hif_scatter_req, ptr %call7.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %sgentries22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sgentries22, align 8
  tail call void @kfree(ptr noundef %14) #8
  %virt_dma_buf23 = getelementptr inbounds %struct.hif_scatter_req, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %virt_dma_buf23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_dma_buf23, align 4
  tail call void @kfree(ptr noundef %16) #8
  br label %cleanup.sink.split

if.end24:                                         ; preds = %ath6kl_sdio_alloc_busreq.exit
  %scat_req = getelementptr inbounds %struct.bus_request, ptr %4, i32 0, i32 7
  %17 = ptrtoint ptr %scat_req to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %scat_req, align 4
  %busrequest = getelementptr inbounds %struct.hif_scatter_req, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %busrequest to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %4, ptr %busrequest, align 4
  %virt_scat26 = getelementptr inbounds %struct.hif_scatter_req, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %virt_scat26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %virt_scat26, align 4
  %20 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ar, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hif_ops.i, align 4
  %scatter_req_add.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %scatter_req_add.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scatter_req_add.i, align 4
  tail call void %25(ptr noundef %21, ptr noundef nonnull %call7.i.i) #8
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end24.cleanup_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then21, %if.end8.i.i21.cleanup.sink.split_crit_edge, %if.end8.i.i.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end24.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %cleanup.sink.split ], [ 0, %if.end24.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_cfg80211_suspend(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_get_host_pm_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_host_pm_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_cfg80211_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath6kl_set_addrwin_reg(ptr nocapture noundef readonly %ar, i32 noundef %reg_addr, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  %addr_val = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_val) #8
  %hif_priv.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %1 = ptrtoint ptr %addr_val to i32
  %cmp.i.i = icmp ugt ptr %addr_val, inttoptr (i32 -1073741825 to ptr)
  %sub.i.i = add i32 %1, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  br label %for.body

for.cond:                                         ; preds = %ath6kl_sdio_read_write_sync.exit
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %if.end4, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.060 = phi i32 [ 1, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %addr.addr, i32 %i.060
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i32
  %5 = call ptr @memset(ptr %addr_val, i32 %4, i32 4)
  %add = add i32 %i.060, %reg_addr
  %6 = ptrtoint ptr %hif_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hif_priv.i.i, align 4
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.body.if.then3.i_crit_edge

for.body.if.then3.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

land.lhs.true.i.i:                                ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %8 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %8, %addr_val
  br i1 %cmp1.i.i, label %buf_needs_bounce.exit.i, label %land.lhs.true.i.i.if.then3.i_crit_edge

land.lhs.true.i.i.if.then3.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

buf_needs_bounce.exit.i:                          ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %9, %shr.i.i
  %call.i.i = call i32 @pfn_valid(i32 noundef %add.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.i.i, label %buf_needs_bounce.exit.i.if.then3.i_crit_edge, label %buf_needs_bounce.exit.i.if.end12.i_crit_edge

buf_needs_bounce.exit.i.if.end12.i_crit_edge:     ; preds = %buf_needs_bounce.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

buf_needs_bounce.exit.i.if.then3.i_crit_edge:     ; preds = %buf_needs_bounce.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %buf_needs_bounce.exit.i.if.then3.i_crit_edge, %land.lhs.true.i.i.if.then3.i_crit_edge, %for.body.if.then3.i_crit_edge
  %dma_buffer.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_buffer.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.then3.i.if.then3_crit_edge, label %if.end6.i

if.then3.i.if.then3_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.end6.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %7, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %dma_buffer_mutex.i, i32 noundef 0) #8
  %12 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_buffer.i, align 4
  %14 = ptrtoint ptr %addr_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr_val, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %13, align 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end6.i, %buf_needs_bounce.exit.i.if.end12.i_crit_edge
  %17 = phi i1 [ true, %if.end6.i ], [ false, %buf_needs_bounce.exit.i.if.end12.i_crit_edge ]
  %tbuf.0.i = phi ptr [ %13, %if.end6.i ], [ %addr_val, %buf_needs_bounce.exit.i.if.end12.i_crit_edge ]
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  call void @sdio_claim_host(ptr noundef %19) #8
  %20 = add i32 %add, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %20)
  %21 = icmp ult i32 %20, 6144
  %add.i = select i1 %21, i32 2044, i32 0
  %addr.addr.0.i = add i32 %add.i, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %addr.addr.0.i)
  %cmp3.i = icmp eq i32 %addr.addr.0.i, 16384
  %addr.addr.1.i = select i1 %cmp3.i, i32 28668, i32 %addr.addr.0.i
  %call.i = call i32 @sdio_writesb(ptr noundef %19, i32 noundef %addr.addr.1.i, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  call void @sdio_release_host(ptr noundef %19) #8
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %addr.addr.1.i, ptr noundef nonnull @.str.20, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  call void @ath6kl_dbg_dump(i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  call fastcc void @trace_ath6kl_sdio(i32 noundef %addr.addr.1.i, i32 noundef 338, ptr noundef %tbuf.0.i, i32 noundef 4) #8
  br i1 %17, label %if.then20.i, label %if.end12.i.ath6kl_sdio_read_write_sync.exit_crit_edge

if.end12.i.ath6kl_sdio_read_write_sync.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_read_write_sync.exit

if.then20.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex21.i = getelementptr inbounds %struct.ath6kl_sdio, ptr %7, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %dma_buffer_mutex21.i) #8
  br label %ath6kl_sdio_read_write_sync.exit

ath6kl_sdio_read_write_sync.exit:                 ; preds = %if.then20.i, %if.end12.i.ath6kl_sdio_read_write_sync.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %ath6kl_sdio_read_write_sync.exit.if.then3_crit_edge

ath6kl_sdio_read_write_sync.exit.if.then3_crit_edge: ; preds = %ath6kl_sdio_read_write_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %ath6kl_sdio_read_write_sync.exit.if.then3_crit_edge, %if.then3.i.if.then3_crit_edge
  %status.155.ph = phi i32 [ -12, %if.then3.i.if.then3_crit_edge ], [ %call.i, %ath6kl_sdio_read_write_sync.exit.if.then3_crit_edge ]
  %22 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.addr, align 4
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.ath6kl_set_addrwin_reg, i32 noundef %23, i32 noundef %reg_addr) #8
  br label %cleanup

if.end4:                                          ; preds = %for.cond
  %24 = ptrtoint ptr %hif_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hif_priv.i.i, align 4
  %26 = ptrtoint ptr %addr.addr to i32
  %cmp.i.i25 = icmp ugt ptr %addr.addr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i25, label %land.lhs.true.i.i28, label %if.end4.if.then3.i37_crit_edge

if.end4.if.then3.i37_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i37

land.lhs.true.i.i28:                              ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %27 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i27 = icmp ugt ptr %27, %addr.addr
  br i1 %cmp1.i.i27, label %buf_needs_bounce.exit.i34, label %land.lhs.true.i.i28.if.then3.i37_crit_edge

land.lhs.true.i.i28.if.then3.i37_crit_edge:       ; preds = %land.lhs.true.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i37

buf_needs_bounce.exit.i34:                        ; preds = %land.lhs.true.i.i28
  %sub.i.i29 = add i32 %26, 1073741824
  %shr.i.i30 = lshr i32 %sub.i.i29, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %28 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i31 = add i32 %28, %shr.i.i30
  %call.i.i32 = call i32 @pfn_valid(i32 noundef %add.i.i31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool2.i.i33 = icmp eq i32 %call.i.i32, 0
  br i1 %tobool2.i.i33, label %buf_needs_bounce.exit.i34.if.then3.i37_crit_edge, label %buf_needs_bounce.exit.i34.if.end12.i42_crit_edge

buf_needs_bounce.exit.i34.if.end12.i42_crit_edge: ; preds = %buf_needs_bounce.exit.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i42

buf_needs_bounce.exit.i34.if.then3.i37_crit_edge: ; preds = %buf_needs_bounce.exit.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i37

if.then3.i37:                                     ; preds = %buf_needs_bounce.exit.i34.if.then3.i37_crit_edge, %land.lhs.true.i.i28.if.then3.i37_crit_edge, %if.end4.if.then3.i37_crit_edge
  %dma_buffer.i35 = getelementptr inbounds %struct.ath6kl_sdio, ptr %25, i32 0, i32 5
  %29 = ptrtoint ptr %dma_buffer.i35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_buffer.i35, align 4
  %tobool4.not.i36 = icmp eq ptr %30, null
  br i1 %tobool4.not.i36, label %if.then3.i37.if.then7_crit_edge, label %if.end6.i39

if.then3.i37.if.then7_crit_edge:                  ; preds = %if.then3.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.end6.i39:                                      ; preds = %if.then3.i37
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex.i38 = getelementptr inbounds %struct.ath6kl_sdio, ptr %25, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %dma_buffer_mutex.i38, i32 noundef 0) #8
  %31 = ptrtoint ptr %dma_buffer.i35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_buffer.i35, align 4
  %33 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.addr, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %32, align 1
  br label %if.end12.i42

if.end12.i42:                                     ; preds = %if.end6.i39, %buf_needs_bounce.exit.i34.if.end12.i42_crit_edge
  %36 = phi i1 [ true, %if.end6.i39 ], [ false, %buf_needs_bounce.exit.i34.if.end12.i42_crit_edge ]
  %tbuf.0.i40 = phi ptr [ %32, %if.end6.i39 ], [ %addr.addr, %buf_needs_bounce.exit.i34.if.end12.i42_crit_edge ]
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %25, align 4
  call void @sdio_claim_host(ptr noundef %38) #8
  %39 = add i32 %reg_addr, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %39)
  %40 = icmp ult i32 %39, 6144
  %add.i47 = select i1 %40, i32 2044, i32 0
  %addr.addr.0.i48 = add i32 %add.i47, %reg_addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %addr.addr.0.i48)
  %cmp3.i49 = icmp eq i32 %addr.addr.0.i48, 16384
  %addr.addr.1.i50 = select i1 %cmp3.i49, i32 28668, i32 %addr.addr.0.i48
  %call11.i = call i32 @sdio_memcpy_toio(ptr noundef %38, i32 noundef %addr.addr.1.i50, ptr noundef %tbuf.0.i40, i32 noundef 4) #8
  call void @sdio_release_host(ptr noundef %38) #8
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %addr.addr.1.i50, ptr noundef nonnull @.str.21, ptr noundef %tbuf.0.i40, i32 noundef 4) #8
  call void @ath6kl_dbg_dump(i32 noundef 131072, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %tbuf.0.i40, i32 noundef 4) #8
  call fastcc void @trace_ath6kl_sdio(i32 noundef %addr.addr.1.i50, i32 noundef 594, ptr noundef %tbuf.0.i40, i32 noundef 4) #8
  br i1 %36, label %if.then20.i44, label %if.end12.i42.ath6kl_sdio_read_write_sync.exit46_crit_edge

if.end12.i42.ath6kl_sdio_read_write_sync.exit46_crit_edge: ; preds = %if.end12.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath6kl_sdio_read_write_sync.exit46

if.then20.i44:                                    ; preds = %if.end12.i42
  call void @__sanitizer_cov_trace_pc() #10
  %dma_buffer_mutex21.i43 = getelementptr inbounds %struct.ath6kl_sdio, ptr %25, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %dma_buffer_mutex21.i43) #8
  br label %ath6kl_sdio_read_write_sync.exit46

ath6kl_sdio_read_write_sync.exit46:               ; preds = %if.then20.i44, %if.end12.i42.ath6kl_sdio_read_write_sync.exit46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool6.not = icmp eq i32 %call11.i, 0
  br i1 %tobool6.not, label %ath6kl_sdio_read_write_sync.exit46.cleanup_crit_edge, label %ath6kl_sdio_read_write_sync.exit46.if.then7_crit_edge

ath6kl_sdio_read_write_sync.exit46.if.then7_crit_edge: ; preds = %ath6kl_sdio_read_write_sync.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

ath6kl_sdio_read_write_sync.exit46.cleanup_crit_edge: ; preds = %ath6kl_sdio_read_write_sync.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %ath6kl_sdio_read_write_sync.exit46.if.then7_crit_edge, %if.then3.i37.if.then7_crit_edge
  %retval.0.i4558 = phi i32 [ %call11.i, %ath6kl_sdio_read_write_sync.exit46.if.then7_crit_edge ], [ -12, %if.then3.i37.if.then7_crit_edge ]
  %41 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr.addr, align 4
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.ath6kl_set_addrwin_reg, i32 noundef %42, i32 noundef %reg_addr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %ath6kl_sdio_read_write_sync.exit46.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ %status.155.ph, %if.then3 ], [ %retval.0.i4558, %if.then7 ], [ 0, %ath6kl_sdio_read_write_sync.exit46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_enable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_disable_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_set_block_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_stop_txrx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_core_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_pm_suspend(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.63) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_sdio_pm_resume(ptr nocapture noundef readnone %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 1048576, ptr noundef nonnull @.str.64) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdio_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !111, !113, !115, !117, !119, !120, !122, !124, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__initcall__kmod_ath6kl_sdio__393_1447_ath6kl_sdio_init6, !1, !"__initcall__kmod_ath6kl_sdio__393_1447_ath6kl_sdio_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1447, i32 1}
!2 = !{ptr @__exitcall_ath6kl_sdio_exit, !3, !"__exitcall_ath6kl_sdio_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1448, i32 1}
!4 = !{ptr @__UNIQUE_ID_author394, !5, !"__UNIQUE_ID_author394", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1450, i32 1}
!6 = !{ptr @__UNIQUE_ID_description395, !7, !"__UNIQUE_ID_description395", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1451, i32 1}
!8 = !{ptr @__UNIQUE_ID_file396, !9, !"__UNIQUE_ID_file396", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1452, i32 1}
!10 = !{ptr @__UNIQUE_ID_license397, !9, !"__UNIQUE_ID_license397", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware398, !12, !"__UNIQUE_ID_firmware398", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1454, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware399, !14, !"__UNIQUE_ID_firmware399", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1455, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware400, !16, !"__UNIQUE_ID_firmware400", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1456, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware401, !18, !"__UNIQUE_ID_firmware401", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1457, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware402, !20, !"__UNIQUE_ID_firmware402", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1458, i32 1}
!21 = !{ptr @__UNIQUE_ID_firmware403, !22, !"__UNIQUE_ID_firmware403", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1459, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware404, !24, !"__UNIQUE_ID_firmware404", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1460, i32 1}
!25 = !{ptr @__UNIQUE_ID_firmware405, !26, !"__UNIQUE_ID_firmware405", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1461, i32 1}
!27 = !{ptr @__UNIQUE_ID_firmware406, !28, !"__UNIQUE_ID_firmware406", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1462, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware407, !30, !"__UNIQUE_ID_firmware407", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1463, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware408, !32, !"__UNIQUE_ID_firmware408", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1464, i32 1}
!33 = !{ptr @__UNIQUE_ID_firmware409, !34, !"__UNIQUE_ID_firmware409", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1465, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware410, !36, !"__UNIQUE_ID_firmware410", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1466, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware411, !38, !"__UNIQUE_ID_firmware411", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1467, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware412, !40, !"__UNIQUE_ID_firmware412", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1468, i32 1}
!41 = !{ptr @__UNIQUE_ID_firmware413, !42, !"__UNIQUE_ID_firmware413", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1469, i32 1}
!43 = !{ptr @__UNIQUE_ID_firmware414, !44, !"__UNIQUE_ID_firmware414", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1470, i32 1}
!45 = !{ptr @__UNIQUE_ID_firmware415, !46, !"__UNIQUE_ID_firmware415", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1471, i32 1}
!47 = !{ptr @__UNIQUE_ID_firmware416, !48, !"__UNIQUE_ID_firmware416", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1472, i32 1}
!49 = !{ptr @__UNIQUE_ID_firmware417, !50, !"__UNIQUE_ID_firmware417", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1473, i32 1}
!51 = !{ptr @__UNIQUE_ID_firmware418, !52, !"__UNIQUE_ID_firmware418", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1474, i32 1}
!53 = !{ptr @__UNIQUE_ID_firmware419, !54, !"__UNIQUE_ID_firmware419", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1475, i32 1}
!55 = !{ptr @.str, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1424, i32 10}
!57 = !{ptr @ath6kl_sdio_driver, !58, !"ath6kl_sdio_driver", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1423, i32 27}
!59 = !{ptr @ath6kl_sdio_devices, !60, !"ath6kl_sdio_devices", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1410, i32 36}
!61 = !{ptr @.str.1, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1315, i32 6}
!63 = !{ptr @ath6kl_sdio_probe.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1335, i32 2}
!65 = !{ptr @.str.2, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ath6kl_sdio_probe.__key.3, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1336, i32 2}
!68 = !{ptr @.str.4, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ath6kl_sdio_probe.__key.5, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1337, i32 2}
!71 = !{ptr @.str.6, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ath6kl_sdio_probe.__key.7, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1338, i32 2}
!74 = !{ptr @.str.8, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ath6kl_sdio_probe.__key.9, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1344, i32 2}
!77 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ath6kl_sdio_probe.__key.11, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1346, i32 2}
!80 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.13, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1353, i32 14}
!83 = !{ptr @.str.14, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1368, i32 14}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1374, i32 14}
!87 = !{ptr @.str.16, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 335, i32 14}
!89 = !{ptr @.str.17, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 180, i32 30}
!91 = !{ptr @.str.18, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 181, i32 28}
!93 = !{ptr @.str.19, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 181, i32 35}
!95 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 182, i32 36}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 182, i32 49}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 183, i32 46}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 85, i32 1}
!103 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!104 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!105 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!108 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 233, i32 6}
!111 = !{ptr @.str.27, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 234, i32 36}
!113 = !{ptr @.str.28, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 234, i32 43}
!115 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 247, i32 34}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath6kl/trace.h", i32 120, i32 1}
!119 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!120 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 215, i32 33}
!122 = !{ptr @__func__.ath6kl_sdio_free_bus_req, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 216, i32 6}
!124 = !{ptr @ath6kl_sdio_ops, !125, !"ath6kl_sdio_ops", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1254, i32 36}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 575, i32 6}
!128 = !{ptr @.str.31, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @__func__.ath6kl_sdio_alloc_busreq, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 207, i32 6}
!131 = !{ptr @.str.32, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 602, i32 14}
!133 = !{ptr @.str.33, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 484, i32 30}
!135 = !{ptr @.str.34, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 634, i32 14}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 745, i32 14}
!139 = !{ptr @.str.36, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 758, i32 8}
!141 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 767, i32 16}
!143 = !{ptr @.str.38, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 777, i32 15}
!145 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 783, i32 7}
!147 = !{ptr @.str.40, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 683, i32 6}
!149 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 877, i32 15}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 841, i32 33}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 849, i32 14}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 856, i32 14}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 934, i32 7}
!159 = !{ptr @.str.46, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1033, i32 14}
!161 = !{ptr @__func__.ath6kl_sdio_diag_read32, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1034, i32 7}
!163 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 995, i32 14}
!165 = !{ptr @__func__.ath6kl_set_addrwin_reg, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 996, i32 7}
!167 = !{ptr @.str.48, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1010, i32 14}
!169 = !{ptr @.str.49, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1051, i32 14}
!171 = !{ptr @__func__.ath6kl_sdio_diag_write32, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1052, i32 7}
!173 = !{ptr @.str.50, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1214, i32 14}
!175 = !{ptr @.str.51, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1116, i32 15}
!177 = !{ptr @.str.52, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1125, i32 14}
!179 = !{ptr @.str.53, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1146, i32 14}
!181 = !{ptr @.str.54, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1084, i32 15}
!183 = !{ptr @.str.55, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1096, i32 14}
!185 = !{ptr @.str.56, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 512, i32 30}
!187 = !{ptr @.str.57, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 518, i32 14}
!189 = !{ptr @.str.58, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 551, i32 30}
!191 = !{ptr @.str.59, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 808, i32 15}
!193 = !{ptr @.str.60, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 813, i32 31}
!195 = !{ptr @.str.61, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 821, i32 14}
!197 = !{ptr @.str.62, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1395, i32 6}
!199 = !{ptr @ath6kl_sdio_pm_ops, !200, !"ath6kl_sdio_pm_ops", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1295, i32 8}
!201 = !{ptr @.str.63, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1283, i32 33}
!203 = !{ptr @.str.64, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1290, i32 33}
!205 = !{ptr @.str.65, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath6kl/sdio.c", i32 1437, i32 14}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i8 0, i8 2}
!218 = !{!"branch_weights", i32 2000, i32 1}
!219 = !{!"branch_weights", i32 1, i32 2000}
!220 = !{i64 2155173471, i64 2155173963, i64 2155173508, i64 2155173564, i64 2155173598, i64 2155173622, i64 2155173663, i64 2155173684, i64 2155173712, i64 2155173746}
!221 = !{i64 2155167152, i64 2155167644, i64 2155167189, i64 2155167245, i64 2155167279, i64 2155167303, i64 2155167344, i64 2155167365, i64 2155167393, i64 2155167427}
!222 = !{i64 2155168762, i64 2155169254, i64 2155168799, i64 2155168855, i64 2155168889, i64 2155168913, i64 2155168954, i64 2155168975, i64 2155169003, i64 2155169037}
!223 = !{i64 2148989787, i64 2148989792, i64 2148989805, i64 2148989849, i64 2148989883, i64 2148989904}
!224 = !{i64 2157692376}
!225 = !{i64 2157692645}
!226 = !{i64 2149401128}
!227 = !{i64 2149402164}
!228 = !{i64 2157674728}
!229 = !{i64 2157674963}
