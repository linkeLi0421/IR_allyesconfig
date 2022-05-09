; ModuleID = '/llk/IR_all_yes/drivers/crypto/hisilicon/sec/sec_drv.c_pt.bc'
source_filename = "../drivers/crypto/hisilicon/sec/sec_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sec_dev_info = type { i32, i32, [2 x ptr], %struct.mutex, i32, [16 x %struct.sec_queue], ptr, ptr }
%struct.sec_queue = type { ptr, i32, [64 x i8], %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cq, %struct.sec_queue_ring_db, ptr, i32, i8, i32, [16 x i32], %struct.anon, i8, %struct.mutex, [512 x ptr] }
%struct.sec_queue_ring_cmd = type { %struct.atomic_t, %struct.mutex, ptr, i32, ptr }
%struct.sec_queue_ring_cq = type { ptr, i32 }
%struct.sec_queue_ring_db = type { ptr, i32 }
%struct.anon = type { %union.anon.3, [0 x ptr] }
%union.anon.3 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.sec_bd_info = type { i32, i32, i32, i32, %union.anon.1, %union.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sec_out_bd_info = type { i16 }

@sec_id_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sec_id_lock, i64 52), ptr getelementptr (i8, ptr @sec_id_lock, i64 52) }, ptr @sec_id_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@sec_queue_stop_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 830, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Releasing queue failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sec_queue_stop_release\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/crypto/hisilicon/sec/sec_drv.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sec_queue_stop_release._entry_ptr = internal global ptr @sec_queue_stop_release._entry, section ".printk_index", align 4
@__initcall__kmod_hisi_sec__234_1316_sec_driver_init6 = internal global ptr @sec_driver_init, section ".initcall6.init", align 4
@sec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sec_probe, ptr @sec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sec_driver_exit = internal global ptr @sec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [52 x i8] c"hisi_sec.file=drivers/crypto/hisilicon/sec/hisi_sec\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [21 x i8] c"hisi_sec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [53 x i8] c"hisi_sec.description=HiSilicon Security Accelerators\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [45 x i8] c"hisi_sec.author=Zaibo Xu <xuzaibo@huawei.com\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [63 x i8] c"hisi_sec.author=Jonathan Cameron <jonathan.cameron@huawei.com>\00", section ".modinfo", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sec_id_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sec_id_lock\00", [20 x i8] zeroinitializer }, align 32
@sec_devices = internal global { [8 x ptr], [32 x i8] } zeroinitializer, align 32
@sec_queue_alloc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 779, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"alloc sec queue failed! %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sec_queue_alloc_start\00", [42 x i8] zeroinitializer }, align 32
@sec_queue_alloc_start._entry_ptr = internal global ptr @sec_queue_alloc_start._entry, section ".printk_index", align 4
@sec_queue_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 656, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No queue %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sec_queue_free\00", [17 x i8] zeroinitializer }, align 32
@sec_queue_free._entry_ptr = internal global ptr @sec_queue_free._entry, section ".printk_index", align 4
@sec_queue_free._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 661, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Queue %u is idle\0A\00", [46 x i8] zeroinitializer }, align 32
@sec_queue_free._entry_ptr.13 = internal global ptr @sec_queue_free._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hisi_sec_platform_driver\00", [39 x i8] zeroinitializer }, align 32
@sec_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip06-sec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hip07-sec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set 64 bit dma mask %d\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sec_probe\00", [22 x i8] zeroinitializer }, align 32
@sec_probe._entry_ptr = internal global ptr @sec_probe._entry, section ".printk_index", align 4
@sec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->dev_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sgl\00", [28 x i8] zeroinitializer }, align 32
@sec_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 1225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create sec sgl dma pool\0A\00", [61 x i8] zeroinitializer }, align 32
@sec_probe._entry_ptr.21 = internal global ptr @sec_probe._entry.19, section ".printk_index", align 4
@sec_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.2, i32 1231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Base initialization fail! %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sec_probe._entry_ptr.24 = internal global ptr @sec_probe._entry.22, section ".printk_index", align 4
@sec_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.16, ptr @.str.2, i32 1250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register algorithms with crypto %d\0A\00", [50 x i8] zeroinitializer }, align 32
@sec_probe._entry_ptr.27 = internal global ptr @sec_probe._entry.25, section ".printk_index", align 4
@sec_map_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1019, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Memory resource %d not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sec_map_io\00", [21 x i8] zeroinitializer }, align 32
@sec_map_io._entry_ptr = internal global ptr @sec_map_io._entry, section ".printk_index", align 4
@sec_map_io._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 1028, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Memory resource %d could not be remapped\0A\00", [54 x i8] zeroinitializer }, align 32
@sec_map_io._entry_ptr.32 = internal global ptr @sec_map_io._entry.30, section ".printk_index", align 4
@sec_clk_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sec clock enable fail!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sec_clk_en\00", [21 x i8] zeroinitializer }, align 32
@sec_clk_en._entry_ptr = internal global ptr @sec_clk_en._entry, section ".printk_index", align 4
@sec_reset_whole_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reset req failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sec_reset_whole_module\00", [41 x i8] zeroinitializer }, align 32
@sec_reset_whole_module._entry_ptr = internal global ptr @sec_reset_whole_module._entry, section ".printk_index", align 4
@sec_reset_whole_module._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Reset dreq failed\0A\00", [45 x i8] zeroinitializer }, align 32
@sec_reset_whole_module._entry_ptr.39 = internal global ptr @sec_reset_whole_module._entry.37, section ".printk_index", align 4
@sec_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 964, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to set ipv4 hashmask %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sec_hw_init\00", [20 x i8] zeroinitializer }, align 32
@sec_hw_init._entry_ptr = internal global ptr @sec_hw_init._entry, section ".printk_index", align 4
@sec_ipv4_hashmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 461, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sec Ipv4 Hash Mask Input Error!\0A \00", [62 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sec_ipv4_hashmask\00", [46 x i8] zeroinitializer }, align 32
@sec_ipv4_hashmask._entry_ptr = internal global ptr @sec_ipv4_hashmask._entry, section ".printk_index", align 4
@sec_clk_dis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sec clock disable fail!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sec_clk_dis\00", [20 x i8] zeroinitializer }, align 32
@sec_clk_dis._entry_ptr = internal global ptr @sec_clk_dis._entry, section ".printk_index", align 4
@sec_queue_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Queue map failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sec_queue_config\00", [47 x i8] zeroinitializer }, align 32
@sec_queue_config._entry_ptr = internal global ptr @sec_queue_config._entry, section ".printk_index", align 4
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%d\00", [26 x i8] zeroinitializer }, align 32
@sec_queue_res_cfg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ring_cmd->lock\00", [16 x i8] zeroinitializer }, align 32
@sec_queue_map_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get queue %u memory resource\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sec_queue_map_io\00", [47 x i8] zeroinitializer }, align 32
@sec_queue_map_io._entry_ptr = internal global ptr @sec_queue_map_io._entry, section ".printk_index", align 4
@sec_queue_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request irq(%d) failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sec_queue_irq_init\00", [45 x i8] zeroinitializer }, align 32
@sec_queue_irq_init._entry_ptr = internal global ptr @sec_queue_irq_init._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"sec_id_lock\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 830, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"sec_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1307, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 225, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"sec_devices\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 224, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 778, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 656, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 661, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1311, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [10 x i8] c"sec_match\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1294, i32 49 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1211, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1220, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1222, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1225, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1231, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1249, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1019, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1026, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 291, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 331, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 350, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 964, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 461, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 308, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1155, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1007, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 1092, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 236, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [42 x i8] c"../drivers/crypto/hisilicon/sec/sec_drv.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 737, i32 3 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_sec_driver_exit, ptr @__initcall__kmod_hisi_sec__234_1316_sec_driver_init6, ptr @sec_clk_dis._entry, ptr @sec_clk_dis._entry_ptr, ptr @sec_clk_en._entry, ptr @sec_clk_en._entry_ptr, ptr @sec_driver_exit, ptr @sec_hw_init._entry, ptr @sec_hw_init._entry_ptr, ptr @sec_ipv4_hashmask._entry, ptr @sec_ipv4_hashmask._entry_ptr, ptr @sec_map_io._entry, ptr @sec_map_io._entry.30, ptr @sec_map_io._entry_ptr, ptr @sec_map_io._entry_ptr.32, ptr @sec_probe._entry, ptr @sec_probe._entry.19, ptr @sec_probe._entry.22, ptr @sec_probe._entry.25, ptr @sec_probe._entry_ptr, ptr @sec_probe._entry_ptr.21, ptr @sec_probe._entry_ptr.24, ptr @sec_probe._entry_ptr.27, ptr @sec_queue_alloc_start._entry, ptr @sec_queue_alloc_start._entry_ptr, ptr @sec_queue_config._entry, ptr @sec_queue_config._entry_ptr, ptr @sec_queue_free._entry, ptr @sec_queue_free._entry.11, ptr @sec_queue_free._entry_ptr, ptr @sec_queue_free._entry_ptr.13, ptr @sec_queue_irq_init._entry, ptr @sec_queue_irq_init._entry_ptr, ptr @sec_queue_map_io._entry, ptr @sec_queue_map_io._entry_ptr, ptr @sec_queue_stop_release._entry, ptr @sec_queue_stop_release._entry_ptr, ptr @sec_reset_whole_module._entry, ptr @sec_reset_whole_module._entry.37, ptr @sec_reset_whole_module._entry_ptr, ptr @sec_reset_whole_module._entry_ptr.39, ptr @sec_id_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sec_driver, ptr @.str.5, ptr @.str.6, ptr @sec_devices, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @sec_match, ptr @.str.15, ptr @.str.16, ptr @sec_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @sec_queue_res_cfg.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_id_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_stop_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_alloc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_free._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_map_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_map_io._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_clk_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_reset_whole_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_reset_whole_module._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_ipv4_hashmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_clk_dis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_res_cfg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_map_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_queue_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sec_queue_alloc_start_safe() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sec_id_lock, i32 noundef 0) #7
  %0 = load ptr, ptr @sec_devices, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %land.lhs.true.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.i = getelementptr inbounds %struct.sec_dev_info, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %queues_in_use.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %queues_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %2)
  %cmp1.i = icmp slt i32 %2, 17
  %spec.select.i = select i1 %cmp1.i, ptr %0, ptr null
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 17) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %entry.for.inc.i_crit_edge
  %sec_dev.1.i = phi ptr [ null, %entry.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %least_busy_n.1.i = phi i32 [ 17, %entry.for.inc.i_crit_edge ], [ %3, %land.lhs.true.i ]
  %4 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp eq ptr %4, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.1.i = getelementptr inbounds %struct.sec_dev_info, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %queues_in_use.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queues_in_use.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %least_busy_n.1.i)
  %cmp1.1.i = icmp slt i32 %6, %least_busy_n.1.i
  %spec.select.1.i = select i1 %cmp1.1.i, ptr %4, ptr %sec_dev.1.i
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %least_busy_n.1.i) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %sec_dev.1.1.i = phi ptr [ %sec_dev.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %spec.select.1.i, %land.lhs.true.1.i ]
  %least_busy_n.1.1.i = phi i32 [ %least_busy_n.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %7, %land.lhs.true.1.i ]
  %8 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 2), align 4
  %tobool.not.2.i = icmp eq ptr %8, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.2.i = getelementptr inbounds %struct.sec_dev_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %queues_in_use.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queues_in_use.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %least_busy_n.1.1.i)
  %cmp1.2.i = icmp slt i32 %10, %least_busy_n.1.1.i
  %spec.select.2.i = select i1 %cmp1.2.i, ptr %8, ptr %sec_dev.1.1.i
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %least_busy_n.1.1.i) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %sec_dev.1.2.i = phi ptr [ %sec_dev.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %spec.select.2.i, %land.lhs.true.2.i ]
  %least_busy_n.1.2.i = phi i32 [ %least_busy_n.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %11, %land.lhs.true.2.i ]
  %12 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 3), align 4
  %tobool.not.3.i = icmp eq ptr %12, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.3.i = getelementptr inbounds %struct.sec_dev_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %queues_in_use.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %queues_in_use.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %least_busy_n.1.2.i)
  %cmp1.3.i = icmp slt i32 %14, %least_busy_n.1.2.i
  %spec.select.3.i = select i1 %cmp1.3.i, ptr %12, ptr %sec_dev.1.2.i
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %least_busy_n.1.2.i) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %sec_dev.1.3.i = phi ptr [ %sec_dev.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %spec.select.3.i, %land.lhs.true.3.i ]
  %least_busy_n.1.3.i = phi i32 [ %least_busy_n.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ], [ %15, %land.lhs.true.3.i ]
  %16 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 4), align 4
  %tobool.not.4.i = icmp eq ptr %16, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.4.i = getelementptr inbounds %struct.sec_dev_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %queues_in_use.4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queues_in_use.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %least_busy_n.1.3.i)
  %cmp1.4.i = icmp slt i32 %18, %least_busy_n.1.3.i
  %spec.select.4.i = select i1 %cmp1.4.i, ptr %16, ptr %sec_dev.1.3.i
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %least_busy_n.1.3.i) #7
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %sec_dev.1.4.i = phi ptr [ %sec_dev.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ], [ %spec.select.4.i, %land.lhs.true.4.i ]
  %least_busy_n.1.4.i = phi i32 [ %least_busy_n.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ], [ %19, %land.lhs.true.4.i ]
  %20 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 5), align 4
  %tobool.not.5.i = icmp eq ptr %20, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.5.i = getelementptr inbounds %struct.sec_dev_info, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %queues_in_use.5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queues_in_use.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %least_busy_n.1.4.i)
  %cmp1.5.i = icmp slt i32 %22, %least_busy_n.1.4.i
  %spec.select.5.i = select i1 %cmp1.5.i, ptr %20, ptr %sec_dev.1.4.i
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 %least_busy_n.1.4.i) #7
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %sec_dev.1.5.i = phi ptr [ %sec_dev.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ], [ %spec.select.5.i, %land.lhs.true.5.i ]
  %least_busy_n.1.5.i = phi i32 [ %least_busy_n.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ], [ %23, %land.lhs.true.5.i ]
  %24 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 6), align 4
  %tobool.not.6.i = icmp eq ptr %24, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %queues_in_use.6.i = getelementptr inbounds %struct.sec_dev_info, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %queues_in_use.6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %queues_in_use.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %least_busy_n.1.5.i)
  %cmp1.6.i = icmp slt i32 %26, %least_busy_n.1.5.i
  %spec.select.6.i = select i1 %cmp1.6.i, ptr %24, ptr %sec_dev.1.5.i
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %least_busy_n.1.5.i) #7
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %sec_dev.1.6.i = phi ptr [ %sec_dev.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ], [ %spec.select.6.i, %land.lhs.true.6.i ]
  %least_busy_n.1.6.i = phi i32 [ %least_busy_n.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ], [ %27, %land.lhs.true.6.i ]
  %28 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 7), align 4
  %tobool.not.7.i = icmp eq ptr %28, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.sec_device_get.exit_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.sec_device_get.exit_crit_edge:        ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_device_get.exit

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %queues_in_use.7.i = getelementptr inbounds %struct.sec_dev_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %queues_in_use.7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queues_in_use.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %least_busy_n.1.6.i)
  %cmp1.7.i = icmp slt i32 %30, %least_busy_n.1.6.i
  br i1 %cmp1.7.i, label %land.lhs.true.7.i.if.end_crit_edge, label %land.lhs.true.7.i.sec_device_get.exit_crit_edge

land.lhs.true.7.i.sec_device_get.exit_crit_edge:  ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_device_get.exit

land.lhs.true.7.i.if.end_crit_edge:               ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sec_device_get.exit:                              ; preds = %land.lhs.true.7.i.sec_device_get.exit_crit_edge, %for.inc.6.i.sec_device_get.exit_crit_edge
  %tobool.not = icmp eq ptr %sec_dev.1.6.i, null
  br i1 %tobool.not, label %sec_device_get.exit.unlock_crit_edge, label %sec_device_get.exit.if.end_crit_edge

sec_device_get.exit.if.end_crit_edge:             ; preds = %sec_device_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sec_device_get.exit.unlock_crit_edge:             ; preds = %sec_device_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %sec_device_get.exit.if.end_crit_edge, %land.lhs.true.7.i.if.end_crit_edge
  %sec_dev.1.7.i6 = phi ptr [ %sec_dev.1.6.i, %sec_device_get.exit.if.end_crit_edge ], [ %28, %land.lhs.true.7.i.if.end_crit_edge ]
  %dev_lock.i.i = getelementptr inbounds %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i.i, i32 noundef 0) #7
  %in_use.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 0, i32 8
  %31 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %in_use.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %if.end.sec_alloc_queue.exit.i_crit_edge, label %for.inc.i.i

if.end.sec_alloc_queue.exit.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.i.i:                                      ; preds = %if.end
  %in_use.1.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 1, i32 8
  %33 = ptrtoint ptr %in_use.1.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %in_use.1.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.1.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.sec_alloc_queue.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %in_use.2.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 2, i32 8
  %35 = ptrtoint ptr %in_use.2.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %in_use.2.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.2.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %in_use.3.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 3, i32 8
  %37 = ptrtoint ptr %in_use.3.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %in_use.3.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.3.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %in_use.4.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 4, i32 8
  %39 = ptrtoint ptr %in_use.4.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %in_use.4.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.4.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %in_use.5.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 5, i32 8
  %41 = ptrtoint ptr %in_use.5.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in_use.5.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.5.i.i = icmp eq i8 %42, 0
  br i1 %tobool.not.5.i.i, label %for.inc.4.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %in_use.6.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 6, i32 8
  %43 = ptrtoint ptr %in_use.6.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %in_use.6.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.6.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.6.i.i, label %for.inc.5.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.6.i.i

for.inc.5.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %in_use.7.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 7, i32 8
  %45 = ptrtoint ptr %in_use.7.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %in_use.7.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.7.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.7.i.i

for.inc.6.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  %in_use.8.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 8, i32 8
  %47 = ptrtoint ptr %in_use.8.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %in_use.8.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.8.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.8.i.i, label %for.inc.7.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.8.i.i

for.inc.7.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.8.i.i:                                    ; preds = %for.inc.7.i.i
  %in_use.9.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 9, i32 8
  %49 = ptrtoint ptr %in_use.9.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %in_use.9.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.9.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.9.i.i, label %for.inc.8.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.9.i.i

for.inc.8.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.9.i.i:                                    ; preds = %for.inc.8.i.i
  %in_use.10.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 10, i32 8
  %51 = ptrtoint ptr %in_use.10.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %in_use.10.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.10.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.10.i.i, label %for.inc.9.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.10.i.i

for.inc.9.i.i.sec_alloc_queue.exit.i_crit_edge:   ; preds = %for.inc.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.10.i.i:                                   ; preds = %for.inc.9.i.i
  %in_use.11.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 11, i32 8
  %53 = ptrtoint ptr %in_use.11.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %in_use.11.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.11.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.11.i.i, label %for.inc.10.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.11.i.i

for.inc.10.i.i.sec_alloc_queue.exit.i_crit_edge:  ; preds = %for.inc.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.11.i.i:                                   ; preds = %for.inc.10.i.i
  %in_use.12.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 12, i32 8
  %55 = ptrtoint ptr %in_use.12.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %in_use.12.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.12.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.12.i.i, label %for.inc.11.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.12.i.i

for.inc.11.i.i.sec_alloc_queue.exit.i_crit_edge:  ; preds = %for.inc.11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.12.i.i:                                   ; preds = %for.inc.11.i.i
  %in_use.13.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 13, i32 8
  %57 = ptrtoint ptr %in_use.13.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %in_use.13.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.13.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.13.i.i, label %for.inc.12.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.13.i.i

for.inc.12.i.i.sec_alloc_queue.exit.i_crit_edge:  ; preds = %for.inc.12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.13.i.i:                                   ; preds = %for.inc.12.i.i
  %in_use.14.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 14, i32 8
  %59 = ptrtoint ptr %in_use.14.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %in_use.14.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.14.i.i = icmp eq i8 %60, 0
  br i1 %tobool.not.14.i.i, label %for.inc.13.i.i.sec_alloc_queue.exit.i_crit_edge, label %for.inc.14.i.i

for.inc.13.i.i.sec_alloc_queue.exit.i_crit_edge:  ; preds = %for.inc.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

for.inc.14.i.i:                                   ; preds = %for.inc.13.i.i
  %in_use.15.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 15, i32 8
  %61 = ptrtoint ptr %in_use.15.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %in_use.15.i.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.15.i.i = icmp eq i8 %62, 0
  br i1 %tobool.not.15.i.i, label %for.inc.14.i.i.sec_alloc_queue.exit.i_crit_edge, label %sec_alloc_queue.exit.thread.i

for.inc.14.i.i.sec_alloc_queue.exit.i_crit_edge:  ; preds = %for.inc.14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alloc_queue.exit.i

sec_alloc_queue.exit.thread.i:                    ; preds = %for.inc.14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %dev_lock.i.i) #7
  br label %do.end.i

sec_alloc_queue.exit.i:                           ; preds = %for.inc.14.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.13.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.12.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.11.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.10.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.9.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.8.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.7.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.6.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.5.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.4.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.3.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.2.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.1.i.i.sec_alloc_queue.exit.i_crit_edge, %for.inc.i.i.sec_alloc_queue.exit.i_crit_edge, %if.end.sec_alloc_queue.exit.i_crit_edge
  %i.020.lcssa.i.i = phi i32 [ 0, %if.end.sec_alloc_queue.exit.i_crit_edge ], [ 1, %for.inc.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 6, %for.inc.5.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 7, %for.inc.6.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 8, %for.inc.7.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 9, %for.inc.8.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 10, %for.inc.9.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 11, %for.inc.10.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 12, %for.inc.11.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 13, %for.inc.12.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 14, %for.inc.13.i.i.sec_alloc_queue.exit.i_crit_edge ], [ 15, %for.inc.14.i.i.sec_alloc_queue.exit.i_crit_edge ]
  %in_use.lcssa.i.i = phi ptr [ %in_use.i.i, %if.end.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.1.i.i, %for.inc.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.2.i.i, %for.inc.1.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.3.i.i, %for.inc.2.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.4.i.i, %for.inc.3.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.5.i.i, %for.inc.4.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.6.i.i, %for.inc.5.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.7.i.i, %for.inc.6.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.8.i.i, %for.inc.7.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.9.i.i, %for.inc.8.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.10.i.i, %for.inc.9.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.11.i.i, %for.inc.10.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.12.i.i, %for.inc.11.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.13.i.i, %for.inc.12.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.14.i.i, %for.inc.13.i.i.sec_alloc_queue.exit.i_crit_edge ], [ %in_use.15.i.i, %for.inc.14.i.i.sec_alloc_queue.exit.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 %i.020.lcssa.i.i
  %63 = ptrtoint ptr %in_use.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %in_use.lcssa.i.i, align 4
  %queues_in_use.i.i = getelementptr inbounds %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 4
  %64 = ptrtoint ptr %queues_in_use.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %queues_in_use.i.i, align 4
  %inc.i.i = add i32 %65, 1
  store i32 %inc.i.i, ptr %queues_in_use.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %dev_lock.i.i) #7
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sec_alloc_queue.exit.i.do.end.i_crit_edge, label %if.end.i

sec_alloc_queue.exit.i.do.end.i_crit_edge:        ; preds = %sec_alloc_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %sec_alloc_queue.exit.i.do.end.i_crit_edge, %sec_alloc_queue.exit.thread.i
  %retval.0.i11.i = phi ptr [ inttoptr (i32 -19 to ptr), %sec_alloc_queue.exit.thread.i ], [ %arrayidx.i.i, %sec_alloc_queue.exit.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 6
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  %68 = ptrtoint ptr %retval.0.i11.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.7, i32 noundef %68) #10
  br label %unlock

if.end.i:                                         ; preds = %sec_alloc_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 %i.020.lcssa.i.i, i32 6
  %69 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !136
  %task_irq.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 %i.020.lcssa.i.i, i32 1
  %71 = ptrtoint ptr %task_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %task_irq.i.i, align 4
  tail call void @enable_irq(i32 noundef %72) #7
  %expected.i.i = getelementptr %struct.sec_dev_info, ptr %sec_dev.1.7.i6, i32 0, i32 5, i32 %i.020.lcssa.i.i, i32 9
  %73 = ptrtoint ptr %expected.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %expected.i.i, align 4
  %74 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 50331648) #7, !srcloc !136
  %76 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %77, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16777216) #7, !srcloc !136
  br label %unlock

unlock:                                           ; preds = %if.end.i, %do.end.i, %sec_device_get.exit.unlock_crit_edge
  %queue.0 = phi ptr [ inttoptr (i32 -19 to ptr), %sec_device_get.exit.unlock_crit_edge ], [ %arrayidx.i.i, %if.end.i ], [ %retval.0.i11.i, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @sec_id_lock) #7
  ret ptr %queue.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sec_queue_stop_release(ptr nocapture noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %dev1 = getelementptr inbounds %struct.sec_dev_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %task_irq.i = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 1
  %4 = ptrtoint ptr %task_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %task_irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  %regs.i.i = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 6
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !136
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !136
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %queue_id.i = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 7
  %12 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp.i = icmp ugt i32 %13, 15
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %in_use.i = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 8
  %14 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_use.i, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %sec_queue_free.exit

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sec_queue_free.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev_lock.i = getelementptr inbounds %struct.sec_dev_info, ptr %11, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %dev_lock.i, i32 noundef 0) #7
  %16 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %in_use.i, align 4
  %queues_in_use.i = getelementptr inbounds %struct.sec_dev_info, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %queues_in_use.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queues_in_use.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %queues_in_use.i, align 4
  tail call void @mutex_unlock(ptr noundef %dev_lock.i) #7
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %entry.do.end_crit_edge ], [ @.str.12, %if.end.i.do.end_crit_edge ]
  %dev.i = getelementptr inbounds %struct.sec_dev_info, ptr %11, i32 0, i32 6
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull %.str.9.sink, i32 noundef %13) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef -19) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sec_queue_free.exit
  %retval.0.i9 = phi i32 [ -19, %do.end ], [ 0, %sec_queue_free.exit ]
  ret i32 %retval.0.i9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sec_queue_empty(ptr noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_cmd = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ring_cmd, i32 noundef 4) #7
  %0 = ptrtoint ptr %ring_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ring_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sec_queue_send(ptr noundef %queue, ptr nocapture noundef readonly %msg, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_cmd = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 3
  %regs = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %lock = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 3, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %add.ptr = getelementptr i8, ptr %1, i32 1540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %add.ptr4 = getelementptr i8, ptr %1, i32 92
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !137
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %2)
  %cmp = icmp eq i32 %3, %2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ring_cmd, i32 noundef 4) #7
  %5 = ptrtoint ptr %ring_cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %ring_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %6)
  %cmp9 = icmp eq i32 %6, 512
  br i1 %cmp9, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vaddr = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vaddr, align 4
  %add.ptr11 = getelementptr %struct.sec_bd_info, ptr %8, i32 %4
  %9 = call ptr @memcpy(ptr %add.ptr11, ptr %msg, i32 64)
  %arrayidx = getelementptr %struct.sec_queue, ptr %queue, i32 0, i32 14, i32 %4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ctx, ptr %arrayidx, align 4
  %add = add i32 %4, 1
  %rem = and i32 %add, 511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %rem)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %11) #7, !srcloc !136
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ring_cmd, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ring_cmd, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ring_cmd, ptr %ring_cmd, i32 1, ptr elementtype(i32) %ring_cmd) #7, !srcloc !142
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -11, %land.lhs.true.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sec_queue_can_enqueue(ptr noundef %queue, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_cmd = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ring_cmd, i32 noundef 4) #7
  %0 = ptrtoint ptr %ring_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ring_cmd, align 4
  %sub = sub i32 512, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %num)
  %cmp = icmp sge i32 %sub, %num
  ret i1 %cmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sec_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #7
  %call.i106 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 39160, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i106, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.sec_dev_info, ptr %call.i106, i32 0, i32 6
  %0 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev6, align 4
  %dev_lock = getelementptr inbounds %struct.sec_dev_info, ptr %call.i106, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %dev_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @sec_probe.__key) #7
  %call10 = tail call ptr @dmam_pool_create(ptr noundef nonnull @.str.18, ptr noundef %dev1, i32 noundef 832, i32 noundef 64, i32 noundef 0) #7
  %hw_sgl_pool = getelementptr inbounds %struct.sec_dev_info, ptr %call.i106, i32 0, i32 7
  %1 = ptrtoint ptr %hw_sgl_pool to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %hw_sgl_pool, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  %call.i.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end17.do.end.i.i_crit_edge, label %if.end.i.i

if.end17.do.end.i.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i.do.end.i.i_crit_edge, %if.end17.do.end.i.i_crit_edge
  %i.028.lcssa.i.i = phi i32 [ 0, %if.end17.do.end.i.i_crit_edge ], [ 1, %for.inc.i.i.do.end.i.i_crit_edge ]
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28, i32 noundef %i.028.lcssa.i.i) #10
  br label %do.end23

if.end.i.i:                                       ; preds = %if.end17
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.resource, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i.i.i, align 4
  %sub.i.i.i = sub i32 1, %7
  %add.i.i.i = add i32 %sub.i.i.i, %9
  %call3.i.i = tail call ptr @devm_ioremap(ptr noundef %5, i32 noundef %7, i32 noundef %add.i.i.i) #7
  %arrayidx.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3.i.i, ptr %arrayidx.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.do.end10.i.i_crit_edge, label %for.inc.i.i

if.end.i.i.do.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end.1.i.i.do.end10.i.i_crit_edge, %if.end.i.i.do.end10.i.i_crit_edge
  %i.028.lcssa29.i.i = phi i32 [ 0, %if.end.i.i.do.end10.i.i_crit_edge ], [ 1, %if.end.1.i.i.do.end10.i.i_crit_edge ]
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.31, i32 noundef %i.028.lcssa29.i.i) #10
  br label %do.end23

for.inc.i.i:                                      ; preds = %if.end.i.i
  %call.1.i.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool.not.1.i.i = icmp eq ptr %call.1.i.i, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.do.end.i.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %13 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6, align 4
  %15 = ptrtoint ptr %call.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.1.i.i, align 4
  %end.i.1.i.i = getelementptr inbounds %struct.resource, ptr %call.1.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %end.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i.1.i.i, align 4
  %sub.i.1.i.i = sub i32 1, %16
  %add.i.1.i.i = add i32 %sub.i.1.i.i, %18
  %call3.1.i.i = tail call ptr @devm_ioremap(ptr noundef %14, i32 noundef %16, i32 noundef %add.i.1.i.i) #7
  %arrayidx.1.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call3.1.i.i, ptr %arrayidx.1.i.i, align 4
  %tobool6.not.1.i.i = icmp eq ptr %call3.1.i.i, null
  br i1 %tobool6.not.1.i.i, label %if.end.1.i.i.do.end10.i.i_crit_edge, label %if.end.i

if.end.1.i.i.do.end10.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i.i

if.end.i:                                         ; preds = %if.end.1.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 117440512) #7, !srcloc !136
  %add.ptr1.i.i = getelementptr i8, ptr %21, i32 21340
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %23 = and i32 %22, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 117440512
  br i1 %cmp.i.i, label %if.end.i.if.end4.i_crit_edge, label %if.end.i24.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.i24.i:                                     ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %25 = and i32 %24, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %25)
  %cmp.1.i.i = icmp eq i32 %25, 117440512
  br i1 %cmp.1.i.i, label %if.end.i24.i.if.end4.i_crit_edge, label %if.end.1.i25.i

if.end.i24.i.if.end4.i_crit_edge:                 ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.1.i25.i:                                   ; preds = %if.end.i24.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %27 = and i32 %26, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %27)
  %cmp.2.i.i = icmp eq i32 %27, 117440512
  br i1 %cmp.2.i.i, label %if.end.1.i25.i.if.end4.i_crit_edge, label %if.end.2.i.i

if.end.1.i25.i.if.end4.i_crit_edge:               ; preds = %if.end.1.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.2.i.i:                                     ; preds = %if.end.1.i25.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %29 = and i32 %28, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %29)
  %cmp.3.i.i = icmp eq i32 %29, 117440512
  br i1 %cmp.3.i.i, label %if.end.2.i.i.if.end4.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %31 = and i32 %30, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %31)
  %cmp.4.i.i = icmp eq i32 %31, 117440512
  br i1 %cmp.4.i.i, label %if.end.3.i.i.if.end4.i_crit_edge, label %if.end.4.i.i

if.end.3.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.4.i.i:                                     ; preds = %if.end.3.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %33 = and i32 %32, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %33)
  %cmp.5.i.i = icmp eq i32 %33, 117440512
  br i1 %cmp.5.i.i, label %if.end.4.i.i.if.end4.i_crit_edge, label %if.end.5.i.i

if.end.4.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.5.i.i:                                     ; preds = %if.end.4.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %35 = and i32 %34, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %35)
  %cmp.6.i.i = icmp eq i32 %35, 117440512
  br i1 %cmp.6.i.i, label %if.end.5.i.i.if.end4.i_crit_edge, label %if.end.6.i.i

if.end.5.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.6.i.i:                                     ; preds = %if.end.5.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %37 = and i32 %36, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %37)
  %cmp.7.i.i = icmp eq i32 %37, 117440512
  br i1 %cmp.7.i.i, label %if.end.6.i.i.if.end4.i_crit_edge, label %if.end.7.i.i

if.end.6.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.7.i.i:                                     ; preds = %if.end.6.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %39 = and i32 %38, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %39)
  %cmp.8.i.i = icmp eq i32 %39, 117440512
  br i1 %cmp.8.i.i, label %if.end.7.i.i.if.end4.i_crit_edge, label %if.end.8.i.i

if.end.7.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end.8.i.i:                                     ; preds = %if.end.7.i.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #7, !srcloc !137
  %41 = and i32 %40, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %41)
  %cmp.9.i.i = icmp eq i32 %41, 117440512
  br i1 %cmp.9.i.i, label %if.end.8.i.i.if.end4.i_crit_edge, label %sec_clk_en.exit.i

if.end.8.i.i.if.end4.i_crit_edge:                 ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

sec_clk_en.exit.i:                                ; preds = %if.end.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.33) #10
  br label %do.end23

if.end4.i:                                        ; preds = %if.end.8.i.i.if.end4.i_crit_edge, %if.end.7.i.i.if.end4.i_crit_edge, %if.end.6.i.i.if.end4.i_crit_edge, %if.end.5.i.i.if.end4.i_crit_edge, %if.end.4.i.i.if.end4.i_crit_edge, %if.end.3.i.i.if.end4.i_crit_edge, %if.end.2.i.i.if.end4.i_crit_edge, %if.end.1.i25.i.if.end4.i_crit_edge, %if.end.i24.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %45, i32 2728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 16777216) #7, !srcloc !136
  %add.ptr1.i29.i = getelementptr i8, ptr %45, i32 2744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i29.i, i32 16777216) #7, !srcloc !136
  %add.ptr2.i.i = getelementptr i8, ptr %45, i32 23124
  %add.ptr4.i.i = getelementptr i8, ptr %45, i32 23132
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i31.i.while.cond.i.i_crit_edge, %if.end4.i
  %i.0.i.i = phi i32 [ 0, %if.end4.i ], [ %inc.i.i, %if.end.i31.i.while.cond.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !137
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i30.i = icmp eq i32 %47, 0
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !137
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool8.not.i.i = icmp eq i32 %49, 0
  %or.cond.i.i = select i1 %tobool.not.i30.i, i1 true, i1 %tobool8.not.i.i
  br i1 %or.cond.i.i, label %if.end.i31.i, label %while.end.i.i

if.end.i31.i:                                     ; preds = %while.cond.i.i
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 11
  br i1 %exitcond.i.i, label %if.end.i31.i.sec_clk_disable.i_crit_edge, label %if.end.i31.i.while.cond.i.i_crit_edge

if.end.i31.i.while.cond.i.i_crit_edge:            ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

if.end.i31.i.sec_clk_disable.i_crit_edge:         ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_clk_disable.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %add.ptr14.i.i = getelementptr i8, ptr %45, i32 2732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i.i, i32 16777216) #7, !srcloc !136
  %add.ptr15.i.i = getelementptr i8, ptr %45, i32 2748
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i.i, i32 16777216) #7, !srcloc !136
  br label %while.cond16.i.i

while.cond16.i.i:                                 ; preds = %if.end36.i.i.while.cond16.i.i_crit_edge, %while.end.i.i
  %i.1.i.i = phi i32 [ 0, %while.end.i.i ], [ %inc37.i.i, %if.end36.i.i.while.cond16.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !137
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool23.not.i.i = icmp eq i32 %51, 0
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !137
  %53 = and i32 %52, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool30.not.i.i = icmp eq i32 %53, 0
  %or.cond63.i.i = select i1 %tobool23.not.i.i, i1 %tobool30.not.i.i, i1 false
  br i1 %or.cond63.i.i, label %if.end8.i, label %if.end36.i.i

if.end36.i.i:                                     ; preds = %while.cond16.i.i
  %inc37.i.i = add nuw nsw i32 %i.1.i.i, 1
  %exitcond66.i.i = icmp eq i32 %inc37.i.i, 11
  br i1 %exitcond66.i.i, label %if.end36.i.i.sec_clk_disable.i_crit_edge, label %if.end36.i.i.while.cond16.i.i_crit_edge

if.end36.i.i.while.cond16.i.i_crit_edge:          ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond16.i.i

if.end36.i.i.sec_clk_disable.i_crit_edge:         ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_clk_disable.i

if.end8.i:                                        ; preds = %while.cond16.i.i
  %54 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev6, align 4
  %call.i34.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %55) #7
  %tobool.not.i35.i = icmp eq ptr %call.i34.i, null
  br i1 %tobool.not.i35.i, label %if.end8.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.if.else.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i
  %56 = ptrtoint ptr %call.i34.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call.i34.i, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i37.i_crit_edge

land.lhs.true.i.i.if.end.i37.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i37.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end8.i.if.else.i.i_crit_edge
  br label %if.end.i37.i

if.end.i37.i:                                     ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end.i37.i_crit_edge
  %.sink.i.i = phi i32 [ 10, %if.else.i.i ], [ 5, %land.lhs.true.i.i.if.end.i37.i_crit_edge ]
  %num_saas2.i.i = getelementptr inbounds %struct.sec_dev_info, ptr %call.i106, i32 0, i32 1
  %58 = ptrtoint ptr %num_saas2.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink.i.i, ptr %num_saas2.i.i, align 4
  %sub4.i.i = sub nuw nsw i32 32, %.sink.i.i
  %shr.i.i = lshr i32 -1, %sub4.i.i
  %59 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #7
  %60 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.1.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #7, !srcloc !136
  %62 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 104
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !137
  %65 = and i32 %64, -196609
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %65) #7, !srcloc !136
  %66 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev6, align 4
  %call.i.i.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %69) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i37.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i37.i.if.else.i.i.i_crit_edge:             ; preds = %if.end.i37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i37.i
  %70 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call.i.i.i, align 4
  %and.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.if.else.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 -1630583808) #7, !srcloc !136
  br label %sec_cache_config.exit.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.else.i.i.i_crit_edge, %if.end.i37.i.if.else.i.i.i_crit_edge
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 -640744448) #7, !srcloc !136
  br label %sec_cache_config.exit.i.i

sec_cache_config.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %72 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %73, i32 104
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #7, !srcloc !137
  %75 = or i32 %74, 1879048192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %75) #7, !srcloc !136
  %76 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %77, i32 104
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i.i) #7, !srcloc !137
  %79 = and i32 %78, -251658241
  %80 = or i32 %79, 117440512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %80) #7, !srcloc !136
  %81 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %82, i32 104
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i.i) #7, !srcloc !137
  %84 = or i32 %83, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %84) #7, !srcloc !136
  %85 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %86, i32 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #7, !srcloc !137
  %88 = and i32 %87, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i.i, i32 %88) #7, !srcloc !136
  %89 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %90, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #7, !srcloc !137
  %92 = and i32 %91, -33554433
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %92) #7, !srcloc !136
  %93 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %94, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 -1) #7, !srcloc !136
  %95 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %96, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 0) #7, !srcloc !136
  %97 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i16.i.i = getelementptr i8, ptr %98, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i.i, i32 0) #7, !srcloc !136
  %add.ptr.1.i.i.i = getelementptr i8, ptr %98, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.2.i.i.i = getelementptr i8, ptr %98, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.3.i.i.i = getelementptr i8, ptr %98, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.4.i.i.i = getelementptr i8, ptr %98, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.5.i.i.i = getelementptr i8, ptr %98, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.6.i.i.i = getelementptr i8, ptr %98, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.7.i.i.i = getelementptr i8, ptr %98, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.7.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.8.i.i.i = getelementptr i8, ptr %98, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.8.i.i.i, i32 0) #7, !srcloc !136
  %add.ptr.9.i.i.i = getelementptr i8, ptr %98, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.9.i.i.i, i32 0) #7, !srcloc !136
  %99 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %100, i32 112
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #7, !srcloc !137
  %102 = and i32 %101, -50331649
  %103 = or i32 %102, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %103) #7, !srcloc !136
  br i1 %tobool.not.i35.i, label %sec_cache_config.exit.i.i.if.end24.i.i_crit_edge, label %land.lhs.true15.i.i

sec_cache_config.exit.i.i.if.end24.i.i_crit_edge: ; preds = %sec_cache_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

land.lhs.true15.i.i:                              ; preds = %sec_cache_config.exit.i.i
  %104 = ptrtoint ptr %call.i34.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %call.i34.i, align 4
  %and17.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true15.i.i.if.end24.i.i_crit_edge, label %land.lhs.true15.i.i.for.body.i.i_crit_edge

land.lhs.true15.i.i.for.body.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  br label %for.body.i.i

land.lhs.true15.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %land.lhs.true15.i.i.for.body.i.i_crit_edge
  %i.045.i.i = phi i32 [ %inc.i39.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %land.lhs.true15.i.i.for.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.1.i.i, align 4
  %mul.i.i.i = shl nuw nsw i32 %i.045.i.i, 2
  %add.i.i38.i = add nuw nsw i32 %mul.i.i.i, 256
  %add.ptr.i20.i.i = getelementptr i8, ptr %107, i32 %add.i.i38.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 1536) #7, !srcloc !136
  %108 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add22.i.i = add nuw nsw i32 %mul.i.i.i, 512
  %add.ptr23.i.i = getelementptr i8, ptr %109, i32 %add22.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i, i32 1056964608) #7, !srcloc !136
  %inc.i39.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i39.i, 16
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end24.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.if.end24.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %for.body.i.i.if.end24.i.i_crit_edge, %land.lhs.true15.i.i.if.end24.i.i_crit_edge, %sec_cache_config.exit.i.i.if.end24.i.i_crit_edge
  %110 = ptrtoint ptr %num_saas2.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_saas2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp2746.not.i.i = icmp eq i32 %111, 0
  br i1 %cmp2746.not.i.i, label %if.end24.i.i.for.body.preheader_crit_edge, label %if.end24.i.i.for.body28.i.i_crit_edge

if.end24.i.i.for.body28.i.i_crit_edge:            ; preds = %if.end24.i.i
  br label %for.body28.i.i

if.end24.i.i.for.body.preheader_crit_edge:        ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.body28.i.i.for.body.preheader_crit_edge, %if.end24.i.i.for.body.preheader_crit_edge
  br label %for.body

for.body28.i.i:                                   ; preds = %for.body28.i.i.for.body28.i.i_crit_edge, %if.end24.i.i.for.body28.i.i_crit_edge
  %i.147.i.i = phi i32 [ %inc30.i.i, %for.body28.i.i.for.body28.i.i_crit_edge ], [ 0, %if.end24.i.i.for.body28.i.i_crit_edge ]
  %112 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %113, i32 4096
  %mul.i23.i.i = shl i32 %i.147.i.i, 12
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i22.i.i, i32 %mul.i23.i.i
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i.i) #7, !srcloc !137
  %115 = or i32 %114, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 %115) #7, !srcloc !136
  %116 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr1.i25.i.i = getelementptr i8, ptr %117, i32 4608
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i25.i.i, i32 %mul.i23.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 0) #7, !srcloc !136
  %inc30.i.i = add nuw i32 %i.147.i.i, 1
  %118 = ptrtoint ptr %num_saas2.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_saas2.i.i, align 4
  %cmp27.i.i = icmp ult i32 %inc30.i.i, %119
  br i1 %cmp27.i.i, label %for.body28.i.i.for.body28.i.i_crit_edge, label %for.body28.i.i.for.body.preheader_crit_edge

for.body28.i.i.for.body.preheader_crit_edge:      ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

for.body28.i.i.for.body28.i.i_crit_edge:          ; preds = %for.body28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28.i.i

sec_clk_disable.i:                                ; preds = %if.end36.i.i.sec_clk_disable.i_crit_edge, %if.end.i31.i.sec_clk_disable.i_crit_edge
  %.str.38.sink.i.i = phi ptr [ @.str.38, %if.end36.i.i.sec_clk_disable.i_crit_edge ], [ @.str.35, %if.end.i31.i.sec_clk_disable.i_crit_edge ]
  %120 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull %.str.38.sink.i.i) #10
  tail call fastcc void @sec_clk_dis(ptr noundef nonnull %call.i106) #7
  br label %do.end23

do.end23:                                         ; preds = %sec_clk_disable.i, %sec_clk_en.exit.i, %do.end10.i.i, %do.end.i.i
  %retval.0.i.ph = phi i32 [ -22, %do.end.i.i ], [ -22, %do.end10.i.i ], [ -5, %sec_clk_en.exit.i ], [ -5, %sec_clk_disable.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0239 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i106, ptr %arrayidx, align 4
  %queue_id1.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 7
  %123 = ptrtoint ptr %queue_id1.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %i.0239, ptr %queue_id1.i.i, align 4
  %124 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev6, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i107 = icmp eq ptr %127, null
  br i1 %tobool.not.i.i.i107, label %if.end.i.i.i, label %for.body.sec_queue_base_init.exit.i_crit_edge

for.body.sec_queue_base_init.exit.i_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_queue_base_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  br label %sec_queue_base_init.exit.i

sec_queue_base_init.exit.i:                       ; preds = %if.end.i.i.i, %for.body.sec_queue_base_init.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %129, %if.end.i.i.i ], [ %127, %for.body.sec_queue_base_init.exit.i_crit_edge ]
  %name.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 2
  %call3.i.i108 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i.i, i32 noundef 64, ptr noundef nonnull @.str.48, ptr noundef %retval.0.i.i.i, i32 noundef %i.0239) #7
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx, align 4
  %dev1.i.i109 = getelementptr inbounds %struct.sec_dev_info, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %dev1.i.i109 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev1.i.i109, align 4
  %ring_cq3.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 4
  %ring_db4.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 5
  %paddr.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 3, i32 3
  %call.i.i.i110 = tail call ptr @dma_alloc_attrs(ptr noundef %133, i32 noundef 32768, ptr noundef %paddr.i.i, i32 noundef 3264, i32 noundef 0) #7
  %vaddr.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 3, i32 2
  %134 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i.i.i110, ptr %vaddr.i.i, align 4
  %tobool.not.i.i111 = icmp eq ptr %call.i.i.i110, null
  br i1 %tobool.not.i.i111, label %sec_queue_base_init.exit.i.queues_unconfig_crit_edge, label %if.end.i.i112

sec_queue_base_init.exit.i.queues_unconfig_crit_edge: ; preds = %sec_queue_base_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queues_unconfig

if.end.i.i112:                                    ; preds = %sec_queue_base_init.exit.i
  %ring_cmd2.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ring_cmd2.i.i, i32 noundef 4) #7
  %135 = ptrtoint ptr %ring_cmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 0, ptr %ring_cmd2.i.i, align 4
  %lock.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 3, i32 1
  tail call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @sec_queue_res_cfg.__key) #7
  %callback.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 3, i32 4
  %136 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @sec_alg_callback, ptr %callback.i.i, align 4
  %paddr6.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 4, i32 1
  %call.i67.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %133, i32 noundef 4096, ptr noundef %paddr6.i.i, i32 noundef 3264, i32 noundef 0) #7
  %137 = ptrtoint ptr %ring_cq3.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i67.i.i, ptr %ring_cq3.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call.i67.i.i, null
  br i1 %tobool10.not.i.i, label %if.end.i.i112.queues_unconfig.sink.split_crit_edge, label %if.end12.i.i

if.end.i.i112.queues_unconfig.sink.split_crit_edge: ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %queues_unconfig.sink.split

if.end12.i.i:                                     ; preds = %if.end.i.i112
  %paddr13.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 5, i32 1
  %call.i68.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %133, i32 noundef 32768, ptr noundef %paddr13.i.i, i32 noundef 3264, i32 noundef 0) #7
  %138 = ptrtoint ptr %ring_db4.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call.i68.i.i, ptr %ring_db4.i.i, align 4
  %tobool17.not.i.i = icmp eq ptr %call.i68.i.i, null
  br i1 %tobool17.not.i.i, label %if.end12.i.i.queues_unconfig.sink.split.sink.split_crit_edge, label %if.end19.i.i

if.end12.i.i.queues_unconfig.sink.split.sink.split_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queues_unconfig.sink.split.sink.split

if.end19.i.i:                                     ; preds = %if.end12.i.i
  %add.ptr.i.i113 = getelementptr i8, ptr %133, i32 -16
  %139 = ptrtoint ptr %queue_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %queue_id1.i.i, align 4
  %mul.i.i = shl i32 %140, 1
  %add.i.i = or i32 %mul.i.i, 1
  %call20.i.i = tail call i32 @platform_get_irq(ptr noundef %add.ptr.i.i113, i32 noundef %add.i.i) #7
  %task_irq.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 1
  %141 = ptrtoint ptr %task_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %call20.i.i, ptr %task_irq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20.i.i)
  %cmp.i.i114 = icmp slt i32 %call20.i.i, 1
  br i1 %cmp.i.i114, label %if.end19.i.i.queues_unconfig.sink.split.sink.split.sink.split_crit_edge, label %if.end.i116

if.end19.i.i.queues_unconfig.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %queues_unconfig.sink.split.sink.split.sink.split

if.end.i116:                                      ; preds = %if.end19.i.i
  %142 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx, align 4
  %dev1.i14.i = getelementptr inbounds %struct.sec_dev_info, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %dev1.i14.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev1.i14.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %145, i32 -16
  %146 = ptrtoint ptr %queue_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %queue_id1.i.i, align 4
  %add.i17.i = add i32 %147, 2
  %call.i.i115 = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i15.i, i32 noundef 512, i32 noundef %add.i17.i) #7
  %tobool.not.i18.i = icmp eq ptr %call.i.i115, null
  br i1 %tobool.not.i18.i, label %do.end.i.i117, label %if.end.i19.i

do.end.i.i117:                                    ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %queue_id1.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %queue_id1.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.50, i32 noundef %149) #10
  br label %do.end.i

if.end.i19.i:                                     ; preds = %if.end.i116
  %150 = ptrtoint ptr %call.i.i115 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %call.i.i115, align 4
  %end.i.i.i118 = getelementptr inbounds %struct.resource, ptr %call.i.i115, i32 0, i32 1
  %152 = ptrtoint ptr %end.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %end.i.i.i118, align 4
  %sub.i.i.i119 = sub i32 1, %151
  %add.i.i.i120 = add i32 %sub.i.i.i119, %153
  %call4.i.i = tail call ptr @ioremap(i32 noundef %151, i32 noundef %add.i.i.i120) #7
  %regs.i.i = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %i.0239, i32 6
  %154 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call4.i.i, ptr %regs.i.i, align 4
  %tobool6.not.i.i121 = icmp eq ptr %call4.i.i, null
  br i1 %tobool6.not.i.i121, label %if.end.i19.i.do.end.i_crit_edge, label %if.end28

if.end.i19.i.do.end.i_crit_edge:                  ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i19.i.do.end.i_crit_edge, %do.end.i.i117
  %155 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.46, i32 noundef -12) #10
  br label %queues_unconfig.sink.split.sink.split.sink.split.sink.split

if.end28:                                         ; preds = %if.end.i19.i
  %add.ptr.i.i.i122 = getelementptr i8, ptr %call4.i.i, i32 112
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i122) #7, !srcloc !137
  %158 = and i32 %157, -50331649
  %159 = or i32 %158, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i122, i32 %159) #7, !srcloc !136
  %160 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %161, i32 116
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i) #7, !srcloc !137
  %163 = and i32 %162, -50331649
  %164 = or i32 %163, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %164) #7, !srcloc !136
  %165 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %166, i32 112
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i.i) #7, !srcloc !137
  %168 = or i32 %167, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 %168) #7, !srcloc !136
  %169 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %170, i32 116
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #7, !srcloc !137
  %172 = or i32 %171, 67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %172) #7, !srcloc !136
  %173 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %174, i32 8
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #7, !srcloc !137
  %176 = or i32 %175, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i.i, i32 %176) #7, !srcloc !136
  %177 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %178, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 16777216) #7, !srcloc !136
  %179 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i35.i.i = getelementptr i8, ptr %180, i32 80
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35.i.i) #7, !srcloc !137
  %182 = and i32 %181, 15794175
  %183 = or i32 %182, -16711680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i.i, i32 %183) #7, !srcloc !136
  %184 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %paddr.i.i, align 4
  %186 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i37.i.i = getelementptr i8, ptr %187, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i.i, i32 0) #7, !srcloc !136
  %188 = tail call i32 @llvm.bswap.i32(i32 %185) #7
  %189 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %190, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %188) #7, !srcloc !136
  %191 = ptrtoint ptr %paddr6.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %paddr6.i.i, align 4
  %193 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %194, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 0) #7, !srcloc !136
  %195 = tail call i32 @llvm.bswap.i32(i32 %192) #7
  %196 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i40.i.i = getelementptr i8, ptr %197, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i40.i.i, i32 %195) #7, !srcloc !136
  %198 = ptrtoint ptr %paddr13.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %paddr13.i.i, align 4
  %200 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %201, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i.i, i32 0) #7, !srcloc !136
  %202 = tail call i32 @llvm.bswap.i32(i32 %199) #7
  %203 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i43.i.i = getelementptr i8, ptr %204, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i43.i.i, i32 %202) #7, !srcloc !136
  %205 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %206, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 65536) #7, !srcloc !136
  %207 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i45.i.i = getelementptr i8, ptr %208, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 -1) #7, !srcloc !136
  %209 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %210, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 -1) #7, !srcloc !136
  %211 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 50331648) #7, !srcloc !136
  %213 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx, align 4
  %215 = ptrtoint ptr %task_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %task_irq.i.i, align 4
  %call.i125 = tail call i32 @request_threaded_irq(i32 noundef %216, ptr noundef nonnull @sec_isr_handle_th, ptr noundef nonnull @sec_isr_handle, i32 noundef 1, ptr noundef %name.i.i, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.sec_dev_info, ptr %214, i32 0, i32 6
  %217 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.52, i32 noundef %216, i32 noundef %call.i125) #10
  %219 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i.i, align 4
  tail call void @iounmap(ptr noundef %220) #7
  br label %queues_unconfig.sink.split.sink.split.sink.split.sink.split

for.inc:                                          ; preds = %if.end28
  tail call void @disable_irq(i32 noundef %216) #7
  %inc = add nuw nsw i32 %i.0239, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call37 = tail call i32 @sec_algs_register() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call37) #10
  br label %for.body50.preheader

if.end43:                                         ; preds = %for.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %221 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i106, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sec_id_lock, i32 noundef 0) #7
  %222 = load ptr, ptr @sec_devices, align 4
  %tobool.not.i131 = icmp eq ptr %222, null
  br i1 %tobool.not.i131, label %if.end43.sec_id_alloc.exit.thread_crit_edge, label %for.inc.i

if.end43.sec_id_alloc.exit.thread_crit_edge:      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.i:                                        ; preds = %if.end43
  %223 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 1), align 4
  %tobool.not.1.i = icmp eq ptr %223, null
  br i1 %tobool.not.1.i, label %for.inc.i.sec_id_alloc.exit.thread_crit_edge, label %for.inc.1.i

for.inc.i.sec_id_alloc.exit.thread_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.1.i:                                      ; preds = %for.inc.i
  %224 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 2), align 4
  %tobool.not.2.i = icmp eq ptr %224, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.sec_id_alloc.exit.thread_crit_edge, label %for.inc.2.i

for.inc.1.i.sec_id_alloc.exit.thread_crit_edge:   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %225 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 3), align 4
  %tobool.not.3.i = icmp eq ptr %225, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.sec_id_alloc.exit.thread_crit_edge, label %for.inc.3.i

for.inc.2.i.sec_id_alloc.exit.thread_crit_edge:   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %226 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 4), align 4
  %tobool.not.4.i = icmp eq ptr %226, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.sec_id_alloc.exit.thread_crit_edge, label %for.inc.4.i

for.inc.3.i.sec_id_alloc.exit.thread_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %227 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 5), align 4
  %tobool.not.5.i = icmp eq ptr %227, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.sec_id_alloc.exit.thread_crit_edge, label %for.inc.5.i

for.inc.4.i.sec_id_alloc.exit.thread_crit_edge:   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %228 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 6), align 4
  %tobool.not.6.i = icmp eq ptr %228, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.sec_id_alloc.exit.thread_crit_edge, label %for.inc.6.i

for.inc.5.i.sec_id_alloc.exit.thread_crit_edge:   ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %229 = load ptr, ptr getelementptr inbounds ([8 x ptr], ptr @sec_devices, i32 0, i32 7), align 4
  %tobool.not.7.i = icmp eq ptr %229, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.sec_id_alloc.exit.thread_crit_edge, label %algs_unregister

for.inc.6.i.sec_id_alloc.exit.thread_crit_edge:   ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_id_alloc.exit.thread

sec_id_alloc.exit.thread:                         ; preds = %for.inc.6.i.sec_id_alloc.exit.thread_crit_edge, %for.inc.5.i.sec_id_alloc.exit.thread_crit_edge, %for.inc.4.i.sec_id_alloc.exit.thread_crit_edge, %for.inc.3.i.sec_id_alloc.exit.thread_crit_edge, %for.inc.2.i.sec_id_alloc.exit.thread_crit_edge, %for.inc.1.i.sec_id_alloc.exit.thread_crit_edge, %for.inc.i.sec_id_alloc.exit.thread_crit_edge, %if.end43.sec_id_alloc.exit.thread_crit_edge
  %i.015.lcssa.i = phi i32 [ 0, %if.end43.sec_id_alloc.exit.thread_crit_edge ], [ 1, %for.inc.i.sec_id_alloc.exit.thread_crit_edge ], [ 2, %for.inc.1.i.sec_id_alloc.exit.thread_crit_edge ], [ 3, %for.inc.2.i.sec_id_alloc.exit.thread_crit_edge ], [ 4, %for.inc.3.i.sec_id_alloc.exit.thread_crit_edge ], [ 5, %for.inc.4.i.sec_id_alloc.exit.thread_crit_edge ], [ 6, %for.inc.5.i.sec_id_alloc.exit.thread_crit_edge ], [ 7, %for.inc.6.i.sec_id_alloc.exit.thread_crit_edge ]
  %230 = ptrtoint ptr %call.i106 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %i.015.lcssa.i, ptr %call.i106, align 4
  %arrayidx5.i = getelementptr [8 x ptr], ptr @sec_devices, i32 0, i32 %i.015.lcssa.i
  %231 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call.i106, ptr %arrayidx5.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sec_id_lock) #7
  br label %cleanup

algs_unregister:                                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @sec_id_lock) #7
  tail call void @sec_algs_unregister() #7
  br label %for.body50.preheader

queues_unconfig.sink.split.sink.split.sink.split.sink.split: ; preds = %if.then33, %do.end.i
  %ret.0.ph.ph.ph.ph = phi i32 [ %call.i125, %if.then33 ], [ -12, %do.end.i ]
  %232 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx, align 4
  %dev1.i.i129 = getelementptr inbounds %struct.sec_dev_info, ptr %233, i32 0, i32 6
  %234 = ptrtoint ptr %dev1.i.i129 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev1.i.i129, align 4
  br label %queues_unconfig.sink.split.sink.split.sink.split

queues_unconfig.sink.split.sink.split.sink.split: ; preds = %queues_unconfig.sink.split.sink.split.sink.split.sink.split, %if.end19.i.i.queues_unconfig.sink.split.sink.split.sink.split_crit_edge
  %.lcssa408.sink = phi ptr [ %235, %queues_unconfig.sink.split.sink.split.sink.split.sink.split ], [ %133, %if.end19.i.i.queues_unconfig.sink.split.sink.split.sink.split_crit_edge ]
  %ret.0.ph.ph.ph = phi i32 [ %ret.0.ph.ph.ph.ph, %queues_unconfig.sink.split.sink.split.sink.split.sink.split ], [ -22, %if.end19.i.i.queues_unconfig.sink.split.sink.split.sink.split_crit_edge ]
  %236 = ptrtoint ptr %ring_db4.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ring_db4.i.i, align 4
  %238 = ptrtoint ptr %paddr13.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %paddr13.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %.lcssa408.sink, i32 noundef 32768, ptr noundef %237, i32 noundef %239, i32 noundef 0) #7
  br label %queues_unconfig.sink.split.sink.split

queues_unconfig.sink.split.sink.split:            ; preds = %queues_unconfig.sink.split.sink.split.sink.split, %if.end12.i.i.queues_unconfig.sink.split.sink.split_crit_edge
  %.sink440 = phi ptr [ %.lcssa408.sink, %queues_unconfig.sink.split.sink.split.sink.split ], [ %133, %if.end12.i.i.queues_unconfig.sink.split.sink.split_crit_edge ]
  %ret.0.ph.ph = phi i32 [ %ret.0.ph.ph.ph, %queues_unconfig.sink.split.sink.split.sink.split ], [ -12, %if.end12.i.i.queues_unconfig.sink.split.sink.split_crit_edge ]
  %240 = ptrtoint ptr %ring_cq3.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ring_cq3.i.i, align 4
  %242 = ptrtoint ptr %paddr6.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %paddr6.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %.sink440, i32 noundef 4096, ptr noundef %241, i32 noundef %243, i32 noundef 0) #7
  br label %queues_unconfig.sink.split

queues_unconfig.sink.split:                       ; preds = %queues_unconfig.sink.split.sink.split, %if.end.i.i112.queues_unconfig.sink.split_crit_edge
  %.sink = phi ptr [ %.sink440, %queues_unconfig.sink.split.sink.split ], [ %133, %if.end.i.i112.queues_unconfig.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %ret.0.ph.ph, %queues_unconfig.sink.split.sink.split ], [ -12, %if.end.i.i112.queues_unconfig.sink.split_crit_edge ]
  %244 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %vaddr.i.i, align 4
  %246 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %paddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %.sink, i32 noundef 32768, ptr noundef %245, i32 noundef %247, i32 noundef 0) #7
  br label %queues_unconfig

queues_unconfig:                                  ; preds = %queues_unconfig.sink.split, %sec_queue_base_init.exit.i.queues_unconfig_crit_edge
  %ret.0 = phi i32 [ %ret.0.ph, %queues_unconfig.sink.split ], [ -12, %sec_queue_base_init.exit.i.queues_unconfig_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0239)
  %cmp49241.not = icmp eq i32 %i.0239, 0
  br i1 %cmp49241.not, label %queues_unconfig.for.end57_crit_edge, label %queues_unconfig.for.body50.preheader_crit_edge

queues_unconfig.for.body50.preheader_crit_edge:   ; preds = %queues_unconfig
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50.preheader

queues_unconfig.for.end57_crit_edge:              ; preds = %queues_unconfig
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57

for.body50.preheader:                             ; preds = %queues_unconfig.for.body50.preheader_crit_edge, %algs_unregister, %do.end42
  %ret.0340 = phi i32 [ %ret.0, %queues_unconfig.for.body50.preheader_crit_edge ], [ -12, %algs_unregister ], [ %call37, %do.end42 ]
  %i.0166339 = phi i32 [ %i.0239, %queues_unconfig.for.body50.preheader_crit_edge ], [ 16, %algs_unregister ], [ 16, %do.end42 ]
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body50.preheader
  %j.0242.in = phi i32 [ %j.0242, %for.body50.for.body50_crit_edge ], [ %i.0166339, %for.body50.preheader ]
  %j.0242 = add nsw i32 %j.0242.in, -1
  %arrayidx52 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242
  %task_irq.i132 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 1
  %248 = ptrtoint ptr %task_irq.i132 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %task_irq.i132, align 4
  %call.i133 = tail call ptr @free_irq(i32 noundef %249, ptr noundef %arrayidx52) #7
  %regs.i.i134 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 6
  %250 = ptrtoint ptr %regs.i.i134 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs.i.i134, align 4
  tail call void @iounmap(ptr noundef %251) #7
  %252 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx52, align 4
  %dev1.i.i135 = getelementptr inbounds %struct.sec_dev_info, ptr %253, i32 0, i32 6
  %254 = ptrtoint ptr %dev1.i.i135 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev1.i.i135, align 4
  %ring_db.i.i136 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 5
  %256 = ptrtoint ptr %ring_db.i.i136 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ring_db.i.i136, align 4
  %paddr.i.i137 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 5, i32 1
  %258 = ptrtoint ptr %paddr.i.i137 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %paddr.i.i137, align 4
  tail call void @dma_free_attrs(ptr noundef %255, i32 noundef 32768, ptr noundef %257, i32 noundef %259, i32 noundef 0) #7
  %ring_cq.i.i138 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 4
  %260 = ptrtoint ptr %ring_cq.i.i138 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ring_cq.i.i138, align 4
  %paddr5.i.i139 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 4, i32 1
  %262 = ptrtoint ptr %paddr5.i.i139 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %paddr5.i.i139, align 4
  tail call void @dma_free_attrs(ptr noundef %255, i32 noundef 4096, ptr noundef %261, i32 noundef %263, i32 noundef 0) #7
  %vaddr6.i.i140 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 3, i32 2
  %264 = ptrtoint ptr %vaddr6.i.i140 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %vaddr6.i.i140, align 4
  %paddr8.i.i141 = getelementptr %struct.sec_dev_info, ptr %call.i106, i32 0, i32 5, i32 %j.0242, i32 3, i32 3
  %266 = ptrtoint ptr %paddr8.i.i141 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %paddr8.i.i141, align 4
  tail call void @dma_free_attrs(ptr noundef %255, i32 noundef 32768, ptr noundef %265, i32 noundef %267, i32 noundef 0) #7
  %cmp49 = icmp sgt i32 %j.0242.in, 1
  br i1 %cmp49, label %for.body50.for.body50_crit_edge, label %for.body50.for.end57_crit_edge

for.body50.for.end57_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end57

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50

for.end57:                                        ; preds = %for.body50.for.end57_crit_edge, %queues_unconfig.for.end57_crit_edge
  %ret.0341 = phi i32 [ %ret.0, %queues_unconfig.for.end57_crit_edge ], [ %ret.0340, %for.body50.for.end57_crit_edge ]
  br label %for.body.i.i148

for.body.i.i148:                                  ; preds = %for.body.i.i148.for.body.i.i148_crit_edge, %for.end57
  %i.08.i.i = phi i32 [ 0, %for.end57 ], [ %inc.i.i146, %for.body.i.i148.for.body.i.i148_crit_edge ]
  %268 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr1.i.i.i142 = getelementptr i8, ptr %269, i32 4608
  %mul.i.i.i143 = shl i32 %i.08.i.i, 12
  %add.ptr2.i.i.i144 = getelementptr i8, ptr %add.ptr1.i.i.i142, i32 %mul.i.i.i143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i144, i32 -1) #7, !srcloc !136
  %270 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx.1.i.i, align 4
  %add.ptr.i.i.i145 = getelementptr i8, ptr %271, i32 4096
  %add.ptr1.i7.i.i = getelementptr i8, ptr %add.ptr.i.i.i145, i32 %mul.i.i.i143
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i7.i.i) #7, !srcloc !137
  %273 = and i32 %272, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i.i, i32 %273) #7, !srcloc !136
  %inc.i.i146 = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i147 = icmp eq i32 %inc.i.i146, 10
  br i1 %exitcond.not.i.i147, label %sec_base_exit.exit, label %for.body.i.i148.for.body.i.i148_crit_edge

for.body.i.i148.for.body.i.i148_crit_edge:        ; preds = %for.body.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i148

sec_base_exit.exit:                               ; preds = %for.body.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sec_clk_dis(ptr noundef nonnull %call.i106) #7
  br label %cleanup

cleanup:                                          ; preds = %sec_base_exit.exit, %sec_id_alloc.exit.thread, %do.end23, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %retval.0.i.ph, %do.end23 ], [ %ret.0341, %sec_base_exit.exit ], [ -12, %do.end16 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %sec_id_alloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @sec_id_lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %arrayidx.i = getelementptr [8 x ptr], ptr @sec_devices, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sec_id_lock) #7
  tail call void @sec_algs_unregister() #7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011
  %task_irq.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 1
  %5 = ptrtoint ptr %task_irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %task_irq.i, align 4
  %call.i = tail call ptr @free_irq(i32 noundef %6, ptr noundef %arrayidx) #7
  %regs.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 6
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  tail call void @iounmap(ptr noundef %8) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %dev1.i.i = getelementptr inbounds %struct.sec_dev_info, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i.i, align 4
  %ring_db.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 5
  %13 = ptrtoint ptr %ring_db.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring_db.i.i, align 4
  %paddr.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 5, i32 1
  %15 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef 32768, ptr noundef %14, i32 noundef %16, i32 noundef 0) #7
  %ring_cq.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 4
  %17 = ptrtoint ptr %ring_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ring_cq.i.i, align 4
  %paddr5.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 4, i32 1
  %19 = ptrtoint ptr %paddr5.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %paddr5.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef 4096, ptr noundef %18, i32 noundef %20, i32 noundef 0) #7
  %vaddr6.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 3, i32 2
  %21 = ptrtoint ptr %vaddr6.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr6.i.i, align 4
  %paddr8.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 5, i32 %i.011, i32 3, i32 3
  %23 = ptrtoint ptr %paddr8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %paddr8.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %12, i32 noundef 32768, ptr noundef %22, i32 noundef %24, i32 noundef 0) #7
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx.i.i.i = getelementptr %struct.sec_dev_info, ptr %1, i32 0, i32 2, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end
  %i.08.i.i = phi i32 [ 0, %for.end ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 4608
  %mul.i.i.i = shl i32 %i.08.i.i, 12
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 -1) #7, !srcloc !136
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 4096
  %add.ptr1.i7.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i7.i.i) #7, !srcloc !137
  %30 = and i32 %29, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i7.i.i, i32 %30) #7, !srcloc !136
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond.not.i.i, label %sec_base_exit.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

sec_base_exit.exit:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sec_clk_dis(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sec_algs_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sec_algs_unregister() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sec_clk_dis(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sec_dev_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 956
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #7, !srcloc !136
  %add.ptr1 = getelementptr i8, ptr %1, i32 21340
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %3 = and i32 %2, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %5 = and i32 %4, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.1 = icmp eq i32 %5, 0
  br i1 %cmp.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %7 = and i32 %6, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.2 = icmp eq i32 %7, 0
  br i1 %cmp.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %9 = and i32 %8, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.3 = icmp eq i32 %9, 0
  br i1 %cmp.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %11 = and i32 %10, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.4 = icmp eq i32 %11, 0
  br i1 %cmp.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %13 = and i32 %12, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.5 = icmp eq i32 %13, 0
  br i1 %cmp.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %15 = and i32 %14, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.6 = icmp eq i32 %15, 0
  br i1 %cmp.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %17 = and i32 %16, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.7 = icmp eq i32 %17, 0
  br i1 %cmp.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %19 = and i32 %18, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.8 = icmp eq i32 %19, 0
  br i1 %cmp.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #7
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !137
  %21 = and i32 %20, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.9 = icmp eq i32 %21, 0
  br i1 %cmp.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sec_dev_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.44) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sec_alg_callback(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_isr_handle_th(i32 noundef %irq, ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 6
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !136
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_isr_handle(i32 noundef %irq, ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_cmd = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 3
  %ring_cq = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 4
  %regs = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 6
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %add.ptr4 = getelementptr i8, ptr %1, i32 1548
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %vaddr9 = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %2)
  %cmp.not91 = icmp eq i32 %3, %2
  br i1 %cmp.not91, label %entry.while.end52_crit_edge, label %land.rhs.lr.ph

entry.while.end52_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end52

land.rhs.lr.ph:                                   ; preds = %entry
  %4 = tail call i32 @llvm.bswap.i32(i32 %2)
  %5 = ptrtoint ptr %vaddr9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr9, align 4
  %7 = ptrtoint ptr %ring_cq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ring_cq, align 4
  %add.ptr8 = getelementptr %struct.sec_out_bd_info, ptr %8, i32 %4
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr8, align 2
  %11 = and i16 %10, 4095
  %and = zext i16 %11 to i32
  %add.ptr10 = getelementptr %struct.sec_bd_info, ptr %6, i32 %and
  %unprocessed = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 10
  %expected = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 9
  %callback = getelementptr inbounds %struct.sec_queue, ptr %q, i32 0, i32 3, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %msg.094 = phi ptr [ %add.ptr10, %land.rhs.lr.ph ], [ %add.ptr51, %if.end.land.rhs_crit_edge ]
  %ooo_read.093 = phi i32 [ %4, %land.rhs.lr.ph ], [ %rem37, %if.end.land.rhs_crit_edge ]
  %q_id.092 = phi i32 [ %and, %land.rhs.lr.ph ], [ %and49, %if.end.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %msg.094 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg.094, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not = icmp sgt i32 %13, -1
  br i1 %tobool.not, label %land.rhs.while.end52_crit_edge, label %while.body

land.rhs.while.end52_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end52

while.body:                                       ; preds = %land.rhs
  tail call void @_set_bit(i32 noundef %q_id.092, ptr noundef %unprocessed) #7
  %14 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %expected, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %q_id.092, i32 %15)
  %cmp13 = icmp eq i32 %q_id.092, %15
  br i1 %cmp13, label %while.cond15.preheader, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond15.preheader:                           ; preds = %while.body
  %16 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %expected, align 4
  %div3.i87 = lshr i32 %17, 5
  %arrayidx.i88 = getelementptr i32, ptr %unprocessed, i32 %div3.i87
  %18 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i88, align 4
  %and.i89 = and i32 %17, 31
  %20 = shl nuw i32 1, %and.i89
  %21 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not90 = icmp eq i32 %21, 0
  br i1 %tobool20.not90, label %while.cond15.preheader.if.end_crit_edge, label %while.cond15.preheader.while.body21_crit_edge

while.cond15.preheader.while.body21_crit_edge:    ; preds = %while.cond15.preheader
  br label %while.body21

while.cond15.preheader.if.end_crit_edge:          ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body21:                                     ; preds = %while.body21.while.body21_crit_edge, %while.cond15.preheader.while.body21_crit_edge
  %22 = phi i32 [ %40, %while.body21.while.body21_crit_edge ], [ %17, %while.cond15.preheader.while.body21_crit_edge ]
  tail call void @_clear_bit(i32 noundef %22, ptr noundef %unprocessed) #7
  %23 = ptrtoint ptr %vaddr9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vaddr9, align 4
  %25 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %expected, align 4
  %add.ptr27 = getelementptr %struct.sec_bd_info, ptr %24, i32 %26
  %27 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr27, align 4
  %and29 = and i32 %28, 2147483647
  store i32 %and29, ptr %add.ptr27, align 4
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback, align 4
  %31 = load i32, ptr %expected, align 4
  %arrayidx = getelementptr %struct.sec_queue, ptr %q, i32 0, i32 14, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  tail call void %30(ptr noundef %add.ptr27, ptr noundef %33) #7
  %34 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %expected, align 4
  %arrayidx33 = getelementptr %struct.sec_queue, ptr %q, i32 0, i32 14, i32 %35
  %36 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx33, align 4
  %37 = load i32, ptr %expected, align 4
  %add = add i32 %37, 1
  %rem = srem i32 %add, 512
  store i32 %rem, ptr %expected, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ring_cmd, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ring_cmd, i32 1, i32 3, i32 1) #7
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ring_cmd, ptr %ring_cmd, i32 1, ptr elementtype(i32) %ring_cmd) #7, !srcloc !145
  %39 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %expected, align 4
  %div3.i = lshr i32 %40, 5
  %arrayidx.i = getelementptr i32, ptr %unprocessed, i32 %div3.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %40, 31
  %43 = shl nuw i32 1, %and.i
  %44 = and i32 %43, %42
  %tobool20.not = icmp eq i32 %44, 0
  br i1 %tobool20.not, label %while.body21.if.end_crit_edge, label %while.body21.while.body21_crit_edge

while.body21.while.body21_crit_edge:              ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body21

while.body21.if.end_crit_edge:                    ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %while.body21.if.end_crit_edge, %while.cond15.preheader.if.end_crit_edge, %while.body.if.end_crit_edge
  %add36 = add i32 %ooo_read.093, 1
  %rem37 = and i32 %add36, 511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %rem37)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %45) #7, !srcloc !136
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !137
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %48 = ptrtoint ptr %ring_cq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ring_cq, align 4
  %add.ptr46 = getelementptr %struct.sec_out_bd_info, ptr %49, i32 %rem37
  %50 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr46, align 2
  %52 = and i16 %51, 4095
  %and49 = zext i16 %52 to i32
  %53 = ptrtoint ptr %vaddr9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr9, align 4
  %add.ptr51 = getelementptr %struct.sec_bd_info, ptr %54, i32 %and49
  %cmp.not = icmp eq i32 %47, %rem37
  br i1 %cmp.not, label %if.end.while.end52_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

if.end.while.end52_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end52

while.end52:                                      ; preds = %if.end.while.end52_crit_edge, %land.rhs.while.end52_crit_edge, %entry.while.end52_crit_edge
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !136
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 830, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sec_queue_stop_release._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sec_queue_stop_release._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_hisi_sec__234_1316_sec_driver_init6, !9, !"__initcall__kmod_hisi_sec__234_1316_sec_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1316, i32 1}
!10 = !{ptr @__exitcall_sec_driver_exit, !9, !"__exitcall_sec_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_file235, !12, !"__UNIQUE_ID_file235", i1 false, i1 false}
!12 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1318, i32 1}
!13 = !{ptr @__UNIQUE_ID_license236, !12, !"__UNIQUE_ID_license236", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_description237, !15, !"__UNIQUE_ID_description237", i1 false, i1 false}
!15 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1319, i32 1}
!16 = !{ptr @__UNIQUE_ID_author238, !17, !"__UNIQUE_ID_author238", i1 false, i1 false}
!17 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1320, i32 1}
!18 = !{ptr @__UNIQUE_ID_author239, !19, !"__UNIQUE_ID_author239", i1 false, i1 false}
!19 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1321, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 225, i32 8}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sec_id_lock, !21, !"sec_id_lock", i1 false, i1 false}
!24 = !{ptr @sec_devices, !25, !"sec_devices", i1 false, i1 false}
!25 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 224, i32 29}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 778, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sec_queue_alloc_start._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @sec_queue_alloc_start._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 656, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sec_queue_free._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sec_queue_free._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 661, i32 3}
!38 = !{ptr @sec_queue_free._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sec_queue_free._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1311, i32 11}
!42 = !{ptr @sec_driver, !43, !"sec_driver", i1 false, i1 false}
!43 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1307, i32 31}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1211, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sec_probe._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sec_probe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @sec_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1220, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1222, i32 39}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1225, i32 3}
!56 = !{ptr @sec_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sec_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1231, i32 3}
!60 = !{ptr @sec_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sec_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1249, i32 3}
!64 = !{ptr @sec_probe._entry.25, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sec_probe._entry_ptr.27, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1019, i32 4}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sec_map_io._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @sec_map_io._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1026, i32 4}
!73 = !{ptr @sec_map_io._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sec_map_io._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 291, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sec_clk_en._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sec_clk_en._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 331, i32 4}
!82 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sec_reset_whole_module._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sec_reset_whole_module._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 350, i32 4}
!87 = !{ptr @sec_reset_whole_module._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sec_reset_whole_module._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 964, i32 3}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sec_hw_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @sec_hw_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 461, i32 3}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sec_ipv4_hashmask._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sec_ipv4_hashmask._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 308, i32 2}
!101 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @sec_clk_dis._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @sec_clk_dis._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1155, i32 3}
!106 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sec_queue_config._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @sec_queue_config._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1007, i32 4}
!111 = !{ptr @sec_queue_res_cfg.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1092, i32 2}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 236, i32 3}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @sec_queue_map_io._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @sec_queue_map_io._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 737, i32 3}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sec_queue_irq_init._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @sec_queue_irq_init._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @sec_match, !125, !"sec_match", i1 false, i1 false}
!125 = !{!"../drivers/crypto/hisilicon/sec/sec_drv.c", i32 1294, i32 49}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
!136 = !{i64 6910801}
!137 = !{i64 6911219}
!138 = !{i64 2154925137}
!139 = !{i64 2154925604}
!140 = !{i64 2154925763}
!141 = !{i64 2154925978}
!142 = !{i64 2148335418, i64 2148335444, i64 2148335473, i64 2148335507, i64 2148335538, i64 2148335561}
!143 = !{i64 2154916442}
!144 = !{i64 2154916914}
!145 = !{i64 2148337883, i64 2148337909, i64 2148337938, i64 2148337972, i64 2148338003, i64 2148338026}
!146 = !{i64 2154918257}
!147 = !{i64 2154918913}
