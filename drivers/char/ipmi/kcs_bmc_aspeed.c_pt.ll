; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/kcs_bmc_aspeed.c_pt.bc'
source_filename = "../drivers/char/ipmi/kcs_bmc_aspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kcs_ioreg = type { i32, i32, i32 }
%struct.kcs_bmc_device_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aspeed_kcs_of_ops = type { ptr, ptr }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kcs_bmc_device = type { %struct.list_head, ptr, i32, %struct.kcs_ioreg, ptr, %struct.spinlock, ptr }
%struct.aspeed_kcs_bmc = type { %struct.kcs_bmc_device, ptr, %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i32, i32 }
%struct.anon.69 = type { %struct.spinlock, i8, %struct.timer_list }

@__initcall__kmod_kcs_bmc_aspeed__227_708_ast_kcs_bmc_driver_init6 = internal global ptr @ast_kcs_bmc_driver_init, section ".initcall6.init", align 4
@ast_kcs_bmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_kcs_probe, ptr @aspeed_kcs_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ast_kcs_bmc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ast_kcs_bmc_driver_exit = internal global ptr @ast_kcs_bmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [53 x i8] c"kcs_bmc_aspeed.file=drivers/char/ipmi/kcs_bmc_aspeed\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [30 x i8] c"kcs_bmc_aspeed.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [64 x i8] c"kcs_bmc_aspeed.author=Haiyue Wang <haiyue.wang@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [55 x i8] c"kcs_bmc_aspeed.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [73 x i8] c"kcs_bmc_aspeed.description=Aspeed device interface to the KCS BMC device\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ast-kcs-bmc\00", [20 x i8] zeroinitializer }, align 32
@ast_kcs_bmc_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-kcs-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v1_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-kcs-bmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v1_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-kcs-bmc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v2_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-kcs-bmc-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_v2_ops }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2400-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2500-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2600-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 584, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported LPC device binding\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aspeed_kcs_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/ipmi/kcs_bmc_aspeed.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry_ptr = internal global ptr @aspeed_kcs_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,lpc-interrupts\00", [42 x i8] zeroinitializer }, align 32
@ast_kcs_bmc_ioregs = internal constant { [4 x %struct.kcs_ioreg], [48 x i8] } { [4 x %struct.kcs_ioreg] [%struct.kcs_ioreg { i32 36, i32 48, i32 60 }, %struct.kcs_ioreg { i32 40, i32 52, i32 64 }, %struct.kcs_ioreg { i32 44, i32 56, i32 68 }, %struct.kcs_ioreg { i32 276, i32 280, i32 284 }], [48 x i8] zeroinitializer }, align 32
@aspeed_kcs_ops = internal constant { %struct.kcs_bmc_device_ops, [16 x i8] } { %struct.kcs_bmc_device_ops { ptr @aspeed_kcs_irq_mask_update, ptr @aspeed_kcs_inb, ptr @aspeed_kcs_outb, ptr @aspeed_kcs_updateb }, [16 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 619, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't get regmap\0A\00", [43 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry_ptr.12 = internal global ptr @aspeed_kcs_probe._entry.10, section ".printk_index", align 4
@aspeed_kcs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->obe.lock\00", [16 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&priv->obe.timer)\00", [45 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 652, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register channel %d: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry_ptr.19 = internal global ptr @aspeed_kcs_probe._entry.16, section ".printk_index", align 4
@aspeed_kcs_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.6, i32 657, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Initialised channel %d at 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aspeed_kcs_probe._entry_ptr.23 = internal global ptr @aspeed_kcs_probe._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_read() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regmap_write() failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"regmap_update_bits() failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aspeed_kcs_set_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 264, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Channel 3 only supports inferred status IO address\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_kcs_set_address\00", [41 x i8] zeroinitializer }, align 32
@aspeed_kcs_set_address._entry_ptr = internal global ptr @aspeed_kcs_set_address._entry, section ".printk_index", align 4
@aspeed_kcs_config_upstream_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 349, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SerIRQ configuration not supported on KCS channel %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"aspeed_kcs_config_upstream_irq\00", [33 x i8] zeroinitializer }, align 32
@aspeed_kcs_config_upstream_irq._entry_ptr = internal global ptr @aspeed_kcs_config_upstream_irq._entry, section ".printk_index", align 4
@aspeed_kcs_irq_mask_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014aspeed-kcs-bmc: %s: Unsupported channel: %d\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aspeed_kcs_irq_mask_update\00", [37 x i8] zeroinitializer }, align 32
@aspeed_kcs_irq_mask_update._entry_ptr = internal global ptr @aspeed_kcs_irq_mask_update._entry, section ".printk_index", align 4
@aspeed_kcs_enable_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.33, ptr @.str.6, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aspeed_kcs_enable_channel\00", [38 x i8] zeroinitializer }, align 32
@aspeed_kcs_enable_channel._entry_ptr = internal global ptr @aspeed_kcs_enable_channel._entry, section ".printk_index", align 4
@of_v1_ops = internal constant { %struct.aspeed_kcs_of_ops, [24 x i8] } { %struct.aspeed_kcs_of_ops { ptr @aspeed_kcs_of_v1_get_channel, ptr @aspeed_kcs_of_v1_get_io_address }, [24 x i8] zeroinitializer }, align 32
@of_v2_ops = internal constant { %struct.aspeed_kcs_of_ops, [24 x i8] } { %struct.aspeed_kcs_of_ops { ptr @aspeed_kcs_of_v2_get_channel, ptr @aspeed_kcs_of_v2_get_io_address }, [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kcs_chan\00", [23 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v1_get_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 488, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no valid 'kcs_chan' configured\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aspeed_kcs_of_v1_get_channel\00", [35 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v1_get_channel._entry_ptr = internal global ptr @aspeed_kcs_of_v1_get_channel._entry, section ".printk_index", align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kcs_addr\00", [23 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v1_get_io_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 502, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no valid 'kcs_addr' configured\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aspeed_kcs_of_v1_get_io_address\00", [32 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v1_get_io_address._entry_ptr = internal global ptr @aspeed_kcs_of_v1_get_io_address._entry, section ".printk_index", align 4
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aspeed,lpc-io-reg\00", [46 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v2_get_io_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 551, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No valid 'aspeed,lpc-io-reg' configured\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aspeed_kcs_of_v2_get_io_address\00", [32 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v2_get_io_address._entry_ptr = internal global ptr @aspeed_kcs_of_v2_get_io_address._entry, section ".printk_index", align 4
@aspeed_kcs_of_v2_get_io_address._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.6, i32 556, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid data address in 'aspeed,lpc-io-reg'\0A\00", [51 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v2_get_io_address._entry_ptr.45 = internal global ptr @aspeed_kcs_of_v2_get_io_address._entry.43, section ".printk_index", align 4
@aspeed_kcs_of_v2_get_io_address._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.6, i32 561, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid status address in 'aspeed,lpc-io-reg'\0A\00", [49 x i8] zeroinitializer }, align 32
@aspeed_kcs_of_v2_get_io_address._entry_ptr.48 = internal global ptr @aspeed_kcs_of_v2_get_io_address._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 48, i64 52, i64 56, i64 280]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"ast_kcs_bmc_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 700, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 702, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"ast_kcs_bmc_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 691, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 581, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 582, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 583, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 584, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 601, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"ast_kcs_bmc_ioregs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 471, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"aspeed_kcs_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 443, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 619, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 623, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 625, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 652, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 656, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 148, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 159, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 211, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 263, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 347, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 437, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 376, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"of_v1_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 681, i32 39 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"of_v2_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 686, i32 39 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 486, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 488, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 500, i32 47 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 502, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 548, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 551, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 556, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [38 x i8] c"../drivers/char/ipmi/kcs_bmc_aspeed.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 561, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_ast_kcs_bmc_driver_exit, ptr @__initcall__kmod_kcs_bmc_aspeed__227_708_ast_kcs_bmc_driver_init6, ptr @aspeed_kcs_config_upstream_irq._entry, ptr @aspeed_kcs_config_upstream_irq._entry_ptr, ptr @aspeed_kcs_enable_channel._entry, ptr @aspeed_kcs_enable_channel._entry_ptr, ptr @aspeed_kcs_irq_mask_update._entry, ptr @aspeed_kcs_irq_mask_update._entry_ptr, ptr @aspeed_kcs_of_v1_get_channel._entry, ptr @aspeed_kcs_of_v1_get_channel._entry_ptr, ptr @aspeed_kcs_of_v1_get_io_address._entry, ptr @aspeed_kcs_of_v1_get_io_address._entry_ptr, ptr @aspeed_kcs_of_v2_get_io_address._entry, ptr @aspeed_kcs_of_v2_get_io_address._entry.43, ptr @aspeed_kcs_of_v2_get_io_address._entry.46, ptr @aspeed_kcs_of_v2_get_io_address._entry_ptr, ptr @aspeed_kcs_of_v2_get_io_address._entry_ptr.45, ptr @aspeed_kcs_of_v2_get_io_address._entry_ptr.48, ptr @aspeed_kcs_probe._entry, ptr @aspeed_kcs_probe._entry.10, ptr @aspeed_kcs_probe._entry.16, ptr @aspeed_kcs_probe._entry.20, ptr @aspeed_kcs_probe._entry_ptr, ptr @aspeed_kcs_probe._entry_ptr.12, ptr @aspeed_kcs_probe._entry_ptr.19, ptr @aspeed_kcs_probe._entry_ptr.23, ptr @aspeed_kcs_set_address._entry, ptr @aspeed_kcs_set_address._entry_ptr, ptr @ast_kcs_bmc_driver_exit, ptr @ast_kcs_bmc_driver, ptr @.str, ptr @ast_kcs_bmc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ast_kcs_bmc_ioregs, ptr @aspeed_kcs_ops, ptr @.str.11, ptr @aspeed_kcs_probe.__key, ptr @.str.13, ptr @aspeed_kcs_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @of_v1_ops, ptr @of_v2_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_kcs_bmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_kcs_bmc_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_kcs_bmc_ioregs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_set_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_config_upstream_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_irq_mask_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_enable_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_v1_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_v2_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_of_v1_get_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_of_v1_get_io_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_of_v2_get_io_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_of_v2_get_io_address._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_kcs_of_v2_get_io_address._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_kcs_bmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ast_kcs_bmc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ast_kcs_bmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ast_kcs_bmc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %upstream_irq = alloca [2 x i32], align 4
  %addrs = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %upstream_irq) #7
  %0 = ptrtoint ptr %upstream_irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %upstream_irq, align 4, !annotation !125
  %1 = getelementptr inbounds [2 x i32], ptr %upstream_irq, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addrs) #7
  %3 = ptrtoint ptr %addrs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %addrs, align 4, !annotation !125
  %4 = getelementptr inbounds [2 x i32], ptr %addrs, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !125
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %parent = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %call = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %9, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call8, align 4
  %call12 = tail call i32 %11(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %get_io_address = getelementptr inbounds %struct.aspeed_kcs_of_ops, ptr %call8, i32 0, i32 1
  %12 = ptrtoint ptr %get_io_address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_io_address, align 4
  %call15 = call i32 %13(ptr noundef %pdev, ptr noundef nonnull %addrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef nonnull %upstream_irq, i32 noundef 2, i32 noundef 0) #7
  %16 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool23.not = icmp sgt i32 %call.i, -1
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %if.end18.cleanup_crit_edge [
    i32 -22, label %if.end18.if.end27_crit_edge
    i32 0, label %if.end18.if.end27_crit_edge166
  ]

if.end18.if.end27_crit_edge166:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end18.if.end27_crit_edge, %if.end18.if.end27_crit_edge166
  %call.i157 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #7
  %tobool31.not = icmp eq ptr %call.i157, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %dev36 = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i157, i32 0, i32 1
  %18 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %dev36, align 4
  %channel37 = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i157, i32 0, i32 2
  %19 = ptrtoint ptr %channel37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call12, ptr %channel37, align 4
  %ioreg = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i157, i32 0, i32 3
  %sub = add nsw i32 %call12, -1
  %arrayidx = getelementptr [4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 %sub
  %20 = call ptr @memcpy(ptr %ioreg, ptr %arrayidx, i32 12)
  %ops38 = getelementptr inbounds %struct.kcs_bmc_device, ptr %call.i157, i32 0, i32 4
  %21 = ptrtoint ptr %ops38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @aspeed_kcs_ops, ptr %ops38, align 4
  %parent40 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %parent40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent40, align 8
  %of_node41 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %of_node41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node41, align 8
  %call42 = call ptr @syscon_node_to_regmap(ptr noundef %25) #7
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %call.i157, i32 0, i32 1
  %26 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call42, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end48, label %do.body51

do.end48:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

do.body51:                                        ; preds = %if.end33
  %obe = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %call.i157, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %obe, ptr noundef nonnull @.str.13, ptr noundef nonnull @aspeed_kcs_probe.__key, i16 noundef signext 3) #7
  %remove = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %call.i157, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %remove to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %remove, align 4
  %timer = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %call.i157, i32 0, i32 3, i32 2
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @aspeed_kcs_check_obe, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @aspeed_kcs_probe.__key.14) #7
  %28 = add nsw i32 %call15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %29 = icmp ult i32 %28, -2
  br i1 %29, label %do.end.i, label %if.end22.i, !prof !126

do.end.i:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 231, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22.i:                                       ; preds = %do.body51
  %30 = ptrtoint ptr %channel37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel37, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %31, label %if.end22.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb38.i
    i32 3, label %sw.bb58.i
    i32 4, label %sw.bb74.i
  ]

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end22.i
  %33 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 16, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 4
  %37 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addrs, align 4
  %shr.i = lshr i32 %38, 8
  %call26.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 28, i32 noundef %shr.i) #7
  %39 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map, align 4
  %41 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addrs, align 4
  %and.i = and i32 %42, 255
  %call29.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 32, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp30.i = icmp eq i32 %call15, 2
  br i1 %cmp30.i, label %if.then31.i, label %sw.bb.i.if.end64_crit_edge

sw.bb.i.if.end64_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then31.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %4, align 4
  %call.i121.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 288, i32 noundef 65535, i32 noundef %46, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 4
  %call.i122.i = call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 256, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end64

sw.bb38.i:                                        ; preds = %if.end22.i
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %call.i123.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 16, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map, align 4
  %53 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addrs, align 4
  %shr43.i = lshr i32 %54, 8
  %call44.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 28, i32 noundef %shr43.i) #7
  %55 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map, align 4
  %57 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %addrs, align 4
  %and47.i = and i32 %58, 255
  %call48.i = call i32 @regmap_write(ptr noundef %56, i32 noundef 32, i32 noundef %and47.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp49.i = icmp eq i32 %call15, 2
  br i1 %cmp49.i, label %if.then50.i, label %sw.bb38.i.if.end64_crit_edge

sw.bb38.i.if.end64_crit_edge:                     ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then50.i:                                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map, align 4
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %4, align 4
  %shl53.i = shl i32 %62, 16
  %call.i124.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 288, i32 noundef -65536, i32 noundef %shl53.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 4
  %call.i125.i = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 256, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end64

sw.bb58.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call15)
  %cmp59.i = icmp eq i32 %call15, 2
  br i1 %cmp59.i, label %do.end63.i, label %if.end65.i

do.end63.i:                                       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end65.i:                                       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map, align 4
  %69 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %addrs, align 4
  %shr68.i = lshr i32 %70, 8
  %call69.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 20, i32 noundef %shr68.i) #7
  %71 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map, align 4
  %73 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addrs, align 4
  %and72.i = and i32 %74, 255
  %call73.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 24, i32 noundef %and72.i) #7
  br label %if.end64

sw.bb74.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp75.i = icmp eq i32 %call15, 1
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 4
  br i1 %cmp75.i, label %if.then76.i, label %if.else.i

if.then76.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addrs, align 4
  %add.i = shl i32 %78, 16
  %shl79.i = add i32 %add.i, 65536
  %or.i = or i32 %shl79.i, %78
  %call81.i = call i32 @regmap_write(ptr noundef %76, i32 noundef 272, i32 noundef %or.i) #7
  br label %if.end64

if.else.i:                                        ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %4, align 4
  %shl84.i = shl i32 %80, 16
  %81 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addrs, align 4
  %or86.i = or i32 %shl84.i, %82
  %call87.i = call i32 @regmap_write(ptr noundef %76, i32 noundef 272, i32 noundef %or86.i) #7
  br label %if.end64

if.end64:                                         ; preds = %if.else.i, %if.then76.i, %if.end65.i, %if.then50.i, %sw.bb38.i.if.end64_crit_edge, %if.then31.i, %sw.bb.i.if.end64_crit_edge
  %call.i158 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp.i159 = icmp slt i32 %call.i158, 0
  br i1 %cmp.i159, label %if.end64.cleanup_crit_edge, label %if.end.i

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end64
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %83 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.aspeed_kcs_config_downstream_irq.exit_crit_edge

if.end.i.aspeed_kcs_config_downstream_irq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_kcs_config_downstream_irq.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  br label %aspeed_kcs_config_downstream_irq.exit

aspeed_kcs_config_downstream_irq.exit:            ; preds = %if.end.i.i, %if.end.i.aspeed_kcs_config_downstream_irq.exit_crit_edge
  %retval.0.i.i = phi ptr [ %86, %if.end.i.i ], [ %84, %if.end.i.aspeed_kcs_config_downstream_irq.exit_crit_edge ]
  %call.i.i160 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i158, ptr noundef nonnull @aspeed_kcs_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.i, ptr noundef nonnull %call.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %tobool66.not = icmp eq i32 %call.i.i160, 0
  br i1 %tobool66.not, label %if.end68, label %aspeed_kcs_config_downstream_irq.exit.cleanup_crit_edge

aspeed_kcs_config_downstream_irq.exit.cleanup_crit_edge: ; preds = %aspeed_kcs_config_downstream_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %aspeed_kcs_config_downstream_irq.exit
  br i1 %tobool23.not, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.end68
  %87 = ptrtoint ptr %upstream_irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %upstream_irq, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %1, align 4
  %call73 = call fastcc i32 @aspeed_kcs_config_upstream_irq(ptr noundef nonnull %call.i157, i32 noundef %88, i32 noundef %90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then70.cleanup_crit_edge, label %if.then70.if.end78_crit_edge

if.then70.if.end78_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %upstream_irq77 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %call.i157, i32 0, i32 2
  %91 = ptrtoint ptr %upstream_irq77 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %upstream_irq77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then70.if.end78_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %92 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i157, ptr %driver_data.i.i, align 4
  call void @aspeed_kcs_irq_mask_update(ptr noundef nonnull %call.i157, i8 noundef zeroext 3, i8 noundef zeroext 0)
  call fastcc void @aspeed_kcs_enable_channel(ptr noundef nonnull %call.i157, i1 noundef zeroext true)
  %call80 = call i32 @kcs_bmc_add_device(ptr noundef nonnull %call.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  %93 = ptrtoint ptr %channel37 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %channel37, align 4
  br i1 %tobool81.not, label %do.end91, label %do.end85

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %94, i32 noundef %call80) #10
  br label %cleanup

do.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %addrs, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %94, i32 noundef %96) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %do.end85, %if.then70.cleanup_crit_edge, %aspeed_kcs_config_downstream_irq.exit.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end63.i, %if.end22.i.cleanup_crit_edge, %do.end.i, %do.end48, %if.end27.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end48 ], [ %call80, %do.end85 ], [ 0, %do.end91 ], [ -19, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ %call.i.i160, %aspeed_kcs_config_downstream_irq.exit.cleanup_crit_edge ], [ %call73, %if.then70.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end63.i ], [ -22, %if.end22.i.cleanup_crit_edge ], [ %call.i158, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addrs) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %upstream_irq) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @kcs_bmc_remove_device(ptr noundef %1) #7
  tail call fastcc void @aspeed_kcs_enable_channel(ptr noundef %1, i1 noundef zeroext false)
  tail call void @aspeed_kcs_irq_mask_update(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0)
  %obe = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %obe) #7
  %remove = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %remove, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %obe) #7
  %timer = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %1, i32 0, i32 3, i32 2
  %call6 = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_kcs_check_obe(ptr noundef %timer) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -140
  %obe = getelementptr i8, ptr %timer, i32 -48
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %obe) #7
  %remove = getelementptr i8, ptr %timer, i32 -4
  %0 = ptrtoint ptr %remove to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remove, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %obe, i32 noundef %call3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %str10 = getelementptr i8, ptr %timer, i32 -116
  %2 = ptrtoint ptr %str10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %str10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val.i, align 4
  %map.i = getelementptr i8, ptr %timer, i32 -60
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %3, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cond26.i = icmp eq i32 %call1.i, 0
  br i1 %cond26.i, label %aspeed_kcs_inb.exit, label %aspeed_kcs_inb.exit.thread, !prof !128

aspeed_kcs_inb.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %call1.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end18

aspeed_kcs_inb.exit:                              ; preds = %if.end
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %aspeed_kcs_inb.exit.if.end18_crit_edge, label %if.then14

aspeed_kcs_inb.exit.if.end18_crit_edge:           ; preds = %aspeed_kcs_inb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then14:                                        ; preds = %aspeed_kcs_inb.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 50
  %call15 = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %obe, i32 noundef %call3) #7
  br label %cleanup

if.end18:                                         ; preds = %aspeed_kcs_inb.exit.if.end18_crit_edge, %aspeed_kcs_inb.exit.thread
  call void @_raw_spin_unlock_irqrestore(ptr noundef %obe, i32 noundef %call3) #7
  %call22 = call i32 @kcs_bmc_handle_event(ptr noundef %add.ptr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then14, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_kcs_config_upstream_irq(ptr nocapture noundef %priv, i32 noundef %id, i32 noundef %dt_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %id)
  %cmp = icmp ugt i32 %id, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %dt_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %dt_type, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end3_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
  ]

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.if.end3_crit_edge
  %switch61 = phi i1 [ true, %sw.bb2.i ], [ true, %sw.bb1.i ], [ false, %if.end.if.end3_crit_edge ]
  %cmp19 = phi i32 [ 0, %sw.bb2.i ], [ 32768, %sw.bb1.i ], [ 0, %if.end.if.end3_crit_edge ]
  %cmp10 = phi i32 [ 0, %sw.bb2.i ], [ 8192, %sw.bb1.i ], [ 0, %if.end.if.end3_crit_edge ]
  %retval.0.i.ph = phi i32 [ 0, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 12, %if.end.if.end3_crit_edge ]
  %upstream_irq = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %upstream_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %upstream_irq, align 4
  %id5 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %priv, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %id5, align 4
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %priv, i32 0, i32 2
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %4, label %do.end [
    i32 1, label %if.end3.cleanup_crit_edge
    i32 2, label %sw.bb
    i32 3, label %sw.bb12
    i32 4, label %sw.bb24
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  br i1 %switch61, label %if.end9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 %id, 16
  %or = or i32 %cmp10, %shl
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 128, i32 noundef 991232, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb12:                                          ; preds = %if.end3
  br i1 %switch61, label %if.end17, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %shl18 = shl nuw nsw i32 %id, 20
  %or21 = or i32 %cmp19, %shl18
  %map22 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %map22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map22, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 128, i32 noundef 15761408, i32 noundef %or21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb24:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %shl25 = shl nuw nsw i32 %id, 4
  %or27 = or i32 %retval.0.i.ph, %shl25
  %map28 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %priv, i32 0, i32 1
  %10 = ptrtoint ptr %map28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map28, align 4
  %call.i63 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 260, i32 noundef 254, i32 noundef %or27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.kcs_bmc_device, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.29, i32 noundef %4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb24, %if.end17, %sw.bb12.cleanup_crit_edge, %if.end9, %sw.bb.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ 0, %sw.bb24 ], [ 0, %if.end17 ], [ 0, %if.end9 ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_kcs_irq_mask_update(ptr noundef %kcs_bmc, i8 noundef zeroext %mask, i8 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %mask to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %0 = and i8 %state, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool3.not = icmp eq i8 %0, 0
  %timer7 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 3, i32 2
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 50
  %call5 = tail call i32 @mod_timer(ptr noundef %timer7, i32 noundef %add) #7
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @del_timer(ptr noundef %timer7) #7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4, %entry.if.end9_crit_edge
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.cleanup42_crit_edge, label %if.then13

if.end9.cleanup42_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.then13:                                        ; preds = %if.end9
  %2 = and i8 %state, 2
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %4, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
    i32 3, label %sw.bb27
    i32 4, label %sw.bb33
  ]

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %mul = zext i8 %2 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8, i32 noundef 2, i32 noundef %mul, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup42

sw.bb21:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %map22 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %8 = ptrtoint ptr %map22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map22, align 4
  %10 = shl nuw nsw i8 %2, 1
  %mul25 = zext i8 %10 to i32
  %call.i55 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 4, i32 noundef %mul25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup42

sw.bb27:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %map28 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %11 = ptrtoint ptr %map28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map28, align 4
  %13 = shl nuw nsw i8 %2, 2
  %mul31 = zext i8 %13 to i32
  %call.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8, i32 noundef 8, i32 noundef %mul31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup42

sw.bb33:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %map34 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %14 = ptrtoint ptr %map34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map34, align 4
  %mul37 = zext i8 %2 to i32
  %call.i57 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 256, i32 noundef 2, i32 noundef %mul37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup42

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %4) #10
  br label %cleanup42

cleanup42:                                        ; preds = %do.end, %sw.bb33, %sw.bb27, %sw.bb21, %sw.bb, %if.end9.cleanup42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_kcs_enable_channel(ptr nocapture noundef readonly %kcs_bmc, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
    i32 4, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %mul = select i1 %enable, i32 32, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 32, i32 noundef %mul, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %map3 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %5 = ptrtoint ptr %map3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map3, align 4
  %mul6 = select i1 %enable, i32 64, i32 0
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 64, i32 noundef %mul6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %map9 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %7 = ptrtoint ptr %map9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map9, align 4
  %mul12 = select i1 %enable, i32 128, i32 0
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 128, i32 noundef %mul12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %map9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map9, align 4
  %mul17 = select i1 %enable, i32 4, i32 0
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 16, i32 noundef 4, i32 noundef %mul17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %map20 = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %11 = ptrtoint ptr %map20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map20, align 4
  %conv22 = zext i1 %enable to i32
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 256, i32 noundef 1, i32 noundef %conv22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33, i32 noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb19, %sw.bb8, %sw.bb2, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @aspeed_kcs_inb(ptr nocapture noundef readonly %kcs_bmc, i32 noundef %reg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %reg, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cond26 = icmp eq i32 %call1, 0
  br i1 %cond26, label %cond.true, label %do.end, !prof !128

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 148, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %call1) #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %conv = trunc i32 %4 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end
  %cond = phi i8 [ %conv, %cond.true ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i8 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_kcs_outb(ptr nocapture noundef readonly %kcs_bmc, i32 noundef %reg, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %conv = zext i8 %data to i32
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %reg, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !128

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 159, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %reg, label %if.end.cleanup_crit_edge [
    i32 48, label %if.end.sw.epilog_crit_edge
    i32 52, label %if.end.sw.epilog_crit_edge62
    i32 56, label %if.end.sw.epilog_crit_edge63
    i32 280, label %if.end.sw.epilog_crit_edge64
  ]

if.end.sw.epilog_crit_edge64:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge63:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge62:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge62, %if.end.sw.epilog_crit_edge63, %if.end.sw.epilog_crit_edge64
  %upstream_irq = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 2
  %3 = ptrtoint ptr %upstream_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %upstream_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp21.not = icmp eq i32 %4, 1
  br i1 %cmp21.not, label %if.end24, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %channel = getelementptr inbounds %struct.kcs_bmc_device, ptr %kcs_bmc, i32 0, i32 2
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %6, label %if.end24.cleanup_crit_edge [
    i32 1, label %sw.bb25
    i32 2, label %sw.bb35
    i32 3, label %sw.bb38
    i32 4, label %sw.bb41
  ]

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb25:                                          ; preds = %if.end24
  %id = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %9, label %sw.bb25.cleanup_crit_edge [
    i32 12, label %sw.bb27
    i32 1, label %sw.bb30
  ]

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb27:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 112, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  %call.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 112, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb35:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %call.i59 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 128, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb38:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 4
  %call.i60 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 128, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb41:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 260, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb41, %sw.bb38, %sw.bb35, %sw.bb30, %sw.bb27, %sw.bb25.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_kcs_updateb(ptr nocapture noundef readonly %kcs_bmc, i32 noundef %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.aspeed_kcs_bmc, ptr %kcs_bmc, i32 0, i32 1
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %conv = zext i8 %mask to i32
  %conv1 = zext i8 %val to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %reg, i32 noundef %conv, i32 noundef %conv1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !128

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 211, i32 noundef 9, ptr noundef nonnull @.str.26, i32 noundef %call.i) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcs_bmc_handle_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_irq(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kcs_bmc_handle_event(ptr noundef %arg) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcs_bmc_remove_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v1_get_channel(ptr noundef %pdev) #2 align 64 {
entry:
  %channel = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #7
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %channel, align 4, !annotation !125
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.34, ptr noundef nonnull %channel, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = add i32 %4, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %5)
  %6 = icmp ult i32 %5, -4
  br i1 %6, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %4, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v1_get_io_address(ptr noundef %pdev, ptr noundef %addrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.37, ptr noundef %addrs, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp ugt i32 %3, 65535
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v2_get_channel(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %ioreg = alloca %struct.kcs_ioreg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ioreg) #7
  %0 = getelementptr inbounds %struct.kcs_ioreg, ptr %ioreg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.kcs_ioreg, ptr %ioreg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__of_get_address(ptr noundef %3, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  %6 = ptrtoint ptr %ioreg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ioreg, align 4
  %call.i29 = tail call ptr @__of_get_address(ptr noundef %3, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool3.not = icmp eq ptr %call.i29, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i29, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %0, align 4
  %call.i30 = tail call ptr @__of_get_address(ptr noundef %3, i32 noundef 2, i32 noundef -1, ptr noundef null, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call.i30, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %call.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i30, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %1, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @ast_kcs_bmc_ioregs, ptr noundef nonnull dereferenceable(12) %ioreg, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool13.not = icmp eq i32 %bcmp, 0
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %for.inc

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end10
  %bcmp.1 = call i32 @bcmp(ptr noundef dereferenceable(12) getelementptr inbounds ([4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 1), ptr noundef nonnull dereferenceable(12) %ioreg, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.1)
  %tobool13.not.1 = icmp eq i32 %bcmp.1, 0
  br i1 %tobool13.not.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %bcmp.2 = call i32 @bcmp(ptr noundef dereferenceable(12) getelementptr inbounds ([4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 2), ptr noundef nonnull dereferenceable(12) %ioreg, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.2)
  %tobool13.not.2 = icmp eq i32 %bcmp.2, 0
  br i1 %tobool13.not.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %bcmp.3 = call i32 @bcmp(ptr noundef dereferenceable(12) getelementptr inbounds ([4 x %struct.kcs_ioreg], ptr @ast_kcs_bmc_ioregs, i32 0, i32 3), ptr noundef nonnull dereferenceable(12) %ioreg, i32 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.3)
  %tobool13.not.3 = icmp eq i32 %bcmp.3, 0
  %spec.select = select i1 %tobool13.not.3, i32 4, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.inc.2, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 2, %for.inc.cleanup_crit_edge ], [ 3, %for.inc.1.cleanup_crit_edge ], [ %spec.select, %for.inc.2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ioreg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_kcs_of_v2_get_io_address(ptr noundef %pdev, ptr noundef %addrs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef %addrs, i32 noundef 1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp2 = icmp ugt i32 %3, 65535
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end8

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp9 = icmp eq i32 %call, 2
  br i1 %cmp9, label %land.lhs.true, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %arrayidx10 = getelementptr i32, ptr %addrs, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %5)
  %cmp11 = icmp ugt i32 %5, 65535
  br i1 %cmp11, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.41, %entry.cleanup.sink.split_crit_edge ], [ @.str.44, %if.end.cleanup.sink.split_crit_edge ], [ @.str.47, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.47.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_kcs_bmc_aspeed__227_708_ast_kcs_bmc_driver_init6, !1, !"__initcall__kmod_kcs_bmc_aspeed__227_708_ast_kcs_bmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 708, i32 1}
!2 = !{ptr @__exitcall_ast_kcs_bmc_driver_exit, !1, !"__exitcall_ast_kcs_bmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file228, !4, !"__UNIQUE_ID_file228", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 710, i32 1}
!5 = !{ptr @__UNIQUE_ID_license229, !4, !"__UNIQUE_ID_license229", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 711, i32 1}
!8 = !{ptr @__UNIQUE_ID_author231, !9, !"__UNIQUE_ID_author231", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 712, i32 1}
!10 = !{ptr @__UNIQUE_ID_description232, !11, !"__UNIQUE_ID_description232", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 713, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 702, i32 21}
!14 = !{ptr @ast_kcs_bmc_driver, !15, !"ast_kcs_bmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 700, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 581, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 582, i32 35}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 583, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 584, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @aspeed_kcs_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @aspeed_kcs_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 601, i32 38}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 619, i32 3}
!34 = !{ptr @aspeed_kcs_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @aspeed_kcs_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @aspeed_kcs_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 623, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @aspeed_kcs_probe.__key.14, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 625, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 652, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @aspeed_kcs_probe._entry.16, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @aspeed_kcs_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 656, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aspeed_kcs_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @aspeed_kcs_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ast_kcs_bmc_ioregs, !53, !"ast_kcs_bmc_ioregs", i1 false, i1 false}
!53 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 471, i32 31}
!54 = !{ptr @aspeed_kcs_ops, !55, !"aspeed_kcs_ops", i1 false, i1 false}
!55 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 443, i32 40}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 148, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 159, i32 2}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 211, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 263, i32 4}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @aspeed_kcs_set_address._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @aspeed_kcs_set_address._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 347, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @aspeed_kcs_config_upstream_irq._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @aspeed_kcs_config_upstream_irq._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 437, i32 4}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @aspeed_kcs_irq_mask_update._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @aspeed_kcs_irq_mask_update._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 376, i32 3}
!79 = !{ptr @aspeed_kcs_enable_channel._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @aspeed_kcs_enable_channel._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ast_kcs_bmc_match, !82, !"ast_kcs_bmc_match", i1 false, i1 false}
!82 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 691, i32 34}
!83 = !{ptr @of_v1_ops, !84, !"of_v1_ops", i1 false, i1 false}
!84 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 681, i32 39}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 486, i32 32}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 488, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @aspeed_kcs_of_v1_get_channel._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @aspeed_kcs_of_v1_get_channel._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 500, i32 47}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 502, i32 3}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @aspeed_kcs_of_v1_get_io_address._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @aspeed_kcs_of_v1_get_io_address._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @of_v2_ops, !100, !"of_v2_ops", i1 false, i1 false}
!100 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 686, i32 39}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 548, i32 8}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 551, i32 3}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @aspeed_kcs_of_v2_get_io_address._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @aspeed_kcs_of_v2_get_io_address._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 556, i32 3}
!110 = !{ptr @aspeed_kcs_of_v2_get_io_address._entry.43, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @aspeed_kcs_of_v2_get_io_address._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/char/ipmi/kcs_bmc_aspeed.c", i32 561, i32 3}
!114 = !{ptr @aspeed_kcs_of_v2_get_io_address._entry.46, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @aspeed_kcs_of_v2_get_io_address._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
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
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i8 0, i8 2}
!128 = !{!"branch_weights", i32 2000, i32 1}
