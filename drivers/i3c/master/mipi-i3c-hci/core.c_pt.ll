; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/core.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i3c_master_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hci_cmd_ops = type { ptr, ptr, ptr, ptr }
%struct.hci_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hci_dat_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i3c_hci = type { %struct.i3c_master_controller, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.83, %struct.i3c_bus, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.78, %struct.anon.79, %struct.rw_semaphore }
%struct.anon.78 = type { i32, i32 }
%struct.anon.79 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_ccc_cmd = type { i8, i8, i32, ptr, i32 }
%struct.hci_xfer = type { [4 x i32], i32, i8, ptr, i32, i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr, ptr, i32, i32 }
%struct.i3c_ccc_cmd_dest = type { i8, %struct.i3c_ccc_cmd_payload }
%struct.i3c_ccc_cmd_payload = type { i16, ptr }
%struct.i3c_priv_xfer = type { i8, i16, %union.anon.80, i32 }
%union.anon.80 = type { ptr }
%struct.i2c_dev_desc = type { %struct.i3c_i2c_dev_desc, ptr, ptr, i16, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_mipi_i3c_hci__378_794_i3c_hci_driver_init6 = internal global ptr @i3c_hci_driver_init, section ".initcall6.init", align 4
@i3c_hci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i3c_hci_probe, ptr @i3c_hci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i3c_hci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i3c_hci_driver_exit = internal global ptr @i3c_hci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author379 = internal constant [56 x i8] c"mipi_i3c_hci.author=Nicolas Pitre <npitre@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description380 = internal constant [45 x i8] c"mipi_i3c_hci.description=MIPI I3C HCI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file381 = internal constant [63 x i8] c"mipi_i3c_hci.file=drivers/i3c/master/mipi-i3c-hci/mipi-i3c-hci\00", section ".modinfo", align 1
@__UNIQUE_ID_license382 = internal constant [34 x i8] c"mipi_i3c_hci.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mipi-i3c-hci\00", [19 x i8] zeroinitializer }, align 32
@i3c_hci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mipi-i3c-hci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@i3c_hci_ops = internal constant { %struct.i3c_master_controller_ops, [60 x i8] } { %struct.i3c_master_controller_ops { ptr @i3c_hci_bus_init, ptr @i3c_hci_bus_cleanup, ptr @i3c_hci_attach_i3c_dev, ptr @i3c_hci_reattach_i3c_dev, ptr @i3c_hci_detach_i3c_dev, ptr @i3c_hci_daa, ptr null, ptr @i3c_hci_send_ccc_cmd, ptr @i3c_hci_priv_xfers, ptr @i3c_hci_attach_i2c_dev, ptr @i3c_hci_detach_i2c_dev, ptr @i3c_hci_i2c_xfers, ptr @i3c_hci_request_ibi, ptr @i3c_hci_free_ibi, ptr @i3c_hci_enable_ibi, ptr @i3c_hci_disable_ibi, ptr @i3c_hci_recycle_ibi_slot }, [60 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MIPI I3C HCI v%u.%u r%02u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i3c_hci_init\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/i3c/master/mipi-i3c-hci/core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr = internal global ptr @i3c_hci_init._entry, section ".printk_index", align 4
@i3c_hci_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported HCI version\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.9 = internal global ptr @i3c_hci_init._entry.6, section ".printk_index", align 4
@i3c_hci_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 615, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DAT: %u %u-bytes entries at offset %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.13 = internal global ptr @i3c_hci_init._entry.10, section ".printk_index", align 4
@i3c_hci_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 623, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DCT: %u %u-bytes entries at offset %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.16 = internal global ptr @i3c_hci_init._entry.14, section ".printk_index", align 4
@i3c_hci_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 628, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Ring Headers at offset %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.19 = internal global ptr @i3c_hci_init._entry.17, section ".printk_index", align 4
@i3c_hci_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 633, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PIO section at offset %#x\0A\00", [37 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.22 = internal global ptr @i3c_hci_init._entry.20, section ".printk_index", align 4
@i3c_hci_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 638, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Extended Caps at offset %#x\0A\00", [35 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.25 = internal global ptr @i3c_hci_init._entry.23, section ".printk_index", align 4
@i3c_hci_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 671, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot set BE mode\0A\00", [44 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.28 = internal global ptr @i3c_hci_init._entry.26, section ".printk_index", align 4
@mipi_i3c_hci_cmd_v1 = external dso_local constant %struct.hci_cmd_ops, align 4
@mipi_i3c_hci_cmd_v2 = external dso_local constant %struct.hci_cmd_ops, align 4
@i3c_hci_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 696, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wrong CMD_SIZE capability value\0A\00", [63 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.31 = internal global ptr @i3c_hci_init._entry.29, section ".printk_index", align 4
@i3c_hci_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 704, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PIO mode is stuck\0A\00", [45 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.34 = internal global ptr @i3c_hci_init._entry.32, section ".printk_index", align 4
@mipi_i3c_hci_dma = external dso_local constant %struct.hci_io_ops, align 4
@i3c_hci_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 708, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Using DMA\0A\00", [21 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.37 = internal global ptr @i3c_hci_init._entry.35, section ".printk_index", align 4
@i3c_hci_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 716, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA mode is stuck\0A\00", [45 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.40 = internal global ptr @i3c_hci_init._entry.38, section ".printk_index", align 4
@mipi_i3c_hci_pio = external dso_local constant %struct.hci_io_ops, align 4
@i3c_hci_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 720, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Using PIO\0A\00", [21 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.43 = internal global ptr @i3c_hci_init._entry.41, section ".printk_index", align 4
@i3c_hci_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 725, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"neither DMA nor PIO can be used\0A\00", [63 x i8] zeroinitializer }, align 32
@i3c_hci_init._entry_ptr.46 = internal global ptr @i3c_hci_init._entry.44, section ".printk_index", align 4
@i3c_hci_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 564, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Host Controller Internal Error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i3c_hci_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@i3c_hci_irq_handler._entry_ptr = internal global ptr @i3c_hci_irq_handler._entry, section ".printk_index", align 4
@i3c_hci_irq_handler._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 576, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected INTR_STATUS %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@i3c_hci_irq_handler._entry_ptr.51 = internal global ptr @i3c_hci_irq_handler._entry.49, section ".printk_index", align 4
@mipi_i3c_hci_dat_v1 = external dso_local local_unnamed_addr constant %struct.hci_dat_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 272, i64 512]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"i3c_hci_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 786, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 790, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"i3c_hci_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 780, i32 49 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"i3c_hci_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 524, i32 47 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 593, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 602, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 614, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 622, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 628, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 633, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 638, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 671, i32 5 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 696, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 704, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 708, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 716, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 720, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 725, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 564, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private constant [42 x i8] c"../drivers/i3c/master/mipi-i3c-hci/core.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 576, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 87, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author379, ptr @__UNIQUE_ID_description380, ptr @__UNIQUE_ID_file381, ptr @__UNIQUE_ID_license382, ptr @__exitcall_i3c_hci_driver_exit, ptr @__initcall__kmod_mipi_i3c_hci__378_794_i3c_hci_driver_init6, ptr @i3c_hci_driver_exit, ptr @i3c_hci_init._entry, ptr @i3c_hci_init._entry.10, ptr @i3c_hci_init._entry.14, ptr @i3c_hci_init._entry.17, ptr @i3c_hci_init._entry.20, ptr @i3c_hci_init._entry.23, ptr @i3c_hci_init._entry.26, ptr @i3c_hci_init._entry.29, ptr @i3c_hci_init._entry.32, ptr @i3c_hci_init._entry.35, ptr @i3c_hci_init._entry.38, ptr @i3c_hci_init._entry.41, ptr @i3c_hci_init._entry.44, ptr @i3c_hci_init._entry.6, ptr @i3c_hci_init._entry_ptr, ptr @i3c_hci_init._entry_ptr.13, ptr @i3c_hci_init._entry_ptr.16, ptr @i3c_hci_init._entry_ptr.19, ptr @i3c_hci_init._entry_ptr.22, ptr @i3c_hci_init._entry_ptr.25, ptr @i3c_hci_init._entry_ptr.28, ptr @i3c_hci_init._entry_ptr.31, ptr @i3c_hci_init._entry_ptr.34, ptr @i3c_hci_init._entry_ptr.37, ptr @i3c_hci_init._entry_ptr.40, ptr @i3c_hci_init._entry_ptr.43, ptr @i3c_hci_init._entry_ptr.46, ptr @i3c_hci_init._entry_ptr.9, ptr @i3c_hci_irq_handler._entry, ptr @i3c_hci_irq_handler._entry.49, ptr @i3c_hci_irq_handler._entry_ptr, ptr @i3c_hci_irq_handler._entry_ptr.51, ptr @i3c_hci_driver, ptr @.str, ptr @i3c_hci_of_match, ptr @i3c_hci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @init_completion.__key, ptr @.str.52], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i3c_hci_irq_handler._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mipi_i3c_hci_resume(ptr nocapture noundef readonly %hci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 1
  %0 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %3 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_regs, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #8, !srcloc !104
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mipi_i3c_hci_pio_reset(ptr nocapture noundef readonly %hci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 1
  %0 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 469762048) #8, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mipi_i3c_hci_dct_index_reset(ptr nocapture noundef readonly %hci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 1
  %0 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !104
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i3c_hci_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i3c_hci_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @i3c_hci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2584, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base_regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base_regs, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %if.end7.dev_name.exit_crit_edge ]
  %init_name = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %init_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i, ptr %init_name, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call1) #8, !srcloc !102
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %shr.i = lshr i32 %9, 8
  %10 = trunc i32 %shr.i to i8
  %conv.i = and i8 %10, 15
  %version_major.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %version_major.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %version_major.i, align 4
  %12 = trunc i32 %9 to i8
  %13 = lshr i8 %12, 4
  %version_minor.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 21
  %14 = ptrtoint ptr %version_minor.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %version_minor.i, align 1
  %conv6.i = and i8 %12, 15
  %revision.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 22
  %15 = ptrtoint ptr %revision.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6.i, ptr %revision.i, align 2
  %conv8.i = zext i8 %conv.i to i32
  %conv10.i = zext i8 %13 to i32
  %conv12.i = zext i8 %conv6.i to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, i32 noundef %conv8.i, i32 noundef %conv10.i, i32 noundef %conv12.i) #11
  %and13.i = and i32 %9, -16
  %16 = zext i32 %and13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and13.i, label %do.end16.i [
    i32 256, label %dev_name.exit.sw.epilog.i_crit_edge
    i32 272, label %dev_name.exit.sw.epilog.i_crit_edge60
    i32 512, label %dev_name.exit.sw.epilog.i_crit_edge61
  ]

dev_name.exit.sw.epilog.i_crit_edge61:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

dev_name.exit.sw.epilog.i_crit_edge60:            ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

dev_name.exit.sw.epilog.i_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end16.i:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.7) #11
  br label %cleanup

sw.epilog.i:                                      ; preds = %dev_name.exit.sw.epilog.i_crit_edge, %dev_name.exit.sw.epilog.i_crit_edge60, %dev_name.exit.sw.epilog.i_crit_edge61
  %17 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_regs, align 8
  %add.ptr22.i = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #8, !srcloc !102
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %caps.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 13
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %caps.i, align 8
  %22 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_regs, align 8
  %add.ptr30.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !102
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %and50.i = and i32 %25, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool.not.i48 = icmp eq i32 %and50.i, 0
  br i1 %tobool.not.i48, label %sw.epilog.i.cond.end.i_crit_edge, label %cond.true.i

sw.epilog.i.cond.end.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_regs, align 8
  %add.ptr53.i = getelementptr i8, ptr %27, i32 %and50.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.epilog.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %add.ptr53.i, %cond.true.i ], [ null, %sw.epilog.i.cond.end.i_crit_edge ]
  %DAT_regs.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %DAT_regs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cond.i, ptr %DAT_regs.i, align 4
  %and70.i = lshr i32 %25, 12
  %shr71.i = and i32 %and70.i, 127
  %DAT_entries.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %DAT_entries.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr71.i, ptr %DAT_entries.i, align 8
  %shr89.i = lshr i32 %25, 28
  %DAT_entry_size.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 16
  %30 = ptrtoint ptr %DAT_entry_size.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr89.i, ptr %DAT_entry_size.i, align 4
  %mul.i = shl nuw nsw i32 %shr89.i, 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.11, i32 noundef %shr71.i, i32 noundef %mul.i, i32 noundef %and50.i) #11
  %31 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_regs, align 8
  %add.ptr100.i = getelementptr i8, ptr %32, i32 52
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i) #8, !srcloc !102
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %and120.i = and i32 %34, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool122.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool122.not.i, label %cond.end.i.cond.end127.i_crit_edge, label %cond.true123.i

cond.end.i.cond.end127.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end127.i

cond.true123.i:                                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_regs, align 8
  %add.ptr125.i = getelementptr i8, ptr %36, i32 %and120.i
  br label %cond.end127.i

cond.end127.i:                                    ; preds = %cond.true123.i, %cond.end.i.cond.end127.i_crit_edge
  %cond128.i = phi ptr [ %add.ptr125.i, %cond.true123.i ], [ null, %cond.end.i.cond.end127.i_crit_edge ]
  %DCT_regs.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %DCT_regs.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cond128.i, ptr %DCT_regs.i, align 8
  %and145.i = lshr i32 %34, 12
  %shr146.i = and i32 %and145.i, 127
  %DCT_entries.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 18
  %38 = ptrtoint ptr %DCT_entries.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr146.i, ptr %DCT_entries.i, align 4
  %shr164.i = lshr i32 %34, 28
  %DCT_entry_size.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 19
  %39 = ptrtoint ptr %DCT_entry_size.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr164.i, ptr %DCT_entry_size.i, align 8
  %mul172.i = shl nuw nsw i32 %shr164.i, 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.15, i32 noundef %shr146.i, i32 noundef %mul172.i, i32 noundef %and120.i) #11
  %40 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_regs, align 8
  %add.ptr176.i = getelementptr i8, ptr %41, i32 56
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr176.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  %43 = and i32 %42, -65536
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool198.not.i = icmp eq i32 %43, 0
  br i1 %tobool198.not.i, label %cond.end127.i.cond.end203.i_crit_edge, label %cond.true199.i

cond.end127.i.cond.end203.i_crit_edge:            ; preds = %cond.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end203.i

cond.true199.i:                                   ; preds = %cond.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_regs, align 8
  %add.ptr201.i = getelementptr i8, ptr %46, i32 %44
  br label %cond.end203.i

cond.end203.i:                                    ; preds = %cond.true199.i, %cond.end127.i.cond.end203.i_crit_edge
  %cond204.i = phi ptr [ %add.ptr201.i, %cond.true199.i ], [ null, %cond.end127.i.cond.end203.i_crit_edge ]
  %RHS_regs.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %RHS_regs.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond204.i, ptr %RHS_regs.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.18, i32 noundef %44) #11
  %48 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_regs, align 8
  %add.ptr213.i = getelementptr i8, ptr %49, i32 60
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %51 = and i32 %50, -65536
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool235.not.i = icmp eq i32 %51, 0
  br i1 %tobool235.not.i, label %cond.end203.i.cond.end240.i_crit_edge, label %cond.true236.i

cond.end203.i.cond.end240.i_crit_edge:            ; preds = %cond.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end240.i

cond.true236.i:                                   ; preds = %cond.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_regs, align 8
  %add.ptr238.i = getelementptr i8, ptr %54, i32 %52
  br label %cond.end240.i

cond.end240.i:                                    ; preds = %cond.true236.i, %cond.end203.i.cond.end240.i_crit_edge
  %cond241.i = phi ptr [ %add.ptr238.i, %cond.true236.i ], [ null, %cond.end203.i.cond.end240.i_crit_edge ]
  %PIO_regs.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 5
  %55 = ptrtoint ptr %PIO_regs.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cond241.i, ptr %PIO_regs.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.21, i32 noundef %52) #11
  %56 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base_regs, align 8
  %add.ptr250.i = getelementptr i8, ptr %57, i32 64
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr250.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %59 = and i32 %58, -65536
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool272.not.i = icmp eq i32 %59, 0
  br i1 %tobool272.not.i, label %cond.end240.i.cond.end277.i_crit_edge, label %cond.true273.i

cond.end240.i.cond.end277.i_crit_edge:            ; preds = %cond.end240.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end277.i

cond.true273.i:                                   ; preds = %cond.end240.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base_regs, align 8
  %add.ptr275.i = getelementptr i8, ptr %62, i32 %60
  br label %cond.end277.i

cond.end277.i:                                    ; preds = %cond.true273.i, %cond.end240.i.cond.end277.i_crit_edge
  %cond278.i = phi ptr [ %add.ptr275.i, %cond.true273.i ], [ null, %cond.end240.i.cond.end277.i_crit_edge ]
  %EXTCAPS_regs.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 6
  %63 = ptrtoint ptr %EXTCAPS_regs.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %cond278.i, ptr %EXTCAPS_regs.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.24, i32 noundef %60) #11
  %call284.i = tail call i32 @i3c_hci_parse_ext_caps(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284.i)
  %tobool285.not.i = icmp eq i32 %call284.i, 0
  br i1 %tobool285.not.i, label %if.end.i49, label %cond.end277.i.cleanup_crit_edge

cond.end277.i.cleanup_crit_edge:                  ; preds = %cond.end277.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i49:                                       ; preds = %cond.end277.i
  %call286.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call286.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 650) #8
  %64 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base_regs, align 8
  %add.ptr303698.i = getelementptr i8, ptr %65, i32 16
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr303698.i) #8, !srcloc !102
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %and307699.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307699.i)
  %tobool308.not700.i = icmp eq i32 %and307699.i, 0
  br i1 %tobool308.not700.i, label %if.end.i49.for.end.i_crit_edge, label %if.end.i49.land.lhs.true.i_crit_edge

if.end.i49.land.lhs.true.i_crit_edge:             ; preds = %if.end.i49
  br label %land.lhs.true.i

if.end.i49.for.end.i_crit_edge:                   ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %if.then326.i.land.lhs.true.i_crit_edge, %if.end.i49.land.lhs.true.i_crit_edge
  %call312.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call312.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call312.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then316.i, label %if.then326.i

if.then316.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_regs, align 8
  %add.ptr320.i = getelementptr i8, ptr %69, i32 16
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr320.i) #8, !srcloc !102
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  br label %for.end.i

if.then326.i:                                     ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %72 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base_regs, align 8
  %add.ptr303.i = getelementptr i8, ptr %73, i32 16
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr303.i) #8, !srcloc !102
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %and307.i = and i32 %75, 1
  %tobool308.not.i = icmp eq i32 %and307.i, 0
  br i1 %tobool308.not.i, label %if.then326.i.for.end.i_crit_edge, label %if.then326.i.land.lhs.true.i_crit_edge

if.then326.i.land.lhs.true.i_crit_edge:           ; preds = %if.then326.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.then326.i.for.end.i_crit_edge:                 ; preds = %if.then326.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.then326.i.for.end.i_crit_edge, %if.then316.i, %if.end.i49.for.end.i_crit_edge
  %regval.0.i = phi i32 [ %71, %if.then316.i ], [ %67, %if.end.i49.for.end.i_crit_edge ], [ %75, %if.then326.i.for.end.i_crit_edge ]
  %and330.i = and i32 %regval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and330.i)
  %tobool331.not.i = icmp eq i32 %and330.i, 0
  br i1 %tobool331.not.i, label %do.body336.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body336.i:                                     ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_regs, align 8
  %add.ptr340.i = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr340.i, i32 16777216) #8, !srcloc !104
  %call344.i = tail call i64 @ktime_get() #8
  %add.i684.i = add i64 %call344.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 655) #8
  %78 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_regs, align 8
  %add.ptr363701.i = getelementptr i8, ptr %79, i32 16
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr363701.i) #8, !srcloc !102
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %and367702.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367702.i)
  %tobool368.not703.i = icmp eq i32 %and367702.i, 0
  br i1 %tobool368.not703.i, label %do.body336.i.for.end391.i_crit_edge, label %do.body336.i.land.lhs.true372.i_crit_edge

do.body336.i.land.lhs.true372.i_crit_edge:        ; preds = %do.body336.i
  br label %land.lhs.true372.i

do.body336.i.for.end391.i_crit_edge:              ; preds = %do.body336.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end391.i

land.lhs.true372.i:                               ; preds = %if.then387.i.land.lhs.true372.i_crit_edge, %do.body336.i.land.lhs.true372.i_crit_edge
  %call373.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call373.i, i64 %add.i684.i)
  %cmp3.i686.i = icmp sgt i64 %call373.i, %add.i684.i
  br i1 %cmp3.i686.i, label %if.then377.i, label %if.then387.i

if.then377.i:                                     ; preds = %land.lhs.true372.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base_regs, align 8
  %add.ptr381.i = getelementptr i8, ptr %83, i32 16
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr381.i) #8, !srcloc !102
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  br label %for.end391.i

if.then387.i:                                     ; preds = %land.lhs.true372.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %86 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base_regs, align 8
  %add.ptr363.i = getelementptr i8, ptr %87, i32 16
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr363.i) #8, !srcloc !102
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %and367.i = and i32 %89, 1
  %tobool368.not.i = icmp eq i32 %and367.i, 0
  br i1 %tobool368.not.i, label %if.then387.i.for.end391.i_crit_edge, label %if.then387.i.land.lhs.true372.i_crit_edge

if.then387.i.land.lhs.true372.i_crit_edge:        ; preds = %if.then387.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true372.i

if.then387.i.for.end391.i_crit_edge:              ; preds = %if.then387.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end391.i

for.end391.i:                                     ; preds = %if.then387.i.for.end391.i_crit_edge, %if.then377.i, %do.body336.i.for.end391.i_crit_edge
  %regval.1.i = phi i32 [ %85, %if.then377.i ], [ %81, %do.body336.i.for.end391.i_crit_edge ], [ %89, %if.then387.i.for.end391.i_crit_edge ]
  %and393.i = and i32 %regval.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393.i)
  %tobool394.not.i = icmp eq i32 %and393.i, 0
  br i1 %tobool394.not.i, label %do.body400.i, label %for.end391.i.cleanup_crit_edge

for.end391.i.cleanup_crit_edge:                   ; preds = %for.end391.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body400.i:                                     ; preds = %for.end391.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base_regs, align 8
  %add.ptr404.i = getelementptr i8, ptr %91, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr404.i, i32 0) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base_regs, align 8
  %add.ptr409.i = getelementptr i8, ptr %93, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr409.i, i32 -1) #8, !srcloc !104
  %94 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base_regs, align 8
  %add.ptr413.i = getelementptr i8, ptr %95, i32 4
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr413.i) #8, !srcloc !102
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %and417.i = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and417.i)
  %tobool418.not.i = icmp eq i32 %and417.i, 0
  br i1 %tobool418.not.i, label %if.then419.i, label %do.body400.i.do.end456.i_crit_edge

do.body400.i.do.end456.i_crit_edge:               ; preds = %do.body400.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end456.i

if.then419.i:                                     ; preds = %do.body400.i
  %or.i = or i32 %97, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %98 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %99 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base_regs, align 8
  %add.ptr424.i = getelementptr i8, ptr %100, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr424.i, i32 %98) #8, !srcloc !104
  %101 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_regs, align 8
  %add.ptr428.i = getelementptr i8, ptr %102, i32 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr428.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %104 = and i32 %103, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool433.not.i = icmp eq i32 %104, 0
  br i1 %tobool433.not.i, label %do.end437.i, label %if.then419.i.do.end456.i_crit_edge

if.then419.i.do.end456.i_crit_edge:               ; preds = %if.then419.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end456.i

do.end437.i:                                      ; preds = %if.then419.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup

do.end456.i:                                      ; preds = %if.then419.i.do.end456.i_crit_edge, %do.body400.i.do.end456.i_crit_edge
  %105 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %caps.i, align 8
  %and459.i = lshr i32 %106, 20
  %shr460.i = and i32 %and459.i, 3
  %107 = zext i32 %shr460.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %shr460.i, label %do.end467.i [
    i32 0, label %do.end456.i.sw.epilog470.i_crit_edge
    i32 1, label %sw.bb462.i
  ]

do.end456.i.sw.epilog470.i_crit_edge:             ; preds = %do.end456.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog470.i

sw.bb462.i:                                       ; preds = %do.end456.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog470.i

do.end467.i:                                      ; preds = %do.end456.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.30) #11
  br label %cleanup

sw.epilog470.i:                                   ; preds = %sw.bb462.i, %do.end456.i.sw.epilog470.i_crit_edge
  %mipi_i3c_hci_cmd_v2.sink.i = phi ptr [ @mipi_i3c_hci_cmd_v2, %sw.bb462.i ], [ @mipi_i3c_hci_cmd_v1, %do.end456.i.sw.epilog470.i_crit_edge ]
  %cmd463.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 11
  %108 = ptrtoint ptr %cmd463.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %mipi_i3c_hci_cmd_v2.sink.i, ptr %cmd463.i, align 8
  %109 = ptrtoint ptr %RHS_regs.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %RHS_regs.i, align 4
  %tobool472.not.i = icmp eq ptr %110, null
  br i1 %tobool472.not.i, label %sw.epilog470.i.if.end508.i_crit_edge, label %do.body474.i

sw.epilog470.i.if.end508.i_crit_edge:             ; preds = %sw.epilog470.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end508.i

do.body474.i:                                     ; preds = %sw.epilog470.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %111 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base_regs, align 8
  %add.ptr480.i = getelementptr i8, ptr %112, i32 4
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr480.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %114 = and i32 %113, -1073741825
  %115 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base_regs, align 8
  %add.ptr486.i = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr486.i, i32 %114) #8, !srcloc !104
  %117 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base_regs, align 8
  %add.ptr490.i = getelementptr i8, ptr %118, i32 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr490.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %120 = and i32 %119, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool495.not.i = icmp eq i32 %120, 0
  br i1 %tobool495.not.i, label %if.else.i, label %do.end499.i

do.end499.i:                                      ; preds = %do.body474.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.33) #11
  br label %if.end508.i

if.else.i:                                        ; preds = %do.body474.i
  call void @__sanitizer_cov_trace_pc() #10
  %io.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 9
  %121 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @mipi_i3c_hci_dma, ptr %io.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i, ptr noundef nonnull @.str.36) #11
  br label %if.end508.i

if.end508.i:                                      ; preds = %if.else.i, %do.end499.i, %sw.epilog470.i.if.end508.i_crit_edge
  %ret.0.i = phi i32 [ -5, %do.end499.i ], [ 0, %if.else.i ], [ 0, %sw.epilog470.i.if.end508.i_crit_edge ]
  %io509.i = getelementptr inbounds %struct.i3c_hci, ptr %call.i, i32 0, i32 9
  %122 = ptrtoint ptr %io509.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %io509.i, align 8
  %tobool510.not.i = icmp eq ptr %123, null
  br i1 %tobool510.not.i, label %land.lhs.true511.i, label %if.end508.i.if.end14_crit_edge

if.end508.i.if.end14_crit_edge:                   ; preds = %if.end508.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true511.i:                               ; preds = %if.end508.i
  %124 = ptrtoint ptr %PIO_regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %PIO_regs.i, align 8
  %tobool513.not.i = icmp eq ptr %125, null
  br i1 %tobool513.not.i, label %land.lhs.true511.i.do.end557.i_crit_edge, label %do.body515.i

land.lhs.true511.i.do.end557.i_crit_edge:         ; preds = %land.lhs.true511.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end557.i

do.body515.i:                                     ; preds = %land.lhs.true511.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base_regs, align 8
  %add.ptr521.i = getelementptr i8, ptr %127, i32 4
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr521.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %129 = or i32 %128, 1073741824
  %130 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base_regs, align 8
  %add.ptr527.i = getelementptr i8, ptr %131, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr527.i, i32 %129) #8, !srcloc !104
  %132 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base_regs, align 8
  %add.ptr531.i = getelementptr i8, ptr %133, i32 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr531.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %135 = and i32 %134, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool536.not.i = icmp eq i32 %135, 0
  br i1 %tobool536.not.i, label %do.end540.i, label %if.else543.i

do.end540.i:                                      ; preds = %do.body515.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.39) #11
  br label %if.end551.i

if.else543.i:                                     ; preds = %do.body515.i
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %io509.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @mipi_i3c_hci_pio, ptr %io509.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %call.i, ptr noundef nonnull @.str.42) #11
  br label %if.end551.i

if.end551.i:                                      ; preds = %if.else543.i, %do.end540.i
  %ret.1.ph.i = phi i32 [ -5, %do.end540.i ], [ %ret.0.i, %if.else543.i ]
  %137 = ptrtoint ptr %io509.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr.i = load ptr, ptr %io509.i, align 8
  %tobool553.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool553.not.i, label %if.end551.i.do.end557.i_crit_edge, label %if.end551.i.if.end14_crit_edge

if.end551.i.if.end14_crit_edge:                   ; preds = %if.end551.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end551.i.do.end557.i_crit_edge:                ; preds = %if.end551.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end557.i

do.end557.i:                                      ; preds = %if.end551.i.do.end557.i_crit_edge, %land.lhs.true511.i.do.end557.i_crit_edge
  %ret.1691.i = phi i32 [ %ret.1.ph.i, %if.end551.i.do.end557.i_crit_edge ], [ %ret.0.i, %land.lhs.true511.i.do.end557.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.45) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1691.i)
  %tobool560.not.i = icmp eq i32 %ret.1691.i, 0
  %spec.select = select i1 %tobool560.not.i, i32 -22, i32 %ret.1691.i
  br label %cleanup

if.end14:                                         ; preds = %if.end551.i.if.end14_crit_edge, %if.end508.i.if.end14_crit_edge
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %call.i51 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call15, ptr noundef nonnull @i3c_hci_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool18.not = icmp eq i32 %call.i51, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 @i3c_master_register(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @i3c_hci_ops, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14.cleanup_crit_edge, %do.end557.i, %do.end467.i, %do.end437.i, %for.end391.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %cond.end277.i.cleanup_crit_edge, %do.end16.i, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i51, %if.end14.cleanup_crit_edge ], [ %call23, %if.end20 ], [ -6, %for.end391.i.cleanup_crit_edge ], [ -6, %for.end.i.cleanup_crit_edge ], [ %call284.i, %cond.end277.i.cleanup_crit_edge ], [ -95, %do.end437.i ], [ -22, %do.end467.i ], [ -93, %do.end16.i ], [ %spec.select, %do.end557.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @i3c_master_unregister(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.then20_crit_edge, label %if.end

entry.if.then20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_regs, align 8
  %add.ptr4 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %2) #8, !srcloc !104
  %5 = and i32 %2, -524289
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and10 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %do.end15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.47) #11
  %and16 = and i32 %6, -3073
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end.if.end17_crit_edge
  %val.2 = phi i32 [ %and16, %do.end15 ], [ %6, %if.end.if.end17_crit_edge ]
  %and18 = and i32 %val.2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.end17.if.then20_crit_edge

if.end17.if.then20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.end17.if.then20_crit_edge, %entry.if.then20_crit_edge
  %val.271 = phi i32 [ %val.2, %if.end17.if.then20_crit_edge ], [ 256, %entry.if.then20_crit_edge ]
  %io = getelementptr inbounds %struct.i3c_hci, ptr %dev_id, i32 0, i32 9
  %7 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call21 = tail call zeroext i1 %10(ptr noundef %dev_id, i32 noundef 0) #8
  %and22 = and i32 %val.271, -257
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %val.3 = phi i32 [ %and22, %if.then20 ], [ %val.2, %if.end17.if.end23_crit_edge ]
  %and24 = and i32 %val.3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end32_crit_edge, label %if.then26

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %io27 = getelementptr inbounds %struct.i3c_hci, ptr %dev_id, i32 0, i32 9
  %11 = ptrtoint ptr %io27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io27, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call30 = tail call zeroext i1 %14(ptr noundef %dev_id, i32 noundef %and24) #8
  %and31 = and i32 %val.3, -256
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end23.if.end32_crit_edge
  %val.4 = phi i32 [ %and31, %if.then26 ], [ %val.3, %if.end23.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.4)
  %tobool33.not = icmp eq i32 %val.4, 0
  br i1 %tobool33.not, label %if.end32.if.end41_crit_edge, label %do.end37

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev_id, ptr noundef nonnull @.str.50, i32 noundef %val.4) #11
  br label %if.end41

if.end41:                                         ; preds = %do.end37, %if.end32.if.end41_crit_edge
  %result.0 = phi i32 [ 0, %do.end37 ], [ 1, %if.end32.if.end41_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_register(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_hci_parse_ext_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_bus_init(ptr noundef %m) #0 align 64 {
entry:
  %info = alloca %struct.i3c_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %info) #8
  %0 = getelementptr inbounds %struct.i3c_device_info, ptr %info, i32 0, i32 4
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 11
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd, align 8
  %cmp = icmp eq ptr %2, @mipi_i3c_hci_cmd_v1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mipi_i3c_hci_dat_v1 to i32))
  %3 = load ptr, ptr @mipi_i3c_hci_dat_v1, align 4
  %call1 = tail call i32 %3(ptr noundef %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @i3c_master_get_free_addr(ptr noundef %m, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %do.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %shl = shl i32 %call4, 16
  %and27 = and i32 %shl, 8323072
  %or = or i32 %and27, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !104
  %7 = call ptr @memset(ptr %info, i32 0, i32 24)
  %conv = trunc i32 %call4 to i8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %0, align 1
  %call28 = call i32 @i3c_master_set_info(ptr noundef %m, ptr noundef nonnull %info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %do.body
  %io = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 8
  %init = getelementptr inbounds %struct.hci_io_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 4
  %call32 = call i32 %12(ptr noundef %m) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body36, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_regs, align 8
  %add.ptr40 = getelementptr i8, ptr %14, i32 4
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #8, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %16 = or i32 %15, 128
  %17 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_regs, align 8
  %add.ptr46 = getelementptr i8, ptr %18, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %16) #8, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %do.body36, %if.end31.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body36 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call28, %do.body.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i3c_hci_bus_cleanup(ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %base_regs = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 1
  %0 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %3 = and i32 %2, -129
  %4 = ptrtoint ptr %base_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_regs, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !104
  %io = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 9
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 8
  %cleanup = getelementptr inbounds %struct.hci_io_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cleanup, align 4
  tail call void %9(ptr noundef %m) #8
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 11
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 8
  %cmp = icmp eq ptr %11, @mipi_i3c_hci_cmd_v1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 1), align 4
  tail call void %12(ptr noundef %m) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_attach_i3c_dev(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cmd, align 8
  %cmp = icmp eq ptr %4, @mipi_i3c_hci_cmd_v1
  br i1 %cmp, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 2), align 4
  %call4 = tail call i32 %5(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 4) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 4), align 4
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dyn_addr, align 1
  tail call void %6(ptr noundef %1, i32 noundef %call4, i8 noundef zeroext %8) #8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %call7.i.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_reattach_i3c_dev(ptr nocapture noundef readonly %dev, i8 noundef zeroext %old_dyn_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 8
  %cmp = icmp eq ptr %3, @mipi_i3c_hci_cmd_v1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 4) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 4), align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dyn_addr, align 1
  tail call void %6(ptr noundef %1, i32 noundef %8, i8 noundef zeroext %10) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i3c_hci_detach_i3c_dev(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  store ptr null, ptr %master_priv.i, align 4
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 8
  %cmp = icmp eq ptr %5, @mipi_i3c_hci_cmd_v1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3), align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  tail call void %6(ptr noundef %1, i32 noundef %8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_daa(ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 8
  %perform_daa = getelementptr inbounds %struct.hci_cmd_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %perform_daa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perform_daa, align 4
  %call1 = tail call i32 %3(ptr noundef %m) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_send_ccc_cmd(ptr noundef %m, ptr nocapture noundef readonly %ccc) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 14
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4 = icmp slt i8 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool4, %land.rhs ]
  %ndests = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 2
  %5 = ptrtoint ptr %ndests to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndests, align 4
  %conv9 = zext i1 %4 to i32
  %add = add i32 %6, %conv9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #8
  %7 = getelementptr inbounds i8, ptr %done, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 52)
  %9 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 60) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %land.end.cleanup_crit_edge, label %if.end7.i.i.i, !prof !137

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %land.end
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #13
  %tobool12.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i.i
  br i1 %4, label %if.then14, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.hci_xfer, ptr %call8.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %data, align 8
  %data_len = getelementptr inbounds %struct.hci_xfer, ptr %call8.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data_len, align 4
  %rnw = getelementptr inbounds %struct.hci_xfer, ptr %call8.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %rnw to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rnw, align 4
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 11
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %id15 = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 1
  %20 = ptrtoint ptr %id15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %id15, align 1
  %call16 = call i32 %19(ptr noundef %m, ptr noundef nonnull %call8.i.i.i, i8 noundef zeroext 126, i8 noundef zeroext %21, i1 noundef zeroext true) #8
  %incdec.ptr = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  %xfer.0 = phi ptr [ %incdec.ptr, %if.then14 ], [ %call8.i.i.i, %if.end.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp215.not = icmp eq i32 %6, 0
  br i1 %cmp215.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %dests = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 3
  %cmd35 = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 11
  %id40 = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %for.body.lr.ph
  %i.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end45.for.body_crit_edge ]
  %22 = ptrtoint ptr %dests to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dests, align 4
  %data21 = getelementptr %struct.i3c_ccc_cmd_dest, ptr %23, i32 %i.0216, i32 1, i32 1
  %24 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data21, align 4
  %arrayidx22 = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %i.0216
  %data23 = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %i.0216, i32 3
  %26 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %data23, align 4
  %payload26 = getelementptr %struct.i3c_ccc_cmd_dest, ptr %23, i32 %i.0216, i32 1
  %27 = ptrtoint ptr %payload26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %payload26, align 4
  %conv27 = zext i16 %28 to i32
  %data_len29 = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %i.0216, i32 4
  %29 = ptrtoint ptr %data_len29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv27, ptr %data_len29, align 4
  %30 = ptrtoint ptr %ccc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ccc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31 = icmp ne i8 %31, 0
  %rnw33 = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %i.0216, i32 2
  %frombool34 = zext i1 %tobool31 to i8
  %32 = ptrtoint ptr %rnw33 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool34, ptr %rnw33, align 4
  %33 = ptrtoint ptr %cmd35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd35, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %dests to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dests, align 4
  %arrayidx39 = getelementptr %struct.i3c_ccc_cmd_dest, ptr %38, i32 %i.0216
  %39 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx39, align 4
  %41 = ptrtoint ptr %id40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %id40, align 1
  %call42 = call i32 %36(ptr noundef %m, ptr noundef %arrayidx22, i8 noundef zeroext %40, i8 noundef zeroext %42, i1 noundef zeroext %tobool) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end45:                                         ; preds = %for.body
  %43 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx22, align 4
  %or = or i32 %44, 1073741824
  store i32 %or, ptr %arrayidx22, align 4
  %inc = add nuw i32 %i.0216, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.end.loopexit, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i32 %6, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end17.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %if.end17.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx49 = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %i.0.lcssa
  %45 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx49, align 4
  %or52 = or i32 %46, -2147483648
  store i32 %or52, ptr %arrayidx49, align 4
  %completion = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %i.0.lcssa, i32 6
  %47 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %done, ptr %completion, align 4
  %spec.select.idx = sext i1 %4 to i32
  %spec.select = getelementptr %struct.hci_xfer, ptr %xfer.0, i32 %spec.select.idx
  %io = getelementptr inbounds %struct.i3c_hci, ptr %m, i32 0, i32 9
  %48 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io, align 8
  %queue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %queue_xfer to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue_xfer, align 4
  %call58 = call i32 %51(ptr noundef %m, ptr noundef %spec.select, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end61:                                         ; preds = %for.end
  %call62 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true, label %if.end61.if.end68_crit_edge

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end61
  %52 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io, align 8
  %dequeue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dequeue_xfer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dequeue_xfer, align 4
  %call65 = call zeroext i1 %55(ptr noundef %m, ptr noundef %spec.select, i32 noundef %add) #8
  br i1 %call65, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %if.end61.if.end68_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv9)
  %cmp72217 = icmp ugt i32 %add, %conv9
  br i1 %cmp72217, label %for.body74.lr.ph, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body74.lr.ph:                                 ; preds = %if.end68
  %dests94 = getelementptr inbounds %struct.i3c_ccc_cmd, ptr %ccc, i32 0, i32 3
  br label %for.body74

for.cond71:                                       ; preds = %do.end116
  %inc127 = add i32 %i.1218, 1
  %exitcond224.not = icmp eq i32 %inc127, %add
  br i1 %exitcond224.not, label %for.cond71.out_crit_edge, label %for.cond71.for.body74_crit_edge

for.cond71.for.body74_crit_edge:                  ; preds = %for.cond71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74

for.cond71.out_crit_edge:                         ; preds = %for.cond71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body74:                                       ; preds = %for.cond71.for.body74_crit_edge, %for.body74.lr.ph
  %i.1218 = phi i32 [ %conv9, %for.body74.lr.ph ], [ %inc127, %for.cond71.for.body74_crit_edge ]
  %56 = ptrtoint ptr %ccc to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ccc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool76.not = icmp eq i8 %57, 0
  br i1 %tobool76.not, label %for.body74.do.end116_crit_edge, label %do.end89

for.body74.do.end116_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end116

do.end89:                                         ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #10
  %response = getelementptr %struct.hci_xfer, ptr %spec.select, i32 %i.1218, i32 1
  %58 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %response, align 4
  %conv93 = trunc i32 %59 to i16
  %60 = ptrtoint ptr %dests94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dests94, align 4
  %sub97 = sub nuw i32 %i.1218, %conv9
  %payload99 = getelementptr %struct.i3c_ccc_cmd_dest, ptr %61, i32 %sub97, i32 1
  %62 = ptrtoint ptr %payload99 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv93, ptr %payload99, align 4
  br label %do.end116

do.end116:                                        ; preds = %do.end89, %for.body74.do.end116_crit_edge
  %response119 = getelementptr %struct.hci_xfer, ptr %spec.select, i32 %i.1218, i32 1
  %63 = ptrtoint ptr %response119 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %response119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %64)
  %cmp122.not = icmp ult i32 %64, 268435456
  br i1 %cmp122.not, label %for.cond71, label %do.end116.out_crit_edge

do.end116.out_crit_edge:                          ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %do.end116.out_crit_edge, %for.cond71.out_crit_edge, %if.end68.out_crit_edge, %land.lhs.true.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ %call58, %for.end.out_crit_edge ], [ -62, %land.lhs.true.out_crit_edge ], [ 0, %if.end68.out_crit_edge ], [ -5, %do.end116.out_crit_edge ], [ 0, %for.cond71.out_crit_edge ], [ %call42, %for.body.out_crit_edge ]
  %xfer.2 = phi ptr [ %spec.select, %for.end.out_crit_edge ], [ %spec.select, %land.lhs.true.out_crit_edge ], [ %spec.select, %if.end68.out_crit_edge ], [ %spec.select, %for.cond71.out_crit_edge ], [ %spec.select, %do.end116.out_crit_edge ], [ %xfer.0, %for.body.out_crit_edge ]
  call void @kfree(ptr noundef %xfer.2) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.i.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %land.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_priv_xfers(ptr noundef %dev, ptr nocapture noundef %i3c_xfers, i32 noundef %nxfers) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #8
  %2 = getelementptr inbounds i8, ptr %done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nxfers, i32 60) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end7.i.i.i, !prof !137

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %entry
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %cmp181.not196 = icmp eq i32 %nxfers, 0
  br i1 %cmp181.not196, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %len = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.0182, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 2
  %conv = zext i16 %9 to i32
  %arrayidx17 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0182
  %data_len = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0182, i32 4
  %10 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %data_len, align 4
  %arrayidx = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.0182
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25 = icmp ne i8 %12, 0
  %rnw27 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0182, i32 2
  %frombool = zext i1 %tobool25 to i8
  %13 = ptrtoint ptr %rnw27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %rnw27, align 4
  %.sink.in = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.0182, i32 2
  %14 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.sink = load ptr, ptr %.sink.in, align 4
  %15 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0182, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %15, align 4
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd, align 8
  %prep_i3c_xfer = getelementptr inbounds %struct.hci_cmd_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prep_i3c_xfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prep_i3c_xfer, align 4
  call void %20(ptr noundef %1, ptr noundef %dev, ptr noundef %arrayidx17) #8
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 4
  %or = or i32 %22, 1073741824
  store i32 %or, ptr %arrayidx17, align 4
  %inc = add nuw nsw i32 %i.0182, 1
  %exitcond.not = icmp eq i32 %inc, %nxfers
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i32 %nxfers, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx43 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0.lcssa
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx43, align 4
  %or46 = or i32 %24, -2147483648
  store i32 %or46, ptr %arrayidx43, align 4
  %completion = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0.lcssa, i32 6
  %25 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %done, ptr %completion, align 4
  %io = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io, align 8
  %queue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %queue_xfer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue_xfer, align 4
  %call48 = call i32 %29(ptr noundef %1, ptr noundef nonnull %call8.i.i.i, i32 noundef %nxfers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end51:                                         ; preds = %for.end
  %call52 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end58

land.lhs.true:                                    ; preds = %if.end51
  %30 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io, align 8
  %dequeue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dequeue_xfer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dequeue_xfer, align 4
  %call55 = call zeroext i1 %33(ptr noundef %1, ptr noundef nonnull %call8.i.i.i, i32 noundef %nxfers) #8
  %brmerge = or i1 %call55, %cmp181.not196
  %.mux = select i1 %call55, i32 -62, i32 0
  br i1 %brmerge, label %land.lhs.true.out_crit_edge, label %land.lhs.true.for.body62.preheader_crit_edge

land.lhs.true.for.body62.preheader_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.preheader

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end58:                                         ; preds = %if.end51
  br i1 %cmp181.not196, label %if.end58.out_crit_edge, label %if.end58.for.body62.preheader_crit_edge

if.end58.for.body62.preheader_crit_edge:          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.preheader

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body62.preheader:                             ; preds = %if.end58.for.body62.preheader_crit_edge, %land.lhs.true.for.body62.preheader_crit_edge
  br label %for.body62

for.cond59:                                       ; preds = %do.end104
  %inc115 = add nuw nsw i32 %i.1185, 1
  %exitcond189.not = icmp eq i32 %inc115, %nxfers
  br i1 %exitcond189.not, label %for.cond59.out_crit_edge, label %for.cond59.for.body62_crit_edge

for.cond59.for.body62_crit_edge:                  ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62

for.cond59.out_crit_edge:                         ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body62:                                       ; preds = %for.cond59.for.body62_crit_edge, %for.body62.preheader
  %i.1185 = phi i32 [ %inc115, %for.cond59.for.body62_crit_edge ], [ 0, %for.body62.preheader ]
  %arrayidx63 = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.1185
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool65.not = icmp eq i8 %35, 0
  br i1 %tobool65.not, label %for.body62.do.end104_crit_edge, label %do.end81

for.body62.do.end104_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104

do.end81:                                         ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #10
  %response = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.1185, i32 1
  %36 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %response, align 4
  %conv86 = trunc i32 %37 to i16
  %len88 = getelementptr %struct.i3c_priv_xfer, ptr %i3c_xfers, i32 %i.1185, i32 1
  %38 = ptrtoint ptr %len88 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv86, ptr %len88, align 2
  br label %do.end104

do.end104:                                        ; preds = %do.end81, %for.body62.do.end104_crit_edge
  %response107 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.1185, i32 1
  %39 = ptrtoint ptr %response107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %response107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %40)
  %cmp110.not = icmp ult i32 %40, 268435456
  br i1 %cmp110.not, label %for.cond59, label %do.end104.out_crit_edge

do.end104.out_crit_edge:                          ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %do.end104.out_crit_edge, %for.cond59.out_crit_edge, %if.end58.out_crit_edge, %land.lhs.true.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ %call48, %for.end.out_crit_edge ], [ %.mux, %land.lhs.true.out_crit_edge ], [ 0, %if.end58.out_crit_edge ], [ 0, %for.cond59.out_crit_edge ], [ -5, %do.end104.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_attach_i2c_dev(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 8
  %cmp.not = icmp eq ptr %3, @mipi_i3c_hci_cmd_v1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 2), align 4
  %call5 = tail call i32 %5(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 5) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 5), align 4
  %addr = getelementptr inbounds %struct.i2c_dev_desc, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 4
  %conv = trunc i16 %8 to i8
  tail call void %6(ptr noundef %1, i32 noundef %call5, i8 noundef zeroext %conv) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 6) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 6), align 4
  tail call void %9(ptr noundef %1, i32 noundef %call5, i32 noundef -2147483648, i32 noundef 0) #8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call5, ptr %call7.i.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %master_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i3c_hci_detach_i2c_dev(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %master_priv.i, align 4
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 8
  %cmp = icmp eq ptr %6, @mipi_i3c_hci_cmd_v1
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3), align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_i2c_xfers(ptr noundef %dev, ptr nocapture noundef readonly %i2c_xfers, i32 noundef %nxfers) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #8
  %2 = getelementptr inbounds i8, ptr %done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nxfers, i32 60) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end7.i.i.i, !prof !137

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %entry
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nxfers)
  %cmp104.not117 = icmp eq i32 %nxfers, 0
  br i1 %cmp104.not117, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cmd = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %buf = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.0105, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %arrayidx4 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0105
  %data = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0105, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %data, align 4
  %len = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.0105, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len, align 4
  %conv = zext i16 %12 to i32
  %data_len = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0105, i32 4
  %13 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %data_len, align 4
  %flags = getelementptr %struct.i2c_msg, ptr %i2c_xfers, i32 %i.0105, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %rnw = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0105, i32 2
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %rnw to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %rnw, align 4
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 8
  %prep_i2c_xfer = getelementptr inbounds %struct.hci_cmd_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %prep_i2c_xfer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prep_i2c_xfer, align 4
  call void %22(ptr noundef %1, ptr noundef %dev, ptr noundef %arrayidx4) #8
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4, align 4
  %or = or i32 %24, 1073741824
  store i32 %or, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %nxfers
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i32 %nxfers, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %arrayidx14 = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0.lcssa
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14, align 4
  %or17 = or i32 %26, -2147483648
  store i32 %or17, ptr %arrayidx14, align 4
  %completion = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.0.lcssa, i32 6
  %27 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %done, ptr %completion, align 4
  %io = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 8
  %queue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %queue_xfer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue_xfer, align 4
  %call19 = call i32 %31(ptr noundef %1, ptr noundef nonnull %call8.i.i.i, i32 noundef %nxfers) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end22:                                         ; preds = %for.end
  %call23 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %if.end22
  %32 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io, align 8
  %dequeue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dequeue_xfer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dequeue_xfer, align 4
  %call26 = call zeroext i1 %35(ptr noundef %1, ptr noundef nonnull %call8.i.i.i, i32 noundef %nxfers) #8
  %brmerge = or i1 %call26, %cmp104.not117
  %.mux = select i1 %call26, i32 -62, i32 0
  br i1 %brmerge, label %land.lhs.true.out_crit_edge, label %land.lhs.true.do.end45.preheader_crit_edge

land.lhs.true.do.end45.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45.preheader

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end22
  br i1 %cmp104.not117, label %if.end29.out_crit_edge, label %if.end29.do.end45.preheader_crit_edge

if.end29.do.end45.preheader_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45.preheader

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end45.preheader:                               ; preds = %if.end29.do.end45.preheader_crit_edge, %land.lhs.true.do.end45.preheader_crit_edge
  br label %do.end45

for.cond30:                                       ; preds = %do.end45
  %inc54 = add nuw nsw i32 %i.1107, 1
  %exitcond110.not = icmp eq i32 %inc54, %nxfers
  br i1 %exitcond110.not, label %for.cond30.out_crit_edge, label %for.cond30.do.end45_crit_edge

for.cond30.do.end45_crit_edge:                    ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

for.cond30.out_crit_edge:                         ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end45:                                         ; preds = %for.cond30.do.end45_crit_edge, %do.end45.preheader
  %i.1107 = phi i32 [ %inc54, %for.cond30.do.end45_crit_edge ], [ 0, %do.end45.preheader ]
  %response = getelementptr %struct.hci_xfer, ptr %call8.i.i.i, i32 %i.1107, i32 1
  %36 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %response, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %37)
  %cmp49.not = icmp ult i32 %37, 268435456
  br i1 %cmp49.not, label %for.cond30, label %do.end45.out_crit_edge

do.end45.out_crit_edge:                           ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %do.end45.out_crit_edge, %for.cond30.out_crit_edge, %if.end29.out_crit_edge, %land.lhs.true.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ %call19, %for.end.out_crit_edge ], [ %.mux, %land.lhs.true.out_crit_edge ], [ 0, %if.end29.out_crit_edge ], [ 0, %for.cond30.out_crit_edge ], [ -5, %do.end45.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_request_ibi(ptr noundef %dev, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 7) to i32))
  %.val = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 6) to i32))
  %.val13 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 6), align 4
  %8 = select i1 %cmp.not, ptr %.val, ptr %.val13
  tail call void %8(ptr noundef %1, i32 noundef %5, i32 noundef 4096, i32 noundef 0) #8
  %io = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io, align 8
  %request_ibi = getelementptr inbounds %struct.hci_io_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %request_ibi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_ibi, align 4
  %call4 = tail call i32 %12(ptr noundef %1, ptr noundef %dev, ptr noundef %req) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i3c_hci_free_ibi(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %io = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %free_ibi = getelementptr inbounds %struct.hci_io_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %free_ibi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_ibi, align 4
  tail call void %5(ptr noundef %1, ptr noundef %dev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_enable_ibi(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 7), align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  tail call void %4(ptr noundef %1, i32 noundef %6, i32 noundef 8192, i32 noundef 0) #8
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dyn_addr, align 1
  %call3 = tail call i32 @i3c_master_enec_locked(ptr noundef %1, i8 noundef zeroext %8, i8 noundef zeroext 1) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i3c_hci_disable_ibi(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 6) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 6), align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  tail call void %4(ptr noundef %1, i32 noundef %6, i32 noundef 8192, i32 noundef 0) #8
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dyn_addr, align 1
  %call3 = tail call i32 @i3c_master_disec_locked(ptr noundef %1, i8 noundef zeroext %8, i8 noundef zeroext 1) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i3c_hci_recycle_ibi_slot(ptr noundef %dev, ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 8
  %io = getelementptr inbounds %struct.i3c_hci, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %recycle_ibi_slot = getelementptr inbounds %struct.hci_io_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %recycle_ibi_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recycle_ibi_slot, align 4
  tail call void %5(ptr noundef %1, ptr noundef %dev, ptr noundef %slot) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_get_free_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_set_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_enec_locked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_disec_locked(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_mipi_i3c_hci__378_794_i3c_hci_driver_init6, !1, !"__initcall__kmod_mipi_i3c_hci__378_794_i3c_hci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 794, i32 1}
!2 = !{ptr @__exitcall_i3c_hci_driver_exit, !1, !"__exitcall_i3c_hci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author379, !4, !"__UNIQUE_ID_author379", i1 false, i1 false}
!4 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 796, i32 1}
!5 = !{ptr @__UNIQUE_ID_description380, !6, !"__UNIQUE_ID_description380", i1 false, i1 false}
!6 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 797, i32 1}
!7 = !{ptr @__UNIQUE_ID_file381, !8, !"__UNIQUE_ID_file381", i1 false, i1 false}
!8 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 798, i32 1}
!9 = !{ptr @__UNIQUE_ID_license382, !8, !"__UNIQUE_ID_license382", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 790, i32 11}
!12 = !{ptr @i3c_hci_driver, !13, !"i3c_hci_driver", i1 false, i1 false}
!13 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 786, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 593, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @i3c_hci_init._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @i3c_hci_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 602, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @i3c_hci_init._entry.6, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @i3c_hci_init._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 614, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @i3c_hci_init._entry.10, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @i3c_hci_init._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 622, i32 2}
!34 = !{ptr @i3c_hci_init._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @i3c_hci_init._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 628, i32 2}
!38 = !{ptr @i3c_hci_init._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @i3c_hci_init._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 633, i32 2}
!42 = !{ptr @i3c_hci_init._entry.20, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @i3c_hci_init._entry_ptr.22, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 638, i32 2}
!46 = !{ptr @i3c_hci_init._entry.23, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @i3c_hci_init._entry_ptr.25, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 671, i32 5}
!50 = !{ptr @i3c_hci_init._entry.26, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @i3c_hci_init._entry_ptr.28, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 696, i32 3}
!54 = !{ptr @i3c_hci_init._entry.29, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @i3c_hci_init._entry_ptr.31, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 704, i32 4}
!58 = !{ptr @i3c_hci_init._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @i3c_hci_init._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 708, i32 4}
!62 = !{ptr @i3c_hci_init._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @i3c_hci_init._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 716, i32 4}
!66 = !{ptr @i3c_hci_init._entry.38, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @i3c_hci_init._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 720, i32 4}
!70 = !{ptr @i3c_hci_init._entry.41, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @i3c_hci_init._entry_ptr.43, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 725, i32 3}
!74 = !{ptr @i3c_hci_init._entry.44, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @i3c_hci_init._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 564, i32 3}
!78 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @i3c_hci_irq_handler._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @i3c_hci_irq_handler._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 576, i32 3}
!83 = !{ptr @i3c_hci_irq_handler._entry.49, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @i3c_hci_irq_handler._entry_ptr.51, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @i3c_hci_ops, !86, !"i3c_hci_ops", i1 false, i1 false}
!86 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 524, i32 47}
!87 = !{ptr @init_completion.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../include/linux/completion.h", i32 87, i32 2}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @i3c_hci_of_match, !91, !"i3c_hci_of_match", i1 false, i1 false}
!91 = !{!"../drivers/i3c/master/mipi-i3c-hci/core.c", i32 780, i32 49}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2155738970}
!102 = !{i64 6896444}
!103 = !{i64 2155739897}
!104 = !{i64 6896026}
!105 = !{i64 2155740591}
!106 = !{i64 2155796539}
!107 = !{i64 2156099855}
!108 = !{i64 2156103803}
!109 = !{i64 2156106136}
!110 = !{i64 2156232798}
!111 = !{i64 2156359460}
!112 = !{i64 2156405620}
!113 = !{i64 2156447710}
!114 = !{i64 2156494998}
!115 = !{i64 2156495549}
!116 = !{i64 2156495953}
!117 = !{i64 2156497883}
!118 = !{i64 2156498434}
!119 = !{i64 2156498708}
!120 = !{i64 2156499173}
!121 = !{i64 2156499933}
!122 = !{i64 2156500911}
!123 = !{i64 2156501659}
!124 = !{i64 2156549641}
!125 = !{i64 2156550638}
!126 = !{i64 2156551241}
!127 = !{i64 2156555945}
!128 = !{i64 2156556940}
!129 = !{i64 2156557542}
!130 = !{i64 2156089302}
!131 = !{i64 2156091387}
!132 = !{i64 2155701361}
!133 = !{i64 2155725868}
!134 = !{i64 2155726865}
!135 = !{i64 2155736595}
!136 = !{i64 2155737594}
!137 = !{!"branch_weights", i32 1, i32 2000}
