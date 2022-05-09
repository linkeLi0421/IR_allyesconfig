; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/ca8210.c_pt.bc'
source_filename = "../drivers/net/ieee802154/ca8210.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mac_message = type { i8, i8, %union.anon.120 }
%union.anon.120 = type { [148 x i8] }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.ca8210_priv = type { ptr, ptr, i8, %struct.spinlock, ptr, ptr, ptr, i8, ptr, i32, %struct.ca8210_test, i8, ptr, %struct.completion, i32, i32, %struct.completion, %struct.completion, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ca8210_test = type { ptr, %struct.kfifo, %struct.wait_queue_head }
%struct.kfifo = type { %union.anon.119, [0 x i8] }
%union.anon.119 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.ca8210_platform_data = type { i8, i32, i32, i32, i32, i32 }
%struct.ieee802154_hw_addr_filt = type { i16, i16, i64, i8 }
%struct.cas_control = type { %struct.spi_message, %struct.spi_transfer, [256 x i8], [256 x i8], ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.work_priv_container = type { %struct.work_struct, ptr }
%struct.ieee802154_hdr = type { %struct.ieee802154_hdr_fc, i8, %struct.ieee802154_addr, %struct.ieee802154_addr, %struct.ieee802154_sechdr }
%struct.ieee802154_hdr_fc = type { i16 }
%struct.ieee802154_addr = type { i8, i16, %union.anon.117 }
%union.anon.117 = type { i64 }
%struct.ieee802154_sechdr = type { i8, i8, i32, %union.anon.123 }
%union.anon.123 = type { i64 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.102 = type { ptr }

@__initcall__kmod_ca8210__361_3232_ca8210_spi_driver_init6 = internal global ptr @ca8210_spi_driver_init, section ".initcall6.init", align 4
@ca8210_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ca8210_probe, ptr @ca8210_remove, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ca8210_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ca8210_spi_driver_exit = internal global ptr @ca8210_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author362 = internal constant [50 x i8] c"ca8210.author=Harry Morris <h.morris@cascoda.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [42 x i8] c"ca8210.description=CA-8210 SoftMAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file364 = internal constant [42 x i8] c"ca8210.file=drivers/net/ieee802154/ca8210\00", section ".modinfo", align 1
@__UNIQUE_ID_license365 = internal constant [28 x i8] c"ca8210.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version366 = internal constant [19 x i8] c"ca8210.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ca8210\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ca8210_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cascoda,ca8210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ca8210_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3109, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Inserting ca8210\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca8210_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ieee802154/ca8210.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr = internal global ptr @ca8210_probe._entry, section ".printk_index", align 4
@ca8210_phy_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @ca8210_start, ptr @ca8210_stop, ptr null, ptr @ca8210_xmit_async, ptr @ca8210_get_ed, ptr @ca8210_set_channel, ptr @ca8210_set_hw_addr_filt, ptr @ca8210_set_tx_power, ptr null, ptr @ca8210_set_cca_mode, ptr @ca8210_set_cca_ed_level, ptr @ca8210_set_csma_params, ptr @ca8210_set_frame_retries, ptr @ca8210_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@ca8210_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 3114, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ieee802154_alloc_hw failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.11 = internal global ptr @ca8210_probe._entry.8, section ".printk_index", align 4
@ca8210_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@cascoda_api_upstream = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ca8210_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 3152, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ca8210_get_platform_data failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.15 = internal global ptr @ca8210_probe._entry.13, section ".printk_index", align 4
@ca8210_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 3158, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ca8210_dev_com_init failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.18 = internal global ptr @ca8210_probe._entry.16, section ".printk_index", align 4
@ca8210_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 3163, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ca8210_reset_init failed\0A\00", [38 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.21 = internal global ptr @ca8210_probe._entry.19, section ".printk_index", align 4
@ca8210_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 3169, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ca8210_interrupt_init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.24 = internal global ptr @ca8210_probe._entry.22, section ".printk_index", align 4
@ca8210_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 3179, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tdme_chipinit failed\0A\00", [42 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.27 = internal global ptr @ca8210_probe._entry.25, section ".printk_index", align 4
@ca8210_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 3189, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ca8210_config_extern_clk failed\0A\00", [63 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.30 = internal global ptr @ca8210_probe._entry.28, section ".printk_index", align 4
@ca8210_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 3197, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ca8210_register_ext_clock failed\0A\00", [62 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.33 = internal global ptr @ca8210_probe._entry.31, section ".printk_index", align 4
@ca8210_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.4, ptr @.str.5, i32 3204, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ieee802154_register_hw failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ca8210_probe._entry_ptr.36 = internal global ptr @ca8210_probe._entry.34, section ".printk_index", align 4
@ca8210_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 2012, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Setting rx_on_when_idle failed, status = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca8210_start\00", [19 x i8] zeroinitializer }, align 32
@ca8210_start._entry_ptr = internal global ptr @ca8210_start._entry, section ".printk_index", align 4
@ca8210_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 2026, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting lqilimit failed, status = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ca8210_start._entry_ptr.41 = internal global ptr @ca8210_start._entry.39, section ".printk_index", align 4
@tdme_setsfr_request_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 1130, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cascoda_api_downstream returned %d\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tdme_setsfr_request_sync\00", [39 x i8] zeroinitializer }, align 32
@tdme_setsfr_request_sync._entry_ptr = internal global ptr @tdme_setsfr_request_sync._entry, section ".printk_index", align 4
@tdme_setsfr_request_sync._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 1139, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"sync response to SPI_TDME_SETSFR_REQUEST was not SPI_TDME_SETSFR_CONFIRM, it was %d\0A\00", [43 x i8] zeroinitializer }, align 32
@tdme_setsfr_request_sync._entry_ptr.46 = internal global ptr @tdme_setsfr_request_sync._entry.44, section ".printk_index", align 4
@ca8210_spi_exchange._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1012, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"spi write failed, returned %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ca8210_spi_exchange\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ca8210_spi_exchange._entry_ptr = internal global ptr @ca8210_spi_exchange._entry, section ".printk_index", align 4
@ca8210_spi_exchange._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.5, i32 1030, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SPI downstream transfer timed out!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ca8210_spi_exchange._entry_ptr.53 = internal global ptr @ca8210_spi_exchange._entry.50, section ".printk_index", align 4
@ca8210_spi_exchange._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.5, i32 1049, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Synchronous confirm timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@ca8210_spi_exchange._entry_ptr.56 = internal global ptr @ca8210_spi_exchange._entry.54, section ".printk_index", align 4
@ca8210_spi_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.5, i32 921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\012NULL spi device passed to %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ca8210_spi_transfer\00", [44 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer._entry_ptr = internal global ptr @ca8210_spi_transfer._entry, section ".printk_index", align 4
@ca8210_spi_transfer.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.59, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.60, i8 0, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%#03x\0A\00", [25 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.5, i32 968, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"status %d from spi_sync in write\0A\00", [62 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer._entry_ptr.63 = internal global ptr @ca8210_spi_transfer._entry.61, section ".printk_index", align 4
@ca8210_spi_transfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 855, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ca8210 was busy during attempted write\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ca8210_spi_transfer_complete\00", [35 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer_complete._entry_ptr = internal global ptr @ca8210_spi_transfer_complete._entry, section ".printk_index", align 4
@ca8210_spi_transfer_complete._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 860, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"IRQ servicing NACKd, dropping transfer\0A\00", [56 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer_complete._entry_ptr.68 = internal global ptr @ca8210_spi_transfer_complete._entry.66, section ".printk_index", align 4
@ca8210_spi_transfer_complete._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.5, i32 865, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"too many retries!\0A\00", [45 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer_complete._entry_ptr.71 = internal global ptr @ca8210_spi_transfer_complete._entry.69, section ".printk_index", align 4
@ca8210_spi_transfer_complete._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.5, i32 878, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"retried spi write\0A\00", [45 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer_complete._entry_ptr.74 = internal global ptr @ca8210_spi_transfer_complete._entry.72, section ".printk_index", align 4
@ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.5, ptr @.str.75, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"READ CMD DURING TX\0A\00", [44 x i8] zeroinitializer }, align 32
@ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.5, ptr @.str.60, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ca8210_rx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 737, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Received packet len (%u) erroneously long\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ca8210_rx_done\00", [17 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr = internal global ptr @ca8210_rx_done._entry, section ".printk_index", align 4
@ca8210_rx_done._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.5, i32 760, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting for transaction overflow to stabilise...\0A\00", [46 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.80 = internal global ptr @ca8210_rx_done._entry.78, section ".printk_index", align 4
@ca8210_rx_done._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.5, i32 764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Resetting MAC...\0A\00", [46 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.83 = internal global ptr @ca8210_rx_done._entry.81, section ".printk_index", align 4
@ca8210_rx_done.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&mlme_reset_wpc->work)\00", [55 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.77, ptr @.str.5, i32 781, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Wakeup indication received, reason:\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.88 = internal global ptr @ca8210_rx_done._entry.85, section ".printk_index", align 4
@ca8210_rx_done._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.77, ptr @.str.5, i32 787, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Transceiver woken up from Power Up / System Reset\0A\00", [45 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.91 = internal global ptr @ca8210_rx_done._entry.89, section ".printk_index", align 4
@ca8210_rx_done._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.77, ptr @.str.5, i32 793, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Watchdog Timer Time-Out\0A\00", [39 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.94 = internal global ptr @ca8210_rx_done._entry.92, section ".printk_index", align 4
@ca8210_rx_done._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.77, ptr @.str.5, i32 798, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Transceiver woken up from Power-Off by Sleep Timer Time-Out\0A\00", [35 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.97 = internal global ptr @ca8210_rx_done._entry.95, section ".printk_index", align 4
@ca8210_rx_done._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.77, ptr @.str.5, i32 804, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Transceiver woken up from Power-Off by GPIO Activity\0A\00", [42 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.100 = internal global ptr @ca8210_rx_done._entry.98, section ".printk_index", align 4
@ca8210_rx_done._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.77, ptr @.str.5, i32 810, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Transceiver woken up from Standby by Sleep Timer Time-Out\0A\00", [37 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.103 = internal global ptr @ca8210_rx_done._entry.101, section ".printk_index", align 4
@ca8210_rx_done._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.77, ptr @.str.5, i32 816, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Transceiver woken up from Standby by GPIO Activity\0A\00", [44 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.106 = internal global ptr @ca8210_rx_done._entry.104, section ".printk_index", align 4
@ca8210_rx_done._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.77, ptr @.str.5, i32 822, ptr @.str.87, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sleep-Timer Time-Out in Active Mode\0A\00", [59 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.109 = internal global ptr @ca8210_rx_done._entry.107, section ".printk_index", align 4
@ca8210_rx_done._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.77, ptr @.str.5, i32 825, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wakeup reason unknown\0A\00", [41 x i8] zeroinitializer }, align 32
@ca8210_rx_done._entry_ptr.112 = internal global ptr @ca8210_rx_done._entry.110, section ".printk_index", align 4
@ca8210_net_rx.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.113, ptr @.str.5, ptr @.str.114, i8 1, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ca8210_net_rx\00", [18 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: CmdID = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@ca8210_net_rx.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.113, ptr @.str.5, ptr @.str.115, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DSN %d resend received, ignoring...\0A\00", [59 x i8] zeroinitializer }, align 32
@ca8210_skb_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.5, i32 1822, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"received erroneously large msdu length!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ca8210_skb_rx\00", [18 x i8] zeroinitializer }, align 32
@ca8210_skb_rx._entry_ptr = internal global ptr @ca8210_skb_rx._entry, section ".printk_index", align 4
@ca8210_skb_rx.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.5, ptr @.str.118, i8 1, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"skb buffer length = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ca8210_skb_rx.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.5, ptr @.str.119, i8 1, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"security level: %#03x\0A\00", [41 x i8] zeroinitializer }, align 32
@ca8210_skb_rx.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.5, ptr @.str.120, i8 1, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"srcAddrMode: %#03x\0A\00", [44 x i8] zeroinitializer }, align 32
@ca8210_skb_rx.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.5, ptr @.str.121, i8 1, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"srcPanId: %#06x\0A\00", [47 x i8] zeroinitializer }, align 32
@ca8210_skb_rx.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.5, ptr @.str.122, i8 1, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dstAddrMode: %#03x\0A\00", [44 x i8] zeroinitializer }, align 32
@ca8210_skb_rx.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.117, ptr @.str.5, ptr @.str.123, i8 1, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dstPanId: %#06x\0A\00", [47 x i8] zeroinitializer }, align 32
@ca8210_skb_rx._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.5, i32 1867, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to push mac hdr onto skb!\0A\00", [62 x i8] zeroinitializer }, align 32
@ca8210_skb_rx._entry_ptr.126 = internal global ptr @ca8210_skb_rx._entry.124, section ".printk_index", align 4
@ca8210_async_xmit_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.5, i32 1760, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Unexpected msdu_handle on data confirm, Expected %d, got %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ca8210_async_xmit_complete\00", [37 x i8] zeroinitializer }, align 32
@ca8210_async_xmit_complete._entry_ptr = internal global ptr @ca8210_async_xmit_complete._entry, section ".printk_index", align 4
@ca8210_async_xmit_complete._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.128, ptr @.str.5, i32 1772, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Link transmission unsuccessful, status = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ca8210_async_xmit_complete._entry_ptr.131 = internal global ptr @ca8210_async_xmit_complete._entry.129, section ".printk_index", align 4
@mlme_reset_request_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.5, i32 1555, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cascoda_api_downstream failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlme_reset_request_sync\00", [40 x i8] zeroinitializer }, align 32
@mlme_reset_request_sync._entry_ptr = internal global ptr @mlme_reset_request_sync._entry, section ".printk_index", align 4
@ca8210_xmit_async.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.134, ptr @.str.5, ptr @.str.135, i8 2, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ca8210_xmit_async\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"calling %s\0A\00", [20 x i8] zeroinitializer }, align 32
@ca8210_skb_tx.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.5, ptr @.str.59, i8 1, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ca8210_skb_tx\00", [18 x i8] zeroinitializer }, align 32
@ca8210_set_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.5, i32 2112, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error setting channel, MLME-SET.confirm status = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ca8210_set_channel\00", [45 x i8] zeroinitializer }, align 32
@ca8210_set_channel._entry_ptr = internal global ptr @ca8210_set_channel._entry, section ".printk_index", align 4
@ca8210_set_hw_addr_filt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.5, i32 2151, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error setting pan id, MLME-SET.confirm status = %d\00", [45 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ca8210_set_hw_addr_filt\00", [40 x i8] zeroinitializer }, align 32
@ca8210_set_hw_addr_filt._entry_ptr = internal global ptr @ca8210_set_hw_addr_filt._entry, section ".printk_index", align 4
@ca8210_set_hw_addr_filt._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.5, i32 2167, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"error setting short address, MLME-SET.confirm status = %d\00", [38 x i8] zeroinitializer }, align 32
@ca8210_set_hw_addr_filt._entry_ptr.143 = internal global ptr @ca8210_set_hw_addr_filt._entry.141, section ".printk_index", align 4
@ca8210_set_hw_addr_filt._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.5, i32 2184, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"error setting ieee address, MLME-SET.confirm status = %d\00", [39 x i8] zeroinitializer }, align 32
@ca8210_set_hw_addr_filt._entry_ptr.146 = internal global ptr @ca8210_set_hw_addr_filt._entry.144, section ".printk_index", align 4
@ca8210_set_cca_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.5, i32 2242, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error setting cca mode, MLME-SET.confirm status = %d\00", [43 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ca8210_set_cca_mode\00", [44 x i8] zeroinitializer }, align 32
@ca8210_set_cca_mode._entry_ptr = internal global ptr @ca8210_set_cca_mode._entry, section ".printk_index", align 4
@ca8210_set_cca_ed_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 2274, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"error setting ed threshold, HWME-SET.confirm status = %d\00", [39 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ca8210_set_cca_ed_level\00", [40 x i8] zeroinitializer }, align 32
@ca8210_set_cca_ed_level._entry_ptr = internal global ptr @ca8210_set_cca_ed_level._entry, section ".printk_index", align 4
@ca8210_set_csma_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.5, i32 2304, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error setting min be, MLME-SET.confirm status = %d\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ca8210_set_csma_params\00", [41 x i8] zeroinitializer }, align 32
@ca8210_set_csma_params._entry_ptr = internal global ptr @ca8210_set_csma_params._entry, section ".printk_index", align 4
@ca8210_set_csma_params._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.5, i32 2313, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error setting max be, MLME-SET.confirm status = %d\00", [45 x i8] zeroinitializer }, align 32
@ca8210_set_csma_params._entry_ptr.155 = internal global ptr @ca8210_set_csma_params._entry.153, section ".printk_index", align 4
@ca8210_set_csma_params._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.5, i32 2328, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"error setting max csma backoffs, MLME-SET.confirm status = %d\00", [34 x i8] zeroinitializer }, align 32
@ca8210_set_csma_params._entry_ptr.158 = internal global ptr @ca8210_set_csma_params._entry.156, section ".printk_index", align 4
@ca8210_set_frame_retries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 2360, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"error setting frame retries, MLME-SET.confirm status = %d\00", [38 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ca8210_set_frame_retries\00", [39 x i8] zeroinitializer }, align 32
@ca8210_set_frame_retries._entry_ptr = internal global ptr @ca8210_set_frame_retries._entry, section ".printk_index", align 4
@ca8210_set_promiscuous_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.5, i32 2382, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"error setting promiscuous mode, MLME-SET.confirm status = %d\00", [35 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ca8210_set_promiscuous_mode\00", [36 x i8] zeroinitializer }, align 32
@ca8210_set_promiscuous_mode._entry_ptr = internal global ptr @ca8210_set_promiscuous_mode._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.163 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ca8210_test_int_driver_write.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.164, ptr @.str.5, ptr @.str.165, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ca8210_test_int_driver_write\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"test_interface: Buffering upstream message:\0A\00", [51 x i8] zeroinitializer }, align 32
@ca8210_test_int_driver_write.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.164, ptr @.str.5, ptr @.str.60, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ca8210@%d_%d\00", [19 x i8] zeroinitializer }, align 32
@test_int_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ca8210_test_int_user_read, ptr @ca8210_test_int_user_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ca8210_test_int_poll, ptr @ca8210_test_int_ioctl, ptr null, ptr null, i32 0, ptr @ca8210_test_int_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ca8210_test_interface_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&test->readq\00", [19 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.5, i32 2590, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"test_interface: Wrong number of elements popped from upstream fifo\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ca8210_test_int_user_read\00", [38 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_read._entry_ptr = internal global ptr @ca8210_test_int_user_read._entry, section ".printk_index", align 4
@ca8210_test_int_user_read._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.5, i32 2602, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%lu bytes could not be copied to user space!\0A\00", [50 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_read._entry_ptr.172 = internal global ptr @ca8210_test_int_user_read._entry.170, section ".printk_index", align 4
@ca8210_test_int_user_read.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.169, ptr @.str.5, ptr @.str.173, i8 2, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"test_interface: Cmd len = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_read.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.169, ptr @.str.5, ptr @.str.174, i8 2, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_interface: Read\0A\00", [42 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_read.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.169, ptr @.str.5, ptr @.str.60, i8 2, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.5, i32 2504, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"userspace requested erroneous write length (%zu)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ca8210_test_int_user_write\00", [37 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_write._entry_ptr = internal global ptr @ca8210_test_int_user_write._entry, section ".printk_index", align 4
@ca8210_test_int_user_write._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.5, i32 2514, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d bytes could not be copied from userspace\0A\00", [51 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_write._entry_ptr.182 = internal global ptr @ca8210_test_int_user_write._entry.180, section ".printk_index", align 4
@ca8210_test_int_user_write._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.179, ptr @.str.5, i32 2521, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"write len does not match packet length field\0A\00", [50 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_write._entry_ptr.185 = internal global ptr @ca8210_test_int_user_write._entry.183, section ".printk_index", align 4
@ca8210_test_int_user_write._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.179, ptr @.str.5, i32 2538, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi exchange failed\0A\00", [43 x i8] zeroinitializer }, align 32
@ca8210_test_int_user_write._entry_ptr.188 = internal global ptr @ca8210_test_int_user_write._entry.186, section ".printk_index", align 4
@ca8210_tx_powers = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 800, i32 700, i32 600, i32 500, i32 400, i32 300, i32 200, i32 100, i32 0], [60 x i8] zeroinitializer }, align 32
@ca8210_ed_levels = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 -10300, i32 -10250, i32 -10200, i32 -10150, i32 -10100, i32 -10050, i32 -10000, i32 -9950, i32 -9900, i32 -9850, i32 -9800, i32 -9750, i32 -9700, i32 -9650, i32 -9600, i32 -9550, i32 -9500, i32 -9450, i32 -9400, i32 -9350, i32 -9300], [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"extclock-enable\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extclock-freq\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extclock-gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MLME work queue\00", [16 x i8] zeroinitializer }, align 32
@ca8210_dev_com_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.5, i32 2919, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"alloc of mlme_workqueue failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ca8210_dev_com_init\00", [44 x i8] zeroinitializer }, align 32
@ca8210_dev_com_init._entry_ptr = internal global ptr @ca8210_dev_com_init._entry, section ".printk_index", align 4
@.str.195 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ca8210 irq worker\00", [46 x i8] zeroinitializer }, align 32
@ca8210_dev_com_init._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.194, ptr @.str.5, i32 2928, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"alloc of irq_workqueue failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@ca8210_dev_com_init._entry_ptr.198 = internal global ptr @ca8210_dev_com_init._entry.196, section ".printk_index", align 4
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset-gpio\00", [21 x i8] zeroinitializer }, align 32
@ca8210_reset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.5, i32 2856, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Reset GPIO %d did not set to output mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ca8210_reset_init\00", [46 x i8] zeroinitializer }, align 32
@ca8210_reset_init._entry_ptr = internal global ptr @ca8210_reset_init._entry, section ".printk_index", align 4
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irq-gpio\00", [23 x i8] zeroinitializer }, align 32
@ca8210_interrupt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.5, i32 2885, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not get irq for gpio pin %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ca8210_interrupt_init\00", [42 x i8] zeroinitializer }, align 32
@ca8210_interrupt_init._entry_ptr = internal global ptr @ca8210_interrupt_init._entry, section ".printk_index", align 4
@.str.205 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ca8210-irq\00", [21 x i8] zeroinitializer }, align 32
@ca8210_interrupt_init._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.204, ptr @.str.5, i32 2898, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"request_irq %d failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ca8210_interrupt_init._entry_ptr.208 = internal global ptr @ca8210_interrupt_init._entry.206, section ".printk_index", align 4
@ca8210_interrupt_handler.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.209, ptr @.str.5, ptr @.str.210, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.209 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ca8210_interrupt_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irq: Interrupt occurred\0A\00", [39 x i8] zeroinitializer }, align 32
@ca8210_interrupt_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.5, i32 1082, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spi read failed, returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ca8210_interrupt_handler._entry_ptr = internal global ptr @ca8210_interrupt_handler._entry, section ".printk_index", align 4
@ca8210_reset_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.213, ptr @.str.5, i32 691, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Fatal: No wakeup from ca8210 after reset!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ca8210_reset_send\00", [46 x i8] zeroinitializer }, align 32
@ca8210_reset_send._entry_ptr = internal global ptr @ca8210_reset_send._entry, section ".printk_index", align 4
@ca8210_reset_send.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.213, ptr @.str.5, ptr @.str.214, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reset the device\0A\00", [46 x i8] zeroinitializer }, align 32
@tdme_chipinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.216, ptr @.str.5, i32 1229, ptr @.str.52, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to set sfr at %#03x, status = %#03x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tdme_chipinit\00", [18 x i8] zeroinitializer }, align 32
@tdme_chipinit._entry_ptr = internal global ptr @tdme_chipinit._entry, section ".printk_index", align 4
@ca8210_config_extern_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.5, i32 2742, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Switching external clock on\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ca8210_config_extern_clk\00", [39 x i8] zeroinitializer }, align 32
@ca8210_config_extern_clk._entry_ptr = internal global ptr @ca8210_config_extern_clk._entry, section ".printk_index", align 4
@ca8210_config_extern_clk._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.5, i32 2760, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid extclock-freq\0A\00", [41 x i8] zeroinitializer }, align 32
@ca8210_config_extern_clk._entry_ptr.221 = internal global ptr @ca8210_config_extern_clk._entry.219, section ".printk_index", align 4
@ca8210_config_extern_clk._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.5, i32 2765, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Switching external clock off\0A\00", [34 x i8] zeroinitializer }, align 32
@ca8210_config_extern_clk._entry_ptr.224 = internal global ptr @ca8210_config_extern_clk._entry.222, section ".printk_index", align 4
@ca8210_register_ext_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.5, i32 2799, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register external clk\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ca8210_register_ext_clock\00", [38 x i8] zeroinitializer }, align 32
@ca8210_register_ext_clock._entry_ptr = internal global ptr @ca8210_register_ext_clock._entry, section ".printk_index", align 4
@ca8210_register_ext_clock._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.5, i32 2808, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to register external clock as clock provider\0A\00", [43 x i8] zeroinitializer }, align 32
@ca8210_register_ext_clock._entry_ptr.229 = internal global ptr @ca8210_register_ext_clock._entry.227, section ".printk_index", align 4
@ca8210_register_ext_clock._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.226, ptr @.str.5, i32 2810, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"External clock set as clock provider\0A\00", [58 x i8] zeroinitializer }, align 32
@ca8210_register_ext_clock._entry_ptr.232 = internal global ptr @ca8210_register_ext_clock._entry.230, section ".printk_index", align 4
@ca8210_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.5, i32 3057, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Removing ca8210\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ca8210_remove\00", [18 x i8] zeroinitializer }, align 32
@ca8210_remove._entry_ptr = internal global ptr @ca8210_remove._entry, section ".printk_index", align 4
@ca8210_remove._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.234, ptr @.str.5, i32 3077, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sync_down = %d, sync_up = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ca8210_remove._entry_ptr.237 = internal global ptr @ca8210_remove._entry.235, section ".printk_index", align 4
@ca8210_remove._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.234, ptr @.str.5, i32 3087, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unregistered & freed ieee802154_hw.\0A\00", [59 x i8] zeroinitializer }, align 32
@ca8210_remove._entry_ptr.240 = internal global ptr @ca8210_remove._entry.238, section ".printk_index", align 4
@ca8210_unregister_ext_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.5, i32 2830, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"External clock unregistered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ca8210_unregister_ext_clock\00", [36 x i8] zeroinitializer }, align 32
@ca8210_unregister_ext_clock._entry_ptr = internal global ptr @ca8210_unregister_ext_clock._entry, section ".printk_index", align 4
@ca8210_test_interface_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.5, i32 3043, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Test interface removed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ca8210_test_interface_clear\00", [36 x i8] zeroinitializer }, align 32
@ca8210_test_interface_clear._entry_ptr = internal global ptr @ca8210_test_interface_clear._entry, section ".printk_index", align 4
@switch.table.mlme_set_request_sync = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01\03\05\08\0C\10\18\222", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1000000, i64 2000000, i64 4000000, i64 8000000, i64 16000000]
@__sancov_gen_cov_switch_values.245 = internal global [35 x i64] [i64 33, i64 32, i64 0, i64 220, i64 221, i64 222, i64 224, i64 225, i64 226, i64 227, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 244, i64 245, i64 246, i64 247, i64 248, i64 249, i64 250, i64 251, i64 252, i64 253]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.247 = internal global [24 x i64] [i64 22, i64 8, i64 2, i64 3, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 77, i64 78, i64 79, i64 81, i64 82, i64 84, i64 86, i64 87, i64 89, i64 90, i64 93, i64 120, i64 121]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 8, i64 240, i64 255]
@__sancov_gen_cov_switch_values.251 = internal global [4 x i64] [i64 2, i64 8, i64 33, i64 53]
@__sancov_gen_cov_switch_values.252 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.253 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 33]
@__sancov_gen_cov_switch_values.254 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.255 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 74, i64 75, i64 84]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"ca8210_spi_driver\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3222, i32 26 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3237, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant [14 x i8] c"ca8210_of_ids\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3216, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3109, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [15 x i8] c"ca8210_phy_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2389, i32 36 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3114, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3123, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"cascoda_api_upstream\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 534, i32 14 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3152, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3158, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3163, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3169, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3179, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3186, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3194, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3204, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2008, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2022, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1130, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1135, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1008, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1027, i32 4 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1046, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 921, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 928, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 940, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 964, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 855, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 857, i32 4 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 865, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 878, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 888, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 733, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 758, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 762, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 770, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 778, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 784, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 790, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 796, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 801, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 807, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 813, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 819, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 825, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1903, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1909, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1819, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1826, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1833, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1840, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1842, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1845, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1847, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1867, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1755, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1768, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1555, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2056, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1953, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2108, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2147, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2163, i32 4 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2180, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2238, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2270, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2300, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2309, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2324, i32 3 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2356, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2378, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 87, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 632, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3011, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant [14 x i8] c"test_int_fops\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2670, i32 37 }
@___asan_gen_.731 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3025, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2587, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2598, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2605, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2607, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 230, i32 6 }
@___asan_gen_.762 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.762, i32 214, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.765, i32 174, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2500, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2510, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2518, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2535, i32 4 }
@___asan_gen_.794 = private unnamed_addr constant [17 x i8] c"ca8210_tx_powers\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2947, i32 18 }
@___asan_gen_.797 = private unnamed_addr constant [17 x i8] c"ca8210_ed_levels\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2952, i32 18 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2700, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2705, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2713, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2914, i32 25 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2919, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2923, i32 24 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2928, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2846, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2852, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2875, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2881, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2894, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2898, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1074, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1078, i32 4 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 688, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 694, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 1224, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2742, i32 3 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2760, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2765, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2799, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2805, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2810, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3057, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3072, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3084, i32 4 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 2830, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.974 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.975 = private constant [35 x i8] c"../drivers/net/ieee802154/ca8210.c\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.975, i32 3043, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant [35 x i8] c"switch.table.mlme_set_request_sync\00", align 1
@llvm.compiler.used = appending global [326 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file364, ptr @__UNIQUE_ID_license365, ptr @__UNIQUE_ID_version366, ptr @__exitcall_ca8210_spi_driver_exit, ptr @__initcall__kmod_ca8210__361_3232_ca8210_spi_driver_init6, ptr @__modver_attr, ptr @ca8210_async_xmit_complete._entry, ptr @ca8210_async_xmit_complete._entry.129, ptr @ca8210_async_xmit_complete._entry_ptr, ptr @ca8210_async_xmit_complete._entry_ptr.131, ptr @ca8210_config_extern_clk._entry, ptr @ca8210_config_extern_clk._entry.219, ptr @ca8210_config_extern_clk._entry.222, ptr @ca8210_config_extern_clk._entry_ptr, ptr @ca8210_config_extern_clk._entry_ptr.221, ptr @ca8210_config_extern_clk._entry_ptr.224, ptr @ca8210_dev_com_init._entry, ptr @ca8210_dev_com_init._entry.196, ptr @ca8210_dev_com_init._entry_ptr, ptr @ca8210_dev_com_init._entry_ptr.198, ptr @ca8210_interrupt_handler._entry, ptr @ca8210_interrupt_handler._entry_ptr, ptr @ca8210_interrupt_init._entry, ptr @ca8210_interrupt_init._entry.206, ptr @ca8210_interrupt_init._entry_ptr, ptr @ca8210_interrupt_init._entry_ptr.208, ptr @ca8210_probe._entry, ptr @ca8210_probe._entry.13, ptr @ca8210_probe._entry.16, ptr @ca8210_probe._entry.19, ptr @ca8210_probe._entry.22, ptr @ca8210_probe._entry.25, ptr @ca8210_probe._entry.28, ptr @ca8210_probe._entry.31, ptr @ca8210_probe._entry.34, ptr @ca8210_probe._entry.8, ptr @ca8210_probe._entry_ptr, ptr @ca8210_probe._entry_ptr.11, ptr @ca8210_probe._entry_ptr.15, ptr @ca8210_probe._entry_ptr.18, ptr @ca8210_probe._entry_ptr.21, ptr @ca8210_probe._entry_ptr.24, ptr @ca8210_probe._entry_ptr.27, ptr @ca8210_probe._entry_ptr.30, ptr @ca8210_probe._entry_ptr.33, ptr @ca8210_probe._entry_ptr.36, ptr @ca8210_register_ext_clock._entry, ptr @ca8210_register_ext_clock._entry.227, ptr @ca8210_register_ext_clock._entry.230, ptr @ca8210_register_ext_clock._entry_ptr, ptr @ca8210_register_ext_clock._entry_ptr.229, ptr @ca8210_register_ext_clock._entry_ptr.232, ptr @ca8210_remove._entry, ptr @ca8210_remove._entry.235, ptr @ca8210_remove._entry.238, ptr @ca8210_remove._entry_ptr, ptr @ca8210_remove._entry_ptr.237, ptr @ca8210_remove._entry_ptr.240, ptr @ca8210_reset_init._entry, ptr @ca8210_reset_init._entry_ptr, ptr @ca8210_reset_send._entry, ptr @ca8210_reset_send._entry_ptr, ptr @ca8210_rx_done._entry, ptr @ca8210_rx_done._entry.101, ptr @ca8210_rx_done._entry.104, ptr @ca8210_rx_done._entry.107, ptr @ca8210_rx_done._entry.110, ptr @ca8210_rx_done._entry.78, ptr @ca8210_rx_done._entry.81, ptr @ca8210_rx_done._entry.85, ptr @ca8210_rx_done._entry.89, ptr @ca8210_rx_done._entry.92, ptr @ca8210_rx_done._entry.95, ptr @ca8210_rx_done._entry.98, ptr @ca8210_rx_done._entry_ptr, ptr @ca8210_rx_done._entry_ptr.100, ptr @ca8210_rx_done._entry_ptr.103, ptr @ca8210_rx_done._entry_ptr.106, ptr @ca8210_rx_done._entry_ptr.109, ptr @ca8210_rx_done._entry_ptr.112, ptr @ca8210_rx_done._entry_ptr.80, ptr @ca8210_rx_done._entry_ptr.83, ptr @ca8210_rx_done._entry_ptr.88, ptr @ca8210_rx_done._entry_ptr.91, ptr @ca8210_rx_done._entry_ptr.94, ptr @ca8210_rx_done._entry_ptr.97, ptr @ca8210_set_cca_ed_level._entry, ptr @ca8210_set_cca_ed_level._entry_ptr, ptr @ca8210_set_cca_mode._entry, ptr @ca8210_set_cca_mode._entry_ptr, ptr @ca8210_set_channel._entry, ptr @ca8210_set_channel._entry_ptr, ptr @ca8210_set_csma_params._entry, ptr @ca8210_set_csma_params._entry.153, ptr @ca8210_set_csma_params._entry.156, ptr @ca8210_set_csma_params._entry_ptr, ptr @ca8210_set_csma_params._entry_ptr.155, ptr @ca8210_set_csma_params._entry_ptr.158, ptr @ca8210_set_frame_retries._entry, ptr @ca8210_set_frame_retries._entry_ptr, ptr @ca8210_set_hw_addr_filt._entry, ptr @ca8210_set_hw_addr_filt._entry.141, ptr @ca8210_set_hw_addr_filt._entry.144, ptr @ca8210_set_hw_addr_filt._entry_ptr, ptr @ca8210_set_hw_addr_filt._entry_ptr.143, ptr @ca8210_set_hw_addr_filt._entry_ptr.146, ptr @ca8210_set_promiscuous_mode._entry, ptr @ca8210_set_promiscuous_mode._entry_ptr, ptr @ca8210_skb_rx._entry, ptr @ca8210_skb_rx._entry.124, ptr @ca8210_skb_rx._entry_ptr, ptr @ca8210_skb_rx._entry_ptr.126, ptr @ca8210_spi_driver_exit, ptr @ca8210_spi_exchange._entry, ptr @ca8210_spi_exchange._entry.50, ptr @ca8210_spi_exchange._entry.54, ptr @ca8210_spi_exchange._entry_ptr, ptr @ca8210_spi_exchange._entry_ptr.53, ptr @ca8210_spi_exchange._entry_ptr.56, ptr @ca8210_spi_transfer._entry, ptr @ca8210_spi_transfer._entry.61, ptr @ca8210_spi_transfer._entry_ptr, ptr @ca8210_spi_transfer._entry_ptr.63, ptr @ca8210_spi_transfer_complete._entry, ptr @ca8210_spi_transfer_complete._entry.66, ptr @ca8210_spi_transfer_complete._entry.69, ptr @ca8210_spi_transfer_complete._entry.72, ptr @ca8210_spi_transfer_complete._entry_ptr, ptr @ca8210_spi_transfer_complete._entry_ptr.68, ptr @ca8210_spi_transfer_complete._entry_ptr.71, ptr @ca8210_spi_transfer_complete._entry_ptr.74, ptr @ca8210_start._entry, ptr @ca8210_start._entry.39, ptr @ca8210_start._entry_ptr, ptr @ca8210_start._entry_ptr.41, ptr @ca8210_test_int_user_read._entry, ptr @ca8210_test_int_user_read._entry.170, ptr @ca8210_test_int_user_read._entry_ptr, ptr @ca8210_test_int_user_read._entry_ptr.172, ptr @ca8210_test_int_user_write._entry, ptr @ca8210_test_int_user_write._entry.180, ptr @ca8210_test_int_user_write._entry.183, ptr @ca8210_test_int_user_write._entry.186, ptr @ca8210_test_int_user_write._entry_ptr, ptr @ca8210_test_int_user_write._entry_ptr.182, ptr @ca8210_test_int_user_write._entry_ptr.185, ptr @ca8210_test_int_user_write._entry_ptr.188, ptr @ca8210_test_interface_clear._entry, ptr @ca8210_test_interface_clear._entry_ptr, ptr @ca8210_unregister_ext_clock._entry, ptr @ca8210_unregister_ext_clock._entry_ptr, ptr @mlme_reset_request_sync._entry, ptr @mlme_reset_request_sync._entry_ptr, ptr @tdme_chipinit._entry, ptr @tdme_chipinit._entry_ptr, ptr @tdme_setsfr_request_sync._entry, ptr @tdme_setsfr_request_sync._entry.44, ptr @tdme_setsfr_request_sync._entry_ptr, ptr @tdme_setsfr_request_sync._entry_ptr.46, ptr @ca8210_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ca8210_of_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ca8210_phy_ops, ptr @.str.9, ptr @.str.10, ptr @ca8210_probe.__key, ptr @.str.12, ptr @cascoda_api_upstream, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @ca8210_rx_done.__key, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @init_completion.__key, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @test_int_fops, ptr @ca8210_test_interface_init.__key, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @ca8210_tx_powers, ptr @ca8210_ed_levels, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.236, ptr @.str.239, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @switch.table.mlme_set_request_sync], section "llvm.metadata"
@0 = internal global [241 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_phy_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cascoda_api_upstream to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdme_setsfr_request_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdme_setsfr_request_sync._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_exchange._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_exchange._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_exchange._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_transfer._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_transfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_transfer_complete._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_transfer_complete._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_spi_transfer_complete._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_rx_done._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_skb_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_skb_rx._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_async_xmit_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_async_xmit_complete._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlme_reset_request_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_hw_addr_filt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_hw_addr_filt._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_hw_addr_filt._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_cca_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_cca_ed_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_csma_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_csma_params._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_csma_params._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_frame_retries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_set_promiscuous_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_int_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_interface_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_int_user_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_int_user_read._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_int_user_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_int_user_write._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_int_user_write._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_int_user_write._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_tx_powers to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_ed_levels to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_dev_com_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_dev_com_init._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_reset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_interrupt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_interrupt_init._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_interrupt_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_reset_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdme_chipinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_config_extern_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_config_extern_clk._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_config_extern_clk._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_register_ext_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_register_ext_clock._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_register_ext_clock._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_remove._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_remove._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_unregister_ext_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca8210_test_interface_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlme_set_request_sync to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ca8210_spi_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ca8210_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ca8210_spi_driver, i32 0, i32 4)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_probe(ptr noundef %spi_device) #2 align 64 {
entry:
  %command.i297 = alloca %struct.mac_message, align 1
  %response.i298 = alloca %struct.mac_message, align 1
  %command.i280 = alloca %struct.mac_message, align 1
  %response.i281 = alloca %struct.mac_message, align 1
  %command.i263 = alloca %struct.mac_message, align 1
  %response.i264 = alloca %struct.mac_message, align 1
  %command.i246 = alloca %struct.mac_message, align 1
  %response.i247 = alloca %struct.mac_message, align 1
  %command.i229 = alloca %struct.mac_message, align 1
  %response.i230 = alloca %struct.mac_message, align 1
  %command.i212 = alloca %struct.mac_message, align 1
  %response.i213 = alloca %struct.mac_message, align 1
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  %command.i.i181 = alloca %struct.mac_message, align 1
  %response.i.i182 = alloca %struct.mac_message, align 1
  %command.i103.i = alloca %struct.mac_message, align 1
  %response.i104.i = alloca %struct.mac_message, align 1
  %command.i86.i = alloca %struct.mac_message, align 1
  %response.i87.i = alloca %struct.mac_message, align 1
  %command.i69.i = alloca %struct.mac_message, align 1
  %response.i70.i = alloca %struct.mac_message, align 1
  %command.i.i = alloca %struct.mac_message, align 1
  %response.i.i = alloca %struct.mac_message, align 1
  %node_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_device, ptr noundef nonnull @.str.3) #15
  %call = tail call ptr @ieee802154_alloc_hw(i32 noundef 348, ptr noundef nonnull @ca8210_phy_ops) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.9) #15
  br label %error

if.end:                                           ; preds = %entry
  %priv5 = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv5, align 4
  %hw6 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hw6, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi_device, ptr %1, align 4
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi_device, ptr %parent, align 4
  %lock = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @ca8210_probe.__key, i16 noundef signext 3) #12
  %async_tx_pending = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %async_tx_pending to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %async_tx_pending, align 4
  %hw_registered = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hw_registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hw_registered, align 4
  %sync_up = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %sync_up to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sync_up, align 4
  %sync_down = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %sync_down to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sync_down, align 4
  %promiscuous = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %promiscuous, align 4
  %retries = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %retries, align 4
  %ca8210_is_awake = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %ca8210_is_awake to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ca8210_is_awake, align 4
  %wait.i = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @init_completion.__key) #12
  %spi_transfer_complete = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %spi_transfer_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %spi_transfer_complete, align 4
  %wait.i154 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i154, ptr noundef nonnull @.str.163, ptr noundef nonnull @init_completion.__key) #12
  %sync_exchange_complete = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 17
  %13 = ptrtoint ptr %sync_exchange_complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %sync_exchange_complete, align 4
  %wait.i155 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 17, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i155, ptr noundef nonnull @.str.163, ptr noundef nonnull @init_completion.__key) #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %driver_data.i.i, align 4
  store ptr @ca8210_test_int_driver_write, ptr @cascoda_api_upstream, align 4
  %test1.i = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %node_name.i) #12
  %17 = call ptr @memset(ptr %node_name.i, i32 255, i32 32)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i, align 4
  %bus_num.i = getelementptr inbounds %struct.spi_controller, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %bus_num.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bus_num.i, align 8
  %conv.i = sext i16 %23 to i32
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 4
  %24 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_select.i, align 4
  %conv3.i = zext i8 %25 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %node_name.i, i32 noundef 32, ptr noundef nonnull @.str.166, i32 noundef %conv.i, i32 noundef %conv3.i) #12
  %call5.i = call ptr @debugfs_create_file(ptr noundef nonnull %node_name.i, i16 noundef zeroext 384, ptr noundef null, ptr noundef %1, ptr noundef nonnull @test_int_fops) #12
  %26 = ptrtoint ptr %test1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i, ptr %test1.i, align 4
  %call7.i156 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef nonnull %node_name.i) #12
  %readq.i = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 2
  call void @__init_waitqueue_head(ptr noundef %readq.i, ptr noundef nonnull @.str.167, ptr noundef nonnull @ca8210_test_interface_init.__key) #12
  %up_fifo.i = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1
  %call8.i = call i32 @__kfifo_alloc(ptr noundef %up_fifo.i, i32 noundef 256, i32 noundef 1, i32 noundef 3264) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %node_name.i) #12
  %phy.i = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 4
  %27 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy.i, align 4
  %supported.i = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 134215680, ptr %supported.i, align 4
  %30 = load ptr, ptr %phy.i, align 4
  %tx_powers_size.i = getelementptr inbounds %struct.wpan_phy, ptr %30, i32 0, i32 4, i32 13
  %31 = ptrtoint ptr %tx_powers_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 9, ptr %tx_powers_size.i, align 4
  %32 = load ptr, ptr %phy.i, align 4
  %tx_powers.i = getelementptr inbounds %struct.wpan_phy, ptr %32, i32 0, i32 4, i32 15
  %33 = ptrtoint ptr %tx_powers.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ca8210_tx_powers, ptr %tx_powers.i, align 4
  %34 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels_size.i = getelementptr inbounds %struct.wpan_phy, ptr %34, i32 0, i32 4, i32 14
  %35 = ptrtoint ptr %cca_ed_levels_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 21, ptr %cca_ed_levels_size.i, align 4
  %36 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels.i = getelementptr inbounds %struct.wpan_phy, ptr %36, i32 0, i32 4, i32 16
  %37 = ptrtoint ptr %cca_ed_levels.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ca8210_ed_levels, ptr %cca_ed_levels.i, align 4
  %38 = load ptr, ptr %phy.i, align 4
  %current_channel.i = getelementptr inbounds %struct.wpan_phy, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 18, ptr %current_channel.i, align 8
  %40 = load ptr, ptr %phy.i, align 4
  %current_page.i = getelementptr inbounds %struct.wpan_phy, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %current_page.i, align 1
  %42 = load ptr, ptr %phy.i, align 4
  %transmit_power.i = getelementptr inbounds %struct.wpan_phy, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %transmit_power.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 800, ptr %transmit_power.i, align 4
  %44 = load ptr, ptr %phy.i, align 4
  %cca.i = getelementptr inbounds %struct.wpan_phy, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %cca.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %cca.i, align 8
  %46 = load ptr, ptr %phy.i, align 4
  %opt.i = getelementptr inbounds %struct.wpan_phy, ptr %46, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %opt.i, align 4
  %48 = load ptr, ptr %phy.i, align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -9800, ptr %cca_ed_level.i, align 8
  %50 = load ptr, ptr %phy.i, align 4
  %symbol_duration.i = getelementptr inbounds %struct.wpan_phy, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %symbol_duration.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 16, ptr %symbol_duration.i, align 4
  %52 = load ptr, ptr %phy.i, align 4
  %symbol_duration18.i = getelementptr inbounds %struct.wpan_phy, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %symbol_duration18.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %symbol_duration18.i, align 4
  %conv.i157 = zext i8 %54 to i16
  %mul.i = mul nuw nsw i16 %conv.i157, 40
  %lifs_period.i = getelementptr inbounds %struct.wpan_phy, ptr %52, i32 0, i32 10
  %55 = ptrtoint ptr %lifs_period.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %mul.i, ptr %lifs_period.i, align 2
  %56 = load ptr, ptr %phy.i, align 4
  %symbol_duration22.i = getelementptr inbounds %struct.wpan_phy, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %symbol_duration22.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %symbol_duration22.i, align 4
  %conv23.i = zext i8 %58 to i16
  %mul24.i = mul nuw nsw i16 %conv23.i, 12
  %sifs_period.i = getelementptr inbounds %struct.wpan_phy, ptr %56, i32 0, i32 11
  %59 = ptrtoint ptr %sifs_period.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %mul24.i, ptr %sifs_period.i, align 16
  %flags.i = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 1
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 125, ptr %flags.i, align 4
  %61 = load ptr, ptr %phy.i, align 4
  %flags28.i = getelementptr inbounds %struct.wpan_phy, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %flags28.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 14, ptr %flags28.i, align 4
  %63 = load ptr, ptr %phy.i, align 4
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %63, i32 0, i32 7
  call void @get_random_bytes(ptr noundef %perm_extended_addr, i32 noundef 8) #12
  %arrayidx.i = getelementptr i8, ptr %perm_extended_addr, i32 7
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  %66 = and i8 %65, -4
  %67 = or i8 %66, 2
  store i8 %67, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %68 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 24) #16
  %tobool15.not = icmp eq ptr %call7.i, null
  br i1 %tobool15.not, label %if.end.error_crit_edge, label %if.end17

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end17:                                         ; preds = %if.end
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i, ptr %platform_data, align 8
  %72 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 27
  %73 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %if.end17.do.end26_crit_edge, label %if.end.i

if.end17.do.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

if.end.i:                                         ; preds = %if.end17
  %call.i.i = call ptr @of_find_property(ptr noundef nonnull %74, ptr noundef nonnull @.str.189, ptr noundef null) #12
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %75 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool.i, ptr %call7.i, align 8
  br i1 %tobool.i.i, label %if.then5.i, label %if.end.i.if.end28_crit_edge

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then5.i:                                       ; preds = %if.end.i
  %76 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node.i, align 8
  %extclockfreq.i = getelementptr inbounds %struct.ca8210_platform_data, ptr %call7.i, i32 0, i32 1
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %77, ptr noundef nonnull @.str.190, ptr noundef %extclockfreq.i, i32 noundef 1, i32 noundef 0) #12
  %78 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then5.i.ca8210_get_platform_data.exit_crit_edge, label %if.end10.i

if.then5.i.ca8210_get_platform_data.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_get_platform_data.exit

if.end10.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node.i, align 8
  %extclockgpio.i = getelementptr inbounds %struct.ca8210_platform_data, ptr %call7.i, i32 0, i32 2
  %call.i.i23.i = call i32 @of_property_read_variable_u32_array(ptr noundef %80, ptr noundef nonnull @.str.191, ptr noundef %extclockgpio.i, i32 noundef 1, i32 noundef 0) #12
  %81 = call i32 @llvm.smin.i32(i32 %call.i.i23.i, i32 0) #12
  br label %ca8210_get_platform_data.exit

ca8210_get_platform_data.exit:                    ; preds = %if.end10.i, %if.then5.i.ca8210_get_platform_data.exit_crit_edge
  %retval.0.i = phi i32 [ %78, %if.then5.i.ca8210_get_platform_data.exit_crit_edge ], [ %81, %if.end10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool22.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool22.not, label %ca8210_get_platform_data.exit.if.end28_crit_edge, label %ca8210_get_platform_data.exit.do.end26_crit_edge

ca8210_get_platform_data.exit.do.end26_crit_edge: ; preds = %ca8210_get_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

ca8210_get_platform_data.exit.if.end28_crit_edge: ; preds = %ca8210_get_platform_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end26:                                         ; preds = %ca8210_get_platform_data.exit.do.end26_crit_edge, %if.end17.do.end26_crit_edge
  %retval.0.i319 = phi i32 [ %retval.0.i, %ca8210_get_platform_data.exit.do.end26_crit_edge ], [ -22, %if.end17.do.end26_crit_edge ]
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.14) #15
  br label %error

if.end28:                                         ; preds = %ca8210_get_platform_data.exit.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  %call.i158 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.192, i32 noundef 655362, i32 noundef 1) #12
  %mlme_workqueue.i = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %mlme_workqueue.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i158, ptr %mlme_workqueue.i, align 4
  %tobool.not.i159 = icmp eq ptr %call.i158, null
  br i1 %tobool.not.i159, label %do.end.i, label %if.end.i160

do.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %84, ptr noundef nonnull @.str.193) #15
  br label %do.end34

if.end.i160:                                      ; preds = %if.end28
  %call2.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.195, i32 noundef 655362, i32 noundef 1) #12
  %irq_workqueue.i = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 5
  %85 = ptrtoint ptr %irq_workqueue.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call2.i, ptr %irq_workqueue.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  br i1 %tobool4.not.i, label %do.end7.i, label %if.end36

do.end7.i:                                        ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %87, ptr noundef nonnull @.str.197) #15
  %88 = ptrtoint ptr %mlme_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mlme_workqueue.i, align 4
  call void @destroy_workqueue(ptr noundef %89) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end7.i, %do.end.i
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.17) #15
  br label %error

if.end36:                                         ; preds = %if.end.i160
  %platform_data.i = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 7
  %90 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %platform_data.i, align 8
  %of_node.i162 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 27
  %92 = ptrtoint ptr %of_node.i162 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node.i162, align 8
  %call.i.i163 = call i32 @of_get_named_gpio_flags(ptr noundef %93, ptr noundef nonnull @.str.199, i32 noundef 0, ptr noundef null) #12
  %gpio_reset.i = getelementptr inbounds %struct.ca8210_platform_data, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call.i.i163, ptr %gpio_reset.i, align 4
  %call.i11.i = call ptr @gpio_to_desc(i32 noundef %call.i.i163) #12
  %call1.i.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i11.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i164 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i164, label %ca8210_reset_init.exit.thread, label %ca8210_reset_init.exit

ca8210_reset_init.exit.thread:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %gpio_reset.i, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %87, ptr noundef nonnull @.str.200, i32 noundef %96) #15
  br label %do.end43

ca8210_reset_init.exit:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool39.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool39.not, label %if.end45, label %ca8210_reset_init.exit.do.end43_crit_edge

ca8210_reset_init.exit.do.end43_crit_edge:        ; preds = %ca8210_reset_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

do.end43:                                         ; preds = %ca8210_reset_init.exit.do.end43_crit_edge, %ca8210_reset_init.exit.thread
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.20) #15
  br label %error

if.end45:                                         ; preds = %ca8210_reset_init.exit
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %platform_data.i167 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %platform_data.i167 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %platform_data.i167, align 8
  %of_node.i168 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 27
  %101 = ptrtoint ptr %of_node.i168 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node.i168, align 8
  %call.i.i169 = call i32 @of_get_named_gpio_flags(ptr noundef %102, ptr noundef nonnull @.str.202, i32 noundef 0, ptr noundef null) #12
  %gpio_irq.i = getelementptr inbounds %struct.ca8210_platform_data, ptr %100, i32 0, i32 4
  %103 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call.i.i169, ptr %gpio_irq.i, align 4
  %call.i37.i = call ptr @gpio_to_desc(i32 noundef %call.i.i169) #12
  %call1.i.i170 = call i32 @gpiod_to_irq(ptr noundef %call.i37.i) #12
  %irq_id.i = getelementptr inbounds %struct.ca8210_platform_data, ptr %100, i32 0, i32 5
  %104 = ptrtoint ptr %irq_id.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %call1.i.i170, ptr %irq_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i170)
  %cmp.i171 = icmp slt i32 %call1.i.i170, 0
  br i1 %cmp.i171, label %ca8210_interrupt_init.exit, label %if.end.i174

if.end.i174:                                      ; preds = %if.end45
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 8
  %105 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %driver_data.i.i.i, align 4
  %call.i38.i = call i32 @request_threaded_irq(i32 noundef %call1.i.i170, ptr noundef nonnull @ca8210_interrupt_handler, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.205, ptr noundef %106) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool.not.i173 = icmp eq i32 %call.i38.i, 0
  br i1 %tobool.not.i173, label %if.end.i174.if.end54_crit_edge, label %ca8210_interrupt_init.exit.thread326

if.end.i174.if.end54_crit_edge:                   ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

ca8210_interrupt_init.exit.thread326:             ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %irq_id.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq_id.i, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %98, ptr noundef nonnull @.str.207, i32 noundef %108) #15
  %109 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %gpio_irq.i, align 4
  %call.i39.i = call ptr @gpio_to_desc(i32 noundef %110) #12
  call void @gpiod_unexport(ptr noundef %call.i39.i) #12
  %111 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %gpio_irq.i, align 4
  call void @gpio_free(i32 noundef %112) #12
  br label %do.end52

ca8210_interrupt_init.exit:                       ; preds = %if.end45
  %113 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %gpio_irq.i, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %98, ptr noundef nonnull @.str.203, i32 noundef %114) #15
  %115 = ptrtoint ptr %gpio_irq.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %gpio_irq.i, align 4
  call void @gpio_free(i32 noundef %116) #12
  %117 = ptrtoint ptr %irq_id.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool48.not = icmp eq i32 %118, 0
  br i1 %tobool48.not, label %ca8210_interrupt_init.exit.if.end54_crit_edge, label %ca8210_interrupt_init.exit.do.end52_crit_edge

ca8210_interrupt_init.exit.do.end52_crit_edge:    ; preds = %ca8210_interrupt_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

ca8210_interrupt_init.exit.if.end54_crit_edge:    ; preds = %ca8210_interrupt_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

do.end52:                                         ; preds = %ca8210_interrupt_init.exit.do.end52_crit_edge, %ca8210_interrupt_init.exit.thread326
  %retval.0.i175329 = phi i32 [ %call.i38.i, %ca8210_interrupt_init.exit.thread326 ], [ %118, %ca8210_interrupt_init.exit.do.end52_crit_edge ]
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.23) #15
  br label %error

if.end54:                                         ; preds = %ca8210_interrupt_init.exit.if.end54_crit_edge, %if.end.i174.if.end54_crit_edge
  call void @msleep(i32 noundef 100) #12
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  call fastcc void @ca8210_reset_send(ptr noundef %120, i32 noundef 1)
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i.i) #12
  %123 = getelementptr inbounds i8, ptr %command.i.i, i32 5
  %124 = call ptr @memset(ptr %123, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i.i) #12
  %125 = getelementptr inbounds i8, ptr %response.i.i, i32 1
  %126 = call ptr @memset(ptr %125, i32 255, i32 149)
  %127 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 81, ptr %command.i.i, align 1
  %length.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 3, ptr %length.i.i, align 1
  %pdata.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %pdata.i.i, align 1
  %sfr_address3.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2, i32 0, i32 1
  %130 = ptrtoint ptr %sfr_address3.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -31, ptr %sfr_address3.i.i, align 1
  %sfr_value5.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2, i32 0, i32 2
  %131 = ptrtoint ptr %sfr_value5.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 41, ptr %sfr_value5.i.i, align 1
  %132 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -1, ptr %response.i.i, align 1
  %call.i.i176 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i.i, i32 noundef 5, ptr noundef nonnull %response.i.i, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %tobool.not.i.i = icmp eq i32 %call.i.i176, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i.i176) #15
  br label %tdme_setsfr_request_sync.exit.thread.i

if.end.i.i:                                       ; preds = %if.end54
  %133 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %response.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %134)
  %cmp.not.i.i = icmp eq i8 %134, 119
  br i1 %cmp.not.i.i, label %tdme_setsfr_request_sync.exit.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i.i = zext i8 %134 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i.i) #15
  br label %tdme_setsfr_request_sync.exit.thread.i

tdme_setsfr_request_sync.exit.thread.i:           ; preds = %do.end16.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i.i) #12
  br label %do.end62

tdme_setsfr_request_sync.exit.i:                  ; preds = %if.end.i.i
  %pdata21.i.i = getelementptr inbounds %struct.mac_message, ptr %response.i.i, i32 0, i32 2
  %135 = ptrtoint ptr %pdata21.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pdata21.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i177 = icmp eq i8 %136, 0
  br i1 %tobool.not.i177, label %if.end.i178, label %tdme_setsfr_request_sync.exit.i.do.end62_crit_edge

tdme_setsfr_request_sync.exit.i.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end.i178:                                      ; preds = %tdme_setsfr_request_sync.exit.i
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i69.i) #12
  %137 = getelementptr inbounds i8, ptr %command.i69.i, i32 5
  %138 = call ptr @memset(ptr %137, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i70.i) #12
  %139 = getelementptr inbounds i8, ptr %response.i70.i, i32 1
  %140 = call ptr @memset(ptr %139, i32 255, i32 149)
  %141 = ptrtoint ptr %command.i69.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 81, ptr %command.i69.i, align 1
  %length.i71.i = getelementptr inbounds %struct.mac_message, ptr %command.i69.i, i32 0, i32 1
  %142 = ptrtoint ptr %length.i71.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 3, ptr %length.i71.i, align 1
  %pdata.i72.i = getelementptr inbounds %struct.mac_message, ptr %command.i69.i, i32 0, i32 2
  %143 = ptrtoint ptr %pdata.i72.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %pdata.i72.i, align 1
  %sfr_address3.i73.i = getelementptr inbounds %struct.mac_message, ptr %command.i69.i, i32 0, i32 2, i32 0, i32 1
  %144 = ptrtoint ptr %sfr_address3.i73.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -30, ptr %sfr_address3.i73.i, align 1
  %sfr_value5.i74.i = getelementptr inbounds %struct.mac_message, ptr %command.i69.i, i32 0, i32 2, i32 0, i32 2
  %145 = ptrtoint ptr %sfr_value5.i74.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 84, ptr %sfr_value5.i74.i, align 1
  %146 = ptrtoint ptr %response.i70.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %response.i70.i, align 1
  %call.i75.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i69.i, i32 noundef 5, ptr noundef nonnull %response.i70.i, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool.not.i76.i, label %if.end.i79.i, label %do.end.i77.i

do.end.i77.i:                                     ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i75.i) #15
  br label %tdme_setsfr_request_sync.exit85.thread.i

if.end.i79.i:                                     ; preds = %if.end.i178
  %147 = ptrtoint ptr %response.i70.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %response.i70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %148)
  %cmp.not.i78.i = icmp eq i8 %148, 119
  br i1 %cmp.not.i78.i, label %tdme_setsfr_request_sync.exit85.i, label %do.end16.i81.i

do.end16.i81.i:                                   ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i80.i = zext i8 %148 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i80.i) #15
  br label %tdme_setsfr_request_sync.exit85.thread.i

tdme_setsfr_request_sync.exit85.thread.i:         ; preds = %do.end16.i81.i, %do.end.i77.i
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i70.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i69.i) #12
  br label %do.end62

tdme_setsfr_request_sync.exit85.i:                ; preds = %if.end.i79.i
  %pdata21.i82.i = getelementptr inbounds %struct.mac_message, ptr %response.i70.i, i32 0, i32 2
  %149 = ptrtoint ptr %pdata21.i82.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %pdata21.i82.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i70.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i69.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool2.not.i = icmp eq i8 %150, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %tdme_setsfr_request_sync.exit85.i.do.end62_crit_edge

tdme_setsfr_request_sync.exit85.i.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end4.i:                                        ; preds = %tdme_setsfr_request_sync.exit85.i
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i86.i) #12
  %151 = getelementptr inbounds i8, ptr %command.i86.i, i32 5
  %152 = call ptr @memset(ptr %151, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i87.i) #12
  %153 = getelementptr inbounds i8, ptr %response.i87.i, i32 1
  %154 = call ptr @memset(ptr %153, i32 255, i32 149)
  %155 = ptrtoint ptr %command.i86.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 81, ptr %command.i86.i, align 1
  %length.i88.i = getelementptr inbounds %struct.mac_message, ptr %command.i86.i, i32 0, i32 1
  %156 = ptrtoint ptr %length.i88.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 3, ptr %length.i88.i, align 1
  %pdata.i89.i = getelementptr inbounds %struct.mac_message, ptr %command.i86.i, i32 0, i32 2
  %157 = ptrtoint ptr %pdata.i89.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %pdata.i89.i, align 1
  %sfr_address3.i90.i = getelementptr inbounds %struct.mac_message, ptr %command.i86.i, i32 0, i32 2, i32 0, i32 1
  %158 = ptrtoint ptr %sfr_address3.i90.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -29, ptr %sfr_address3.i90.i, align 1
  %sfr_value5.i91.i = getelementptr inbounds %struct.mac_message, ptr %command.i86.i, i32 0, i32 2, i32 0, i32 2
  %159 = ptrtoint ptr %sfr_value5.i91.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 108, ptr %sfr_value5.i91.i, align 1
  %160 = ptrtoint ptr %response.i87.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %response.i87.i, align 1
  %call.i92.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i86.i, i32 noundef 5, ptr noundef nonnull %response.i87.i, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not.i93.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not.i93.i, label %if.end.i96.i, label %do.end.i94.i

do.end.i94.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i92.i) #15
  br label %tdme_setsfr_request_sync.exit102.thread.i

if.end.i96.i:                                     ; preds = %if.end4.i
  %161 = ptrtoint ptr %response.i87.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %response.i87.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %162)
  %cmp.not.i95.i = icmp eq i8 %162, 119
  br i1 %cmp.not.i95.i, label %tdme_setsfr_request_sync.exit102.i, label %do.end16.i98.i

do.end16.i98.i:                                   ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i97.i = zext i8 %162 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i97.i) #15
  br label %tdme_setsfr_request_sync.exit102.thread.i

tdme_setsfr_request_sync.exit102.thread.i:        ; preds = %do.end16.i98.i, %do.end.i94.i
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i87.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i86.i) #12
  br label %do.end62

tdme_setsfr_request_sync.exit102.i:               ; preds = %if.end.i96.i
  %pdata21.i99.i = getelementptr inbounds %struct.mac_message, ptr %response.i87.i, i32 0, i32 2
  %163 = ptrtoint ptr %pdata21.i99.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %pdata21.i99.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i87.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i86.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool6.not.i = icmp eq i8 %164, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %tdme_setsfr_request_sync.exit102.i.do.end62_crit_edge

tdme_setsfr_request_sync.exit102.i.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end8.i:                                        ; preds = %tdme_setsfr_request_sync.exit102.i
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i103.i) #12
  %165 = getelementptr inbounds i8, ptr %command.i103.i, i32 5
  %166 = call ptr @memset(ptr %165, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i104.i) #12
  %167 = getelementptr inbounds i8, ptr %response.i104.i, i32 1
  %168 = call ptr @memset(ptr %167, i32 255, i32 149)
  %169 = ptrtoint ptr %command.i103.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 81, ptr %command.i103.i, align 1
  %length.i105.i = getelementptr inbounds %struct.mac_message, ptr %command.i103.i, i32 0, i32 1
  %170 = ptrtoint ptr %length.i105.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 3, ptr %length.i105.i, align 1
  %pdata.i106.i = getelementptr inbounds %struct.mac_message, ptr %command.i103.i, i32 0, i32 2
  %171 = ptrtoint ptr %pdata.i106.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %pdata.i106.i, align 1
  %sfr_address3.i107.i = getelementptr inbounds %struct.mac_message, ptr %command.i103.i, i32 0, i32 2, i32 0, i32 1
  %172 = ptrtoint ptr %sfr_address3.i107.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -28, ptr %sfr_address3.i107.i, align 1
  %sfr_value5.i108.i = getelementptr inbounds %struct.mac_message, ptr %command.i103.i, i32 0, i32 2, i32 0, i32 2
  %173 = ptrtoint ptr %sfr_value5.i108.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 122, ptr %sfr_value5.i108.i, align 1
  %174 = ptrtoint ptr %response.i104.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %response.i104.i, align 1
  %call.i109.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i103.i, i32 noundef 5, ptr noundef nonnull %response.i104.i, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %tobool.not.i110.i = icmp eq i32 %call.i109.i, 0
  br i1 %tobool.not.i110.i, label %if.end.i113.i, label %do.end.i111.i

do.end.i111.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i109.i) #15
  br label %tdme_setsfr_request_sync.exit119.thread.i

if.end.i113.i:                                    ; preds = %if.end8.i
  %175 = ptrtoint ptr %response.i104.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %response.i104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %176)
  %cmp.not.i112.i = icmp eq i8 %176, 119
  br i1 %cmp.not.i112.i, label %tdme_setsfr_request_sync.exit119.i, label %do.end16.i115.i

do.end16.i115.i:                                  ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i114.i = zext i8 %176 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i114.i) #15
  br label %tdme_setsfr_request_sync.exit119.thread.i

tdme_setsfr_request_sync.exit119.thread.i:        ; preds = %do.end16.i115.i, %do.end.i111.i
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i104.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i103.i) #12
  br label %do.end62

tdme_setsfr_request_sync.exit119.i:               ; preds = %if.end.i113.i
  %pdata21.i116.i = getelementptr inbounds %struct.mac_message, ptr %response.i104.i, i32 0, i32 2
  %177 = ptrtoint ptr %pdata21.i116.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %pdata21.i116.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i104.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i103.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool10.not.i = icmp eq i8 %178, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %tdme_setsfr_request_sync.exit119.i.do.end62_crit_edge

tdme_setsfr_request_sync.exit119.i.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end12.i:                                       ; preds = %tdme_setsfr_request_sync.exit119.i
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i297) #12
  %179 = getelementptr inbounds i8, ptr %command.i297, i32 5
  %180 = call ptr @memset(ptr %179, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i298) #12
  %181 = getelementptr inbounds i8, ptr %response.i298, i32 1
  %182 = call ptr @memset(ptr %181, i32 255, i32 149)
  %183 = ptrtoint ptr %command.i297 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 81, ptr %command.i297, align 1
  %length.i299 = getelementptr inbounds %struct.mac_message, ptr %command.i297, i32 0, i32 1
  %184 = ptrtoint ptr %length.i299 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 3, ptr %length.i299, align 1
  %pdata.i300 = getelementptr inbounds %struct.mac_message, ptr %command.i297, i32 0, i32 2
  %185 = ptrtoint ptr %pdata.i300 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %pdata.i300, align 1
  %sfr_address3.i301 = getelementptr inbounds %struct.mac_message, ptr %command.i297, i32 0, i32 2, i32 0, i32 1
  %186 = ptrtoint ptr %sfr_address3.i301 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 -27, ptr %sfr_address3.i301, align 1
  %sfr_value5.i302 = getelementptr inbounds %struct.mac_message, ptr %command.i297, i32 0, i32 2, i32 0, i32 2
  %187 = ptrtoint ptr %sfr_value5.i302 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -124, ptr %sfr_value5.i302, align 1
  %188 = ptrtoint ptr %response.i298 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -1, ptr %response.i298, align 1
  %call.i303 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i297, i32 noundef 5, ptr noundef nonnull %response.i298, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %tobool.not.i304 = icmp eq i32 %call.i303, 0
  br i1 %tobool.not.i304, label %if.end.i307, label %do.end.i305

do.end.i305:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i303) #15
  br label %tdme_setsfr_request_sync.exit313.thread

if.end.i307:                                      ; preds = %if.end12.i
  %189 = ptrtoint ptr %response.i298 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %response.i298, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %190)
  %cmp.not.i306 = icmp eq i8 %190, 119
  br i1 %cmp.not.i306, label %tdme_setsfr_request_sync.exit313, label %do.end16.i309

do.end16.i309:                                    ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i308 = zext i8 %190 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i308) #15
  br label %tdme_setsfr_request_sync.exit313.thread

tdme_setsfr_request_sync.exit313.thread:          ; preds = %do.end16.i309, %do.end.i305
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i298) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i297) #12
  br label %do.end62

tdme_setsfr_request_sync.exit313:                 ; preds = %if.end.i307
  %pdata21.i310 = getelementptr inbounds %struct.mac_message, ptr %response.i298, i32 0, i32 2
  %191 = ptrtoint ptr %pdata21.i310 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %pdata21.i310, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i298) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i297) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool14.not.i = icmp eq i8 %192, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %tdme_setsfr_request_sync.exit313.do.end62_crit_edge

tdme_setsfr_request_sync.exit313.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit313
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end16.i:                                       ; preds = %tdme_setsfr_request_sync.exit313
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i280) #12
  %193 = getelementptr inbounds i8, ptr %command.i280, i32 5
  %194 = call ptr @memset(ptr %193, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i281) #12
  %195 = getelementptr inbounds i8, ptr %response.i281, i32 1
  %196 = call ptr @memset(ptr %195, i32 255, i32 149)
  %197 = ptrtoint ptr %command.i280 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 81, ptr %command.i280, align 1
  %length.i282 = getelementptr inbounds %struct.mac_message, ptr %command.i280, i32 0, i32 1
  %198 = ptrtoint ptr %length.i282 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 3, ptr %length.i282, align 1
  %pdata.i283 = getelementptr inbounds %struct.mac_message, ptr %command.i280, i32 0, i32 2
  %199 = ptrtoint ptr %pdata.i283 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %pdata.i283, align 1
  %sfr_address3.i284 = getelementptr inbounds %struct.mac_message, ptr %command.i280, i32 0, i32 2, i32 0, i32 1
  %200 = ptrtoint ptr %sfr_address3.i284 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -26, ptr %sfr_address3.i284, align 1
  %sfr_value5.i285 = getelementptr inbounds %struct.mac_message, ptr %command.i280, i32 0, i32 2, i32 0, i32 2
  %201 = ptrtoint ptr %sfr_value5.i285 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 -117, ptr %sfr_value5.i285, align 1
  %202 = ptrtoint ptr %response.i281 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 -1, ptr %response.i281, align 1
  %call.i286 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i280, i32 noundef 5, ptr noundef nonnull %response.i281, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool.not.i287 = icmp eq i32 %call.i286, 0
  br i1 %tobool.not.i287, label %if.end.i290, label %do.end.i288

do.end.i288:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i286) #15
  br label %tdme_setsfr_request_sync.exit296.thread

if.end.i290:                                      ; preds = %if.end16.i
  %203 = ptrtoint ptr %response.i281 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %response.i281, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %204)
  %cmp.not.i289 = icmp eq i8 %204, 119
  br i1 %cmp.not.i289, label %tdme_setsfr_request_sync.exit296, label %do.end16.i292

do.end16.i292:                                    ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i291 = zext i8 %204 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i291) #15
  br label %tdme_setsfr_request_sync.exit296.thread

tdme_setsfr_request_sync.exit296.thread:          ; preds = %do.end16.i292, %do.end.i288
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i281) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i280) #12
  br label %do.end62

tdme_setsfr_request_sync.exit296:                 ; preds = %if.end.i290
  %pdata21.i293 = getelementptr inbounds %struct.mac_message, ptr %response.i281, i32 0, i32 2
  %205 = ptrtoint ptr %pdata21.i293 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pdata21.i293, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i281) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i280) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool18.not.i = icmp eq i8 %206, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %tdme_setsfr_request_sync.exit296.do.end62_crit_edge

tdme_setsfr_request_sync.exit296.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit296
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end20.i:                                       ; preds = %tdme_setsfr_request_sync.exit296
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i263) #12
  %207 = getelementptr inbounds i8, ptr %command.i263, i32 5
  %208 = call ptr @memset(ptr %207, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i264) #12
  %209 = getelementptr inbounds i8, ptr %response.i264, i32 1
  %210 = call ptr @memset(ptr %209, i32 255, i32 149)
  %211 = ptrtoint ptr %command.i263 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 81, ptr %command.i263, align 1
  %length.i265 = getelementptr inbounds %struct.mac_message, ptr %command.i263, i32 0, i32 1
  %212 = ptrtoint ptr %length.i265 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 3, ptr %length.i265, align 1
  %pdata.i266 = getelementptr inbounds %struct.mac_message, ptr %command.i263, i32 0, i32 2
  %213 = ptrtoint ptr %pdata.i266 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %pdata.i266, align 1
  %sfr_address3.i267 = getelementptr inbounds %struct.mac_message, ptr %command.i263, i32 0, i32 2, i32 0, i32 1
  %214 = ptrtoint ptr %sfr_address3.i267 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -25, ptr %sfr_address3.i267, align 1
  %sfr_value5.i268 = getelementptr inbounds %struct.mac_message, ptr %command.i263, i32 0, i32 2, i32 0, i32 2
  %215 = ptrtoint ptr %sfr_value5.i268 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -110, ptr %sfr_value5.i268, align 1
  %216 = ptrtoint ptr %response.i264 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -1, ptr %response.i264, align 1
  %call.i269 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i263, i32 noundef 5, ptr noundef nonnull %response.i264, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i270 = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i270, label %if.end.i273, label %do.end.i271

do.end.i271:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i269) #15
  br label %tdme_setsfr_request_sync.exit279.thread

if.end.i273:                                      ; preds = %if.end20.i
  %217 = ptrtoint ptr %response.i264 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %response.i264, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %218)
  %cmp.not.i272 = icmp eq i8 %218, 119
  br i1 %cmp.not.i272, label %tdme_setsfr_request_sync.exit279, label %do.end16.i275

do.end16.i275:                                    ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i274 = zext i8 %218 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i274) #15
  br label %tdme_setsfr_request_sync.exit279.thread

tdme_setsfr_request_sync.exit279.thread:          ; preds = %do.end16.i275, %do.end.i271
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i264) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i263) #12
  br label %do.end62

tdme_setsfr_request_sync.exit279:                 ; preds = %if.end.i273
  %pdata21.i276 = getelementptr inbounds %struct.mac_message, ptr %response.i264, i32 0, i32 2
  %219 = ptrtoint ptr %pdata21.i276 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %pdata21.i276, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i264) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i263) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool22.not.i = icmp eq i8 %220, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %tdme_setsfr_request_sync.exit279.do.end62_crit_edge

tdme_setsfr_request_sync.exit279.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit279
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end24.i:                                       ; preds = %tdme_setsfr_request_sync.exit279
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i246) #12
  %221 = getelementptr inbounds i8, ptr %command.i246, i32 5
  %222 = call ptr @memset(ptr %221, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i247) #12
  %223 = getelementptr inbounds i8, ptr %response.i247, i32 1
  %224 = call ptr @memset(ptr %223, i32 255, i32 149)
  %225 = ptrtoint ptr %command.i246 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 81, ptr %command.i246, align 1
  %length.i248 = getelementptr inbounds %struct.mac_message, ptr %command.i246, i32 0, i32 1
  %226 = ptrtoint ptr %length.i248 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 3, ptr %length.i248, align 1
  %pdata.i249 = getelementptr inbounds %struct.mac_message, ptr %command.i246, i32 0, i32 2
  %227 = ptrtoint ptr %pdata.i249 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %pdata.i249, align 1
  %sfr_address3.i250 = getelementptr inbounds %struct.mac_message, ptr %command.i246, i32 0, i32 2, i32 0, i32 1
  %228 = ptrtoint ptr %sfr_address3.i250 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 -23, ptr %sfr_address3.i250, align 1
  %sfr_value5.i251 = getelementptr inbounds %struct.mac_message, ptr %command.i246, i32 0, i32 2, i32 0, i32 2
  %229 = ptrtoint ptr %sfr_value5.i251 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 -106, ptr %sfr_value5.i251, align 1
  %230 = ptrtoint ptr %response.i247 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -1, ptr %response.i247, align 1
  %call.i252 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i246, i32 noundef 5, ptr noundef nonnull %response.i247, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %tobool.not.i253 = icmp eq i32 %call.i252, 0
  br i1 %tobool.not.i253, label %if.end.i256, label %do.end.i254

do.end.i254:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i252) #15
  br label %tdme_setsfr_request_sync.exit262.thread

if.end.i256:                                      ; preds = %if.end24.i
  %231 = ptrtoint ptr %response.i247 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %response.i247, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %232)
  %cmp.not.i255 = icmp eq i8 %232, 119
  br i1 %cmp.not.i255, label %tdme_setsfr_request_sync.exit262, label %do.end16.i258

do.end16.i258:                                    ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i257 = zext i8 %232 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i257) #15
  br label %tdme_setsfr_request_sync.exit262.thread

tdme_setsfr_request_sync.exit262.thread:          ; preds = %do.end16.i258, %do.end.i254
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i247) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i246) #12
  br label %do.end62

tdme_setsfr_request_sync.exit262:                 ; preds = %if.end.i256
  %pdata21.i259 = getelementptr inbounds %struct.mac_message, ptr %response.i247, i32 0, i32 2
  %233 = ptrtoint ptr %pdata21.i259 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %pdata21.i259, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i247) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i246) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool26.not.i = icmp eq i8 %234, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %tdme_setsfr_request_sync.exit262.do.end62_crit_edge

tdme_setsfr_request_sync.exit262.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit262
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end28.i:                                       ; preds = %tdme_setsfr_request_sync.exit262
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i229) #12
  %235 = getelementptr inbounds i8, ptr %command.i229, i32 5
  %236 = call ptr @memset(ptr %235, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i230) #12
  %237 = getelementptr inbounds i8, ptr %response.i230, i32 1
  %238 = call ptr @memset(ptr %237, i32 255, i32 149)
  %239 = ptrtoint ptr %command.i229 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 81, ptr %command.i229, align 1
  %length.i231 = getelementptr inbounds %struct.mac_message, ptr %command.i229, i32 0, i32 1
  %240 = ptrtoint ptr %length.i231 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 3, ptr %length.i231, align 1
  %pdata.i232 = getelementptr inbounds %struct.mac_message, ptr %command.i229, i32 0, i32 2
  %241 = ptrtoint ptr %pdata.i232 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 1, ptr %pdata.i232, align 1
  %sfr_address3.i233 = getelementptr inbounds %struct.mac_message, ptr %command.i229, i32 0, i32 2, i32 0, i32 1
  %242 = ptrtoint ptr %sfr_address3.i233 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 -45, ptr %sfr_address3.i233, align 1
  %sfr_value5.i234 = getelementptr inbounds %struct.mac_message, ptr %command.i229, i32 0, i32 2, i32 0, i32 2
  %243 = ptrtoint ptr %sfr_value5.i234 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 109, ptr %sfr_value5.i234, align 1
  %244 = ptrtoint ptr %response.i230 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 -1, ptr %response.i230, align 1
  %call.i235 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i229, i32 noundef 5, ptr noundef nonnull %response.i230, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool.not.i236 = icmp eq i32 %call.i235, 0
  br i1 %tobool.not.i236, label %if.end.i239, label %do.end.i237

do.end.i237:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i235) #15
  br label %tdme_setsfr_request_sync.exit245.thread

if.end.i239:                                      ; preds = %if.end28.i
  %245 = ptrtoint ptr %response.i230 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %response.i230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %246)
  %cmp.not.i238 = icmp eq i8 %246, 119
  br i1 %cmp.not.i238, label %tdme_setsfr_request_sync.exit245, label %do.end16.i241

do.end16.i241:                                    ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i240 = zext i8 %246 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i240) #15
  br label %tdme_setsfr_request_sync.exit245.thread

tdme_setsfr_request_sync.exit245.thread:          ; preds = %do.end16.i241, %do.end.i237
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i230) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i229) #12
  br label %do.end62

tdme_setsfr_request_sync.exit245:                 ; preds = %if.end.i239
  %pdata21.i242 = getelementptr inbounds %struct.mac_message, ptr %response.i230, i32 0, i32 2
  %247 = ptrtoint ptr %pdata21.i242 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %pdata21.i242, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i230) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i229) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %tobool30.not.i = icmp eq i8 %248, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %tdme_setsfr_request_sync.exit245.do.end62_crit_edge

tdme_setsfr_request_sync.exit245.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit245
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end32.i:                                       ; preds = %tdme_setsfr_request_sync.exit245
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i212) #12
  %249 = getelementptr inbounds i8, ptr %command.i212, i32 5
  %250 = call ptr @memset(ptr %249, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i213) #12
  %251 = getelementptr inbounds i8, ptr %response.i213, i32 1
  %252 = call ptr @memset(ptr %251, i32 255, i32 149)
  %253 = ptrtoint ptr %command.i212 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 81, ptr %command.i212, align 1
  %length.i214 = getelementptr inbounds %struct.mac_message, ptr %command.i212, i32 0, i32 1
  %254 = ptrtoint ptr %length.i214 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 3, ptr %length.i214, align 1
  %pdata.i215 = getelementptr inbounds %struct.mac_message, ptr %command.i212, i32 0, i32 2
  %255 = ptrtoint ptr %pdata.i215 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %pdata.i215, align 1
  %sfr_address3.i216 = getelementptr inbounds %struct.mac_message, ptr %command.i212, i32 0, i32 2, i32 0, i32 1
  %256 = ptrtoint ptr %sfr_address3.i216 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 -47, ptr %sfr_address3.i216, align 1
  %sfr_value5.i217 = getelementptr inbounds %struct.mac_message, ptr %command.i212, i32 0, i32 2, i32 0, i32 2
  %257 = ptrtoint ptr %sfr_value5.i217 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 90, ptr %sfr_value5.i217, align 1
  %258 = ptrtoint ptr %response.i213 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -1, ptr %response.i213, align 1
  %call.i218 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i212, i32 noundef 5, ptr noundef nonnull %response.i213, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i219 = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i219, label %if.end.i222, label %do.end.i220

do.end.i220:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i218) #15
  br label %tdme_setsfr_request_sync.exit228.thread

if.end.i222:                                      ; preds = %if.end32.i
  %259 = ptrtoint ptr %response.i213 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %response.i213, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %260)
  %cmp.not.i221 = icmp eq i8 %260, 119
  br i1 %cmp.not.i221, label %tdme_setsfr_request_sync.exit228, label %do.end16.i224

do.end16.i224:                                    ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i223 = zext i8 %260 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i223) #15
  br label %tdme_setsfr_request_sync.exit228.thread

tdme_setsfr_request_sync.exit228.thread:          ; preds = %do.end16.i224, %do.end.i220
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i213) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i212) #12
  br label %do.end62

tdme_setsfr_request_sync.exit228:                 ; preds = %if.end.i222
  %pdata21.i225 = getelementptr inbounds %struct.mac_message, ptr %response.i213, i32 0, i32 2
  %261 = ptrtoint ptr %pdata21.i225 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %pdata21.i225, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i213) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i212) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool34.not.i = icmp eq i8 %262, 0
  br i1 %tobool34.not.i, label %finish.i, label %tdme_setsfr_request_sync.exit228.do.end62_crit_edge

tdme_setsfr_request_sync.exit228.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit228
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

finish.i:                                         ; preds = %tdme_setsfr_request_sync.exit228
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %263 = getelementptr inbounds i8, ptr %command.i, i32 5
  %264 = call ptr @memset(ptr %263, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %265 = getelementptr inbounds i8, ptr %response.i, i32 1
  %266 = call ptr @memset(ptr %265, i32 255, i32 149)
  %267 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 81, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %268 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 3, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %269 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %pdata.i, align 1
  %sfr_address3.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %270 = ptrtoint ptr %sfr_address3.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 -2, ptr %sfr_address3.i, align 1
  %sfr_value5.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %271 = ptrtoint ptr %sfr_value5.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 63, ptr %sfr_value5.i, align 1
  %272 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 -1, ptr %response.i, align 1
  %call.i205 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 5, ptr noundef nonnull %response.i, ptr noundef %122) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i206 = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i206, label %if.end.i209, label %do.end.i207

do.end.i207:                                      ; preds = %finish.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.42, i32 noundef %call.i205) #15
  br label %tdme_setsfr_request_sync.exit.thread

if.end.i209:                                      ; preds = %finish.i
  %273 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %274)
  %cmp.not.i208 = icmp eq i8 %274, 119
  br i1 %cmp.not.i208, label %tdme_setsfr_request_sync.exit, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i209
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i = zext i8 %274 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %122, ptr noundef nonnull @.str.45, i32 noundef %conv11.i) #15
  br label %tdme_setsfr_request_sync.exit.thread

tdme_setsfr_request_sync.exit.thread:             ; preds = %do.end16.i, %do.end.i207
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end62

tdme_setsfr_request_sync.exit:                    ; preds = %if.end.i209
  %pdata21.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %275 = ptrtoint ptr %pdata21.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %pdata21.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %cmp.not.i = icmp eq i8 %276, 0
  br i1 %cmp.not.i, label %if.end64, label %tdme_setsfr_request_sync.exit.do.end62_crit_edge

tdme_setsfr_request_sync.exit.do.end62_crit_edge: ; preds = %tdme_setsfr_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

do.end62:                                         ; preds = %tdme_setsfr_request_sync.exit.do.end62_crit_edge, %tdme_setsfr_request_sync.exit.thread, %tdme_setsfr_request_sync.exit228.do.end62_crit_edge, %tdme_setsfr_request_sync.exit228.thread, %tdme_setsfr_request_sync.exit245.do.end62_crit_edge, %tdme_setsfr_request_sync.exit245.thread, %tdme_setsfr_request_sync.exit262.do.end62_crit_edge, %tdme_setsfr_request_sync.exit262.thread, %tdme_setsfr_request_sync.exit279.do.end62_crit_edge, %tdme_setsfr_request_sync.exit279.thread, %tdme_setsfr_request_sync.exit296.do.end62_crit_edge, %tdme_setsfr_request_sync.exit296.thread, %tdme_setsfr_request_sync.exit313.do.end62_crit_edge, %tdme_setsfr_request_sync.exit313.thread, %tdme_setsfr_request_sync.exit119.i.do.end62_crit_edge, %tdme_setsfr_request_sync.exit119.thread.i, %tdme_setsfr_request_sync.exit102.i.do.end62_crit_edge, %tdme_setsfr_request_sync.exit102.thread.i, %tdme_setsfr_request_sync.exit85.i.do.end62_crit_edge, %tdme_setsfr_request_sync.exit85.thread.i, %tdme_setsfr_request_sync.exit.i.do.end62_crit_edge, %tdme_setsfr_request_sync.exit.thread.i
  %status.0132.i = phi i8 [ %276, %tdme_setsfr_request_sync.exit.do.end62_crit_edge ], [ -1, %tdme_setsfr_request_sync.exit119.thread.i ], [ -1, %tdme_setsfr_request_sync.exit102.thread.i ], [ -1, %tdme_setsfr_request_sync.exit85.thread.i ], [ -1, %tdme_setsfr_request_sync.exit.thread.i ], [ %262, %tdme_setsfr_request_sync.exit228.do.end62_crit_edge ], [ %248, %tdme_setsfr_request_sync.exit245.do.end62_crit_edge ], [ %234, %tdme_setsfr_request_sync.exit262.do.end62_crit_edge ], [ %220, %tdme_setsfr_request_sync.exit279.do.end62_crit_edge ], [ %206, %tdme_setsfr_request_sync.exit296.do.end62_crit_edge ], [ %192, %tdme_setsfr_request_sync.exit313.do.end62_crit_edge ], [ %178, %tdme_setsfr_request_sync.exit119.i.do.end62_crit_edge ], [ %164, %tdme_setsfr_request_sync.exit102.i.do.end62_crit_edge ], [ %150, %tdme_setsfr_request_sync.exit85.i.do.end62_crit_edge ], [ %136, %tdme_setsfr_request_sync.exit.i.do.end62_crit_edge ], [ -1, %tdme_setsfr_request_sync.exit313.thread ], [ -1, %tdme_setsfr_request_sync.exit296.thread ], [ -1, %tdme_setsfr_request_sync.exit279.thread ], [ -1, %tdme_setsfr_request_sync.exit262.thread ], [ -1, %tdme_setsfr_request_sync.exit245.thread ], [ -1, %tdme_setsfr_request_sync.exit228.thread ], [ -1, %tdme_setsfr_request_sync.exit.thread ]
  %sfr_address.0131.i = phi i32 [ 254, %tdme_setsfr_request_sync.exit.do.end62_crit_edge ], [ 228, %tdme_setsfr_request_sync.exit119.thread.i ], [ 227, %tdme_setsfr_request_sync.exit102.thread.i ], [ 226, %tdme_setsfr_request_sync.exit85.thread.i ], [ 225, %tdme_setsfr_request_sync.exit.thread.i ], [ 209, %tdme_setsfr_request_sync.exit228.do.end62_crit_edge ], [ 211, %tdme_setsfr_request_sync.exit245.do.end62_crit_edge ], [ 233, %tdme_setsfr_request_sync.exit262.do.end62_crit_edge ], [ 231, %tdme_setsfr_request_sync.exit279.do.end62_crit_edge ], [ 230, %tdme_setsfr_request_sync.exit296.do.end62_crit_edge ], [ 229, %tdme_setsfr_request_sync.exit313.do.end62_crit_edge ], [ 228, %tdme_setsfr_request_sync.exit119.i.do.end62_crit_edge ], [ 227, %tdme_setsfr_request_sync.exit102.i.do.end62_crit_edge ], [ 226, %tdme_setsfr_request_sync.exit85.i.do.end62_crit_edge ], [ 225, %tdme_setsfr_request_sync.exit.i.do.end62_crit_edge ], [ 229, %tdme_setsfr_request_sync.exit313.thread ], [ 230, %tdme_setsfr_request_sync.exit296.thread ], [ 231, %tdme_setsfr_request_sync.exit279.thread ], [ 233, %tdme_setsfr_request_sync.exit262.thread ], [ 211, %tdme_setsfr_request_sync.exit245.thread ], [ 209, %tdme_setsfr_request_sync.exit228.thread ], [ 254, %tdme_setsfr_request_sync.exit.thread ]
  %conv.i179 = zext i8 %status.0132.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.215, i32 noundef %sfr_address.0131.i, i32 noundef %conv.i179) #15
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.26) #15
  br label %error

if.end64:                                         ; preds = %tdme_setsfr_request_sync.exit
  %277 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %call7.i, align 8, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool65.not = icmp eq i8 %278, 0
  br i1 %tobool65.not, label %if.end64.if.end85_crit_edge, label %if.then66

if.end64.if.end85_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then66:                                        ; preds = %if.end64
  %279 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %280, ptr noundef nonnull @.str.217) #15
  %extclockfreq.i183 = getelementptr inbounds %struct.ca8210_platform_data, ptr %call7.i, i32 0, i32 1
  %281 = ptrtoint ptr %extclockfreq.i183 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %extclockfreq.i183, align 4
  %283 = zext i32 %282 to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values)
  switch i32 %282, label %ca8210_config_extern_clk.exit.thread [
    i32 16000000, label %if.then66.sw.epilog.i_crit_edge
    i32 8000000, label %sw.bb1.i
    i32 4000000, label %sw.bb3.i
    i32 2000000, label %sw.bb5.i
    i32 1000000, label %sw.bb7.i
  ]

if.then66.sw.epilog.i_crit_edge:                  ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

ca8210_config_extern_clk.exit.thread:             ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %280, ptr noundef nonnull @.str.220) #15
  br label %do.end73

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %if.then66.sw.epilog.i_crit_edge
  %clkparam.sroa.0.0.i = phi i8 [ 5, %sw.bb7.i ], [ 4, %sw.bb5.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb1.i ], [ 1, %if.then66.sw.epilog.i_crit_edge ]
  %extclockgpio.i185 = getelementptr inbounds %struct.ca8210_platform_data, ptr %call7.i, i32 0, i32 2
  %284 = ptrtoint ptr %extclockgpio.i185 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %extclockgpio.i185, align 8
  %conv.i186 = trunc i32 %285 to i8
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i.i181) #12
  %286 = getelementptr inbounds i8, ptr %command.i.i181, i32 4
  %287 = getelementptr inbounds i8, ptr %command.i.i181, i32 6
  %288 = call ptr @memset(ptr %287, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i.i182) #12
  %289 = call ptr @memset(ptr %response.i.i182, i32 255, i32 150)
  %290 = ptrtoint ptr %command.i.i181 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 78, ptr %command.i.i181, align 1
  %length.i.i187 = getelementptr inbounds %struct.mac_message, ptr %command.i.i181, i32 0, i32 1
  %291 = ptrtoint ptr %length.i.i187 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 4, ptr %length.i.i187, align 1
  %pdata.i.i188 = getelementptr inbounds %struct.mac_message, ptr %command.i.i181, i32 0, i32 2
  %292 = ptrtoint ptr %pdata.i.i188 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 15, ptr %pdata.i.i188, align 1
  %hw_attribute_length4.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i181, i32 0, i32 2, i32 0, i32 1
  %293 = ptrtoint ptr %hw_attribute_length4.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 2, ptr %hw_attribute_length4.i.i, align 1
  %294 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %clkparam.sroa.0.0.i, ptr %286, align 1
  %clkparam.sroa.10.0.hw_attribute_value6.i.sroa_idx.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i181, i32 0, i32 2, i32 0, i32 3
  %295 = ptrtoint ptr %clkparam.sroa.10.0.hw_attribute_value6.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv.i186, ptr %clkparam.sroa.10.0.hw_attribute_value6.i.sroa_idx.i, align 1
  %call.i.i189 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i.i181, i32 noundef 6, ptr noundef nonnull %response.i.i182, ptr noundef %280) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i189)
  %tobool.not.i.i190 = icmp eq i32 %call.i.i189, 0
  br i1 %tobool.not.i.i190, label %if.end.i.i193, label %sw.epilog.i.ca8210_config_extern_clk.exit_crit_edge

sw.epilog.i.ca8210_config_extern_clk.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_config_extern_clk.exit

if.end.i.i193:                                    ; preds = %sw.epilog.i
  %296 = ptrtoint ptr %response.i.i182 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %response.i.i182, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %297)
  %cmp.not.i.i192 = icmp eq i8 %297, 114
  br i1 %cmp.not.i.i192, label %if.end17.i.i, label %if.end.i.i193.ca8210_config_extern_clk.exit_crit_edge

if.end.i.i193.ca8210_config_extern_clk.exit_crit_edge: ; preds = %if.end.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_config_extern_clk.exit

if.end17.i.i:                                     ; preds = %if.end.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  %pdata18.i.i = getelementptr inbounds %struct.mac_message, ptr %response.i.i182, i32 0, i32 2
  %298 = ptrtoint ptr %pdata18.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %pdata18.i.i, align 1
  %phi.cast.i = zext i8 %299 to i32
  br label %ca8210_config_extern_clk.exit

ca8210_config_extern_clk.exit:                    ; preds = %if.end17.i.i, %if.end.i.i193.ca8210_config_extern_clk.exit_crit_edge, %sw.epilog.i.ca8210_config_extern_clk.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.end17.i.i ], [ 255, %sw.epilog.i.ca8210_config_extern_clk.exit_crit_edge ], [ 255, %if.end.i.i193.ca8210_config_extern_clk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i.i182) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i.i181) #12
  %call21.i194 = call fastcc i32 @link_to_linux_err(i32 noundef %retval.0.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i194)
  %tobool69.not = icmp eq i32 %call21.i194, 0
  br i1 %tobool69.not, label %if.end75, label %ca8210_config_extern_clk.exit.do.end73_crit_edge

ca8210_config_extern_clk.exit.do.end73_crit_edge: ; preds = %ca8210_config_extern_clk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

do.end73:                                         ; preds = %ca8210_config_extern_clk.exit.do.end73_crit_edge, %ca8210_config_extern_clk.exit.thread
  %retval.0.i195348 = phi i32 [ -22, %ca8210_config_extern_clk.exit.thread ], [ %call21.i194, %ca8210_config_extern_clk.exit.do.end73_crit_edge ]
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.29) #15
  br label %error

if.end75:                                         ; preds = %ca8210_config_extern_clk.exit
  %300 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %1, align 4
  %of_node.i196 = getelementptr inbounds %struct.device, ptr %301, i32 0, i32 27
  %302 = ptrtoint ptr %of_node.i196 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %of_node.i196, align 8
  %tobool.not.i197 = icmp eq ptr %303, null
  br i1 %tobool.not.i197, label %if.end75.do.end82_crit_edge, label %if.end.i201

if.end75.do.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

if.end.i201:                                      ; preds = %if.end75
  %driver_data.i.i.i198 = getelementptr inbounds %struct.device, ptr %301, i32 0, i32 8
  %304 = ptrtoint ptr %driver_data.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %driver_data.i.i.i198, align 4
  %platform_data.i199 = getelementptr inbounds %struct.device, ptr %301, i32 0, i32 7
  %306 = ptrtoint ptr %platform_data.i199 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %platform_data.i199, align 8
  %308 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %303, align 4
  %extclockfreq.i200 = getelementptr inbounds %struct.ca8210_platform_data, ptr %307, i32 0, i32 1
  %310 = ptrtoint ptr %extclockfreq.i200 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %extclockfreq.i200, align 4
  %call3.i = call ptr @clk_register_fixed_rate(ptr noundef %301, ptr noundef %309, ptr noundef null, i32 noundef 0, i32 noundef %311) #12
  %clk.i = getelementptr inbounds %struct.ca8210_priv, ptr %305, i32 0, i32 8
  %312 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call3.i, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ca8210_register_ext_clock.exit, label %if.end10.i203

if.end10.i203:                                    ; preds = %if.end.i201
  %call12.i = call i32 @of_clk_add_provider(ptr noundef nonnull %303, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call3.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %ca8210_register_ext_clock.exit.thread352, label %if.then14.i

if.then14.i:                                      ; preds = %if.end10.i203
  call void @__sanitizer_cov_trace_pc() #14
  %313 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %clk.i, align 4
  call void @clk_unregister(ptr noundef %314) #12
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %301, ptr noundef nonnull @.str.228) #15
  br label %do.end82

ca8210_register_ext_clock.exit.thread352:         ; preds = %if.end10.i203
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %301, ptr noundef nonnull @.str.231) #15
  br label %if.end85

ca8210_register_ext_clock.exit:                   ; preds = %if.end.i201
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %301, ptr noundef nonnull @.str.225) #15
  %315 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %clk.i, align 4
  %317 = ptrtoint ptr %316 to i32
  %tobool78.not = icmp eq ptr %316, null
  br i1 %tobool78.not, label %ca8210_register_ext_clock.exit.if.end85_crit_edge, label %ca8210_register_ext_clock.exit.do.end82_crit_edge

ca8210_register_ext_clock.exit.do.end82_crit_edge: ; preds = %ca8210_register_ext_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end82

ca8210_register_ext_clock.exit.if.end85_crit_edge: ; preds = %ca8210_register_ext_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.end82:                                         ; preds = %ca8210_register_ext_clock.exit.do.end82_crit_edge, %if.then14.i, %if.end75.do.end82_crit_edge
  %retval.0.i204351 = phi i32 [ %317, %ca8210_register_ext_clock.exit.do.end82_crit_edge ], [ %call12.i, %if.then14.i ], [ -14, %if.end75.do.end82_crit_edge ]
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.32) #15
  br label %error

if.end85:                                         ; preds = %ca8210_register_ext_clock.exit.if.end85_crit_edge, %ca8210_register_ext_clock.exit.thread352, %if.end64.if.end85_crit_edge
  %call86 = call i32 @ieee802154_register_hw(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi_device, ptr noundef nonnull @.str.35) #15
  br label %error

if.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %318 = ptrtoint ptr %hw_registered to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 1, ptr %hw_registered, align 4
  br label %cleanup

error:                                            ; preds = %do.end91, %do.end82, %do.end73, %do.end62, %do.end52, %do.end43, %do.end34, %do.end26, %if.end.error_crit_edge, %do.end3
  %ret.0 = phi i32 [ %retval.0.i319, %do.end26 ], [ -12, %do.end34 ], [ %call1.i.i, %do.end43 ], [ %retval.0.i175329, %do.end52 ], [ %conv.i179, %do.end62 ], [ %retval.0.i195348, %do.end73 ], [ %retval.0.i204351, %do.end82 ], [ %call86, %do.end91 ], [ -12, %do.end3 ], [ -12, %if.end.error_crit_edge ]
  call void @msleep(i32 noundef 100) #12
  %call95 = call i32 @ca8210_remove(ptr noundef %spi_device)
  %call96 = call fastcc i32 @link_to_linux_err(i32 noundef %ret.0)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end93
  %retval.0 = phi i32 [ %call96, %error ], [ 0, %if.end93 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_remove(ptr noundef %spi_device) #2 align 64 {
entry:
  %command.i.i = alloca %struct.mac_message, align 1
  %response.i.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_device, ptr noundef nonnull @.str.233) #15
  %platform_data = getelementptr inbounds %struct.device, ptr %spi_device, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %spi_device, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %clk.i = getelementptr inbounds %struct.ca8210_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi_device, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %9) #12
  br label %ca8210_unregister_ext_clock.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unregister(ptr noundef nonnull %7) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_device, ptr noundef nonnull @.str.241) #15
  br label %ca8210_unregister_ext_clock.exit

ca8210_unregister_ext_clock.exit:                 ; preds = %if.end.i, %if.then.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_device, ptr noundef nonnull @.str.223) #15
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i.i) #12
  %10 = getelementptr inbounds i8, ptr %command.i.i, i32 4
  %11 = getelementptr inbounds i8, ptr %command.i.i, i32 6
  %12 = call ptr @memset(ptr %11, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i.i) #12
  %13 = call ptr @memset(ptr %response.i.i, i32 255, i32 150)
  %14 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 78, ptr %command.i.i, align 1
  %length.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %length.i.i, align 1
  %pdata.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 15, ptr %pdata.i.i, align 1
  %hw_attribute_length4.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %hw_attribute_length4.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %hw_attribute_length4.i.i, align 1
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %10, align 1
  %clkparam.sroa.10.0.hw_attribute_value6.i.sroa_idx.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2, i32 0, i32 3
  %19 = ptrtoint ptr %clkparam.sroa.10.0.hw_attribute_value6.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %clkparam.sroa.10.0.hw_attribute_value6.i.sroa_idx.i, align 1
  %call.i.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i.i, i32 noundef 6, ptr noundef nonnull %response.i.i, ptr noundef %spi_device) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i.i) #12
  br label %if.end

if.end:                                           ; preds = %ca8210_unregister_ext_clock.exit, %if.then.if.end_crit_edge
  %irq_id = getelementptr inbounds %struct.ca8210_platform_data, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %irq_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_id, align 4
  %driver_data = getelementptr inbounds %struct.device, ptr %spi_device, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data, align 4
  %call5 = call ptr @free_irq(i32 noundef %21, ptr noundef %23) #12
  call void @kfree(ptr noundef nonnull %1) #12
  %24 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %platform_data, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi_device, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %tobool10.not = icmp eq ptr %26, null
  br i1 %tobool10.not, label %if.end8.if.end31_crit_edge, label %do.end14

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.end14:                                         ; preds = %if.end8
  %sync_down = getelementptr inbounds %struct.ca8210_priv, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %sync_down to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_down, align 4
  %sync_up = getelementptr inbounds %struct.ca8210_priv, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %sync_up to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sync_up, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_device, ptr noundef nonnull @.str.236, i32 noundef %28, i32 noundef %30) #15
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i, align 4
  %mlme_workqueue.i = getelementptr inbounds %struct.ca8210_priv, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %mlme_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mlme_workqueue.i, align 4
  call void @destroy_workqueue(ptr noundef %34) #12
  %irq_workqueue.i = getelementptr inbounds %struct.ca8210_priv, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %irq_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %irq_workqueue.i, align 4
  call void @destroy_workqueue(ptr noundef %36) #12
  %hw = getelementptr inbounds %struct.ca8210_priv, ptr %26, i32 0, i32 1
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %tobool18.not = icmp eq ptr %38, null
  br i1 %tobool18.not, label %do.end14.if.end30_crit_edge, label %if.then19

do.end14.if.end30_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then19:                                        ; preds = %do.end14
  %hw_registered = getelementptr inbounds %struct.ca8210_priv, ptr %26, i32 0, i32 2
  %39 = ptrtoint ptr %hw_registered to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hw_registered, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool20.not = icmp eq i8 %40, 0
  br i1 %tobool20.not, label %if.then19.if.end23_crit_edge, label %if.then21

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  call void @ieee802154_unregister_hw(ptr noundef nonnull %38) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19.if.end23_crit_edge
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  call void @ieee802154_free_hw(ptr noundef %42) #12
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %hw, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi_device, ptr noundef nonnull @.str.239) #15
  br label %if.end30

if.end30:                                         ; preds = %if.end23, %do.end14.if.end30_crit_edge
  %test1.i = getelementptr inbounds %struct.ca8210_priv, ptr %26, i32 0, i32 10
  %44 = ptrtoint ptr %test1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %test1.i, align 4
  call void @debugfs_remove(ptr noundef %45) #12
  %up_fifo.i = getelementptr inbounds %struct.ca8210_priv, ptr %26, i32 0, i32 10, i32 1
  call void @__kfifo_free(ptr noundef %up_fifo.i) #12
  %46 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.243) #15
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end8.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_test_int_driver_write(ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  %fifo_buffer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_buffer) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_test_int_driver_write.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_test_int_driver_write, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !484

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_test_int_driver_write.__UNIQUE_ID_ddebug340, ptr noundef %3, ptr noundef nonnull @.str.165) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp46.not = icmp eq i32 %len, 0
  br i1 %cmp46.not, label %do.end.for.end_crit_edge, label %do.end.do.body6_crit_edge

do.end.do.body6_crit_edge:                        ; preds = %do.end
  br label %do.body6

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body6:                                         ; preds = %for.inc.do.body6_crit_edge, %do.end.do.body6_crit_edge
  %i.047 = phi i32 [ %inc, %for.inc.do.body6_crit_edge ], [ 0, %do.end.do.body6_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_test_int_driver_write.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_test_int_driver_write, %if.then18)) #12
          to label %for.inc [label %if.then18], !srcloc !484

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.047
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_test_int_driver_write.__UNIQUE_ID_ddebug341, ptr noundef %5, ptr noundef nonnull @.str.60, i32 noundef %conv) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %do.body6
  %inc = add nuw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body6_crit_edge

for.inc.do.body6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call24 = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %len, i32 noundef 3264) #12
  %8 = ptrtoint ptr %fifo_buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %fifo_buffer, align 4
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %for.end.cleanup_crit_edge, label %if.end27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %up_fifo = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1
  %call29 = call i32 @__kfifo_in(ptr noundef %up_fifo, ptr noundef nonnull %fifo_buffer, i32 noundef 4) #12
  %readq = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 2
  call void @__wake_up(ptr noundef %readq, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -12, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_buffer) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ca8210_reset_send(ptr noundef %spi, i32 noundef %ms) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_reset = getelementptr inbounds %struct.ca8210_platform_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_reset, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #12
  %ca8210_is_awake = getelementptr inbounds %struct.ca8210_priv, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %ca8210_is_awake to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ca8210_is_awake, align 4
  tail call void @msleep(i32 noundef %ms) #12
  %7 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_reset, align 4
  %call.i21 = tail call ptr @gpio_to_desc(i32 noundef %8) #12
  tail call void @gpiod_set_raw_value(ptr noundef %call.i21, i32 noundef 1) #12
  %promiscuous = getelementptr inbounds %struct.ca8210_priv, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %promiscuous, align 4
  %call4 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %ca8210_is_awake, i32 noundef 100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi, ptr noundef nonnull @.str.212) #15
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_reset_send.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_reset_send, %if.then10)) #12
          to label %do.end14 [label %if.then10], !srcloc !484

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_reset_send.__UNIQUE_ID_ddebug342, ptr noundef %spi, ptr noundef nonnull @.str.214) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %do.body6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @link_to_linux_err(i32 noundef %link_status) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %link_status)
  %cmp = icmp slt i32 %link_status, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %link_status to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %link_status, label %sw.default [
    i32 0, label %if.end.return_crit_edge
    i32 239, label %if.end.return_crit_edge22
    i32 220, label %sw.bb1
    i32 221, label %if.end.sw.bb2_crit_edge
    i32 222, label %if.end.sw.bb2_crit_edge23
    i32 226, label %if.end.sw.bb2_crit_edge24
    i32 224, label %if.end.sw.bb3_crit_edge
    i32 233, label %if.end.sw.bb3_crit_edge25
    i32 234, label %if.end.sw.bb3_crit_edge26
    i32 225, label %if.end.sw.bb4_crit_edge
    i32 242, label %if.end.sw.bb4_crit_edge27
    i32 252, label %if.end.sw.bb4_crit_edge28
    i32 227, label %if.end.sw.bb5_crit_edge
    i32 237, label %if.end.sw.bb5_crit_edge29
    i32 229, label %sw.bb6
    i32 230, label %if.end.sw.bb7_crit_edge
    i32 247, label %if.end.sw.bb7_crit_edge30
    i32 231, label %sw.bb8
    i32 232, label %if.end.sw.bb9_crit_edge
    i32 244, label %if.end.sw.bb9_crit_edge31
    i32 246, label %if.end.sw.bb9_crit_edge32
    i32 249, label %if.end.sw.bb9_crit_edge33
    i32 235, label %sw.bb10
    i32 236, label %sw.bb11
    i32 238, label %sw.bb12
    i32 240, label %sw.bb13
    i32 241, label %sw.bb14
    i32 243, label %sw.bb15
    i32 245, label %sw.bb16
    i32 248, label %if.end.sw.bb17_crit_edge
    i32 253, label %if.end.sw.bb17_crit_edge34
    i32 250, label %sw.bb18
    i32 251, label %sw.bb19
  ]

if.end.sw.bb17_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

if.end.sw.bb9_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb9_crit_edge32:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb9_crit_edge31:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end.sw.bb7_crit_edge30:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

if.end.sw.bb5_crit_edge29:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

if.end.sw.bb4_crit_edge28:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge27:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

if.end.sw.bb3_crit_edge26:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge25:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb2_crit_edge24:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge23:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

if.end.return_crit_edge22:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge23, %if.end.sw.bb2_crit_edge24
  br label %return

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge25, %if.end.sw.bb3_crit_edge26
  br label %return

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge27, %if.end.sw.bb4_crit_edge28
  br label %return

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge29
  br label %return

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge30
  br label %return

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %if.end.sw.bb9_crit_edge31, %if.end.sw.bb9_crit_edge32, %if.end.sw.bb9_crit_edge33
  br label %return

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge34
  br label %return

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %sw.default, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.end.return_crit_edge, %if.end.return_crit_edge22, %entry.return_crit_edge
  %retval.0 = phi i32 [ -71, %sw.default ], [ -30, %sw.bb19 ], [ -122, %sw.bb18 ], [ -121, %sw.bb17 ], [ -6, %sw.bb16 ], [ -126, %sw.bb15 ], [ -105, %sw.bb14 ], [ -62, %sw.bb13 ], [ -98, %sw.bb12 ], [ -14, %sw.bb11 ], [ -61, %sw.bb10 ], [ -22, %sw.bb9 ], [ -74, %sw.bb8 ], [ -57, %sw.bb7 ], [ -90, %sw.bb6 ], [ -11, %sw.bb5 ], [ -16, %sw.bb4 ], [ -101, %sw.bb3 ], [ -13, %sw.bb2 ], [ -129, %sw.bb1 ], [ %link_status, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ 0, %if.end.return_crit_edge22 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_start(ptr nocapture noundef readonly %hw) #2 align 64 {
if.end.i:
  %command.i28 = alloca %struct.mac_message, align 1
  %response.i29 = alloca %struct.mac_message, align 1
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %last_dsn = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %last_dsn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_dsn, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %5 = getelementptr inbounds i8, ptr %command.i, i32 5
  %6 = getelementptr inbounds i8, ptr %command.i, i32 6
  %7 = call ptr @memset(ptr %6, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %8 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %9 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 82, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %pib_attribute_length20.i, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %5, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 6, ptr noundef nonnull %response.i, ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %16)
  %cmp35.not.i = icmp eq i8 %16, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %17 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i38 = phi i8 [ -1, %mlme_set_request_sync.exit.thread ], [ %18, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %conv = zext i8 %retval.0.i38 to i32
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %20, ptr noundef nonnull @.str.37, i32 noundef %conv) #15
  br label %cleanup.sink.split

if.end:                                           ; preds = %mlme_set_request_sync.exit
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i28) #12
  %23 = getelementptr inbounds i8, ptr %command.i28, i32 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i29) #12
  %24 = call ptr @memset(ptr %response.i29, i32 255, i32 150)
  %25 = ptrtoint ptr %command.i28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 78, ptr %command.i28, align 1
  %length.i30 = getelementptr inbounds %struct.mac_message, ptr %command.i28, i32 0, i32 1
  %26 = ptrtoint ptr %length.i30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %length.i30, align 1
  %pdata.i31 = getelementptr inbounds %struct.mac_message, ptr %command.i28, i32 0, i32 2
  %27 = ptrtoint ptr %pdata.i31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 17, ptr %pdata.i31, align 1
  %hw_attribute_length4.i = getelementptr inbounds %struct.mac_message, ptr %command.i28, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %hw_attribute_length4.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %hw_attribute_length4.i, align 1
  %29 = getelementptr inbounds i8, ptr %command.i28, i32 5
  %30 = call ptr @memset(ptr %29, i32 255, i32 145)
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %23, align 1
  %call.i32 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i28, i32 noundef 5, ptr noundef nonnull %response.i29, ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i34, label %if.end.hwme_set_request_sync.exit.thread_crit_edge

if.end.hwme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_set_request_sync.exit.thread

if.end.i34:                                       ; preds = %if.end
  %32 = ptrtoint ptr %response.i29 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %response.i29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %33)
  %cmp.not.i = icmp eq i8 %33, 114
  br i1 %cmp.not.i, label %hwme_set_request_sync.exit, label %if.end.i34.hwme_set_request_sync.exit.thread_crit_edge

if.end.i34.hwme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_set_request_sync.exit.thread

hwme_set_request_sync.exit.thread:                ; preds = %if.end.i34.hwme_set_request_sync.exit.thread_crit_edge, %if.end.hwme_set_request_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i29) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i28) #12
  br label %do.end11

hwme_set_request_sync.exit:                       ; preds = %if.end.i34
  %pdata18.i = getelementptr inbounds %struct.mac_message, ptr %response.i29, i32 0, i32 2
  %34 = ptrtoint ptr %pdata18.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pdata18.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i29) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i28) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool7.not = icmp eq i8 %35, 0
  br i1 %tobool7.not, label %hwme_set_request_sync.exit.cleanup_crit_edge, label %hwme_set_request_sync.exit.do.end11_crit_edge

hwme_set_request_sync.exit.do.end11_crit_edge:    ; preds = %hwme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

hwme_set_request_sync.exit.cleanup_crit_edge:     ; preds = %hwme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11:                                         ; preds = %hwme_set_request_sync.exit.do.end11_crit_edge, %hwme_set_request_sync.exit.thread
  %retval.0.i3541 = phi i8 [ -1, %hwme_set_request_sync.exit.thread ], [ %35, %hwme_set_request_sync.exit.do.end11_crit_edge ]
  %conv6 = zext i8 %retval.0.i3541 to i32
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %37, ptr noundef nonnull @.str.40, i32 noundef %conv6) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end11, %do.end
  %conv6.sink = phi i32 [ %conv6, %do.end11 ], [ %conv, %do.end ]
  %call14 = call fastcc i32 @link_to_linux_err(i32 noundef %conv6.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %hwme_set_request_sync.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hwme_set_request_sync.exit.cleanup_crit_edge ], [ %call14, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ca8210_stop(ptr nocapture noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_xmit_async(ptr nocapture noundef readonly %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_xmit_async.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_xmit_async, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !484

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_xmit_async.__UNIQUE_ID_ddebug357, ptr noundef %3, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.134) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %tx_skb, align 4
  %async_tx_pending = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %async_tx_pending to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %async_tx_pending, align 4
  %nextmsduhandle = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %nextmsduhandle to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nextmsduhandle, align 4
  %call4 = tail call fastcc i32 @ca8210_skb_tx(ptr noundef %skb, i8 noundef zeroext %7, ptr noundef %1)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_get_ed(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %level) #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 3
  %5 = call ptr @memset(ptr %4, i32 255, i32 147)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %6 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %7 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 79, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %pdata.i, align 1
  %call.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 3, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.hwme_get_request_sync.exit_crit_edge

entry.hwme_get_request_sync.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_get_request_sync.exit

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 115, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 115
  br i1 %cmp.not.i, label %if.end9.i, label %if.end.i.hwme_get_request_sync.exit_crit_edge

if.end.i.hwme_get_request_sync.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_get_request_sync.exit

if.end9.i:                                        ; preds = %if.end.i
  %pdata10.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %12 = ptrtoint ptr %pdata10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pdata10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12.i = icmp eq i8 %13, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end9.i.hwme_get_request_sync.exit_crit_edge

if.end9.i.hwme_get_request_sync.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_get_request_sync.exit

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %hw_attribute_length16.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2, i32 0, i32 2
  %14 = ptrtoint ptr %hw_attribute_length16.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_attribute_length16.i, align 1
  %hw_attribute_value18.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2, i32 0, i32 3
  %conv19.i = zext i8 %15 to i32
  %16 = call ptr @memcpy(ptr %level, ptr %hw_attribute_value18.i, i32 %conv19.i)
  br label %hwme_get_request_sync.exit

hwme_get_request_sync.exit:                       ; preds = %if.then14.i, %if.end9.i.hwme_get_request_sync.exit_crit_edge, %if.end.i.hwme_get_request_sync.exit_crit_edge, %entry.hwme_get_request_sync.exit_crit_edge
  %retval.0.i = phi i8 [ -1, %entry.hwme_get_request_sync.exit_crit_edge ], [ -1, %if.end.i.hwme_get_request_sync.exit_crit_edge ], [ 0, %if.then14.i ], [ %13, %if.end9.i.hwme_get_request_sync.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  %conv = zext i8 %retval.0.i to i32
  %call2 = call fastcc i32 @link_to_linux_err(i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
if.end.i:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 6
  %5 = call ptr @memset(ptr %4, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %6 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %call3.i = tail call fastcc zeroext i8 @tdme_channelinit(i8 noundef zeroext %channel, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3.i)
  %tobool4.not.i = icmp eq i8 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end13.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %7 = getelementptr inbounds i8, ptr %command.i, i32 5
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pib_attribute_length20.i, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %channel, ptr %7, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 6, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end13.i.mlme_set_request_sync.exit.thread_crit_edge

if.end13.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end13.i
  %14 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %15)
  %cmp35.not.i = icmp eq i8 %15, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end13.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge
  %retval.0.i.ph = phi i8 [ -1, %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge ], [ -1, %if.end13.i.mlme_set_request_sync.exit.thread_crit_edge ], [ %call3.i, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %16 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %mlme_set_request_sync.exit.if.end_crit_edge, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

mlme_set_request_sync.exit.if.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i11 = phi i8 [ %retval.0.i.ph, %mlme_set_request_sync.exit.thread ], [ %17, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %conv = zext i8 %retval.0.i11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.137, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %mlme_set_request_sync.exit.if.end_crit_edge
  %retval.0.i12 = phi i8 [ %retval.0.i11, %do.end ], [ 0, %mlme_set_request_sync.exit.if.end_crit_edge ]
  %conv3 = zext i8 %retval.0.i12 to i32
  %call4 = call fastcc i32 @link_to_linux_err(i32 noundef %conv3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_hw_addr_filt(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %filt, i32 noundef %changed) #2 align 64 {
entry:
  %command.i78 = alloca %struct.mac_message, align 1
  %response.i79 = alloca %struct.mac_message, align 1
  %command.i60 = alloca %struct.mac_message, align 1
  %response.i61 = alloca %struct.mac_message, align 1
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.end.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 5
  %5 = getelementptr inbounds i8, ptr %command.i, i32 7
  %6 = call ptr @memset(ptr %5, i32 255, i32 143)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %7 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 80, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %pib_attribute_length20.i, align 1
  %13 = ptrtoint ptr %filt to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %filt, align 1
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %4, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 7, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %17)
  %cmp35.not.i = icmp eq i8 %17, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %18 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp eq i8 %19, 0
  br i1 %tobool2.not, label %mlme_set_request_sync.exit.if.end7_crit_edge, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

mlme_set_request_sync.exit.if.end7_crit_edge:     ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i98 = phi i8 [ -1, %mlme_set_request_sync.exit.thread ], [ %19, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %conv = zext i8 %retval.0.i98 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.139, i32 noundef %conv) #15
  br label %cleanup.sink.split

if.end7:                                          ; preds = %mlme_set_request_sync.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and8 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end24_crit_edge, label %if.end.i64

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end.i64:                                       ; preds = %if.end7
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i60) #12
  %24 = getelementptr inbounds i8, ptr %command.i60, i32 5
  %25 = getelementptr inbounds i8, ptr %command.i60, i32 7
  %26 = call ptr @memset(ptr %25, i32 255, i32 143)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i61) #12
  %27 = call ptr @memset(ptr %response.i61, i32 255, i32 150)
  %28 = ptrtoint ptr %command.i60 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 74, ptr %command.i60, align 1
  %length.i65 = getelementptr inbounds %struct.mac_message, ptr %command.i60, i32 0, i32 1
  %29 = ptrtoint ptr %length.i65 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 5, ptr %length.i65, align 1
  %pdata.i66 = getelementptr inbounds %struct.mac_message, ptr %command.i60, i32 0, i32 2
  %30 = ptrtoint ptr %pdata.i66 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 83, ptr %pdata.i66, align 1
  %pib_attribute_index18.i67 = getelementptr inbounds %struct.mac_message, ptr %command.i60, i32 0, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %pib_attribute_index18.i67 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pib_attribute_index18.i67, align 1
  %pib_attribute_length20.i68 = getelementptr inbounds %struct.mac_message, ptr %command.i60, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %pib_attribute_length20.i68 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %pib_attribute_length20.i68, align 1
  %33 = ptrtoint ptr %short_addr to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %short_addr, align 1
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %24, align 1
  %call29.i70 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i60, i32 noundef 7, ptr noundef nonnull %response.i61, ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i70)
  %tobool30.not.i71 = icmp eq i32 %call29.i70, 0
  br i1 %tobool30.not.i71, label %if.end32.i73, label %if.end.i64.mlme_set_request_sync.exit77.thread_crit_edge

if.end.i64.mlme_set_request_sync.exit77.thread_crit_edge: ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit77.thread

if.end32.i73:                                     ; preds = %if.end.i64
  %36 = ptrtoint ptr %response.i61 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %response.i61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %37)
  %cmp35.not.i72 = icmp eq i8 %37, 110
  br i1 %cmp35.not.i72, label %mlme_set_request_sync.exit77, label %if.end32.i73.mlme_set_request_sync.exit77.thread_crit_edge

if.end32.i73.mlme_set_request_sync.exit77.thread_crit_edge: ; preds = %if.end32.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit77.thread

mlme_set_request_sync.exit77.thread:              ; preds = %if.end32.i73.mlme_set_request_sync.exit77.thread_crit_edge, %if.end.i64.mlme_set_request_sync.exit77.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i61) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i60) #12
  br label %do.end17

mlme_set_request_sync.exit77:                     ; preds = %if.end32.i73
  %pdata39.i74 = getelementptr inbounds %struct.mac_message, ptr %response.i61, i32 0, i32 2
  %38 = ptrtoint ptr %pdata39.i74 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pdata39.i74, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i61) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i60) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool13.not = icmp eq i8 %39, 0
  br i1 %tobool13.not, label %mlme_set_request_sync.exit77.if.end24_crit_edge, label %mlme_set_request_sync.exit77.do.end17_crit_edge

mlme_set_request_sync.exit77.do.end17_crit_edge:  ; preds = %mlme_set_request_sync.exit77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end17

mlme_set_request_sync.exit77.if.end24_crit_edge:  ; preds = %mlme_set_request_sync.exit77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

do.end17:                                         ; preds = %mlme_set_request_sync.exit77.do.end17_crit_edge, %mlme_set_request_sync.exit77.thread
  %retval.0.i76101 = phi i8 [ -1, %mlme_set_request_sync.exit77.thread ], [ %39, %mlme_set_request_sync.exit77.do.end17_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %conv20 = zext i8 %retval.0.i76101 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.142, i32 noundef %conv20) #15
  br label %cleanup.sink.split

if.end24:                                         ; preds = %mlme_set_request_sync.exit77.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %and25 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end.i82

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i82:                                       ; preds = %if.end24
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i78) #12
  %44 = getelementptr inbounds i8, ptr %command.i78, i32 5
  %45 = getelementptr inbounds i8, ptr %command.i78, i32 13
  %46 = call ptr @memset(ptr %45, i32 255, i32 137)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i79) #12
  %47 = call ptr @memset(ptr %response.i79, i32 255, i32 150)
  %48 = ptrtoint ptr %command.i78 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 74, ptr %command.i78, align 1
  %length.i83 = getelementptr inbounds %struct.mac_message, ptr %command.i78, i32 0, i32 1
  %49 = ptrtoint ptr %length.i83 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 11, ptr %length.i83, align 1
  %pdata.i84 = getelementptr inbounds %struct.mac_message, ptr %command.i78, i32 0, i32 2
  %50 = ptrtoint ptr %pdata.i84 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %pdata.i84, align 1
  %pib_attribute_index18.i85 = getelementptr inbounds %struct.mac_message, ptr %command.i78, i32 0, i32 2, i32 0, i32 1
  %51 = ptrtoint ptr %pib_attribute_index18.i85 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %pib_attribute_index18.i85, align 1
  %pib_attribute_length20.i86 = getelementptr inbounds %struct.mac_message, ptr %command.i78, i32 0, i32 2, i32 0, i32 2
  %52 = ptrtoint ptr %pib_attribute_length20.i86 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %pib_attribute_length20.i86, align 1
  %53 = ptrtoint ptr %ieee_addr to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %ieee_addr, align 1
  %55 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %44, align 1
  %call29.i88 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i78, i32 noundef 13, ptr noundef nonnull %response.i79, ptr noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i88)
  %tobool30.not.i89 = icmp eq i32 %call29.i88, 0
  br i1 %tobool30.not.i89, label %if.end32.i91, label %if.end.i82.mlme_set_request_sync.exit95.thread_crit_edge

if.end.i82.mlme_set_request_sync.exit95.thread_crit_edge: ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit95.thread

if.end32.i91:                                     ; preds = %if.end.i82
  %56 = ptrtoint ptr %response.i79 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %response.i79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %57)
  %cmp35.not.i90 = icmp eq i8 %57, 110
  br i1 %cmp35.not.i90, label %mlme_set_request_sync.exit95, label %if.end32.i91.mlme_set_request_sync.exit95.thread_crit_edge

if.end32.i91.mlme_set_request_sync.exit95.thread_crit_edge: ; preds = %if.end32.i91
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit95.thread

mlme_set_request_sync.exit95.thread:              ; preds = %if.end32.i91.mlme_set_request_sync.exit95.thread_crit_edge, %if.end.i82.mlme_set_request_sync.exit95.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i79) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i78) #12
  br label %do.end34

mlme_set_request_sync.exit95:                     ; preds = %if.end32.i91
  %pdata39.i92 = getelementptr inbounds %struct.mac_message, ptr %response.i79, i32 0, i32 2
  %58 = ptrtoint ptr %pdata39.i92 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pdata39.i92, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i79) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i78) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool30.not = icmp eq i8 %59, 0
  br i1 %tobool30.not, label %mlme_set_request_sync.exit95.cleanup_crit_edge, label %mlme_set_request_sync.exit95.do.end34_crit_edge

mlme_set_request_sync.exit95.do.end34_crit_edge:  ; preds = %mlme_set_request_sync.exit95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

mlme_set_request_sync.exit95.cleanup_crit_edge:   ; preds = %mlme_set_request_sync.exit95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end34:                                         ; preds = %mlme_set_request_sync.exit95.do.end34_crit_edge, %mlme_set_request_sync.exit95.thread
  %retval.0.i94104 = phi i8 [ -1, %mlme_set_request_sync.exit95.thread ], [ %59, %mlme_set_request_sync.exit95.do.end34_crit_edge ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %conv37 = zext i8 %retval.0.i94104 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.145, i32 noundef %conv37) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end34, %do.end17, %do.end
  %conv37.sink = phi i32 [ %conv37, %do.end34 ], [ %conv20, %do.end17 ], [ %conv, %do.end ]
  %call39 = call fastcc i32 @link_to_linux_err(i32 noundef %conv37.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mlme_set_request_sync.exit95.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlme_set_request_sync.exit95.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ %call39, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_tx_power(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  %mbm.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %div = sdiv i32 %mbm, 100
  %2 = ptrtoint ptr %mbm.addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %mbm.addr, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call = call fastcc zeroext i8 @mlme_set_request_sync(i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %mbm.addr, ptr noundef %4)
  %conv = zext i8 %call to i32
  %call2 = tail call fastcc i32 @link_to_linux_err(i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_cca_mode(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cca) #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cca, align 4
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %cmp = icmp eq i8 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp eq i32 %6, 1
  %spec.select = select i1 %cmp4, i8 0, i8 3
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true, %entry.if.end.i_crit_edge
  %cca_mode.0 = phi i8 [ %conv, %entry.if.end.i_crit_edge ], [ %spec.select, %land.lhs.true ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %9 = getelementptr inbounds i8, ptr %command.i, i32 5
  %10 = getelementptr inbounds i8, ptr %command.i, i32 6
  %11 = call ptr @memset(ptr %10, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %12 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %13 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 4, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %15 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %pib_attribute_length20.i, align 1
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cca_mode.0, ptr %9, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 6, ptr noundef nonnull %response.i, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %20)
  %cmp35.not.i = icmp eq i8 %20, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %21 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %mlme_set_request_sync.exit.if.end9_crit_edge, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

mlme_set_request_sync.exit.if.end9_crit_edge:     ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i18 = phi i8 [ -1, %mlme_set_request_sync.exit.thread ], [ %22, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %conv8 = zext i8 %retval.0.i18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.147, i32 noundef %conv8) #15
  br label %if.end9

if.end9:                                          ; preds = %do.end, %mlme_set_request_sync.exit.if.end9_crit_edge
  %retval.0.i19 = phi i8 [ %retval.0.i18, %do.end ], [ 0, %mlme_set_request_sync.exit.if.end9_crit_edge ]
  %conv10 = zext i8 %retval.0.i19 to i32
  %call11 = call fastcc i32 @link_to_linux_err(i32 noundef %conv10)
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_cca_ed_level(ptr nocapture noundef readonly %hw, i32 noundef %level) #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %level, 100
  %div.tr = trunc i32 %div to i8
  %conv = shl i8 %div.tr, 1
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %5 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 78, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %7 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %8 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %pdata.i, align 1
  %hw_attribute_length4.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %hw_attribute_length4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %hw_attribute_length4.i, align 1
  %10 = getelementptr inbounds i8, ptr %command.i, i32 5
  %11 = call ptr @memset(ptr %10, i32 255, i32 145)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %4, align 1
  %call.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 5, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.hwme_set_request_sync.exit.thread_crit_edge

entry.hwme_set_request_sync.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_set_request_sync.exit.thread

if.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 114, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 114
  br i1 %cmp.not.i, label %hwme_set_request_sync.exit, label %if.end.i.hwme_set_request_sync.exit.thread_crit_edge

if.end.i.hwme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hwme_set_request_sync.exit.thread

hwme_set_request_sync.exit.thread:                ; preds = %if.end.i.hwme_set_request_sync.exit.thread_crit_edge, %entry.hwme_set_request_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

hwme_set_request_sync.exit:                       ; preds = %if.end.i
  %pdata18.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %15 = ptrtoint ptr %pdata18.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pdata18.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %hwme_set_request_sync.exit.if.end_crit_edge, label %hwme_set_request_sync.exit.do.end_crit_edge

hwme_set_request_sync.exit.do.end_crit_edge:      ; preds = %hwme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

hwme_set_request_sync.exit.if.end_crit_edge:      ; preds = %hwme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %hwme_set_request_sync.exit.do.end_crit_edge, %hwme_set_request_sync.exit.thread
  %retval.0.i11 = phi i8 [ -1, %hwme_set_request_sync.exit.thread ], [ %16, %hwme_set_request_sync.exit.do.end_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %conv3 = zext i8 %retval.0.i11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.149, i32 noundef %conv3) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %hwme_set_request_sync.exit.if.end_crit_edge
  %retval.0.i12 = phi i8 [ %retval.0.i11, %do.end ], [ 0, %hwme_set_request_sync.exit.if.end_crit_edge ]
  %conv4 = zext i8 %retval.0.i12 to i32
  %call5 = call fastcc i32 @link_to_linux_err(i32 noundef %conv4)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_csma_params(ptr nocapture noundef readonly %hw, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %retries) #2 align 64 {
entry:
  %command.i63 = alloca %struct.mac_message, align 1
  %response.i64 = alloca %struct.mac_message, align 1
  %command.i45 = alloca %struct.mac_message, align 1
  %response.i46 = alloca %struct.mac_message, align 1
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 6
  %5 = call ptr @memset(ptr %4, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %6 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %min_be)
  %cmp60.i = icmp ult i8 %min_be, 9
  br i1 %cmp60.i, label %if.end.i, label %entry.mlme_set_request_sync.exit.thread_crit_edge

entry.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %command.i, i32 5
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 79, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pib_attribute_length20.i, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %min_be, ptr %7, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 6, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %15)
  %cmp35.not.i = icmp eq i8 %15, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge, %entry.mlme_set_request_sync.exit.thread_crit_edge
  %retval.0.i.ph = phi i8 [ -1, %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge ], [ -1, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge ], [ -24, %entry.mlme_set_request_sync.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %16 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i83 = phi i8 [ %retval.0.i.ph, %mlme_set_request_sync.exit.thread ], [ %17, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %conv = zext i8 %retval.0.i83 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.151, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %mlme_set_request_sync.exit
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i45) #12
  %22 = getelementptr inbounds i8, ptr %command.i45, i32 6
  %23 = call ptr @memset(ptr %22, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i46) #12
  %24 = call ptr @memset(ptr %response.i46, i32 255, i32 150)
  %25 = add i8 %max_be, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %26 = icmp ult i8 %25, 6
  br i1 %26, label %if.end.i49, label %if.end.mlme_set_request_sync.exit62.thread_crit_edge

if.end.mlme_set_request_sync.exit62.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit62.thread

if.end.i49:                                       ; preds = %if.end
  %27 = getelementptr inbounds i8, ptr %command.i45, i32 5
  %28 = ptrtoint ptr %command.i45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 74, ptr %command.i45, align 1
  %length.i50 = getelementptr inbounds %struct.mac_message, ptr %command.i45, i32 0, i32 1
  %29 = ptrtoint ptr %length.i50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %length.i50, align 1
  %pdata.i51 = getelementptr inbounds %struct.mac_message, ptr %command.i45, i32 0, i32 2
  %30 = ptrtoint ptr %pdata.i51 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 87, ptr %pdata.i51, align 1
  %pib_attribute_index18.i52 = getelementptr inbounds %struct.mac_message, ptr %command.i45, i32 0, i32 2, i32 0, i32 1
  %31 = ptrtoint ptr %pib_attribute_index18.i52 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pib_attribute_index18.i52, align 1
  %pib_attribute_length20.i53 = getelementptr inbounds %struct.mac_message, ptr %command.i45, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %pib_attribute_length20.i53 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %pib_attribute_length20.i53, align 1
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %max_be, ptr %27, align 1
  %call29.i55 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i45, i32 noundef 6, ptr noundef nonnull %response.i46, ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i55)
  %tobool30.not.i56 = icmp eq i32 %call29.i55, 0
  br i1 %tobool30.not.i56, label %if.end32.i58, label %if.end.i49.mlme_set_request_sync.exit62.thread_crit_edge

if.end.i49.mlme_set_request_sync.exit62.thread_crit_edge: ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit62.thread

if.end32.i58:                                     ; preds = %if.end.i49
  %34 = ptrtoint ptr %response.i46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %response.i46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %35)
  %cmp35.not.i57 = icmp eq i8 %35, 110
  br i1 %cmp35.not.i57, label %mlme_set_request_sync.exit62, label %if.end32.i58.mlme_set_request_sync.exit62.thread_crit_edge

if.end32.i58.mlme_set_request_sync.exit62.thread_crit_edge: ; preds = %if.end32.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit62.thread

mlme_set_request_sync.exit62.thread:              ; preds = %if.end32.i58.mlme_set_request_sync.exit62.thread_crit_edge, %if.end.i49.mlme_set_request_sync.exit62.thread_crit_edge, %if.end.mlme_set_request_sync.exit62.thread_crit_edge
  %retval.0.i61.ph = phi i8 [ -1, %if.end32.i58.mlme_set_request_sync.exit62.thread_crit_edge ], [ -1, %if.end.i49.mlme_set_request_sync.exit62.thread_crit_edge ], [ -24, %if.end.mlme_set_request_sync.exit62.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i46) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i45) #12
  br label %do.end11

mlme_set_request_sync.exit62:                     ; preds = %if.end32.i58
  %pdata39.i59 = getelementptr inbounds %struct.mac_message, ptr %response.i46, i32 0, i32 2
  %36 = ptrtoint ptr %pdata39.i59 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pdata39.i59, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i46) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i45) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool7.not = icmp eq i8 %37, 0
  br i1 %tobool7.not, label %if.end17, label %mlme_set_request_sync.exit62.do.end11_crit_edge

mlme_set_request_sync.exit62.do.end11_crit_edge:  ; preds = %mlme_set_request_sync.exit62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end11:                                         ; preds = %mlme_set_request_sync.exit62.do.end11_crit_edge, %mlme_set_request_sync.exit62.thread
  %retval.0.i6186 = phi i8 [ %retval.0.i61.ph, %mlme_set_request_sync.exit62.thread ], [ %37, %mlme_set_request_sync.exit62.do.end11_crit_edge ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %conv14 = zext i8 %retval.0.i6186 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.154, i32 noundef %conv14) #15
  br label %cleanup

if.end17:                                         ; preds = %mlme_set_request_sync.exit62
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i63) #12
  %42 = getelementptr inbounds i8, ptr %command.i63, i32 6
  %43 = call ptr @memset(ptr %42, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i64) #12
  %44 = call ptr @memset(ptr %response.i64, i32 255, i32 150)
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %retries)
  %cmp48.i = icmp ult i8 %retries, 6
  br i1 %cmp48.i, label %if.end.i67, label %if.end17.mlme_set_request_sync.exit80.thread_crit_edge

if.end17.mlme_set_request_sync.exit80.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit80.thread

if.end.i67:                                       ; preds = %if.end17
  %45 = getelementptr inbounds i8, ptr %command.i63, i32 5
  %46 = ptrtoint ptr %command.i63 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 74, ptr %command.i63, align 1
  %length.i68 = getelementptr inbounds %struct.mac_message, ptr %command.i63, i32 0, i32 1
  %47 = ptrtoint ptr %length.i68 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %length.i68, align 1
  %pdata.i69 = getelementptr inbounds %struct.mac_message, ptr %command.i63, i32 0, i32 2
  %48 = ptrtoint ptr %pdata.i69 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 78, ptr %pdata.i69, align 1
  %pib_attribute_index18.i70 = getelementptr inbounds %struct.mac_message, ptr %command.i63, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %pib_attribute_index18.i70 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %pib_attribute_index18.i70, align 1
  %pib_attribute_length20.i71 = getelementptr inbounds %struct.mac_message, ptr %command.i63, i32 0, i32 2, i32 0, i32 2
  %50 = ptrtoint ptr %pib_attribute_length20.i71 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %pib_attribute_length20.i71, align 1
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %retries, ptr %45, align 1
  %call29.i73 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i63, i32 noundef 6, ptr noundef nonnull %response.i64, ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i73)
  %tobool30.not.i74 = icmp eq i32 %call29.i73, 0
  br i1 %tobool30.not.i74, label %if.end32.i76, label %if.end.i67.mlme_set_request_sync.exit80.thread_crit_edge

if.end.i67.mlme_set_request_sync.exit80.thread_crit_edge: ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit80.thread

if.end32.i76:                                     ; preds = %if.end.i67
  %52 = ptrtoint ptr %response.i64 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %response.i64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %53)
  %cmp35.not.i75 = icmp eq i8 %53, 110
  br i1 %cmp35.not.i75, label %mlme_set_request_sync.exit80, label %if.end32.i76.mlme_set_request_sync.exit80.thread_crit_edge

if.end32.i76.mlme_set_request_sync.exit80.thread_crit_edge: ; preds = %if.end32.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit80.thread

mlme_set_request_sync.exit80.thread:              ; preds = %if.end32.i76.mlme_set_request_sync.exit80.thread_crit_edge, %if.end.i67.mlme_set_request_sync.exit80.thread_crit_edge, %if.end17.mlme_set_request_sync.exit80.thread_crit_edge
  %retval.0.i79.ph = phi i8 [ -1, %if.end32.i76.mlme_set_request_sync.exit80.thread_crit_edge ], [ -1, %if.end.i67.mlme_set_request_sync.exit80.thread_crit_edge ], [ -24, %if.end17.mlme_set_request_sync.exit80.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i64) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i63) #12
  br label %do.end24

mlme_set_request_sync.exit80:                     ; preds = %if.end32.i76
  %pdata39.i77 = getelementptr inbounds %struct.mac_message, ptr %response.i64, i32 0, i32 2
  %54 = ptrtoint ptr %pdata39.i77 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pdata39.i77, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i64) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i63) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool20.not = icmp eq i8 %55, 0
  br i1 %tobool20.not, label %mlme_set_request_sync.exit80.if.end28_crit_edge, label %mlme_set_request_sync.exit80.do.end24_crit_edge

mlme_set_request_sync.exit80.do.end24_crit_edge:  ; preds = %mlme_set_request_sync.exit80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

mlme_set_request_sync.exit80.if.end28_crit_edge:  ; preds = %mlme_set_request_sync.exit80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end24:                                         ; preds = %mlme_set_request_sync.exit80.do.end24_crit_edge, %mlme_set_request_sync.exit80.thread
  %retval.0.i7989 = phi i8 [ %retval.0.i79.ph, %mlme_set_request_sync.exit80.thread ], [ %55, %mlme_set_request_sync.exit80.do.end24_crit_edge ]
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %conv27 = zext i8 %retval.0.i7989 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.157, i32 noundef %conv27) #15
  br label %if.end28

if.end28:                                         ; preds = %do.end24, %mlme_set_request_sync.exit80.if.end28_crit_edge
  %retval.0.i7990 = phi i8 [ %retval.0.i7989, %do.end24 ], [ 0, %mlme_set_request_sync.exit80.if.end28_crit_edge ]
  %conv29 = zext i8 %retval.0.i7990 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end11, %do.end
  %conv29.sink = phi i32 [ %conv29, %if.end28 ], [ %conv14, %do.end11 ], [ %conv, %do.end ]
  %call30 = call fastcc i32 @link_to_linux_err(i32 noundef %conv29.sink)
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_frame_retries(ptr nocapture noundef readonly %hw, i8 noundef signext %retries) #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 6
  %5 = call ptr @memset(ptr %4, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %6 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %retries)
  %cmp54.i = icmp ult i8 %retries, 8
  br i1 %cmp54.i, label %if.end.i, label %entry.mlme_set_request_sync.exit.thread_crit_edge

entry.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end.i:                                         ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %command.i, i32 5
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 89, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pib_attribute_length20.i, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retries, ptr %7, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 6, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %15)
  %cmp35.not.i = icmp eq i8 %15, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge, %entry.mlme_set_request_sync.exit.thread_crit_edge
  %retval.0.i.ph = phi i8 [ -1, %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge ], [ -1, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge ], [ -24, %entry.mlme_set_request_sync.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %16 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %mlme_set_request_sync.exit.if.end_crit_edge, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

mlme_set_request_sync.exit.if.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i10 = phi i8 [ %retval.0.i.ph, %mlme_set_request_sync.exit.thread ], [ %17, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %conv = zext i8 %retval.0.i10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.159, i32 noundef %conv) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %mlme_set_request_sync.exit.if.end_crit_edge
  %retval.0.i11 = phi i8 [ %retval.0.i10, %do.end ], [ 0, %mlme_set_request_sync.exit.if.end_crit_edge ]
  %conv3 = zext i8 %retval.0.i11 to i32
  %call4 = call fastcc i32 @link_to_linux_err(i32 noundef %conv3)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
if.end.i:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 5
  %5 = getelementptr inbounds i8, ptr %command.i, i32 6
  %6 = call ptr @memset(ptr %5, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %7 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %8 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 74, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 81, ptr %pdata.i, align 1
  %pib_attribute_index18.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %pib_attribute_index18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %pib_attribute_index18.i, align 1
  %pib_attribute_length20.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %pib_attribute_length20.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pib_attribute_length20.i, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %4, align 1
  %call29.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 6, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end.i.mlme_set_request_sync.exit.thread_crit_edge

if.end.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

if.end32.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %15)
  %cmp35.not.i = icmp eq i8 %15, 110
  br i1 %cmp35.not.i, label %mlme_set_request_sync.exit, label %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge

if.end32.i.mlme_set_request_sync.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_set_request_sync.exit.thread

mlme_set_request_sync.exit.thread:                ; preds = %if.end32.i.mlme_set_request_sync.exit.thread_crit_edge, %if.end.i.mlme_set_request_sync.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  br label %do.end

mlme_set_request_sync.exit:                       ; preds = %if.end32.i
  %pdata39.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %16 = ptrtoint ptr %pdata39.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pdata39.i, align 1
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.else, label %mlme_set_request_sync.exit.do.end_crit_edge

mlme_set_request_sync.exit.do.end_crit_edge:      ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %mlme_set_request_sync.exit.do.end_crit_edge, %mlme_set_request_sync.exit.thread
  %retval.0.i15 = phi i8 [ -1, %mlme_set_request_sync.exit.thread ], [ %17, %mlme_set_request_sync.exit.do.end_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %conv = zext i8 %retval.0.i15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.161, i32 noundef %conv) #15
  br label %if.end

if.else:                                          ; preds = %mlme_set_request_sync.exit
  call void @__sanitizer_cov_trace_pc() #14
  %promiscuous = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %promiscuous, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %retval.0.i14 = phi i8 [ 0, %if.else ], [ %retval.0.i15, %do.end ]
  %conv5 = zext i8 %retval.0.i14 to i32
  %call6 = call fastcc i32 @link_to_linux_err(i32 noundef %conv5)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @mlme_set_request_sync(i8 noundef zeroext %pib_attribute, i8 noundef zeroext %pib_attribute_length, ptr nocapture noundef readonly %pib_attribute_value, ptr noundef %device_ref) unnamed_addr #2 align 64 {
entry:
  %command.i.i = alloca %struct.mac_message, align 1
  %response.i.i = alloca %struct.mac_message, align 1
  %command = alloca %struct.mac_message, align 1
  %response = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command) #12
  %0 = getelementptr inbounds i8, ptr %command, i32 5
  %1 = call ptr @memset(ptr %0, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response) #12
  %2 = call ptr @memset(ptr %response, i32 255, i32 150)
  %call = tail call fastcc zeroext i8 @tdme_checkpibattribute(i8 noundef zeroext %pib_attribute, i8 noundef zeroext %pib_attribute_length, ptr noundef %pib_attribute_value)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i8 %pib_attribute to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.246)
  switch i8 %pib_attribute, label %if.end.if.end13_crit_edge [
    i8 0, label %if.then2
    i8 2, label %if.then11
  ]

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %pib_attribute_value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pib_attribute_value, align 1
  %call3 = tail call fastcc zeroext i8 @tdme_channelinit(i8 noundef zeroext %5, ptr noundef %device_ref)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3)
  %tobool4.not = icmp eq i8 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end13_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end
  %6 = ptrtoint ptr %pib_attribute_value to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pib_attribute_value, align 1
  %8 = and i8 %7, 63
  %9 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %masksel.i = select i1 %tobool.not.i, i8 0, i8 -64
  %spec.select.i = or i8 %masksel.i, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.select.i)
  %cmp.i = icmp sgt i8 %spec.select.i, 8
  br i1 %cmp.i, label %if.then11.if.end63.i_crit_edge, label %if.else.i

if.then11.if.end63.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %spec.select.i)
  %10 = icmp ult i8 %spec.select.i, 9
  br i1 %10, label %switch.lookup, label %if.else.i.if.end63.i_crit_edge

if.else.i.if.end63.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = sext i8 %spec.select.i to i32
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.mlme_set_request_sync, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %12)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end63.i

if.end63.i:                                       ; preds = %switch.lookup, %if.else.i.if.end63.i_crit_edge, %if.then11.if.end63.i_crit_edge
  %pa_cfg_val.sroa.0.0.i = phi i8 [ 63, %if.then11.if.end63.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.else.i.if.end63.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i.i) #12
  %13 = getelementptr inbounds i8, ptr %command.i.i, i32 5
  %14 = call ptr @memset(ptr %13, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i.i) #12
  %15 = getelementptr inbounds i8, ptr %response.i.i, i32 1
  %16 = call ptr @memset(ptr %15, i32 255, i32 149)
  %17 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 81, ptr %command.i.i, align 1
  %length.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %length.i.i, align 1
  %pdata.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %pdata.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pdata.i.i, align 1
  %sfr_address3.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %sfr_address3.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -2, ptr %sfr_address3.i.i, align 1
  %sfr_value5.i.i = getelementptr inbounds %struct.mac_message, ptr %command.i.i, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %sfr_value5.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %pa_cfg_val.sroa.0.0.i, ptr %sfr_value5.i.i, align 1
  %22 = ptrtoint ptr %response.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %response.i.i, align 1
  %call.i.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i.i, i32 noundef 5, ptr noundef nonnull %response.i.i, ptr noundef %device_ref) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device_ref, ptr noundef nonnull @.str.42, i32 noundef %call.i.i) #15
  br label %tdme_settxpower.exit

if.end.i.i:                                       ; preds = %if.end63.i
  %23 = ptrtoint ptr %response.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %response.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %24)
  %cmp.not.i.i = icmp eq i8 %24, 119
  br i1 %cmp.not.i.i, label %if.end20.i.i, label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i.i = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device_ref, ptr noundef nonnull @.str.45, i32 noundef %conv11.i.i) #15
  br label %tdme_settxpower.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdata21.i.i = getelementptr inbounds %struct.mac_message, ptr %response.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %pdata21.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pdata21.i.i, align 1
  br label %tdme_settxpower.exit

tdme_settxpower.exit:                             ; preds = %if.end20.i.i, %do.end16.i.i, %do.end.i.i
  %retval.0.i.i = phi i8 [ -1, %do.end.i.i ], [ -1, %do.end16.i.i ], [ %26, %if.end20.i.i ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i.i) #12
  br label %cleanup

if.end13:                                         ; preds = %if.then2.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %27 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 74, ptr %command, align 1
  %conv14 = zext i8 %pib_attribute_length to i32
  %add = add i8 %pib_attribute_length, 3
  %length = getelementptr inbounds %struct.mac_message, ptr %command, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %add, ptr %length, align 1
  %pdata = getelementptr inbounds %struct.mac_message, ptr %command, i32 0, i32 2
  %29 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %pib_attribute, ptr %pdata, align 1
  %pib_attribute_index18 = getelementptr inbounds %struct.mac_message, ptr %command, i32 0, i32 2, i32 0, i32 1
  %30 = ptrtoint ptr %pib_attribute_index18 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pib_attribute_index18, align 1
  %pib_attribute_length20 = getelementptr inbounds %struct.mac_message, ptr %command, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %pib_attribute_length20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %pib_attribute_length, ptr %pib_attribute_length20, align 1
  %pib_attribute_value22 = getelementptr inbounds %struct.mac_message, ptr %command, i32 0, i32 2, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %pib_attribute_value22, ptr %pib_attribute_value, i32 %conv14)
  %conv26 = zext i8 %add to i32
  %add27 = add nuw nsw i32 %conv26, 2
  %call29 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command, i32 noundef %add27, ptr noundef nonnull %response, ptr noundef %device_ref)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end13
  %33 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 110, i8 %34)
  %cmp35.not = icmp eq i8 %34, 110
  br i1 %cmp35.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %pdata39 = getelementptr inbounds %struct.mac_message, ptr %response, i32 0, i32 2
  %35 = ptrtoint ptr %pdata39 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pdata39, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end32.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %tdme_settxpower.exit, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %retval.0.i.i, %tdme_settxpower.exit ], [ %36, %if.end38 ], [ -24, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ -1, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command) #12
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @tdme_checkpibattribute(i8 noundef zeroext %pib_attribute, i8 noundef zeroext %pib_attribute_length, ptr nocapture noundef readonly %pib_attribute_value) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pib_attribute_value to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pib_attribute_value, align 1
  %2 = zext i8 %pib_attribute to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.247)
  switch i8 %pib_attribute, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb3
    i8 68, label %sw.bb9
    i8 69, label %sw.bb18
    i8 70, label %sw.bb24
    i8 71, label %sw.bb30
    i8 87, label %sw.bb36
    i8 78, label %sw.bb46
    i8 89, label %sw.bb52
    i8 79, label %sw.bb58
    i8 90, label %sw.bb64
    i8 84, label %sw.bb74
    i8 86, label %entry.sw.bb80_crit_edge
    i8 65, label %entry.sw.bb80_crit_edge130
    i8 66, label %entry.sw.bb80_crit_edge131
    i8 67, label %entry.sw.bb80_crit_edge132
    i8 77, label %entry.sw.bb80_crit_edge133
    i8 81, label %entry.sw.bb80_crit_edge134
    i8 82, label %entry.sw.bb80_crit_edge135
    i8 93, label %entry.sw.bb80_crit_edge136
    i8 120, label %sw.bb86
    i8 121, label %sw.bb92
  ]

entry.sw.bb80_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge135:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge134:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge130:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.bb80_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb80

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp = icmp ugt i8 %1, 63
  %spec.select = select i1 %cmp, i8 -24, i8 0
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp5 = icmp ugt i8 %1, 3
  %spec.select114 = select i1 %cmp5, i8 -24, i8 0
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = add i8 %1, -42
  call void @__sanitizer_cov_trace_const_cmp1(i8 -36, i8 %3)
  %4 = icmp ult i8 %3, -36
  %spec.select127 = select i1 %4, i8 -24, i8 0
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %pib_attribute_length)
  %cmp20 = icmp ugt i8 %pib_attribute_length, 52
  %spec.select115 = select i1 %cmp20, i8 -24, i8 0
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %1)
  %cmp26 = icmp ugt i8 %1, 52
  %spec.select116 = select i1 %cmp26, i8 -24, i8 0
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp32 = icmp ugt i8 %1, 15
  %spec.select117 = select i1 %cmp32, i8 -24, i8 0
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = add i8 %1, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %5)
  %6 = icmp ult i8 %5, -6
  %spec.select128 = select i1 %6, i8 -24, i8 0
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp48 = icmp ugt i8 %1, 5
  %spec.select119 = select i1 %cmp48, i8 -24, i8 0
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp54 = icmp ugt i8 %1, 7
  %spec.select120 = select i1 %cmp54, i8 -24, i8 0
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp60 = icmp ugt i8 %1, 8
  %spec.select121 = select i1 %cmp60, i8 -24, i8 0
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = add i8 %1, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %7)
  %8 = icmp ult i8 %7, -63
  %spec.select129 = select i1 %8, i8 -24, i8 0
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %1)
  %cmp76 = icmp ugt i8 %1, 15
  %spec.select123 = select i1 %cmp76, i8 -24, i8 0
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry.sw.bb80_crit_edge, %entry.sw.bb80_crit_edge130, %entry.sw.bb80_crit_edge131, %entry.sw.bb80_crit_edge132, %entry.sw.bb80_crit_edge133, %entry.sw.bb80_crit_edge134, %entry.sw.bb80_crit_edge135, %entry.sw.bb80_crit_edge136
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp82 = icmp ugt i8 %1, 1
  %spec.select124 = select i1 %cmp82, i8 -24, i8 0
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp88 = icmp ugt i8 %1, 7
  %spec.select125 = select i1 %cmp88, i8 -24, i8 0
  br label %sw.epilog

sw.bb92:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp94 = icmp ugt i8 %1, 3
  %spec.select126 = select i1 %cmp94, i8 -24, i8 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb92, %sw.bb86, %sw.bb80, %sw.bb74, %sw.bb64, %sw.bb58, %sw.bb52, %sw.bb46, %sw.bb36, %sw.bb30, %sw.bb24, %sw.bb18, %sw.bb9, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %status.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select114, %sw.bb3 ], [ %spec.select115, %sw.bb18 ], [ %spec.select116, %sw.bb24 ], [ %spec.select117, %sw.bb30 ], [ %spec.select119, %sw.bb46 ], [ %spec.select120, %sw.bb52 ], [ %spec.select121, %sw.bb58 ], [ %spec.select123, %sw.bb74 ], [ %spec.select124, %sw.bb80 ], [ %spec.select125, %sw.bb86 ], [ %spec.select126, %sw.bb92 ], [ %spec.select127, %sw.bb9 ], [ %spec.select128, %sw.bb36 ], [ %spec.select129, %sw.bb64 ]
  ret i8 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tdme_channelinit(i8 noundef zeroext %channel, ptr noundef %device_ref) unnamed_addr #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %channel)
  %cmp = icmp ugt i8 %channel, 24
  br i1 %cmp, label %entry.if.end43_crit_edge, label %if.else

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %channel)
  %cmp3 = icmp ugt i8 %channel, 22
  br i1 %cmp3, label %if.else.if.end43_crit_edge, label %if.else6

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %channel)
  %cmp8 = icmp eq i8 %channel, 22
  br i1 %cmp8, label %if.else6.if.end43_crit_edge, label %if.else11

if.else6.if.end43_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else11:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %channel)
  %cmp13 = icmp ugt i8 %channel, 19
  br i1 %cmp13, label %if.else11.if.end43_crit_edge, label %if.else16

if.else11.if.end43_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else16:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %channel)
  %cmp18 = icmp ugt i8 %channel, 16
  br i1 %cmp18, label %if.else16.if.end43_crit_edge, label %if.else21

if.else16.if.end43_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %channel)
  %cmp23 = icmp eq i8 %channel, 16
  br i1 %cmp23, label %if.else21.if.end43_crit_edge, label %if.else26

if.else21.if.end43_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else26:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %channel)
  %cmp28 = icmp ugt i8 %channel, 13
  br i1 %cmp28, label %if.else26.if.end43_crit_edge, label %if.else31

if.else26.if.end43_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else31:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %channel)
  %cmp33 = icmp ugt i8 %channel, 11
  %. = select i1 %cmp33, i8 -82, i8 -81
  br label %if.end43

if.end43:                                         ; preds = %if.else31, %if.else26.if.end43_crit_edge, %if.else21.if.end43_crit_edge, %if.else16.if.end43_crit_edge, %if.else11.if.end43_crit_edge, %if.else6.if.end43_crit_edge, %if.else.if.end43_crit_edge, %entry.if.end43_crit_edge
  %txcalval.0 = phi i8 [ -89, %entry.if.end43_crit_edge ], [ -88, %if.else.if.end43_crit_edge ], [ -87, %if.else6.if.end43_crit_edge ], [ -86, %if.else11.if.end43_crit_edge ], [ -85, %if.else16.if.end43_crit_edge ], [ -84, %if.else21.if.end43_crit_edge ], [ -83, %if.else26.if.end43_crit_edge ], [ %., %if.else31 ]
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %0 = getelementptr inbounds i8, ptr %command.i, i32 5
  %1 = call ptr @memset(ptr %0, i32 255, i32 145)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %2 = getelementptr inbounds i8, ptr %response.i, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 149)
  %4 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 81, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %pdata.i, align 1
  %sfr_address3.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %sfr_address3.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -65, ptr %sfr_address3.i, align 1
  %sfr_value5.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %sfr_value5.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %txcalval.0, ptr %sfr_value5.i, align 1
  %9 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %response.i, align 1
  %call.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 5, ptr noundef nonnull %response.i, ptr noundef %device_ref) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device_ref, ptr noundef nonnull @.str.42, i32 noundef %call.i) #15
  br label %tdme_setsfr_request_sync.exit

if.end.i:                                         ; preds = %if.end43
  %10 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %response.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %11)
  %cmp.not.i = icmp eq i8 %11, 119
  br i1 %cmp.not.i, label %if.end20.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv11.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %device_ref, ptr noundef nonnull @.str.45, i32 noundef %conv11.i) #15
  br label %tdme_setsfr_request_sync.exit

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pdata21.i = getelementptr inbounds %struct.mac_message, ptr %response.i, i32 0, i32 2
  %12 = ptrtoint ptr %pdata21.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pdata21.i, align 1
  br label %tdme_setsfr_request_sync.exit

tdme_setsfr_request_sync.exit:                    ; preds = %if.end20.i, %do.end16.i, %do.end.i
  %retval.0.i = phi i8 [ -1, %do.end.i ], [ -1, %do.end16.i ], [ %13, %if.end20.i ]
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ca8210_spi_exchange(ptr nocapture noundef readonly %buf, i32 noundef %len, ptr noundef %response, ptr noundef %device_ref) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.device, ptr %device_ref, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %tobool1.not = icmp eq ptr %response, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sync_exchange_complete = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %sync_exchange_complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sync_exchange_complete, align 4
  %sync_command_response = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %sync_command_response to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %response, ptr %sync_command_response, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spi_transfer_complete = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %if.end
  %7 = ptrtoint ptr %spi_transfer_complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %spi_transfer_complete, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call = tail call fastcc i32 @ca8210_spi_transfer(ptr noundef %9, ptr noundef %buf, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end19, label %do.end

do.end:                                           ; preds = %do.body
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device_ref, ptr noundef nonnull @.str.47, i32 noundef %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call)
  %cmp = icmp eq i32 %call, -16
  br i1 %cmp, label %do.end.do.body.backedge_crit_edge, label %if.end9

do.end.do.body.backedge_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.end19.do.body.backedge_crit_edge, %do.end.do.body.backedge_crit_edge
  br label %do.body

if.end9:                                          ; preds = %do.end
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = and i8 %11, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  %or.cond91 = or i1 %tobool1.not, %tobool13.not
  br i1 %or.cond91, label %if.end9.cleanup_crit_edge, label %if.then16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %sync_exchange_complete17 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 17
  tail call void @complete(ptr noundef %sync_exchange_complete17) #12
  br label %cleanup

if.end19:                                         ; preds = %do.body
  %call22 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %spi_transfer_complete, i32 noundef 100) #12
  %13 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %call22, label %do.cond35.fold.split [
    i32 -512, label %if.end19.do.body.backedge_crit_edge
    i32 0, label %do.end31
  ]

if.end19.do.body.backedge_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.backedge

do.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device_ref, ptr noundef nonnull @.str.51) #15
  br label %cleanup

do.cond35.fold.split:                             ; preds = %if.end19
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %16 = and i8 %15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool42.not = icmp eq i8 %16, 0
  %or.cond93 = or i1 %tobool1.not, %tobool42.not
  br i1 %or.cond93, label %do.cond35.fold.split.cleanup_crit_edge, label %if.end46

do.cond35.fold.split.cleanup_crit_edge:           ; preds = %do.cond35.fold.split
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %do.cond35.fold.split
  %sync_exchange_complete47 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 17
  %call49 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %sync_exchange_complete47, i32 noundef 100) #12
  %17 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %call49, label %cleanup.fold.split [
    i32 -512, label %if.end46.cleanup_crit_edge
    i32 0, label %do.end59
  ]

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end59:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device_ref, ptr noundef nonnull @.str.55) #15
  br label %cleanup

cleanup.fold.split:                               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split, %do.end59, %if.end46.cleanup_crit_edge, %do.cond35.fold.split.cleanup_crit_edge, %do.end31, %if.then16, %if.end9.cleanup_crit_edge
  %status.1 = phi i32 [ -62, %do.end59 ], [ 0, %do.cond35.fold.split.cleanup_crit_edge ], [ %call, %if.then16 ], [ %call, %if.end9.cleanup_crit_edge ], [ -62, %do.end31 ], [ %call49, %if.end46.cleanup_crit_edge ], [ 0, %cleanup.fold.split ]
  %sync_command_response63 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %sync_command_response63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sync_command_response63, align 4
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ca8210_spi_transfer(ptr noundef %spi, ptr nocapture noundef readonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %spi, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi_transfer_complete = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %spi_transfer_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %spi_transfer_complete, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_spi_transfer.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_spi_transfer, %if.then8)) #12
          to label %do.end11 [label %if.then8], !srcloc !484

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_spi_transfer.__UNIQUE_ID_ddebug345, ptr noundef nonnull %spi, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 668) #16
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %do.end11.cleanup_crit_edge, label %if.end15

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %do.end11
  %priv16 = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 4
  %4 = ptrtoint ptr %priv16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %priv16, align 8
  %tx_buf = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 2
  %tx_in_buf = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 3
  %5 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %len)
  %6 = icmp ugt i32 %len, 511
  %7 = sub nsw i64 512, %5
  %8 = select i1 %6, i64 0, i64 %7
  %9 = getelementptr i8, ptr %tx_buf, i32 %len
  %10 = trunc i64 %8 to i32
  %11 = call ptr @memset(ptr %9, i32 255, i32 %10)
  %12 = call ptr @memcpy(ptr %tx_buf, ptr %buf, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp117.not = icmp eq i32 %len, 0
  br i1 %cmp117.not, label %if.end15.for.end_crit_edge, label %if.end15.do.body20_crit_edge

if.end15.do.body20_crit_edge:                     ; preds = %if.end15
  br label %do.body20

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %if.end15.do.body20_crit_edge
  %i.0118 = phi i32 [ %inc, %for.inc.do.body20_crit_edge ], [ 0, %if.end15.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_spi_transfer.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_spi_transfer, %if.then32)) #12
          to label %for.inc [label %if.then32], !srcloc !484

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.cas_control, ptr %call7.i, i32 0, i32 2, i32 %i.0118
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_spi_transfer.__UNIQUE_ID_ddebug346, ptr noundef nonnull %spi, ptr noundef nonnull @.str.60, i32 noundef %conv) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %do.body20
  %inc = add nuw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body20_crit_edge

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body20

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge
  %15 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %call7.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %call7.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1
  %tx_nbits = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 7
  %21 = ptrtoint ptr %tx_nbits to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %tx_nbits, align 4
  %speed_hz = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 12
  %22 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %speed_hz, align 4
  %bits_per_word = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 8
  %23 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bits_per_word, align 1
  %24 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_buf, ptr %transfer, align 8
  %rx_buf = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_in_buf, ptr %rx_buf, align 4
  %delay = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 9
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %delay, align 2
  %unit = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 9, i32 1
  %27 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %unit, align 8
  %bf.set41 = and i8 %bf.load, -128
  %bf.clear56 = or i8 %bf.set41, 9
  store i8 %bf.clear56, ptr %tx_nbits, align 4
  %len59 = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %len59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 150, ptr %len59, align 8
  %complete = getelementptr inbounds %struct.spi_message, ptr %call7.i, i32 0, i32 3
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ca8210_spi_transfer_complete, ptr %complete, align 8
  %context = getelementptr inbounds %struct.spi_message, ptr %call7.i, i32 0, i32 4
  %30 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %context, align 4
  %transfer_list.i = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.spi_message_add_tail.exit_crit_edge

for.end.spi_message_add_tail.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.cas_control, ptr %call7.i, i32 0, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i, ptr %prev3.i.i.i, align 8
  %34 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i, ptr %call7.i, align 8
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.end.spi_message_add_tail.exit_crit_edge
  %call65 = tail call i32 @spi_async(ptr noundef nonnull %spi, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end71, label %spi_message_add_tail.exit.cleanup_crit_edge

spi_message_add_tail.exit.cleanup_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end71:                                         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef nonnull %spi, ptr noundef nonnull @.str.62, i32 noundef %call65) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %spi_message_add_tail.exit.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %do.end11.cleanup_crit_edge ], [ %call65, %do.end71 ], [ %call65, %spi_message_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca8210_spi_transfer_complete(ptr noundef %context) #2 align 64 {
entry:
  %retry_buffer = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.cas_control, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %retry_buffer) #12
  %tx_in_buf = getelementptr inbounds %struct.cas_control, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %tx_in_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_in_buf, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.250)
  switch i8 %3, label %do.body59.critedge [
    i8 -16, label %entry.do.end_crit_edge
    i8 -1, label %land.lhs.true
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx9 = getelementptr %struct.cas_control, ptr %context, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %6)
  %cmp11 = icmp eq i8 %6, -16
  br i1 %cmp11, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.if.end97_crit_edge

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.64) #15
  %tx_buf = getelementptr inbounds %struct.cas_control, ptr %context, i32 0, i32 2
  %9 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp15 = icmp eq i8 %10, -1
  br i1 %cmp15, label %do.end20, label %if.end

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.67) #15
  tail call void @kfree(ptr noundef %context) #12
  br label %cleanup

if.end:                                           ; preds = %do.end
  %retries = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp23 = icmp sgt i32 %14, 3
  br i1 %cmp23, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.70) #15
  tail call void @kfree(ptr noundef %context) #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call = tail call i32 @ca8210_remove(ptr noundef %18)
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = call ptr @memcpy(ptr %retry_buffer, ptr %tx_buf, i32 256)
  tail call void @kfree(ptr noundef %context) #12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call37 = call fastcc i32 @ca8210_spi_transfer(ptr noundef %21, ptr noundef nonnull %retry_buffer, i32 noundef 256)
  %22 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retries, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %retries, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.73) #15
  br label %cleanup

do.body59.critedge:                               ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_spi_transfer_complete, %if.then64)) #12
          to label %do.end69 [label %if.then64], !srcloc !484

if.then64:                                        ; preds = %do.body59.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug343, ptr noundef %27, ptr noundef nonnull @.str.75) #12
  br label %do.end69

do.end69:                                         ; preds = %if.then64, %do.body59.critedge
  %arrayidx71 = getelementptr %struct.cas_control, ptr %context, i32 0, i32 3, i32 1
  br label %do.body75

do.body75:                                        ; preds = %for.inc.do.body75_crit_edge, %do.end69
  %i.0137 = phi i32 [ 0, %do.end69 ], [ %inc96, %for.inc.do.body75_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_spi_transfer_complete, %if.then87)) #12
          to label %for.inc [label %if.then87], !srcloc !484

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx91 = getelementptr %struct.cas_control, ptr %context, i32 0, i32 3, i32 %i.0137
  %30 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug344, ptr noundef %29, ptr noundef nonnull @.str.60, i32 noundef %conv92) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then87, %do.body75
  %inc96 = add nuw nsw i32 %i.0137, 1
  %32 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %33 to i32
  %add = add nuw nsw i32 %conv72, 2
  %cmp73 = icmp ult i32 %inc96, %add
  br i1 %cmp73, label %for.inc.do.body75_crit_edge, label %for.end

for.inc.do.body75_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body75

for.end:                                          ; preds = %for.inc
  %34 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %cmp.i = icmp eq i8 %33, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %37, ptr noundef nonnull @.str.76, i32 noundef 257) #15
  br label %if.end97

if.end.i:                                         ; preds = %for.end
  %38 = ptrtoint ptr %tx_in_buf to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_in_buf, align 1
  %40 = and i8 %39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i, label %if.else14.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %sync_command_response.i = getelementptr inbounds %struct.ca8210_priv, ptr %35, i32 0, i32 12
  %41 = ptrtoint ptr %sync_command_response.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sync_command_response.i, align 4
  %tobool6.not.i = icmp eq ptr %42, null
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = call ptr @memcpy(ptr %42, ptr %tx_in_buf, i32 %add)
  %sync_exchange_complete.i = getelementptr inbounds %struct.ca8210_priv, ptr %35, i32 0, i32 17
  tail call void @complete(ptr noundef %sync_exchange_complete.i) #12
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then5.i
  %44 = load ptr, ptr @cascoda_api_upstream, align 4
  %tobool9.not.i = icmp eq ptr %44, null
  br i1 %tobool9.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.then10.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %35, align 4
  %call.i = tail call i32 %44(ptr noundef %tx_in_buf, i32 noundef %add, ptr noundef %46) #12, !callees !485
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.else.i.if.end12.i_crit_edge
  %sync_up.i = getelementptr inbounds %struct.ca8210_priv, ptr %35, i32 0, i32 15
  %47 = ptrtoint ptr %sync_up.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sync_up.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %sync_up.i, align 4
  br label %if.end20.i

if.else14.i:                                      ; preds = %if.end.i
  %49 = load ptr, ptr @cascoda_api_upstream, align 4
  %tobool15.not.i = icmp eq ptr %49, null
  br i1 %tobool15.not.i, label %if.else14.i.if.end20.i_crit_edge, label %if.then16.i

if.else14.i.if.end20.i_crit_edge:                 ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %35, align 4
  %call18.i = tail call i32 %49(ptr noundef %tx_in_buf, i32 noundef %add, ptr noundef %51) #12, !callees !485
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.else14.i.if.end20.i_crit_edge, %if.end12.i, %if.then7.i
  %hw.i = getelementptr inbounds %struct.ca8210_priv, ptr %35, i32 0, i32 1
  %52 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw.i, align 4
  tail call fastcc void @ca8210_net_rx(ptr noundef %53, ptr noundef %tx_in_buf, i32 noundef %add) #12
  %54 = ptrtoint ptr %tx_in_buf to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_in_buf, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.251)
  switch i8 %55, label %if.end20.i.if.end97_crit_edge [
    i8 33, label %if.then26.i
    i8 53, label %do.end66.i
  ]

if.end20.i.if.end97_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then26.i:                                      ; preds = %if.end20.i
  %arrayidx27.i = getelementptr %struct.cas_control, ptr %context, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %58)
  %cmp29.i = icmp eq i8 %58, -15
  br i1 %cmp29.i, label %do.end34.i, label %if.then26.i.if.end97_crit_edge

if.then26.i.if.end97_crit_edge:                   ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.end34.i:                                       ; preds = %if.then26.i
  %59 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.79) #15
  tail call void @msleep(i32 noundef 2000) #12
  %61 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.82) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3264, i32 noundef 48) #16
  %tobool43.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool43.not.i, label %do.end34.i.if.end97_crit_edge, label %do.body46.i

do.end34.i.if.end97_crit_edge:                    ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

do.body46.i:                                      ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #12
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @ca8210_rx_done.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry50.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %entry50.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry50.i, ptr %entry50.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry50.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ca8210_mlme_reset_worker, ptr %func.i, align 4
  %priv54.i = getelementptr inbounds %struct.work_priv_container, ptr %call7.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %priv54.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %35, ptr %priv54.i, align 4
  %mlme_workqueue.i = getelementptr inbounds %struct.ca8210_priv, ptr %35, i32 0, i32 4
  %69 = ptrtoint ptr %mlme_workqueue.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mlme_workqueue.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %70, ptr noundef nonnull %call7.i.i) #12
  br label %if.end97

do.end66.i:                                       ; preds = %if.end20.i
  %71 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %72, ptr noundef nonnull @.str.86) #15
  %arrayidx69.i = getelementptr %struct.cas_control, ptr %context, i32 0, i32 3, i32 2
  %73 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx69.i, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.252)
  switch i8 %74, label %do.end114.i [
    i8 0, label %do.end73.i
    i8 1, label %do.end79.i
    i8 2, label %do.end85.i
    i8 3, label %do.end91.i
    i8 4, label %do.end97.i
    i8 5, label %do.end103.i
    i8 6, label %do.end109.i
  ]

do.end73.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %77, ptr noundef nonnull @.str.90) #15
  br label %sw.epilog.i

do.end79.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %79, ptr noundef nonnull @.str.93) #15
  br label %sw.epilog.i

do.end85.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %81, ptr noundef nonnull @.str.96) #15
  br label %sw.epilog.i

do.end91.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %83, ptr noundef nonnull @.str.99) #15
  br label %sw.epilog.i

do.end97.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %85, ptr noundef nonnull @.str.102) #15
  br label %sw.epilog.i

do.end103.i:                                      ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %87, ptr noundef nonnull @.str.105) #15
  br label %sw.epilog.i

do.end109.i:                                      ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %89, ptr noundef nonnull @.str.108) #15
  br label %sw.epilog.i

do.end114.i:                                      ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.111) #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end114.i, %do.end109.i, %do.end103.i, %do.end97.i, %do.end91.i, %do.end85.i, %do.end79.i, %do.end73.i
  %ca8210_is_awake.i = getelementptr inbounds %struct.ca8210_priv, ptr %35, i32 0, i32 13
  tail call void @complete(ptr noundef %ca8210_is_awake.i) #12
  br label %if.end97

if.end97:                                         ; preds = %sw.epilog.i, %do.body46.i, %do.end34.i.if.end97_crit_edge, %if.then26.i.if.end97_crit_edge, %if.end20.i.if.end97_crit_edge, %do.end.i, %land.lhs.true.if.end97_crit_edge
  %spi_transfer_complete = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 16
  tail call void @complete(ptr noundef %spi_transfer_complete) #12
  tail call void @kfree(ptr noundef %context) #12
  %retries98 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 19
  %92 = ptrtoint ptr %retries98 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %retries98, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end32, %do.end28, %do.end20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %retry_buffer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ca8210_net_rx(ptr noundef %hw, ptr nocapture noundef readonly %command, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_net_rx.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_net_rx, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !484

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %command, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_net_rx.__UNIQUE_ID_ddebug354, ptr noundef %3, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %command, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.253)
  switch i8 %7, label %do.end.cleanup_crit_edge [
    i8 32, label %do.body9
    i8 33, label %if.then55
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body9:                                         ; preds = %do.end
  %lock = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 3
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %arrayidx19 = getelementptr i8, ptr %command, i32 26
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %10 to i32
  %last_dsn = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %last_dsn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_dsn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv20)
  %cmp21 = icmp eq i32 %12, %conv20
  br i1 %cmp21, label %do.body24, label %if.end45

do.body24:                                        ; preds = %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_net_rx.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_net_rx, %if.then36)) #12
          to label %do.end43 [label %if.then36], !srcloc !484

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx19, align 1
  %conv40 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_net_rx.__UNIQUE_ID_ddebug355, ptr noundef %14, ptr noundef nonnull @.str.115, i32 noundef %conv40) #12
  br label %do.end43

do.end43:                                         ; preds = %if.then36, %do.body24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #12
  br label %cleanup

if.end45:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %last_dsn to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv20, ptr %last_dsn, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #12
  %add.ptr = getelementptr i8, ptr %command, i32 2
  %call50 = tail call fastcc i32 @ca8210_skb_rx(ptr noundef %hw, ptr noundef %add.ptr)
  br label %cleanup

if.then55:                                        ; preds = %do.end
  %async_tx_pending = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %async_tx_pending to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %async_tx_pending, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool57.not = icmp eq i8 %19, 0
  br i1 %tobool57.not, label %if.then55.cleanup_crit_edge, label %if.then58

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then58:                                        ; preds = %if.then55
  %arrayidx56 = getelementptr i8, ptr %command, i32 3
  %20 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx56, align 1
  %arrayidx59 = getelementptr i8, ptr %command, i32 2
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx59, align 1
  %24 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1, align 4
  %nextmsduhandle.i = getelementptr inbounds %struct.ca8210_priv, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %nextmsduhandle.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nextmsduhandle.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %23)
  %cmp.not.i = icmp eq i8 %27, %23
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %conv2.i = zext i8 %23 to i32
  %conv.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.127, i32 noundef %conv.i, i32 noundef %conv2.i) #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then58
  %async_tx_pending.i = getelementptr inbounds %struct.ca8210_priv, ptr %25, i32 0, i32 11
  %30 = ptrtoint ptr %async_tx_pending.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %async_tx_pending.i, align 4
  %inc.i = add i8 %23, 1
  %31 = ptrtoint ptr %nextmsduhandle.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %inc.i, ptr %nextmsduhandle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end.i.if.end21.i_crit_edge, label %do.end11.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

do.end11.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 4
  %conv14.i = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.130, i32 noundef %conv14.i) #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %21)
  %cmp16.not.i = icmp eq i8 %21, -15
  br i1 %cmp16.not.i, label %do.end11.i.if.end21.i_crit_edge, label %if.then18.i

do.end11.i.if.end21.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then18.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_skb.i = getelementptr inbounds %struct.ca8210_priv, ptr %25, i32 0, i32 6
  %34 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_skb.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %35, i32 noundef 1) #12
  %hw19.i = getelementptr inbounds %struct.ca8210_priv, ptr %25, i32 0, i32 1
  %36 = ptrtoint ptr %hw19.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw19.i, align 4
  tail call void @ieee802154_wake_queue(ptr noundef %37) #12
  br label %cleanup

if.end21.i:                                       ; preds = %do.end11.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %hw22.i = getelementptr inbounds %struct.ca8210_priv, ptr %25, i32 0, i32 1
  %38 = ptrtoint ptr %hw22.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw22.i, align 4
  %tx_skb23.i = getelementptr inbounds %struct.ca8210_priv, ptr %25, i32 0, i32 6
  %40 = ptrtoint ptr %tx_skb23.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_skb23.i, align 4
  tail call void @ieee802154_xmit_complete(ptr noundef %39, ptr noundef %41, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21.i, %if.then18.i, %do.end.i, %if.then55.cleanup_crit_edge, %if.end45, %do.end43, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca8210_mlme_reset_worker(ptr noundef %work) #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %response.i = alloca %struct.mac_message, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.work_priv_container, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %4 = getelementptr inbounds i8, ptr %command.i, i32 3
  %5 = call ptr @memset(ptr %4, i32 255, i32 147)
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %response.i) #12
  %6 = call ptr @memset(ptr %response.i, i32 255, i32 150)
  %7 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 71, ptr %command.i, align 1
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %length.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %9 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %pdata.i, align 1
  %call.i = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command.i, i32 noundef 3, ptr noundef nonnull %response.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.mlme_reset_request_sync.exit_crit_edge, label %do.end.i

entry.mlme_reset_request_sync.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlme_reset_request_sync.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.132) #15
  br label %mlme_reset_request_sync.exit

mlme_reset_request_sync.exit:                     ; preds = %do.end.i, %entry.mlme_reset_request_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %response.i) #12
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  call void @kfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ca8210_skb_rx(ptr noundef %hw, ptr nocapture noundef readonly %data_ind) unnamed_addr #2 align 64 {
entry:
  %hdr = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %hdr) #12
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 56)
  %arrayidx = getelementptr i8, ptr %data_ind, i32 23
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %priv1 = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 183, i32 noundef 2592) #12
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 56
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 56
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %arrayidx2 = getelementptr i8, ptr %data_ind, i32 22
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp slt i8 %10, 0
  br i1 %cmp, label %do.end, label %do.body6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.116) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_rx, %if.then11)) #12
          to label %do.end16 [label %if.then11], !srcloc !484

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_rx.__UNIQUE_ID_ddebug348, ptr noundef %14, ptr noundef nonnull @.str.118, i32 noundef %conv) #12
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %do.body6
  %promiscuous = getelementptr inbounds %struct.ca8210_priv, ptr %4, i32 0, i32 18
  %15 = ptrtoint ptr %promiscuous to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %promiscuous, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end16.copy_payload_crit_edge

do.end16.copy_payload_crit_edge:                  ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_payload

if.end19:                                         ; preds = %do.end16
  %add = add nuw nsw i32 %conv, 29
  %arrayidx20 = getelementptr i8, ptr %data_ind, i32 %add
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4
  %19 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %sec, align 8
  %bf.value = and i8 %18, 7
  %bf.clear = and i8 %bf.load, -8
  %bf.set = or i8 %bf.clear, %bf.value
  store i8 %bf.set, ptr %sec, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_rx, %if.then33)) #12
          to label %do.end42 [label %if.then33], !srcloc !484

if.then33:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %22 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load37 = load i8, ptr %sec, align 8
  %bf.clear38 = and i8 %bf.load37, 7
  %conv39 = zext i8 %bf.clear38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_rx.__UNIQUE_ID_ddebug349, ptr noundef %21, ptr noundef nonnull @.str.119, i32 noundef %conv39) #12
  br label %do.end42

do.end42:                                         ; preds = %if.then33, %if.end19
  %23 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load44 = load i8, ptr %sec, align 8
  %bf.clear45 = and i8 %bf.load44, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear45)
  %cmp47.not = icmp eq i8 %bf.clear45, 0
  br i1 %cmp47.not, label %do.end42.if.end63_crit_edge, label %if.then49

do.end42.if.end63_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then49:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #14
  %add50 = add nuw nsw i32 %conv, 30
  %arrayidx51 = getelementptr i8, ptr %data_ind, i32 %add50
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx51, align 1
  %bf.value54 = shl i8 %25, 3
  %bf.shl = and i8 %bf.value54, 24
  %bf.clear55 = and i8 %bf.load44, -25
  %bf.set56 = or i8 %bf.shl, %bf.clear55
  %26 = ptrtoint ptr %sec to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.set56, ptr %sec, align 8
  %27 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 3
  %add58 = add nuw nsw i32 %conv, 31
  %arrayidx59 = getelementptr i8, ptr %data_ind, i32 %add58
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %arrayidx59, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %27, align 8
  %add60 = add nuw nsw i32 %conv, 39
  %arrayidx61 = getelementptr i8, ptr %data_ind, i32 %add60
  %31 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx61, align 1
  %key_id = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %key_id to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %key_id, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then49, %do.end42.if.end63_crit_edge
  %34 = ptrtoint ptr %data_ind to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data_ind, align 1
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2
  %36 = ptrtoint ptr %source to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %source, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_rx, %if.then77)) #12
          to label %do.end85 [label %if.then77], !srcloc !484

if.then77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %4, align 4
  %39 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %source, align 8
  %conv82 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_rx.__UNIQUE_ID_ddebug350, ptr noundef %38, ptr noundef nonnull @.str.120, i32 noundef %conv82) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then77, %if.end63
  %arrayidx86 = getelementptr i8, ptr %data_ind, i32 1
  %41 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx86, align 2
  %pan_id = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %pan_id to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %pan_id, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_rx, %if.then100)) #12
          to label %do.end108 [label %if.then100], !srcloc !484

if.then100:                                       ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %46 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pan_id, align 2
  %conv105 = zext i16 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_rx.__UNIQUE_ID_ddebug351, ptr noundef %45, ptr noundef nonnull @.str.121, i32 noundef %conv105) #12
  br label %do.end108

do.end108:                                        ; preds = %if.then100, %do.end85
  %48 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 2, i32 2
  %arrayidx110 = getelementptr i8, ptr %data_ind, i32 3
  %49 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %arrayidx110, align 1
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %48, align 8
  %arrayidx111 = getelementptr i8, ptr %data_ind, i32 11
  %52 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx111, align 1
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3
  %54 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %dest, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_rx, %if.then125)) #12
          to label %do.end133 [label %if.then125], !srcloc !484

if.then125:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %4, align 4
  %57 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dest, align 8
  %conv130 = zext i8 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_rx.__UNIQUE_ID_ddebug352, ptr noundef %56, ptr noundef nonnull @.str.122, i32 noundef %conv130) #12
  br label %do.end133

do.end133:                                        ; preds = %if.then125, %do.end108
  %arrayidx134 = getelementptr i8, ptr %data_ind, i32 12
  %59 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx134, align 2
  %pan_id136 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %pan_id136 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %pan_id136, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_rx, %if.then149)) #12
          to label %do.end157 [label %if.then149], !srcloc !484

if.then149:                                       ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %4, align 4
  %64 = ptrtoint ptr %pan_id136 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pan_id136, align 2
  %conv154 = zext i16 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_rx.__UNIQUE_ID_ddebug353, ptr noundef %63, ptr noundef nonnull @.str.123, i32 noundef %conv154) #12
  br label %do.end157

do.end157:                                        ; preds = %if.then149, %do.end133
  %66 = getelementptr inbounds %struct.ieee802154_hdr, ptr %hdr, i32 0, i32 3, i32 2
  %arrayidx159 = getelementptr i8, ptr %data_ind, i32 14
  %67 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %arrayidx159, align 1
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %66, align 8
  %70 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load160 = load i16, ptr %hdr, align 8
  %bf.clear161 = and i16 %bf.load160, -3841
  %71 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load164 = load i8, ptr %sec, align 8
  %bf.clear165 = and i8 %bf.load164, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear165)
  %tobool166.not = icmp eq i8 %bf.clear165, 0
  %bf.set162 = and i16 %bf.load160, -3841
  %bf.clear174 = or i16 %bf.set162, 256
  %bf.set171 = or i16 %bf.clear161, 2304
  %storemerge = select i1 %tobool166.not, i16 %bf.clear174, i16 %bf.set171
  %72 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx86, align 1
  %74 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx134, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %73, i8 %75)
  %cmp181.not = icmp eq i8 %73, %75
  br i1 %cmp181.not, label %lor.lhs.false, label %do.end157.if.then189_crit_edge

do.end157.if.then189_crit_edge:                   ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then189

lor.lhs.false:                                    ; preds = %do.end157
  %arrayidx183 = getelementptr i8, ptr %data_ind, i32 2
  %76 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx183, align 1
  %arrayidx185 = getelementptr i8, ptr %data_ind, i32 13
  %78 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx185, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %79)
  %cmp187.not = icmp eq i8 %77, %79
  br i1 %cmp187.not, label %if.else194, label %lor.lhs.false.if.then189_crit_edge

lor.lhs.false.if.then189_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then189

if.then189:                                       ; preds = %lor.lhs.false.if.then189_crit_edge, %do.end157.if.then189_crit_edge
  %bf.set193 = or i16 %storemerge, 16384
  br label %if.end199

if.else194:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear197 = and i16 %storemerge, -17921
  br label %if.end199

if.end199:                                        ; preds = %if.else194, %if.then189
  %storemerge1 = phi i16 [ %bf.clear197, %if.else194 ], [ %bf.set193, %if.then189 ]
  %80 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %dest, align 8
  %82 = shl i8 %81, 2
  %83 = and i8 %82, 12
  %bf.shl206 = zext i8 %83 to i16
  %bf.clear207 = and i16 %storemerge1, -205
  %bf.set208 = or i16 %bf.clear207, %bf.shl206
  %84 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %source, align 8
  %86 = shl i8 %85, 6
  %bf.shl215 = zext i8 %86 to i16
  %bf.set217 = or i16 %bf.set208, %bf.shl215
  %87 = ptrtoint ptr %hdr to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %bf.set217, ptr %hdr, align 8
  %call218 = call i32 @ieee802154_hdr_push(ptr noundef nonnull %call.i.i, ptr noundef nonnull %hdr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %cmp219 = icmp slt i32 %call218, 0
  br i1 %cmp219, label %do.end224, label %if.end227

do.end224:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %89, ptr noundef nonnull @.str.125) #15
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #12
  br label %cleanup

if.end227:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %92 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %94 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv228 = trunc i32 %call218 to i16
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 8
  %95 = ptrtoint ptr %mac_len to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv228, ptr %mac_len, align 4
  br label %copy_payload

copy_payload:                                     ; preds = %if.end227, %do.end16.copy_payload_crit_edge
  %arrayidx229 = getelementptr i8, ptr %data_ind, i32 29
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #12
  %96 = call ptr @memcpy(ptr %call.i, ptr %arrayidx229, i32 %conv)
  call void @ieee802154_rx_irqsafe(ptr noundef %hw, ptr noundef nonnull %call.i.i, i8 noundef zeroext %2) #12
  br label %cleanup

cleanup:                                          ; preds = %copy_payload, %do.end224, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %do.end ], [ 0, %copy_payload ], [ %call218, %do.end224 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %hdr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ca8210_skb_tx(ptr noundef %skb, i8 noundef zeroext %msduhandle, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %command.i = alloca %struct.mac_message, align 1
  %header = alloca %struct.ieee802154_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %header) #12
  %0 = call ptr @memset(ptr %header, i32 0, i32 56)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_skb_tx.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_skb_tx, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !484

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_skb_tx.__UNIQUE_ID_ddebug356, ptr noundef %2, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.136) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @ieee802154_hdr_peek_addrs(ptr noundef %skb, ptr noundef nonnull %header) #12
  %sec = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 4
  %3 = ptrtoint ptr %sec to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %sec, align 8
  %bf.clear = and i8 %bf.load, 7
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear6 = and i8 %bf.lshr, 3
  %trunc = trunc i8 %bf.lshr to i2
  %4 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.254)
  switch i2 %trunc, label %do.end.if.end20_crit_edge [
    i2 -2, label %if.then9
    i2 -1, label %if.then15
  ]

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %secspec.sroa.8.sroa.0.sroa.0.0.extract.shift = lshr i32 %7, 24
  %secspec.sroa.8.sroa.0.sroa.6.0.extract.shift = lshr i32 %7, 16
  %secspec.sroa.8.sroa.0.sroa.7.0.extract.shift = lshr i32 %7, 8
  br label %if.end20

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %secspec.sroa.8.sroa.0.0.extract.shift = lshr i64 %10, 32
  %secspec.sroa.8.sroa.0.sroa.0.0.extract.shift3846 = lshr i64 %10, 56
  %secspec.sroa.8.sroa.0.sroa.0.0.extract.trunc39 = trunc i64 %secspec.sroa.8.sroa.0.sroa.0.0.extract.shift3846 to i32
  %secspec.sroa.8.sroa.0.sroa.6.0.extract.shift4047 = lshr i64 %10, 48
  %secspec.sroa.8.sroa.0.sroa.6.0.extract.trunc41 = trunc i64 %secspec.sroa.8.sroa.0.sroa.6.0.extract.shift4047 to i32
  %secspec.sroa.8.sroa.0.sroa.7.0.extract.shift4248 = lshr i64 %10, 40
  %secspec.sroa.8.sroa.0.sroa.7.0.extract.trunc43 = trunc i64 %secspec.sroa.8.sroa.0.sroa.7.0.extract.shift4248 to i32
  %secspec.sroa.8.sroa.0.sroa.8.0.extract.trunc44 = trunc i64 %secspec.sroa.8.sroa.0.0.extract.shift to i32
  %secspec.sroa.8.sroa.9.0.extract.shift = lshr i64 %10, 24
  %secspec.sroa.8.sroa.9.0.extract.trunc = trunc i64 %secspec.sroa.8.sroa.9.0.extract.shift to i8
  %secspec.sroa.8.sroa.10.0.extract.shift = lshr i64 %10, 16
  %secspec.sroa.8.sroa.10.0.extract.trunc = trunc i64 %secspec.sroa.8.sroa.10.0.extract.shift to i8
  %secspec.sroa.8.sroa.11.0.extract.shift = lshr i64 %10, 8
  %secspec.sroa.8.sroa.11.0.extract.trunc = trunc i64 %secspec.sroa.8.sroa.11.0.extract.shift to i8
  %secspec.sroa.8.sroa.12.0.extract.trunc = trunc i64 %10 to i8
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then9, %do.end.if.end20_crit_edge
  %secspec.sroa.8.sroa.0.sroa.8.0 = phi i32 [ 255, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.0.sroa.8.0.extract.trunc44, %if.then15 ], [ %7, %if.then9 ]
  %secspec.sroa.8.sroa.0.sroa.7.0 = phi i32 [ 255, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.0.sroa.7.0.extract.trunc43, %if.then15 ], [ %secspec.sroa.8.sroa.0.sroa.7.0.extract.shift, %if.then9 ]
  %secspec.sroa.8.sroa.0.sroa.6.0 = phi i32 [ 255, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.0.sroa.6.0.extract.trunc41, %if.then15 ], [ %secspec.sroa.8.sroa.0.sroa.6.0.extract.shift, %if.then9 ]
  %secspec.sroa.8.sroa.0.sroa.0.0 = phi i32 [ 255, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.0.sroa.0.0.extract.trunc39, %if.then15 ], [ %secspec.sroa.8.sroa.0.sroa.0.0.extract.shift, %if.then9 ]
  %secspec.sroa.8.sroa.12.0 = phi i8 [ -1, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.12.0.extract.trunc, %if.then15 ], [ -1, %if.then9 ]
  %secspec.sroa.8.sroa.11.0 = phi i8 [ -1, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.11.0.extract.trunc, %if.then15 ], [ -1, %if.then9 ]
  %secspec.sroa.8.sroa.10.0 = phi i8 [ -1, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.10.0.extract.trunc, %if.then15 ], [ -1, %if.then9 ]
  %secspec.sroa.8.sroa.9.0 = phi i8 [ -1, %do.end.if.end20_crit_edge ], [ %secspec.sroa.8.sroa.9.0.extract.trunc, %if.then15 ], [ -1, %if.then9 ]
  %key_id = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %key_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %key_id, align 1
  %source = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 2
  %13 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %source, align 8
  %dest = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 3
  %15 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dest, align 8
  %pan_id = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %pan_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pan_id, align 2
  %19 = getelementptr inbounds %struct.ieee802154_hdr, ptr %header, i32 0, i32 3, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %sub = sub i32 %21, %call3
  %conv25 = trunc i32 %sub to i8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %23, i32 %call3
  %24 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load26 = load i16, ptr %header, align 8
  %bf.lshr27 = lshr i16 %bf.load26, 13
  %25 = trunc i16 %bf.lshr27 to i8
  %conv29 = and i8 %25, 1
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %command.i) #12
  %28 = getelementptr inbounds i8, ptr %command.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 146)
  %30 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %command.i, align 1
  %pdata.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2
  %31 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %14, ptr %pdata.i, align 1
  %dst.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %dst.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %16, ptr %dst.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not.i = icmp eq i8 %16, 0
  br i1 %cmp.not.i, label %if.end20.if.end37.i_crit_edge, label %if.then.i

if.end20.if.end37.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then.i:                                        ; preds = %if.end20
  %conv5.i = trunc i16 %18 to i8
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv5.i, ptr %28, align 1
  %34 = lshr i16 %18, 8
  %conv10.i = trunc i16 %34 to i8
  %arrayidx14.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv10.i, ptr %arrayidx14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp16.i = icmp eq i8 %16, 2
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %19, align 8
  %conv21.i = trunc i16 %37 to i8
  %address.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 4
  %38 = ptrtoint ptr %address.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv21.i, ptr %address.i, align 1
  %39 = lshr i16 %37, 8
  %conv28.i = trunc i16 %39 to i8
  %arrayidx32.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 5
  %40 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv28.i, ptr %arrayidx32.i, align 1
  br label %if.end37.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %address35.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 4
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %19, align 8
  %43 = ptrtoint ptr %address35.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %address35.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then18.i, %if.end20.if.end37.i_crit_edge
  %msdu_length39.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 12
  %44 = ptrtoint ptr %msdu_length39.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv25, ptr %msdu_length39.i, align 1
  %msdu_handle41.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 13
  %45 = ptrtoint ptr %msdu_handle41.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %msduhandle, ptr %msdu_handle41.i, align 1
  %tx_options43.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 14
  %46 = ptrtoint ptr %tx_options43.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv29, ptr %tx_options43.i, align 1
  %msdu45.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 2, i32 0, i32 15
  %conv47.i = and i32 %sub, 255
  %47 = call ptr @memcpy(ptr %msdu45.i, ptr %arrayidx, i32 %conv47.i)
  %add.ptr.i = getelementptr i8, ptr %msdu45.i, i32 %conv47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %cmp55.i = icmp eq i8 %bf.clear, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.else63.i

if.then57.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %add.ptr.i, align 1
  br label %mcps_data_request.exit

if.else63.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %bf.clear, ptr %add.ptr.i, align 1
  %secspec.sroa.6.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 1
  %50 = ptrtoint ptr %secspec.sroa.6.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %bf.clear6, ptr %secspec.sroa.6.0.add.ptr.i.sroa_idx, align 1
  %secspec.sroa.8.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 2
  %secspec.sroa.8.sroa.0.sroa.8.0.insert.ext = and i32 %secspec.sroa.8.sroa.0.sroa.8.0, 255
  %secspec.sroa.8.sroa.0.sroa.7.0.insert.ext = shl nuw i32 %secspec.sroa.8.sroa.0.sroa.7.0, 8
  %secspec.sroa.8.sroa.0.sroa.7.0.insert.shift = and i32 %secspec.sroa.8.sroa.0.sroa.7.0.insert.ext, 65280
  %secspec.sroa.8.sroa.0.sroa.7.0.insert.insert = or i32 %secspec.sroa.8.sroa.0.sroa.7.0.insert.shift, %secspec.sroa.8.sroa.0.sroa.8.0.insert.ext
  %secspec.sroa.8.sroa.0.sroa.6.0.insert.ext = shl nuw i32 %secspec.sroa.8.sroa.0.sroa.6.0, 16
  %secspec.sroa.8.sroa.0.sroa.6.0.insert.shift = and i32 %secspec.sroa.8.sroa.0.sroa.6.0.insert.ext, 16711680
  %secspec.sroa.8.sroa.0.sroa.6.0.insert.insert = or i32 %secspec.sroa.8.sroa.0.sroa.7.0.insert.insert, %secspec.sroa.8.sroa.0.sroa.6.0.insert.shift
  %secspec.sroa.8.sroa.0.sroa.0.0.insert.ext = shl nuw i32 %secspec.sroa.8.sroa.0.sroa.0.0, 24
  %secspec.sroa.8.sroa.0.sroa.0.0.insert.insert = or i32 %secspec.sroa.8.sroa.0.sroa.6.0.insert.insert, %secspec.sroa.8.sroa.0.sroa.0.0.insert.ext
  %secspec.sroa.8.sroa.12.0.insert.ext = zext i8 %secspec.sroa.8.sroa.12.0 to i64
  %secspec.sroa.8.sroa.11.0.insert.ext = zext i8 %secspec.sroa.8.sroa.11.0 to i64
  %secspec.sroa.8.sroa.11.0.insert.shift = shl nuw nsw i64 %secspec.sroa.8.sroa.11.0.insert.ext, 8
  %secspec.sroa.8.sroa.11.0.insert.insert = or i64 %secspec.sroa.8.sroa.11.0.insert.shift, %secspec.sroa.8.sroa.12.0.insert.ext
  %secspec.sroa.8.sroa.10.0.insert.ext = zext i8 %secspec.sroa.8.sroa.10.0 to i64
  %secspec.sroa.8.sroa.10.0.insert.shift = shl nuw nsw i64 %secspec.sroa.8.sroa.10.0.insert.ext, 16
  %secspec.sroa.8.sroa.10.0.insert.insert = or i64 %secspec.sroa.8.sroa.11.0.insert.insert, %secspec.sroa.8.sroa.10.0.insert.shift
  %secspec.sroa.8.sroa.9.0.insert.ext = zext i8 %secspec.sroa.8.sroa.9.0 to i64
  %secspec.sroa.8.sroa.9.0.insert.shift = shl nuw nsw i64 %secspec.sroa.8.sroa.9.0.insert.ext, 24
  %secspec.sroa.8.sroa.9.0.insert.insert = or i64 %secspec.sroa.8.sroa.10.0.insert.insert, %secspec.sroa.8.sroa.9.0.insert.shift
  %secspec.sroa.8.sroa.0.0.insert.ext = zext i32 %secspec.sroa.8.sroa.0.sroa.0.0.insert.insert to i64
  %secspec.sroa.8.sroa.0.0.insert.shift = shl nuw i64 %secspec.sroa.8.sroa.0.0.insert.ext, 32
  %secspec.sroa.8.sroa.0.0.insert.insert = or i64 %secspec.sroa.8.sroa.9.0.insert.insert, %secspec.sroa.8.sroa.0.0.insert.shift
  %51 = ptrtoint ptr %secspec.sroa.8.0.add.ptr.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %secspec.sroa.8.sroa.0.0.insert.insert, ptr %secspec.sroa.8.0.add.ptr.i.sroa_idx, align 1
  %secspec.sroa.18.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i32 10
  %52 = ptrtoint ptr %secspec.sroa.18.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %12, ptr %secspec.sroa.18.0.add.ptr.i.sroa_idx, align 1
  br label %mcps_data_request.exit

mcps_data_request.exit:                           ; preds = %if.else63.i, %if.then57.i
  %.sink.i = phi i8 [ 26, %if.else63.i ], [ 16, %if.then57.i ]
  %length.i = getelementptr inbounds %struct.mac_message, ptr %command.i, i32 0, i32 1
  %add66.i = add i8 %.sink.i, %conv25
  %53 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %add66.i, ptr %length.i, align 1
  %conv71.i = zext i8 %add66.i to i32
  %add72.i = add nuw nsw i32 %conv71.i, 2
  %call.i = call fastcc i32 @ca8210_spi_transfer(ptr noundef %27, ptr noundef nonnull %command.i, i32 noundef %add72.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool73.not.i.not = icmp eq i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %command.i) #12
  %conv32 = select i1 %tobool73.not.i.not, i32 0, i32 255
  %call33 = call fastcc i32 @link_to_linux_err(i32 noundef %conv32)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %header) #12
  ret i32 %call33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_hdr_peek_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_test_int_user_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %offp) #2 align 64 {
entry:
  %fifo_buffer = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_buffer) #12
  %2 = ptrtoint ptr %fifo_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fifo_buffer, align 4, !annotation !486
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %up_fifo = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %up_fifo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %up_fifo, align 4
  %out = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %if.then.cleanup117_crit_edge, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then.cleanup117_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup117

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2583) #12
  %up_fifo8 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %up_fifo8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %up_fifo8, align 4
  %out11 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %out11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12 = icmp eq i32 %10, %12
  br i1 %cmp12, label %if.then15, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then15:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %readq = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 2
  %call162 = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %14 = ptrtoint ptr %up_fifo8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %up_fifo8, align 4
  %16 = ptrtoint ptr %out11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp24163 = icmp eq i32 %15, %17
  br i1 %cmp24163, label %if.then15.if.end28_crit_edge, label %if.then15.for.end_crit_edge

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  br label %if.end28

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.then15.if.end28_crit_edge
  %call164 = phi i32 [ %call, %cleanup.if.end28_crit_edge ], [ %call162, %if.then15.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool29.not = icmp eq i32 %call164, 0
  br i1 %tobool29.not, label %cleanup, label %if.end28.__out_crit_edge

if.end28.__out_crit_edge:                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end28
  call void @schedule() #12
  %call = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %18 = ptrtoint ptr %up_fifo8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %up_fifo8, align 4
  %20 = ptrtoint ptr %out11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out11, align 4
  %cmp24 = icmp eq i32 %19, %21
  br i1 %cmp24, label %cleanup.if.end28_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then15.for.end_crit_edge
  call void @finish_wait(ptr noundef %readq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end28.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end37

if.end37:                                         ; preds = %__out, %if.else.if.end37_crit_edge, %if.then.if.end37_crit_edge
  %up_fifo39 = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1
  %call41 = call i32 @__kfifo_out(ptr noundef %up_fifo39, ptr noundef nonnull %fifo_buffer, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call41)
  %cmp43.not = icmp eq i32 %call41, 4
  br i1 %cmp43.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.168) #15
  br label %cleanup117

if.end49:                                         ; preds = %if.end37
  %24 = ptrtoint ptr %fifo_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fifo_buffer, align 4
  %arrayidx = getelementptr i8, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv50 = zext i8 %27 to i32
  %add = add nuw nsw i32 %conv50, 2
  call void @__check_object_size(ptr noundef %25, i32 noundef %add, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.177, i32 noundef 174) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end49.do.end57_crit_edge, label %if.end.i.i

if.end49.do.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

if.end.i.i:                                       ; preds = %if.end49
  %28 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %add, i32 -1226833920) #17, !srcloc !487
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.end57_crit_edge

if.end.i.i.do.end57_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %25, i32 noundef %add) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %25, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %cmp52.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %cmp52.not, label %copy_to_user.exit.do.body61_crit_edge, label %copy_to_user.exit.do.end57_crit_edge

copy_to_user.exit.do.end57_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

copy_to_user.exit.do.body61_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body61

do.end57:                                         ; preds = %copy_to_user.exit.do.end57_crit_edge, %if.end.i.i.do.end57_crit_edge, %if.end49.do.end57_crit_edge
  %n.addr.0.i157 = phi i32 [ %call.i12.i.i, %copy_to_user.exit.do.end57_crit_edge ], [ %add, %if.end49.do.end57_crit_edge ], [ %add, %if.end.i.i.do.end57_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.171, i32 noundef %n.addr.0.i157) #15
  br label %do.body61

do.body61:                                        ; preds = %do.end57, %copy_to_user.exit.do.body61_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_test_int_user_read.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_test_int_user_read, %if.then67)) #12
          to label %do.body73 [label %if.then67], !srcloc !484

if.then67:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_test_int_user_read.__UNIQUE_ID_ddebug358, ptr noundef %32, ptr noundef nonnull @.str.173, i32 noundef %conv50) #12
  br label %do.body73

do.body73:                                        ; preds = %if.then67, %do.body61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_test_int_user_read.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_test_int_user_read, %if.then85)) #12
          to label %do.body95 [label %if.then85], !srcloc !484

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_test_int_user_read.__UNIQUE_ID_ddebug359, ptr noundef %34, ptr noundef nonnull @.str.174) #12
  br label %do.body95

do.body95:                                        ; preds = %for.inc.do.body95_crit_edge, %if.then85, %do.body73
  %i.0165 = phi i32 [ %inc, %for.inc.do.body95_crit_edge ], [ 0, %do.body73 ], [ 0, %if.then85 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_test_int_user_read.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_test_int_user_read, %if.then107)) #12
          to label %for.inc [label %if.then107], !srcloc !484

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %fifo_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fifo_buffer, align 4
  %arrayidx110 = getelementptr i8, ptr %38, i32 %i.0165
  %39 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_test_int_user_read.__UNIQUE_ID_ddebug360, ptr noundef %36, ptr noundef nonnull @.str.60, i32 noundef %conv111) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then107, %do.body95
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.end115, label %for.inc.do.body95_crit_edge

for.inc.do.body95_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body95

for.end115:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %fifo_buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fifo_buffer, align 4
  call void @kfree(ptr noundef %42) #12
  br label %cleanup117

cleanup117:                                       ; preds = %for.end115, %do.end48, %if.then.cleanup117_crit_edge
  %retval.0 = phi i32 [ 0, %do.end48 ], [ %add, %for.end115 ], [ 0, %if.then.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_buffer) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_test_int_user_write(ptr nocapture noundef readonly %filp, ptr noundef %in_buf, i32 noundef %len, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  %response.i = alloca [256 x i8], align 1
  %command = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %command) #12
  %2 = add i32 %len, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %2)
  %3 = icmp ult i32 %2, -255
  %4 = call ptr @memset(ptr %command, i32 255, i32 256)
  br i1 %3, label %do.end, label %if.then.i.i.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.178, i32 noundef %len) #15
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %command, i32 noundef %len, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.177, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.do.end6_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.do.end6_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %in_buf, i32 %len, i32 -1226833920) #17, !srcloc !488
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.do.end6_crit_edge, !prof !489

land.lhs.true.i.i.do.end6_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %command, i32 noundef %len) #12
  %8 = call i32 @llvm.read_register.i32(metadata !473) #12
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !490
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !491
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %command, ptr noundef %in_buf, i32 noundef %len) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !491
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.do.end6_crit_edge, !prof !489

if.end.i.i.do.end6_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end6:                                          ; preds = %if.end.i.i.do.end6_crit_edge, %land.lhs.true.i.i.do.end6_crit_edge, %if.then.i.i.i.do.end6_crit_edge
  %res.0.i.i66 = phi i32 [ %call1.i.i.i, %if.end.i.i.do.end6_crit_edge ], [ %len, %if.then.i.i.i.do.end6_crit_edge ], [ %len, %land.lhs.true.i.i.do.end6_crit_edge ]
  %sub.i.i = sub i32 %len, %res.0.i.i66
  %add.ptr.i.i = getelementptr i8, ptr %command, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i66)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.181, i32 noundef %res.0.i.i66) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds [256 x i8], ptr %command, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp10.not = icmp eq i32 %add, %len
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  br i1 %cmp10.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.184) #15
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %response.i) #12
  %18 = getelementptr inbounds i8, ptr %response.i, i32 5
  %19 = call ptr @memset(ptr %18, i32 255, i32 251)
  %20 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %command, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.255)
  switch i8 %21, label %if.end18.ca8210_test_check_upstream.exit.thread_crit_edge [
    i8 74, label %if.then.i63
    i8 2, label %if.then22.i
    i8 75, label %if.then30.i
    i8 84, label %land.lhs.true52.i
  ]

if.end18.ca8210_test_check_upstream.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_test_check_upstream.exit.thread

if.then.i63:                                      ; preds = %if.end18
  %arrayidx2.i = getelementptr inbounds i8, ptr %command, i32 2
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr inbounds i8, ptr %command, i32 4
  %25 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx3.i, align 1
  %add.ptr.i = getelementptr inbounds i8, ptr %command, i32 5
  %call.i = call fastcc zeroext i8 @tdme_checkpibattribute(i8 noundef zeroext %24, i8 noundef zeroext %26, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %tobool.not.i = icmp eq i8 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i63
  %27 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 110, ptr %response.i, align 1
  %arrayidx7.i = getelementptr inbounds [256 x i8], ptr %response.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr inbounds [256 x i8], ptr %response.i, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -24, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr inbounds [256 x i8], ptr %response.i, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %24, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr inbounds i8, ptr %command, i32 3
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx11.i, align 1
  %arrayidx12.i = getelementptr inbounds [256 x i8], ptr %response.i, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx12.i, align 1
  %34 = load ptr, ptr @cascoda_api_upstream, align 4
  %tobool13.not.i = icmp eq ptr %34, null
  br i1 %tobool13.not.i, label %if.then5.i.ca8210_test_check_upstream.exit.thread73_crit_edge, label %if.then14.i

if.then5.i.ca8210_test_check_upstream.exit.thread73_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_test_check_upstream.exit.thread73

if.then14.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = call i32 %34(ptr noundef nonnull %response.i, i32 noundef 5, ptr noundef %17) #12, !callees !485
  br label %ca8210_test_check_upstream.exit.thread73

if.then22.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i = getelementptr inbounds i8, ptr %command, i32 2
  br label %ca8210_test_check_upstream.exit

if.then30.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx31.i = getelementptr inbounds i8, ptr %command, i32 4
  br label %ca8210_test_check_upstream.exit

land.lhs.true.i:                                  ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp41.i = icmp eq i8 %24, 0
  br i1 %cmp41.i, label %land.lhs.true.i.ca8210_test_check_upstream.exit_crit_edge, label %land.lhs.true.i.ca8210_test_check_upstream.exit.thread_crit_edge

land.lhs.true.i.ca8210_test_check_upstream.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_test_check_upstream.exit.thread

land.lhs.true.i.ca8210_test_check_upstream.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_test_check_upstream.exit

land.lhs.true52.i:                                ; preds = %if.end18
  %arrayidx53.i = getelementptr inbounds i8, ptr %command, i32 2
  %35 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp55.i = icmp eq i8 %36, 0
  br i1 %cmp55.i, label %if.then57.i, label %land.lhs.true52.i.ca8210_test_check_upstream.exit.thread_crit_edge

land.lhs.true52.i.ca8210_test_check_upstream.exit.thread_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ca8210_test_check_upstream.exit.thread

if.then57.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx58.i = getelementptr inbounds i8, ptr %command, i32 4
  br label %ca8210_test_check_upstream.exit

ca8210_test_check_upstream.exit.thread:           ; preds = %land.lhs.true52.i.ca8210_test_check_upstream.exit.thread_crit_edge, %land.lhs.true.i.ca8210_test_check_upstream.exit.thread_crit_edge, %if.end18.ca8210_test_check_upstream.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %response.i) #12
  br label %if.then24

ca8210_test_check_upstream.exit.thread73:         ; preds = %if.then14.i, %if.then5.i.ca8210_test_check_upstream.exit.thread73_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %response.i) #12
  br label %cleanup

ca8210_test_check_upstream.exit:                  ; preds = %if.then57.i, %land.lhs.true.i.ca8210_test_check_upstream.exit_crit_edge, %if.then30.i, %if.then22.i
  %arrayidx23.i.sink = phi ptr [ %arrayidx23.i, %if.then22.i ], [ %arrayidx31.i, %if.then30.i ], [ %arrayidx58.i, %if.then57.i ], [ %add.ptr.i, %land.lhs.true.i.ca8210_test_check_upstream.exit_crit_edge ]
  %37 = ptrtoint ptr %arrayidx23.i.sink to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx23.i.sink, align 1
  %call24.i = call fastcc zeroext i8 @tdme_channelinit(i8 noundef zeroext %38, ptr noundef %17) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %response.i) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call24.i)
  %cmp22 = icmp eq i8 %call24.i, 0
  br i1 %cmp22, label %ca8210_test_check_upstream.exit.if.then24_crit_edge, label %ca8210_test_check_upstream.exit.cleanup_crit_edge

ca8210_test_check_upstream.exit.cleanup_crit_edge: ; preds = %ca8210_test_check_upstream.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ca8210_test_check_upstream.exit.if.then24_crit_edge: ; preds = %ca8210_test_check_upstream.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %ca8210_test_check_upstream.exit.if.then24_crit_edge, %ca8210_test_check_upstream.exit.thread
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %conv27 = zext i8 %40 to i32
  %add28 = add nuw nsw i32 %conv27, 2
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call30 = call fastcc i32 @ca8210_spi_exchange(ptr noundef nonnull %command, i32 noundef %add28, ptr noundef null, ptr noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.187) #15
  br label %cleanup

if.end39:                                         ; preds = %if.then24
  %45 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %command, align 1
  %47 = and i8 %46, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool42.not = icmp eq i8 %47, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %if.then43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %sync_down = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 14
  %48 = ptrtoint ptr %sync_down to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sync_down, align 4
  %inc = add i32 %49, 1
  store i32 %inc, ptr %sync_down, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end39.cleanup_crit_edge, %do.end36, %ca8210_test_check_upstream.exit.cleanup_crit_edge, %ca8210_test_check_upstream.exit.thread73, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ -52, %do.end ], [ -5, %do.end6 ], [ -52, %do.end15 ], [ %call30, %do.end36 ], [ %len, %if.end39.cleanup_crit_edge ], [ %len, %if.then43 ], [ %len, %ca8210_test_check_upstream.exit.cleanup_crit_edge ], [ %len, %ca8210_test_check_upstream.exit.thread73 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %command) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_test_int_poll(ptr noundef %filp, ptr noundef %ptable) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %readq = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 2
  %tobool.not.i = icmp eq ptr %ptable, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %ptable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptable, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %readq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %readq, ptr noundef nonnull %ptable) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %up_fifo = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %up_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %up_fifo, align 4
  %out = getelementptr inbounds %struct.ca8210_priv, ptr %1, i32 0, i32 10, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  %spec.select = select i1 %cmp, i32 0, i32 65
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2664) #12
  %8 = ptrtoint ptr %up_fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %up_fifo, align 4
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11 = icmp eq i32 %9, %11
  br i1 %cmp11, label %if.then14, label %poll_wait.exit.if.end35.thread_crit_edge

poll_wait.exit.if.end35.thread_crit_edge:         ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.thread

if.then14:                                        ; preds = %poll_wait.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call65 = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %13 = ptrtoint ptr %up_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %up_fifo, align 4
  %15 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp2466 = icmp eq i32 %14, %16
  br i1 %cmp2466, label %if.then14.if.end28_crit_edge, label %if.then14.if.end35.thread62_crit_edge

if.then14.if.end35.thread62_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.thread62

if.then14.if.end28_crit_edge:                     ; preds = %if.then14
  br label %if.end28

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %if.then14.if.end28_crit_edge
  %call67 = phi i32 [ %call, %cleanup.if.end28_crit_edge ], [ %call65, %if.then14.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool29.not = icmp eq i32 %call67, 0
  br i1 %tobool29.not, label %cleanup, label %if.end35

cleanup:                                          ; preds = %if.end28
  call void @schedule() #12
  %call = call i32 @prepare_to_wait_event(ptr noundef %readq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %17 = ptrtoint ptr %up_fifo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %up_fifo, align 4
  %19 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out, align 4
  %cmp24 = icmp eq i32 %18, %20
  br i1 %cmp24, label %cleanup.if.end28_crit_edge, label %cleanup.if.end35.thread62_crit_edge

cleanup.if.end35.thread62_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.thread62

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end35.thread62:                                ; preds = %cleanup.if.end35.thread62_crit_edge, %if.then14.if.end35.thread62_crit_edge
  call void @finish_wait(ptr noundef %readq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end35.thread

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end35, %if.end35.thread62, %poll_wait.exit.if.end35.thread_crit_edge
  %21 = phi i32 [ 8, %if.end35 ], [ %spec.select, %if.end35.thread62 ], [ %spec.select, %poll_wait.exit.if.end35.thread_crit_edge ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_test_int_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %ioctl_num, i32 noundef %ioctl_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ioctl_num)
  %cond = icmp eq i32 %ioctl_num, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call fastcc void @ca8210_reset_send(ptr noundef %3, i32 noundef %ioctl_param)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ca8210_test_int_open(ptr nocapture noundef readonly %inodp, ptr nocapture noundef writeonly %filp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inodp, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  ret i32 0
}

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
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ca8210_interrupt_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ca8210_interrupt_handler.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ca8210_interrupt_handler, %if.then)) #12
          to label %do.body3 [label %if.then], !srcloc !484

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ca8210_interrupt_handler.__UNIQUE_ID_ddebug347, ptr noundef %1, ptr noundef nonnull @.str.210) #12
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %if.then, %entry
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %call5 = tail call fastcc i32 @ca8210_spi_transfer(ptr noundef %3, ptr noundef null, i32 noundef 0)
  %4 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %call5, label %do.end10 [
    i32 -16, label %do.body3.do.body3_crit_edge
    i32 0, label %do.body3.do.end16_crit_edge
  ]

do.body3.do.end16_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end16

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

do.end10:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.211, i32 noundef %call5) #15
  br label %do.end16

do.end16:                                         ; preds = %do.end10, %do.body3.do.end16_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_unexport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 241)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !299, !301, !302, !304, !305, !306, !308, !310, !312, !314, !315, !317, !319, !320, !321, !322, !324, !325, !326, !328, !329, !331, !332, !334, !336, !337, !339, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !362, !364, !366, !368, !370, !372, !373, !374, !375, !377, !379, !380, !381, !383, !385, !386, !387, !388, !390, !392, !393, !394, !395, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !414, !416, !417, !419, !420, !421, !422, !424, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !466, !468, !469, !470, !471}
!llvm.named.register.sp = !{!473}
!llvm.module.flags = !{!474, !475, !476, !477, !478, !479, !480, !481}
!llvm.ident = !{!482}

!0 = !{ptr @__initcall__kmod_ca8210__361_3232_ca8210_spi_driver_init6, !1, !"__initcall__kmod_ca8210__361_3232_ca8210_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3232, i32 1}
!2 = !{ptr @__exitcall_ca8210_spi_driver_exit, !1, !"__exitcall_ca8210_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author362, !4, !"__UNIQUE_ID_author362", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3234, i32 1}
!5 = !{ptr @__UNIQUE_ID_description363, !6, !"__UNIQUE_ID_description363", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3235, i32 1}
!7 = !{ptr @__UNIQUE_ID_file364, !8, !"__UNIQUE_ID_file364", i1 false, i1 false}
!8 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3236, i32 1}
!9 = !{ptr @__UNIQUE_ID_license365, !8, !"__UNIQUE_ID_license365", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version366, !11, !"__UNIQUE_ID_version366", i1 false, i1 false}
!11 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3237, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @ca8210_spi_driver, !17, !"ca8210_spi_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3222, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3109, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ca8210_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ca8210_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3114, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ca8210_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ca8210_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ca8210_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3123, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3152, i32 3}
!36 = !{ptr @ca8210_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ca8210_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3158, i32 3}
!40 = !{ptr @ca8210_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ca8210_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3163, i32 3}
!44 = !{ptr @ca8210_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ca8210_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3169, i32 3}
!48 = !{ptr @ca8210_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ca8210_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3179, i32 3}
!52 = !{ptr @ca8210_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ca8210_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3186, i32 4}
!56 = !{ptr @ca8210_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ca8210_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3194, i32 4}
!60 = !{ptr @ca8210_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ca8210_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3204, i32 3}
!64 = !{ptr @ca8210_probe._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ca8210_probe._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ca8210_phy_ops, !67, !"ca8210_phy_ops", i1 false, i1 false}
!67 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2389, i32 36}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2008, i32 3}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ca8210_start._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ca8210_start._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2022, i32 3}
!75 = !{ptr @ca8210_start._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ca8210_start._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1130, i32 3}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tdme_setsfr_request_sync._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @tdme_setsfr_request_sync._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1135, i32 3}
!84 = !{ptr @tdme_setsfr_request_sync._entry.44, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tdme_setsfr_request_sync._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"cascoda_api_downstream", i1 false, i1 false}
!87 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1088, i32 14}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1008, i32 4}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ca8210_spi_exchange._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @ca8210_spi_exchange._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1027, i32 4}
!96 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ca8210_spi_exchange._entry.50, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @ca8210_spi_exchange._entry_ptr.53, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1046, i32 3}
!101 = !{ptr @ca8210_spi_exchange._entry.54, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ca8210_spi_exchange._entry_ptr.56, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ieee802154/ca8210.c", i32 921, i32 3}
!105 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ca8210_spi_transfer._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ca8210_spi_transfer._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ieee802154/ca8210.c", i32 928, i32 2}
!110 = !{ptr @ca8210_spi_transfer.__UNIQUE_ID_ddebug345, !109, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ieee802154/ca8210.c", i32 940, i32 3}
!113 = !{ptr @ca8210_spi_transfer.__UNIQUE_ID_ddebug346, !112, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ieee802154/ca8210.c", i32 964, i32 3}
!116 = !{ptr @ca8210_spi_transfer._entry.61, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ca8210_spi_transfer._entry_ptr.63, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ieee802154/ca8210.c", i32 855, i32 3}
!120 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ca8210_spi_transfer_complete._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @ca8210_spi_transfer_complete._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ieee802154/ca8210.c", i32 857, i32 4}
!125 = !{ptr @ca8210_spi_transfer_complete._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ca8210_spi_transfer_complete._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ieee802154/ca8210.c", i32 865, i32 4}
!129 = !{ptr @ca8210_spi_transfer_complete._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ca8210_spi_transfer_complete._entry_ptr.71, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ieee802154/ca8210.c", i32 878, i32 3}
!133 = !{ptr @ca8210_spi_transfer_complete._entry.72, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @ca8210_spi_transfer_complete._entry_ptr.74, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ieee802154/ca8210.c", i32 888, i32 3}
!137 = !{ptr @ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug343, !136, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!138 = !{ptr @ca8210_spi_transfer_complete.__UNIQUE_ID_ddebug344, !139, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!139 = !{!"../drivers/net/ieee802154/ca8210.c", i32 890, i32 4}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ieee802154/ca8210.c", i32 733, i32 3}
!142 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @ca8210_rx_done._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @ca8210_rx_done._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ieee802154/ca8210.c", i32 758, i32 4}
!147 = !{ptr @ca8210_rx_done._entry.78, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ca8210_rx_done._entry_ptr.80, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ieee802154/ca8210.c", i32 762, i32 4}
!151 = !{ptr @ca8210_rx_done._entry.81, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @ca8210_rx_done._entry_ptr.83, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @ca8210_rx_done.__key, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/net/ieee802154/ca8210.c", i32 770, i32 4}
!155 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ieee802154/ca8210.c", i32 778, i32 3}
!158 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @ca8210_rx_done._entry.85, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @ca8210_rx_done._entry_ptr.88, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ieee802154/ca8210.c", i32 784, i32 4}
!163 = !{ptr @ca8210_rx_done._entry.89, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ca8210_rx_done._entry_ptr.91, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.93, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ieee802154/ca8210.c", i32 790, i32 4}
!167 = !{ptr @ca8210_rx_done._entry.92, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @ca8210_rx_done._entry_ptr.94, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.96, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ieee802154/ca8210.c", i32 796, i32 4}
!171 = !{ptr @ca8210_rx_done._entry.95, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @ca8210_rx_done._entry_ptr.97, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ieee802154/ca8210.c", i32 801, i32 4}
!175 = !{ptr @ca8210_rx_done._entry.98, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ca8210_rx_done._entry_ptr.100, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ieee802154/ca8210.c", i32 807, i32 4}
!179 = !{ptr @ca8210_rx_done._entry.101, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @ca8210_rx_done._entry_ptr.103, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.105, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ieee802154/ca8210.c", i32 813, i32 4}
!183 = !{ptr @ca8210_rx_done._entry.104, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @ca8210_rx_done._entry_ptr.106, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ieee802154/ca8210.c", i32 819, i32 4}
!187 = !{ptr @ca8210_rx_done._entry.107, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @ca8210_rx_done._entry_ptr.109, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.111, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ieee802154/ca8210.c", i32 825, i32 4}
!191 = !{ptr @ca8210_rx_done._entry.110, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @ca8210_rx_done._entry_ptr.112, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.113, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1903, i32 2}
!195 = !{ptr @.str.114, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @ca8210_net_rx.__UNIQUE_ID_ddebug354, !194, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1909, i32 4}
!199 = !{ptr @ca8210_net_rx.__UNIQUE_ID_ddebug355, !198, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!200 = !{ptr @.str.116, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1819, i32 3}
!202 = !{ptr @.str.117, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ca8210_skb_rx._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @ca8210_skb_rx._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.118, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1826, i32 2}
!207 = !{ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug348, !206, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1833, i32 2}
!210 = !{ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug349, !209, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!211 = !{ptr @.str.120, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1840, i32 2}
!213 = !{ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug350, !212, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!214 = !{ptr @.str.121, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1842, i32 2}
!216 = !{ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug351, !215, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!217 = !{ptr @.str.122, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1845, i32 2}
!219 = !{ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug352, !218, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!220 = !{ptr @.str.123, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1847, i32 2}
!222 = !{ptr @ca8210_skb_rx.__UNIQUE_ID_ddebug353, !221, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!223 = !{ptr @.str.125, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1867, i32 3}
!225 = !{ptr @ca8210_skb_rx._entry.124, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ca8210_skb_rx._entry_ptr.126, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.127, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1755, i32 3}
!229 = !{ptr @.str.128, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @ca8210_async_xmit_complete._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @ca8210_async_xmit_complete._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.130, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1768, i32 3}
!234 = !{ptr @ca8210_async_xmit_complete._entry.129, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @ca8210_async_xmit_complete._entry_ptr.131, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.132, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1555, i32 3}
!238 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @mlme_reset_request_sync._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @mlme_reset_request_sync._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2056, i32 2}
!243 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @ca8210_xmit_async.__UNIQUE_ID_ddebug357, !242, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!245 = !{ptr @.str.136, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1953, i32 2}
!247 = !{ptr @ca8210_skb_tx.__UNIQUE_ID_ddebug356, !246, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!248 = !{ptr @.str.137, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2108, i32 3}
!250 = !{ptr @.str.138, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @ca8210_set_channel._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @ca8210_set_channel._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.139, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2147, i32 4}
!255 = !{ptr @.str.140, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @ca8210_set_hw_addr_filt._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @ca8210_set_hw_addr_filt._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.142, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2163, i32 4}
!260 = !{ptr @ca8210_set_hw_addr_filt._entry.141, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @ca8210_set_hw_addr_filt._entry_ptr.143, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.145, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2180, i32 4}
!264 = !{ptr @ca8210_set_hw_addr_filt._entry.144, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @ca8210_set_hw_addr_filt._entry_ptr.146, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.147, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2238, i32 3}
!268 = !{ptr @.str.148, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @ca8210_set_cca_mode._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @ca8210_set_cca_mode._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.149, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2270, i32 3}
!273 = !{ptr @.str.150, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @ca8210_set_cca_ed_level._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @ca8210_set_cca_ed_level._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.151, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2300, i32 3}
!278 = !{ptr @.str.152, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @ca8210_set_csma_params._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @ca8210_set_csma_params._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.154, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2309, i32 3}
!283 = !{ptr @ca8210_set_csma_params._entry.153, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @ca8210_set_csma_params._entry_ptr.155, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.157, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2324, i32 3}
!287 = !{ptr @ca8210_set_csma_params._entry.156, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @ca8210_set_csma_params._entry_ptr.158, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.159, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2356, i32 3}
!291 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @ca8210_set_frame_retries._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @ca8210_set_frame_retries._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.161, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2378, i32 3}
!296 = !{ptr @.str.162, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @ca8210_set_promiscuous_mode._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @ca8210_set_promiscuous_mode._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @init_completion.__key, !300, !"__key", i1 false, i1 false}
!300 = !{!"../include/linux/completion.h", i32 87, i32 2}
!301 = !{ptr @.str.163, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.164, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/net/ieee802154/ca8210.c", i32 632, i32 2}
!304 = !{ptr @.str.165, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @ca8210_test_int_driver_write.__UNIQUE_ID_ddebug340, !303, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!306 = !{ptr @ca8210_test_int_driver_write.__UNIQUE_ID_ddebug341, !307, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!307 = !{!"../drivers/net/ieee802154/ca8210.c", i32 637, i32 3}
!308 = !{ptr @cascoda_api_upstream, !309, !"cascoda_api_upstream", i1 false, i1 false}
!309 = !{!"../drivers/net/ieee802154/ca8210.c", i32 534, i32 14}
!310 = !{ptr @.str.166, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3011, i32 3}
!312 = !{ptr @ca8210_test_interface_init.__key, !313, !"__key", i1 false, i1 false}
!313 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3025, i32 2}
!314 = !{ptr @.str.167, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @test_int_fops, !316, !"test_int_fops", i1 false, i1 false}
!316 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2670, i32 37}
!317 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2587, i32 3}
!319 = !{ptr @.str.169, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @ca8210_test_int_user_read._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @ca8210_test_int_user_read._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.171, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2598, i32 3}
!324 = !{ptr @ca8210_test_int_user_read._entry.170, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @ca8210_test_int_user_read._entry_ptr.172, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.173, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2605, i32 2}
!328 = !{ptr @ca8210_test_int_user_read.__UNIQUE_ID_ddebug358, !327, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!329 = !{ptr @.str.174, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2607, i32 2}
!331 = !{ptr @ca8210_test_int_user_read.__UNIQUE_ID_ddebug359, !330, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!332 = !{ptr @ca8210_test_int_user_read.__UNIQUE_ID_ddebug360, !333, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!333 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2609, i32 3}
!334 = distinct !{null, !335, !"__already_done", i1 false, i1 false}
!335 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!336 = !{ptr @.str.175, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @.str.176, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!339 = !{ptr @.str.177, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!341 = !{ptr @.str.178, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2500, i32 3}
!343 = !{ptr @.str.179, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @ca8210_test_int_user_write._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @ca8210_test_int_user_write._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.181, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2510, i32 3}
!348 = !{ptr @ca8210_test_int_user_write._entry.180, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @ca8210_test_int_user_write._entry_ptr.182, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.184, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2518, i32 3}
!352 = !{ptr @ca8210_test_int_user_write._entry.183, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @ca8210_test_int_user_write._entry_ptr.185, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.187, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2535, i32 4}
!356 = !{ptr @ca8210_test_int_user_write._entry.186, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @ca8210_test_int_user_write._entry_ptr.188, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @ca8210_tx_powers, !359, !"ca8210_tx_powers", i1 false, i1 false}
!359 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2947, i32 18}
!360 = !{ptr @ca8210_ed_levels, !361, !"ca8210_ed_levels", i1 false, i1 false}
!361 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2952, i32 18}
!362 = !{ptr @.str.189, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2700, i32 3}
!364 = !{ptr @.str.190, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2705, i32 4}
!366 = !{ptr @.str.191, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2713, i32 4}
!368 = !{ptr @.str.192, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2914, i32 25}
!370 = !{ptr @.str.193, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2919, i32 3}
!372 = !{ptr @.str.194, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @ca8210_dev_com_init._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @ca8210_dev_com_init._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.195, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2923, i32 24}
!377 = !{ptr @.str.197, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2928, i32 3}
!379 = !{ptr @ca8210_dev_com_init._entry.196, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @ca8210_dev_com_init._entry_ptr.198, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.199, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2846, i32 3}
!383 = !{ptr @.str.200, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2852, i32 3}
!385 = !{ptr @.str.201, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @ca8210_reset_init._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @ca8210_reset_init._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.202, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2875, i32 3}
!390 = !{ptr @.str.203, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2881, i32 3}
!392 = !{ptr @.str.204, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @ca8210_interrupt_init._entry, !391, !"_entry", i1 false, i1 false}
!394 = !{ptr @ca8210_interrupt_init._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.205, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2894, i32 3}
!397 = !{ptr @.str.207, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2898, i32 3}
!399 = !{ptr @ca8210_interrupt_init._entry.206, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @ca8210_interrupt_init._entry_ptr.208, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.209, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1074, i32 2}
!403 = !{ptr @.str.210, !402, !"<string literal>", i1 false, i1 false}
!404 = !{ptr @ca8210_interrupt_handler.__UNIQUE_ID_ddebug347, !402, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!405 = !{ptr @.str.211, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1078, i32 4}
!407 = !{ptr @ca8210_interrupt_handler._entry, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @ca8210_interrupt_handler._entry_ptr, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.212, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/ieee802154/ca8210.c", i32 688, i32 3}
!411 = !{ptr @.str.213, !410, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @ca8210_reset_send._entry, !410, !"_entry", i1 false, i1 false}
!413 = !{ptr @ca8210_reset_send._entry_ptr, !410, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.214, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/ieee802154/ca8210.c", i32 694, i32 2}
!416 = !{ptr @ca8210_reset_send.__UNIQUE_ID_ddebug342, !415, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!417 = !{ptr @.str.215, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ieee802154/ca8210.c", i32 1224, i32 3}
!419 = !{ptr @.str.216, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @tdme_chipinit._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @tdme_chipinit._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.217, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2742, i32 3}
!424 = !{ptr @.str.218, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @ca8210_config_extern_clk._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @ca8210_config_extern_clk._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.220, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2760, i32 4}
!429 = !{ptr @ca8210_config_extern_clk._entry.219, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @ca8210_config_extern_clk._entry_ptr.221, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.223, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2765, i32 3}
!433 = !{ptr @ca8210_config_extern_clk._entry.222, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @ca8210_config_extern_clk._entry_ptr.224, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.225, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2799, i32 3}
!437 = !{ptr @.str.226, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @ca8210_register_ext_clock._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @ca8210_register_ext_clock._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.228, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2805, i32 3}
!442 = !{ptr @ca8210_register_ext_clock._entry.227, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @ca8210_register_ext_clock._entry_ptr.229, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.231, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2810, i32 3}
!446 = !{ptr @ca8210_register_ext_clock._entry.230, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @ca8210_register_ext_clock._entry_ptr.232, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.233, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3057, i32 2}
!450 = !{ptr @.str.234, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @ca8210_remove._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @ca8210_remove._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.236, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3072, i32 3}
!455 = !{ptr @ca8210_remove._entry.235, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @ca8210_remove._entry_ptr.237, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.239, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3084, i32 4}
!459 = !{ptr @ca8210_remove._entry.238, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @ca8210_remove._entry_ptr.240, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.241, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/net/ieee802154/ca8210.c", i32 2830, i32 2}
!463 = !{ptr @.str.242, !462, !"<string literal>", i1 false, i1 false}
!464 = !{ptr @ca8210_unregister_ext_clock._entry, !462, !"_entry", i1 false, i1 false}
!465 = !{ptr @ca8210_unregister_ext_clock._entry_ptr, !462, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.243, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3043, i32 2}
!468 = !{ptr @.str.244, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @ca8210_test_interface_clear._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @ca8210_test_interface_clear._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @ca8210_of_ids, !472, !"ca8210_of_ids", i1 false, i1 false}
!472 = !{!"../drivers/net/ieee802154/ca8210.c", i32 3216, i32 34}
!473 = !{!"sp"}
!474 = !{i32 1, !"wchar_size", i32 2}
!475 = !{i32 1, !"min_enum_size", i32 4}
!476 = !{i32 8, !"branch-target-enforcement", i32 0}
!477 = !{i32 8, !"sign-return-address", i32 0}
!478 = !{i32 8, !"sign-return-address-all", i32 0}
!479 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!480 = !{i32 7, !"uwtable", i32 1}
!481 = !{i32 7, !"frame-pointer", i32 2}
!482 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!483 = !{i8 0, i8 2}
!484 = !{i64 2148409888, i64 2148409893, i64 2148409906, i64 2148409950, i64 2148409984, i64 2148410005}
!485 = !{ptr @ca8210_test_int_driver_write}
!486 = !{!"auto-init"}
!487 = !{i64 2152914832, i64 2152914857}
!488 = !{i64 2152914151, i64 2152914176}
!489 = !{!"branch_weights", i32 2000, i32 1}
!490 = !{i64 5409706}
!491 = !{i64 5409903}
!492 = !{i64 2152895136}
