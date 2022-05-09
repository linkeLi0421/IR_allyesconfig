; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-bcm-kona.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-bcm-kona.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_speed_cfg = type { i8, i8, i8, i8, i8, i8 }
%struct.hs_bus_speed_cfg = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
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
%struct.bcm_kona_i2c_dev = type { ptr, ptr, i32, ptr, %struct.i2c_adapter, %struct.completion, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_bcm_kona__291_895_bcm_kona_i2c_driver_init6 = internal global ptr @bcm_kona_i2c_driver_init, section ".initcall6.init", align 4
@bcm_kona_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm_kona_i2c_probe, ptr @bcm_kona_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_kona_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm_kona_i2c_driver_exit = internal global ptr @bcm_kona_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [54 x i8] c"i2c_bcm_kona.author=Tim Kryger <tkryger@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [50 x i8] c"i2c_bcm_kona.description=Broadcom Kona I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [50 x i8] c"i2c_bcm_kona.file=drivers/i2c/busses/i2c-bcm-kona\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [28 x i8] c"i2c_bcm_kona.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm-kona-i2c\00", [19 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,kona-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't get clock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm_kona_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/i2c/busses/i2c-bcm-kona.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry_ptr = internal global ptr @bcm_kona_i2c_probe._entry, section ".printk_index", align 4
@bcm_kona_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: clk_set_rate returned %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry_ptr.8 = internal global ptr @bcm_kona_i2c_probe._entry.6, section ".printk_index", align 4
@bcm_kona_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 784, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't enable clock\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry_ptr.11 = internal global ptr @bcm_kona_i2c_probe._entry.9, section ".printk_index", align 4
@bcm_kona_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 832, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %i\0A\00", [38 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry_ptr.14 = internal global ptr @bcm_kona_i2c_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Broadcom I2C adapter\00", [43 x i8] zeroinitializer }, align 32
@bcm_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @bcm_kona_i2c_xfer, ptr null, ptr null, ptr null, ptr @bcm_kona_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 861, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"device registered successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_probe._entry_ptr.19 = internal global ptr @bcm_kona_i2c_probe._entry.16, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_assign_bus_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"missing clock-frequency property\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm_kona_i2c_assign_bus_speed\00", [34 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_assign_bus_speed._entry_ptr = internal global ptr @bcm_kona_i2c_assign_bus_speed._entry, section ".printk_index", align 4
@std_cfg_table = internal constant { [3 x %struct.bus_speed_cfg], [46 x i8] } { [3 x %struct.bus_speed_cfg] [%struct.bus_speed_cfg { i8 1, i8 1, i8 3, i8 6, i8 0, i8 2 }, %struct.bus_speed_cfg { i8 5, i8 1, i8 3, i8 5, i8 1, i8 2 }, %struct.bus_speed_cfg { i8 1, i8 1, i8 3, i8 1, i8 1, i8 3 }], [46 x i8] zeroinitializer }, align 32
@hs_cfg_table = internal constant { [1 x %struct.hs_bus_speed_cfg], [25 x i8] } { [1 x %struct.hs_bus_speed_cfg] [%struct.hs_bus_speed_cfg { i8 1, i8 8, i8 20, i8 0, i8 6, i8 1, i8 0 }], [25 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_assign_bus_speed._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%d hz bus speed not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_assign_bus_speed._entry_ptr.26 = internal global ptr @bcm_kona_i2c_assign_bus_speed._entry.24, section ".printk_index", align 4
@bcm_kona_i2c_assign_bus_speed._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Valid speeds are 100khz, 400khz, 1mhz, and 3.4mhz\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_assign_bus_speed._entry_ptr.29 = internal global ptr @bcm_kona_i2c_assign_bus_speed._entry.27, section ".printk_index", align 4
@bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_bcm_kona\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm_kona_i2c_send_cmd_to_ctrl\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s, %d\0A\00", [24 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_send_cmd_to_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown command %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_send_cmd_to_ctrl._entry_ptr = internal global ptr @bcm_kona_i2c_send_cmd_to_ctrl._entry, section ".printk_index", align 4
@bcm_kona_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: peri clock enable failed. err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm_kona_i2c_xfer\00", [46 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_xfer._entry_ptr = internal global ptr @bcm_kona_i2c_xfer._entry, section ".printk_index", align 4
@bcm_kona_i2c_xfer._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 625, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Start command failed rc = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_xfer._entry_ptr.38 = internal global ptr @bcm_kona_i2c_xfer._entry.36, section ".printk_index", align 4
@bcm_kona_i2c_xfer._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"restart cmd failed rc = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_xfer._entry_ptr.41 = internal global ptr @bcm_kona_i2c_xfer._entry.39, section ".printk_index", align 4
@bcm_kona_i2c_xfer._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NAK from addr %2.2x msg#%d rc = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_xfer._entry_ptr.44 = internal global ptr @bcm_kona_i2c_xfer._entry.42, section ".printk_index", align 4
@bcm_kona_i2c_xfer._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read failure\0A\00", [18 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_xfer._entry_ptr.47 = internal global ptr @bcm_kona_i2c_xfer._entry.45, section ".printk_index", align 4
@bcm_kona_i2c_xfer._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write failure\00", [18 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_xfer._entry_ptr.50 = internal global ptr @bcm_kona_i2c_xfer._entry.48, section ".printk_index", align 4
@bcm_kona_send_i2c_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"controller timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm_kona_send_i2c_cmd\00", [42 x i8] zeroinitializer }, align 32
@bcm_kona_send_i2c_cmd._entry_ptr = internal global ptr @bcm_kona_send_i2c_cmd._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm_kona_i2c_wait_if_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMDBUSY timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_kona_i2c_wait_if_busy\00", [38 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_wait_if_busy._entry_ptr = internal global ptr @bcm_kona_i2c_wait_if_busy._entry, section ".printk_index", align 4
@bcm_kona_i2c_switch_to_hs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013High speed handshake failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm_kona_i2c_switch_to_hs\00", [38 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_switch_to_hs._entry_ptr = internal global ptr @bcm_kona_i2c_switch_to_hs._entry, section ".printk_index", align 4
@bcm_kona_i2c_switch_to_hs._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.56, ptr @.str.3, i32 568, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_switch_to_hs._entry_ptr.58 = internal global ptr @bcm_kona_i2c_switch_to_hs._entry.57, section ".printk_index", align 4
@bcm_kona_i2c_switch_to_hs._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.56, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"High speed restart command failed\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_switch_to_hs._entry_ptr.61 = internal global ptr @bcm_kona_i2c_switch_to_hs._entry.59, section ".printk_index", align 4
@bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.62, ptr @.str.3, ptr @.str.51, i8 0, i8 96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_kona_i2c_write_byte\00", [40 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 98, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unexpected NAK/ACK\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_read_fifo_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX FIFO time out\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm_kona_i2c_read_fifo_single\00", [34 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_read_fifo_single._entry_ptr = internal global ptr @bcm_kona_i2c_read_fifo_single._entry, section ".printk_index", align 4
@bcm_kona_i2c_write_fifo_single._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unexpected NAK\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bcm_kona_i2c_write_fifo_single\00", [33 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_write_fifo_single._entry_ptr = internal global ptr @bcm_kona_i2c_write_fifo_single._entry, section ".printk_index", align 4
@bcm_kona_i2c_write_fifo_single._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"completion timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_write_fifo_single._entry_ptr.70 = internal global ptr @bcm_kona_i2c_write_fifo_single._entry.68, section ".printk_index", align 4
@bcm_kona_i2c_switch_to_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.71, ptr @.str.3, i32 594, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm_kona_i2c_switch_to_std\00", [37 x i8] zeroinitializer }, align 32
@bcm_kona_i2c_switch_to_std._entry_ptr = internal global ptr @bcm_kona_i2c_switch_to_std._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 100000, i64 400000, i64 1000000, i64 3400000]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"bcm_kona_i2c_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 887, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 889, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"bcm_kona_i2c_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 881, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 771, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 777, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 784, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 832, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 852, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"bcm_algo\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 709, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 861, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 87, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 717, i32 55 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 720, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"std_cfg_table\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 144, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"hs_cfg_table\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 150, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 740, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 741, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 172, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 202, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 611, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 625, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 644, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 654, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 665, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 671, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 279, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 244, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 560, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 567, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 578, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 386, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 393, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 314, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 436, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 442, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [37 x i8] c"../drivers/i2c/busses/i2c-bcm-kona.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 593, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_bcm_kona_i2c_driver_exit, ptr @__initcall__kmod_i2c_bcm_kona__291_895_bcm_kona_i2c_driver_init6, ptr @bcm_kona_i2c_assign_bus_speed._entry, ptr @bcm_kona_i2c_assign_bus_speed._entry.24, ptr @bcm_kona_i2c_assign_bus_speed._entry.27, ptr @bcm_kona_i2c_assign_bus_speed._entry_ptr, ptr @bcm_kona_i2c_assign_bus_speed._entry_ptr.26, ptr @bcm_kona_i2c_assign_bus_speed._entry_ptr.29, ptr @bcm_kona_i2c_driver_exit, ptr @bcm_kona_i2c_probe._entry, ptr @bcm_kona_i2c_probe._entry.12, ptr @bcm_kona_i2c_probe._entry.16, ptr @bcm_kona_i2c_probe._entry.6, ptr @bcm_kona_i2c_probe._entry.9, ptr @bcm_kona_i2c_probe._entry_ptr, ptr @bcm_kona_i2c_probe._entry_ptr.11, ptr @bcm_kona_i2c_probe._entry_ptr.14, ptr @bcm_kona_i2c_probe._entry_ptr.19, ptr @bcm_kona_i2c_probe._entry_ptr.8, ptr @bcm_kona_i2c_read_fifo_single._entry, ptr @bcm_kona_i2c_read_fifo_single._entry_ptr, ptr @bcm_kona_i2c_send_cmd_to_ctrl._entry, ptr @bcm_kona_i2c_send_cmd_to_ctrl._entry_ptr, ptr @bcm_kona_i2c_switch_to_hs._entry, ptr @bcm_kona_i2c_switch_to_hs._entry.57, ptr @bcm_kona_i2c_switch_to_hs._entry.59, ptr @bcm_kona_i2c_switch_to_hs._entry_ptr, ptr @bcm_kona_i2c_switch_to_hs._entry_ptr.58, ptr @bcm_kona_i2c_switch_to_hs._entry_ptr.61, ptr @bcm_kona_i2c_switch_to_std._entry, ptr @bcm_kona_i2c_switch_to_std._entry_ptr, ptr @bcm_kona_i2c_wait_if_busy._entry, ptr @bcm_kona_i2c_wait_if_busy._entry_ptr, ptr @bcm_kona_i2c_write_fifo_single._entry, ptr @bcm_kona_i2c_write_fifo_single._entry.68, ptr @bcm_kona_i2c_write_fifo_single._entry_ptr, ptr @bcm_kona_i2c_write_fifo_single._entry_ptr.70, ptr @bcm_kona_i2c_xfer._entry, ptr @bcm_kona_i2c_xfer._entry.36, ptr @bcm_kona_i2c_xfer._entry.39, ptr @bcm_kona_i2c_xfer._entry.42, ptr @bcm_kona_i2c_xfer._entry.45, ptr @bcm_kona_i2c_xfer._entry.48, ptr @bcm_kona_i2c_xfer._entry_ptr, ptr @bcm_kona_i2c_xfer._entry_ptr.38, ptr @bcm_kona_i2c_xfer._entry_ptr.41, ptr @bcm_kona_i2c_xfer._entry_ptr.44, ptr @bcm_kona_i2c_xfer._entry_ptr.47, ptr @bcm_kona_i2c_xfer._entry_ptr.50, ptr @bcm_kona_send_i2c_cmd._entry, ptr @bcm_kona_send_i2c_cmd._entry_ptr, ptr @bcm_kona_i2c_driver, ptr @.str, ptr @bcm_kona_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @bcm_algo, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @std_cfg_table, ptr @hs_cfg_table, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_assign_bus_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_cfg_table to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_cfg_table to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_assign_bus_speed._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_assign_bus_speed._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_send_cmd_to_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_xfer._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_xfer._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_xfer._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_xfer._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_xfer._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_send_i2c_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_wait_if_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_switch_to_hs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_switch_to_hs._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_switch_to_hs._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_read_fifo_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_write_fifo_single._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_write_fifo_single._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_kona_i2c_switch_to_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_kona_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm_kona_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_kona_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %bus_speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %done = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #8
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 8
  %call11 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef null) #8
  %external_clk = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %external_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %external_clk, align 4
  %cmp.i159 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call18 = tail call i32 @clk_set_rate(ptr noundef %call11, i32 noundef 13000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %call18) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %12 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %external_clk, align 4
  %call.i160 = tail call i32 @clk_prepare(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %13) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.end25.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i160, %if.end25.do.end32_crit_edge ]
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_speed.i) #8
  %16 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %bus_speed.i, align 4, !annotation !156
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.21, ptr noundef nonnull %bus_speed.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i161 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i161, label %do.end.i, label %if.end.i162

do.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22) #11
  br label %bcm_kona_i2c_assign_bus_speed.exit

if.end.i162:                                      ; preds = %if.end34
  %23 = ptrtoint ptr %bus_speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bus_speed.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.end10.i [
    i32 100000, label %sw.bb.i
    i32 400000, label %sw.bb2.i
    i32 1000000, label %sw.bb4.i
    i32 3400000, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  %std_cfg.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 6
  %26 = ptrtoint ptr %std_cfg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @std_cfg_table, ptr %std_cfg.i, align 8
  br label %if.end38

sw.bb2.i:                                         ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  %std_cfg3.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %std_cfg3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr getelementptr inbounds ([3 x %struct.bus_speed_cfg], ptr @std_cfg_table, i32 0, i32 1), ptr %std_cfg3.i, align 8
  br label %if.end38

sw.bb4.i:                                         ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  %std_cfg5.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %std_cfg5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr getelementptr inbounds ([3 x %struct.bus_speed_cfg], ptr @std_cfg_table, i32 0, i32 2), ptr %std_cfg5.i, align 8
  br label %if.end38

sw.bb6.i:                                         ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  %std_cfg7.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 6
  %29 = ptrtoint ptr %std_cfg7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @std_cfg_table, ptr %std_cfg7.i, align 8
  %hs_cfg.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %hs_cfg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hs_cfg_table, ptr %hs_cfg.i, align 4
  br label %if.end38

do.end10.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %24) #11
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %bcm_kona_i2c_assign_bus_speed.exit

bcm_kona_i2c_assign_bus_speed.exit:               ; preds = %do.end10.i, %do.end.i
  %retval.0.i163 = phi i32 [ -19, %do.end.i ], [ -22, %do.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed.i) #8
  br label %probe_disable_clk

if.end38:                                         ; preds = %sw.bb6.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_speed.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 76
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %34 = or i32 %33, 16777216
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %36, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %34) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr.i165 = getelementptr i8, ptr %38, i32 88
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #8, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %40 = and i32 %39, -8388609
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr3.i166 = getelementptr i8, ptr %42, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i166, i32 %40) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  call void @arm_heavy_mb() #8
  %std_cfg.i167 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 6
  %43 = ptrtoint ptr %std_cfg.i167 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %std_cfg.i167, align 8
  %prescale.i = getelementptr inbounds %struct.bus_speed_cfg, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %prescale.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %prescale.i, align 1
  %conv.i = zext i8 %46 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 6
  %time_p.i = getelementptr inbounds %struct.bus_speed_cfg, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %time_p.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %time_p.i, align 1
  %conv7.i = zext i8 %48 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 3
  %or.i = or i32 %shl8.i, %shl.i
  %no_div.i = getelementptr inbounds %struct.bus_speed_cfg, ptr %44, i32 0, i32 4
  %49 = ptrtoint ptr %no_div.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %no_div.i, align 1
  %conv10.i = zext i8 %50 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 2
  %or12.i = or i32 %or.i, %shl11.i
  %time_div.i = getelementptr inbounds %struct.bus_speed_cfg, ptr %44, i32 0, i32 5
  %51 = ptrtoint ptr %time_div.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %time_div.i, align 1
  %conv14.i = zext i8 %52 to i32
  %or16.i = or i32 %or12.i, %conv14.i
  %53 = call i32 @llvm.bswap.i32(i32 %or16.i) #8
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr18.i = getelementptr i8, ptr %55, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %53) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %std_cfg.i167 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %std_cfg.i167, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv22.i = zext i8 %59 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 4
  %time_n.i = getelementptr inbounds %struct.bus_speed_cfg, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %time_n.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %time_n.i, align 1
  %conv25.i = zext i8 %61 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 1
  %or27.i = or i32 %shl23.i, %shl26.i
  %or28.i = or i32 %or27.i, 1
  %62 = call i32 @llvm.bswap.i32(i32 %or28.i) #8
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %64, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %62) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  call void @arm_heavy_mb() #8
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr.i169 = getelementptr i8, ptr %68, i32 76
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #8, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  %70 = and i32 %69, 2147483647
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr3.i170 = getelementptr i8, ptr %72, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i170, i32 %70) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %74, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 -1073741824) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %76, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %78, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 -1627389952) #8, !srcloc !160
  %call58 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 2
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call58, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp = icmp slt i32 %call58, 0
  br i1 %cmp, label %if.end38.probe_disable_clk_crit_edge, label %if.end62

if.end38.probe_disable_clk_crit_edge:             ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %probe_disable_clk

if.end62:                                         ; preds = %if.end38
  %80 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev, align 8
  %call.i171 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call58, ptr noundef nonnull @bcm_kona_i2c_isr, ptr noundef null, i32 noundef 128, ptr noundef %81, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool66.not = icmp eq i32 %call.i171, 0
  br i1 %tobool66.not, label %if.end73, label %do.end70

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 8
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.13, i32 noundef %85) #11
  br label %probe_disable_clk

if.end73:                                         ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_kona_i2c_probe, %bcm_kona_i2c_send_cmd_to_ctrl.exit)) #8
          to label %if.then.i [label %bcm_kona_i2c_send_cmd_to_ctrl.exit], !srcloc !171

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, ptr noundef %87, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0) #8
  br label %bcm_kona_i2c_send_cmd_to_ctrl.exit

bcm_kona_i2c_send_cmd_to_ctrl.exit:               ; preds = %if.then.i, %if.end73
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr.i174 = getelementptr i8, ptr %89, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 16777216) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %91, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 67108864) #8, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr.i176 = getelementptr i8, ptr %93, i32 76
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #8, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %95 = and i32 %94, -16777217
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr3.i177 = getelementptr i8, ptr %97, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i177, i32 %95) #8, !srcloc !160
  %98 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %external_clk, align 4
  call void @clk_disable(ptr noundef %99) #8
  call void @clk_unprepare(ptr noundef %99) #8
  %adapter = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 4
  %driver_data.i.i178 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 8
  %100 = ptrtoint ptr %driver_data.i.i178 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call.i, ptr %driver_data.i.i178, align 4
  %101 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %adapter, align 8
  %name80 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 4, i32 12
  %call81 = call i32 @strlcpy(ptr noundef %name80, ptr noundef nonnull @.str.15, i32 noundef 48) #8
  %algo = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 4, i32 2
  %102 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @bcm_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 1
  %103 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %dev1, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %104 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %of_node, align 8
  %of_node86 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %call.i, i32 0, i32 4, i32 9, i32 27
  %106 = ptrtoint ptr %of_node86 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %of_node86, align 8
  %call87 = call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end93, label %bcm_kona_i2c_send_cmd_to_ctrl.exit.cleanup_crit_edge

bcm_kona_i2c_send_cmd_to_ctrl.exit.cleanup_crit_edge: ; preds = %bcm_kona_i2c_send_cmd_to_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end93:                                         ; preds = %bcm_kona_i2c_send_cmd_to_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.17) #11
  br label %cleanup

probe_disable_clk:                                ; preds = %do.end70, %if.end38.probe_disable_clk_crit_edge, %bcm_kona_i2c_assign_bus_speed.exit
  %rc.0 = phi i32 [ %retval.0.i163, %bcm_kona_i2c_assign_bus_speed.exit ], [ %call.i171, %do.end70 ], [ %call58, %if.end38.probe_disable_clk_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  call void @arm_heavy_mb() #8
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr.i180 = getelementptr i8, ptr %110, i32 76
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #8, !srcloc !158
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %112 = and i32 %111, -16777217
  %113 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base, align 4
  %add.ptr3.i181 = getelementptr i8, ptr %114, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i181, i32 %112) #8, !srcloc !160
  %115 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %external_clk, align 4
  call void @clk_disable(ptr noundef %116) #8
  call void @clk_unprepare(ptr noundef %116) #8
  br label %cleanup

cleanup:                                          ; preds = %probe_disable_clk, %do.end93, %bcm_kona_i2c_send_cmd_to_ctrl.exit.cleanup_crit_edge, %do.end32, %do.end23, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ -19, %do.end ], [ %call18, %do.end23 ], [ %retval.0.i.ph, %do.end32 ], [ %rc.0, %probe_disable_clk ], [ 0, %do.end93 ], [ -12, %entry.cleanup_crit_edge ], [ %call87, %bcm_kona_i2c_send_cmd_to_ctrl.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_isr(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !158
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  %and = and i32 %3, 159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.do.body7_crit_edge, label %do.body

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1073741824) #8, !srcloc !160
  br label %do.body7

do.body7:                                         ; preds = %do.body, %if.end.do.body7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %6 = shl nuw i32 %and, 24
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %6) #8, !srcloc !160
  %done = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %devid, i32 0, i32 5
  tail call void @complete(ptr noundef %done) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_kona_i2c_send_cmd_to_ctrl(ptr nocapture noundef readonly %dev, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_kona_i2c_send_cmd_to_ctrl, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %cmd) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %cmd, label %do.end22 [
    i32 0, label %do.body4
    i32 1, label %do.body7
    i32 2, label %do.body12
    i32 3, label %do.body17
  ]

do.body4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !160
  br label %sw.epilog

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %base9 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base9, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 50331648) #8, !srcloc !160
  br label %sw.epilog

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %base14 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base14, align 4
  %add.ptr15 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 184549376) #8, !srcloc !160
  br label %sw.epilog

do.body17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %base19 = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %base19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base19, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 83886080) #8, !srcloc !160
  br label %sw.epilog

do.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.33, i32 noundef %cmd) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end22, %do.body17, %do.body12, %do.body7, %do.body4
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_kona_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %external_clk = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %external_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body2, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

do.body2:                                         ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 76
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #8, !srcloc !160
  %call5 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.37, i32 noundef %call5) #11
  br label %do.body83

if.end11:                                         ; preds = %do.body2
  %hs_cfg = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hs_cfg, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  %call.i137 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %1, i8 noundef zeroext 8, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp.i = icmp slt i32 %call.i137, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i140

do.end.i:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #11
  br label %xfer_send_stop

if.end.i140:                                      ; preds = %if.then13
  %18 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %external_clk, align 4
  %call2.i = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef 104000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i139 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i139, label %if.end7.i, label %bcm_kona_i2c_switch_to_hs.exit

if.end7.i:                                        ; preds = %if.end.i140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hs_cfg, align 4
  %prescale.i.i = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %prescale.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %prescale.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 6
  %time_p.i.i = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %time_p.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %time_p.i.i, align 1
  %conv2.i.i = zext i8 %25 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 3
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %no_div.i.i = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %no_div.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %no_div.i.i, align 1
  %conv5.i.i = zext i8 %27 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 2
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %time_div.i.i = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %21, i32 0, i32 6
  %28 = ptrtoint ptr %time_div.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %time_div.i.i, align 1
  %conv9.i.i = zext i8 %29 to i32
  %or11.i.i = or i32 %or7.i.i, %conv9.i.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #8
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %30) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void @arm_heavy_mb() #8
  %33 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hs_cfg, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  %conv15.i.i = zext i8 %36 to i32
  %shl16.i.i = shl nuw nsw i32 %conv15.i.i, 10
  %hs_high_phase.i.i = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %hs_high_phase.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hs_high_phase.i.i, align 1
  %conv18.i.i = zext i8 %38 to i32
  %shl19.i.i = shl nuw nsw i32 %conv18.i.i, 5
  %or20.i.i = or i32 %shl19.i.i, %shl16.i.i
  %hs_setup.i.i = getelementptr inbounds %struct.hs_bus_speed_cfg, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %hs_setup.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hs_setup.i.i, align 1
  %conv22.i.i = zext i8 %40 to i32
  %or24.i.i = or i32 %or20.i.i, %conv22.i.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %or24.i.i) #8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %43, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %41) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %45, i32 88
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  %47 = or i32 %46, 8388608
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %49, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i.i, i32 %47) #8, !srcloc !160
  %call8.i = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.end7.i.if.end18_crit_edge

if.end7.i.if.end18_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.60) #11
  br label %xfer_send_stop

bcm_kona_i2c_switch_to_hs.exit:                   ; preds = %if.end.i140
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.56, i32 noundef %call2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp15 = icmp slt i32 %call2.i, 0
  br i1 %cmp15, label %bcm_kona_i2c_switch_to_hs.exit.xfer_send_stop_crit_edge, label %bcm_kona_i2c_switch_to_hs.exit.if.end18_crit_edge

bcm_kona_i2c_switch_to_hs.exit.if.end18_crit_edge: ; preds = %bcm_kona_i2c_switch_to_hs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

bcm_kona_i2c_switch_to_hs.exit.xfer_send_stop_crit_edge: ; preds = %bcm_kona_i2c_switch_to_hs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfer_send_stop

if.end18:                                         ; preds = %bcm_kona_i2c_switch_to_hs.exit.if.end18_crit_edge, %if.end7.i.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp19220 = icmp sgt i32 %num, 0
  br i1 %cmp19220, label %for.body.lr.ph, label %if.end18.xfer_send_stop_crit_edge

if.end18.xfer_send_stop_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfer_send_stop

for.body.lr.ph:                                   ; preds = %if.end18
  %done.i.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 5
  %irq.i.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0221)
  %cmp20.not = icmp eq i32 %i.0221, 0
  br i1 %cmp20.not, label %for.body.if.end33_crit_edge, label %land.lhs.true

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0221, i32 1
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags, align 2
  %56 = and i16 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %cmp21 = icmp eq i16 %56, 0
  br i1 %cmp21, label %if.then23, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then23:                                        ; preds = %land.lhs.true
  %call24 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.then23.if.end33_crit_edge

if.then23.if.end33_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.40, i32 noundef %call24) #11
  br label %xfer_send_stop

if.end33:                                         ; preds = %if.then23.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %flags34 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0221, i32 1
  %59 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags34, align 2
  %61 = and i16 %60, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool37.not = icmp eq i16 %61, 0
  br i1 %tobool37.not, label %if.then38, label %if.end33.if.end49_crit_edge

if.end33.if.end49_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then38:                                        ; preds = %if.end33
  %62 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags34, align 2
  %64 = and i16 %63, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool.not.i142 = icmp eq i16 %64, 0
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx, align 4
  br i1 %tobool.not.i142, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then38
  %67 = lshr i16 %66, 7
  %68 = trunc i16 %67 to i8
  %69 = and i8 %68, 6
  %conv4.i = or i8 %69, -16
  %call.i143 = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %1, i8 noundef zeroext %conv4.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %cmp.i144 = icmp slt i32 %call.i143, 0
  br i1 %cmp.i144, label %if.then.i.do.end45_crit_edge, label %if.end.i145

if.then.i.do.end45_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end.i145:                                      ; preds = %if.then.i
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx, align 4
  %conv10.i = trunc i16 %71 to i8
  %call11.i = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %1, i8 noundef zeroext %conv10.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end.i145.do.end45_crit_edge, label %if.end15.i

if.end.i145.do.end45_crit_edge:                   ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end15.i:                                       ; preds = %if.end.i145
  %72 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %flags34, align 2
  %74 = and i16 %73, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool19.not.i = icmp eq i16 %74, 0
  br i1 %tobool19.not.i, label %if.end15.i.if.end49_crit_edge, label %if.then20.i

if.end15.i.if.end49_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then20.i:                                      ; preds = %if.end15.i
  %call21.i = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %1, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then20.i.do.end45_crit_edge, label %if.end25.i

if.then20.i.do.end45_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end25.i:                                       ; preds = %if.then20.i
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx, align 4
  %77 = lshr i16 %76, 7
  %78 = trunc i16 %77 to i8
  %79 = and i8 %78, 6
  %conv32.i = or i8 %79, -15
  %call33.i = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %1, i8 noundef zeroext %conv32.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end25.i.do.end45_crit_edge, label %if.end25.i.if.end49_crit_edge

if.end25.i.if.end49_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end25.i.do.end45_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.else.i:                                        ; preds = %if.then38
  %conv.i.i146 = trunc i16 %66 to i8
  %shl.i.i147 = shl i8 %conv.i.i146, 1
  %80 = trunc i16 %63 to i8
  %81 = and i8 %80, 1
  %or.i.i148 = or i8 %shl.i.i147, %81
  %call40.i = tail call fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %1, i8 noundef zeroext %or.i.i148, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.else.i.do.end45_crit_edge, label %if.else.i.if.end49_crit_edge

if.else.i.if.end49_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else.i.do.end45_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

do.end45:                                         ; preds = %if.else.i.do.end45_crit_edge, %if.end25.i.do.end45_crit_edge, %if.then20.i.do.end45_crit_edge, %if.end.i145.do.end45_crit_edge, %if.then.i.do.end45_crit_edge
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx, align 4
  %conv47 = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.43, i32 noundef %conv47, i32 noundef %i.0221, i32 noundef -121) #11
  br label %xfer_send_stop

if.end49:                                         ; preds = %if.else.i.if.end49_crit_edge, %if.end25.i.if.end49_crit_edge, %if.end15.i.if.end49_crit_edge, %if.end33.if.end49_crit_edge
  %86 = ptrtoint ptr %flags34 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %flags34, align 2
  %88 = and i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool53.not = icmp eq i16 %88, 0
  %len.i158 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0221, i32 2
  %89 = ptrtoint ptr %len.i158 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %cmp28.not.i = icmp eq i16 %90, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end49
  br i1 %cmp28.not.i, label %if.then54.for.inc_crit_edge, label %while.body.lr.ph.i

if.then54.for.inc_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.lr.ph.i:                               ; preds = %if.then54
  %conv29.i = zext i16 %90 to i32
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0221, i32 3
  %91 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end12.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %conv36.i = phi i32 [ %conv29.i, %while.body.lr.ph.i ], [ %conv.i, %if.end12.i.while.body.i_crit_edge ]
  %tmp_buf.034.i = phi ptr [ %92, %while.body.lr.ph.i ], [ %add.ptr.i155, %if.end12.i.while.body.i_crit_edge ]
  %bytes_read.033.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end12.i.while.body.i_crit_edge ]
  %last_byte_nak.032.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %spec.select26.i, %if.end12.i.while.body.i_crit_edge ]
  %bytes_to_read.031.i = phi i32 [ 64, %while.body.lr.ph.i ], [ %spec.select.i, %if.end12.i.while.body.i_crit_edge ]
  %sub.i = sub i32 %conv36.i, %bytes_read.033.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub.i)
  %cmp4.i = icmp ult i32 %sub.i, 65
  %spec.select.i = select i1 %cmp4.i, i32 %sub.i, i32 %bytes_to_read.031.i
  %spec.select26.i = select i1 %cmp4.i, i32 1, i32 %last_byte_nak.032.i
  %93 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %done.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  tail call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %95, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151, i32 268435456) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %shl.i.i152 = shl i32 %spec.select26.i, 7
  %or.i.i153 = or i32 %shl.i.i152, %spec.select.i
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i153) #8
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %98, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %96) #8, !srcloc !160
  %call8.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef 10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %100, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 0) #8, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %do.end61, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp.not31.i.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp.not31.i.i, label %for.cond.preheader.i.i.if.end12.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end12.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %buf.addr.033.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %tmp_buf.034.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %len.addr.032.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %spec.select.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %102, i32 108
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i.i) #8, !srcloc !158
  %104 = lshr i32 %103, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  %conv.i.i154 = trunc i32 %104 to i8
  %105 = ptrtoint ptr %buf.addr.033.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv.i.i154, ptr %buf.addr.033.i.i, align 1
  %dec.i.i = add i32 %len.addr.032.i.i, -1
  %incdec.ptr.i.i = getelementptr i8, ptr %buf.addr.033.i.i, i32 1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %for.body.i.i.if.end12.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.if.end12.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.body.i.i.if.end12.i_crit_edge, %for.cond.preheader.i.i.if.end12.i_crit_edge
  %add.i = add i32 %spec.select.i, %bytes_read.033.i
  %add.ptr.i155 = getelementptr i8, ptr %tmp_buf.034.i, i32 %spec.select.i
  %106 = ptrtoint ptr %len.i158 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %len.i158, align 4
  %conv.i = zext i16 %107 to i32
  %cmp.i156 = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i156, label %if.end12.i.while.body.i_crit_edge, label %if.end12.i.for.inc_crit_edge

if.end12.i.for.inc_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end12.i.while.body.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end61:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.64) #11
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.46) #11
  br label %xfer_send_stop

if.else:                                          ; preds = %if.end49
  br i1 %cmp28.not.i, label %if.else.for.inc_crit_edge, label %while.body.lr.ph.i162

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body.lr.ph.i162:                            ; preds = %if.else
  %conv27.i = zext i16 %90 to i32
  %buf.i159 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0221, i32 3
  %112 = ptrtoint ptr %buf.i159 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %buf.i159, align 4
  br label %while.body.i167

while.body.i167:                                  ; preds = %if.end12.i174.while.body.i167_crit_edge, %while.body.lr.ph.i162
  %conv33.i = phi i32 [ %conv27.i, %while.body.lr.ph.i162 ], [ %conv.i172, %if.end12.i174.while.body.i167_crit_edge ]
  %tmp_buf.031.i = phi ptr [ %113, %while.body.lr.ph.i162 ], [ %add.ptr.i171, %if.end12.i174.while.body.i167_crit_edge ]
  %bytes_written.030.i = phi i32 [ 0, %while.body.lr.ph.i162 ], [ %add.i170, %if.end12.i174.while.body.i167_crit_edge ]
  %bytes_to_write.029.i = phi i32 [ 64, %while.body.lr.ph.i162 ], [ %spec.select.i165, %if.end12.i174.while.body.i167_crit_edge ]
  %sub.i163 = sub i32 %conv33.i, %bytes_written.030.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %sub.i163)
  %cmp4.i164 = icmp ult i32 %sub.i163, 65
  %spec.select.i165 = select i1 %cmp4.i164, i32 %sub.i163, i32 %bytes_to_write.029.i
  %114 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %done.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 4
  %add.ptr.i.i166 = getelementptr i8, ptr %116, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i166, i32 50331648) #8, !srcloc !160
  %117 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq.i.i, align 8
  tail call void @disable_irq(i32 noundef %118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i165)
  %cmp57.not.i.i = icmp eq i32 %spec.select.i165, 0
  br i1 %cmp57.not.i.i, label %while.body.i167.for.end.i.i_crit_edge, label %while.body.i167.do.body1.i.i_crit_edge

while.body.i167.do.body1.i.i_crit_edge:           ; preds = %while.body.i167
  br label %do.body1.i.i

while.body.i167.for.end.i.i_crit_edge:            ; preds = %while.body.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

do.body1.i.i:                                     ; preds = %do.body1.i.i.do.body1.i.i_crit_edge, %while.body.i167.do.body1.i.i_crit_edge
  %k.058.i.i = phi i32 [ %inc.i.i, %do.body1.i.i.do.body1.i.i_crit_edge ], [ 0, %while.body.i167.do.body1.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %arrayidx.i.i = getelementptr i8, ptr %tmp_buf.031.i, i32 %k.058.i.i
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i168 = zext i8 %120 to i32
  %121 = shl nuw i32 %conv.i.i168, 24
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %123, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %121) #8, !srcloc !160
  %inc.i.i = add nuw i32 %k.058.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %spec.select.i165
  br i1 %exitcond.not.i.i, label %do.body1.i.i.for.end.i.i_crit_edge, label %do.body1.i.i.do.body1.i.i_crit_edge

do.body1.i.i.do.body1.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1.i.i

do.body1.i.i.for.end.i.i_crit_edge:               ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %do.body1.i.i.for.end.i.i_crit_edge, %while.body.i167.for.end.i.i_crit_edge
  %124 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq.i.i, align 8
  tail call void @enable_irq(i32 noundef %125) #8
  br label %do.body7.i.i

do.body7.i.i:                                     ; preds = %do.body7.i.i.do.body7.i.i_crit_edge, %for.end.i.i
  %time_left.0.i.i = phi i32 [ 10, %for.end.i.i ], [ %call9.i.i, %do.body7.i.i.do.body7.i.i_crit_edge ]
  %call9.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef %time_left.0.i.i) #8
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %127, i32 84
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i169 = icmp eq i32 %call9.i.i, 0
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i169, true
  %129 = and i32 %128, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool15.not.i.i = icmp eq i32 %129, 0
  %or.cond.i.i = select i1 %tobool.not.not.i.i, i1 %tobool15.not.i.i, i1 false
  br i1 %or.cond.i.i, label %do.body7.i.i.do.body7.i.i_crit_edge, label %do.body17.i.i

do.body7.i.i.do.body7.i.i_crit_edge:              ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i.i

do.body17.i.i:                                    ; preds = %do.body7.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %130 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %131, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 0) #8, !srcloc !160
  %132 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %133, i32 32
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %135 = and i32 %134, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool30.not.i.i = icmp ne i32 %135, 0
  %brmerge.i.i = select i1 %tobool30.not.i.i, i1 true, i1 %tobool.not.i.i169
  br i1 %brmerge.i.i, label %do.end70, label %if.end12.i174

if.end12.i174:                                    ; preds = %do.body17.i.i
  %add.i170 = add i32 %spec.select.i165, %bytes_written.030.i
  %add.ptr.i171 = getelementptr i8, ptr %tmp_buf.031.i, i32 %spec.select.i165
  %136 = ptrtoint ptr %len.i158 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %len.i158, align 4
  %conv.i172 = zext i16 %137 to i32
  %cmp.i173 = icmp ult i32 %add.i170, %conv.i172
  br i1 %cmp.i173, label %if.end12.i174.while.body.i167_crit_edge, label %if.end12.i174.for.inc_crit_edge

if.end12.i174.for.inc_crit_edge:                  ; preds = %if.end12.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end12.i174.while.body.i167_crit_edge:          ; preds = %if.end12.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i167

do.end70:                                         ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.str.66.mux.i.i = select i1 %tobool30.not.i.i, ptr @.str.66, ptr @.str.69
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull %.str.66.mux.i.i) #11
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.49) #11
  br label %xfer_send_stop

for.inc:                                          ; preds = %if.end12.i174.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.end12.i.for.inc_crit_edge, %if.then54.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.xfer_send_stop_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.xfer_send_stop_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %xfer_send_stop

xfer_send_stop:                                   ; preds = %for.inc.xfer_send_stop_crit_edge, %do.end70, %do.end61, %do.end45, %do.end30, %if.end18.xfer_send_stop_crit_edge, %bcm_kona_i2c_switch_to_hs.exit.xfer_send_stop_crit_edge, %do.end13.i, %do.end.i
  %rc.0 = phi i32 [ %call2.i, %bcm_kona_i2c_switch_to_hs.exit.xfer_send_stop_crit_edge ], [ %call24, %do.end30 ], [ -121, %do.end61 ], [ -121, %do.end70 ], [ -121, %do.end45 ], [ %call8.i, %do.end13.i ], [ %call.i137, %do.end.i ], [ %num, %if.end18.xfer_send_stop_crit_edge ], [ %num, %for.inc.xfer_send_stop_crit_edge ]
  %call74 = tail call fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %1, i32 noundef 3)
  %142 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hs_cfg, align 4
  %tobool76.not = icmp eq ptr %143, null
  br i1 %tobool76.not, label %xfer_send_stop.do.body83_crit_edge, label %if.then77

xfer_send_stop.do.body83_crit_edge:               ; preds = %xfer_send_stop
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

if.then77:                                        ; preds = %xfer_send_stop
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %145, i32 88
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i177) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  %147 = and i32 %146, -8388609
  %148 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %149, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %147) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %std_cfg.i.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %1, i32 0, i32 6
  %150 = ptrtoint ptr %std_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %std_cfg.i.i, align 8
  %prescale.i.i178 = getelementptr inbounds %struct.bus_speed_cfg, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %prescale.i.i178 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %prescale.i.i178, align 1
  %conv.i.i179 = zext i8 %153 to i32
  %shl.i.i180 = shl nuw nsw i32 %conv.i.i179, 6
  %time_p.i.i181 = getelementptr inbounds %struct.bus_speed_cfg, ptr %151, i32 0, i32 3
  %154 = ptrtoint ptr %time_p.i.i181 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %time_p.i.i181, align 1
  %conv7.i.i = zext i8 %155 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 3
  %or.i.i182 = or i32 %shl8.i.i, %shl.i.i180
  %no_div.i.i183 = getelementptr inbounds %struct.bus_speed_cfg, ptr %151, i32 0, i32 4
  %156 = ptrtoint ptr %no_div.i.i183 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %no_div.i.i183, align 1
  %conv10.i.i = zext i8 %157 to i32
  %shl11.i.i = shl nuw nsw i32 %conv10.i.i, 2
  %or12.i.i = or i32 %or.i.i182, %shl11.i.i
  %time_div.i.i184 = getelementptr inbounds %struct.bus_speed_cfg, ptr %151, i32 0, i32 5
  %158 = ptrtoint ptr %time_div.i.i184 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %time_div.i.i184, align 1
  %conv14.i.i = zext i8 %159 to i32
  %or16.i.i = or i32 %or12.i.i, %conv14.i.i
  %160 = tail call i32 @llvm.bswap.i32(i32 %or16.i.i) #8
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr18.i.i185 = getelementptr i8, ptr %162, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i185, i32 %160) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @arm_heavy_mb() #8
  %163 = ptrtoint ptr %std_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %std_cfg.i.i, align 8
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 1
  %conv22.i.i186 = zext i8 %166 to i32
  %shl23.i.i = shl nuw nsw i32 %conv22.i.i186, 4
  %time_n.i.i = getelementptr inbounds %struct.bus_speed_cfg, ptr %164, i32 0, i32 1
  %167 = ptrtoint ptr %time_n.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %time_n.i.i, align 1
  %conv25.i.i = zext i8 %168 to i32
  %shl26.i.i = shl nuw nsw i32 %conv25.i.i, 1
  %or27.i.i = or i32 %shl23.i.i, %shl26.i.i
  %or28.i.i = or i32 %or27.i.i, 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %or28.i.i) #8
  %170 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base, align 4
  %add.ptr30.i.i187 = getelementptr i8, ptr %171, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i187, i32 %169) #8, !srcloc !160
  %172 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %external_clk, align 4
  %call.i189 = tail call i32 @clk_set_rate(ptr noundef %173, i32 noundef 13000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool.not.i190 = icmp eq i32 %call.i189, 0
  br i1 %tobool.not.i190, label %if.then77.do.body83_crit_edge, label %do.end.i191

if.then77.do.body83_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

do.end.i191:                                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.71, i32 noundef %call.i189) #11
  br label %do.body83

do.body83:                                        ; preds = %do.end.i191, %if.then77.do.body83_crit_edge, %xfer_send_stop.do.body83_crit_edge, %do.end9
  %rc.2 = phi i32 [ %call5, %do.end9 ], [ %rc.0, %xfer_send_stop.do.body83_crit_edge ], [ %rc.0, %if.then77.do.body83_crit_edge ], [ %call.i189, %do.end.i191 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %177, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 67108864) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 4
  %add.ptr.i194 = getelementptr i8, ptr %179, i32 76
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  %181 = and i32 %180, -16777217
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 4
  %add.ptr3.i195 = getelementptr i8, ptr %183, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i195, i32 %181) #8, !srcloc !160
  %184 = ptrtoint ptr %external_clk to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %external_clk, align 4
  tail call void @clk_disable(ptr noundef %185) #8
  tail call void @clk_unprepare(ptr noundef %185) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body83, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %rc.2, %do.body83 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_kona_i2c_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592731
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_kona_send_i2c_cmd(ptr noundef %dev, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 10
  %base.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 72
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %do.body, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %bcm_kona_i2c_wait_if_busy.exit.thread, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

bcm_kona_i2c_wait_if_busy.exit.thread:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.53) #11
  br label %cleanup

do.body:                                          ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #8, !srcloc !160
  %done = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %done, align 4
  tail call fastcc void @bcm_kona_i2c_send_cmd_to_ctrl(ptr noundef %dev, i32 noundef %cmd)
  %call3 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #8, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end12, label %do.body.if.end13_crit_edge

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.51) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.body.if.end13_crit_edge
  %rc.0 = phi i32 [ 0, %do.body.if.end13_crit_edge ], [ -110, %do.end12 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_kona_send_i2c_cmd, %bcm_kona_i2c_send_cmd_to_ctrl.exit)) #8
          to label %if.then.i [label %bcm_kona_i2c_send_cmd_to_ctrl.exit], !srcloc !171

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, ptr noundef %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0) #8
  br label %bcm_kona_i2c_send_cmd_to_ctrl.exit

bcm_kona_i2c_send_cmd_to_ctrl.exit:               ; preds = %if.then.i, %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 16777216) #8, !srcloc !160
  br label %cleanup

cleanup:                                          ; preds = %bcm_kona_i2c_send_cmd_to_ctrl.exit, %bcm_kona_i2c_wait_if_busy.exit.thread
  %retval.0 = phi i32 [ %rc.0, %bcm_kona_i2c_send_cmd_to_ctrl.exit ], [ -110, %bcm_kona_i2c_wait_if_busy.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_kona_i2c_write_byte(ptr noundef %dev, i8 noundef zeroext %data, i32 noundef %nak_expected) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %0, 10
  %base.i = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 72
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %do.body, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %bcm_kona_i2c_wait_if_busy.exit.thread, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

bcm_kona_i2c_wait_if_busy.exit.thread:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.53) #11
  br label %cleanup

do.body:                                          ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #8, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 134217728) #8, !srcloc !160
  %done = getelementptr inbounds %struct.bcm_kona_i2c_dev, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %conv = zext i8 %data to i32
  %12 = shl nuw i32 %conv, 24
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr11 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %12) #8, !srcloc !160
  %call13 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #8, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %do.body20, label %if.end30

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_kona_i2c_write_byte, %cleanup)) #8
          to label %if.then26 [label %cleanup], !srcloc !171

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug289, ptr noundef %18, ptr noundef nonnull @.str.51) #8
  br label %cleanup

if.end30:                                         ; preds = %do.body
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr32 = getelementptr i8, ptr %20, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  %22 = lshr i32 %21, 27
  %.lobit = and i32 %22, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %.lobit, i32 %nak_expected)
  %tobool37.not = icmp eq i32 %.lobit, %nak_expected
  br i1 %tobool37.not, label %if.end30.cleanup_crit_edge, label %do.body39

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm_kona_i2c_write_byte, %cleanup)) #8
          to label %if.then53 [label %cleanup], !srcloc !171

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug290, ptr noundef %24, ptr noundef nonnull @.str.63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %do.body39, %if.end30.cleanup_crit_edge, %if.then26, %do.body20, %bcm_kona_i2c_wait_if_busy.exit.thread
  %retval.0 = phi i32 [ -110, %if.then26 ], [ -121, %if.then53 ], [ 0, %if.end30.cleanup_crit_edge ], [ -110, %bcm_kona_i2c_wait_if_busy.exit.thread ], [ -110, %do.body20 ], [ -121, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145}
!llvm.module.flags = !{!147, !148, !149, !150, !151, !152, !153, !154}
!llvm.ident = !{!155}

!0 = !{ptr @__initcall__kmod_i2c_bcm_kona__291_895_bcm_kona_i2c_driver_init6, !1, !"__initcall__kmod_i2c_bcm_kona__291_895_bcm_kona_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 895, i32 1}
!2 = !{ptr @__exitcall_bcm_kona_i2c_driver_exit, !1, !"__exitcall_bcm_kona_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 897, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 898, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 899, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 889, i32 14}
!12 = !{ptr @bcm_kona_i2c_driver, !13, !"bcm_kona_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 887, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 771, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm_kona_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcm_kona_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 777, i32 3}
!24 = !{ptr @bcm_kona_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm_kona_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 784, i32 3}
!28 = !{ptr @bcm_kona_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm_kona_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 832, i32 3}
!32 = !{ptr @bcm_kona_i2c_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm_kona_i2c_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 852, i32 22}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 861, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bcm_kona_i2c_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bcm_kona_i2c_probe._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 717, i32 55}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 720, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bcm_kona_i2c_assign_bus_speed._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm_kona_i2c_assign_bus_speed._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 740, i32 3}
!53 = !{ptr @bcm_kona_i2c_assign_bus_speed._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @bcm_kona_i2c_assign_bus_speed._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 741, i32 3}
!57 = !{ptr @bcm_kona_i2c_assign_bus_speed._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @bcm_kona_i2c_assign_bus_speed._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @std_cfg_table, !60, !"std_cfg_table", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 144, i32 35}
!61 = !{ptr @hs_cfg_table, !62, !"hs_cfg_table", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 150, i32 38}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 172, i32 2}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @bcm_kona_i2c_send_cmd_to_ctrl.__UNIQUE_ID_ddebug288, !64, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 202, i32 3}
!70 = !{ptr @bcm_kona_i2c_send_cmd_to_ctrl._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @bcm_kona_i2c_send_cmd_to_ctrl._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @bcm_algo, !73, !"bcm_algo", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 709, i32 35}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 611, i32 3}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bcm_kona_i2c_xfer._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @bcm_kona_i2c_xfer._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 625, i32 3}
!81 = !{ptr @bcm_kona_i2c_xfer._entry.36, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @bcm_kona_i2c_xfer._entry_ptr.38, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 644, i32 5}
!85 = !{ptr @bcm_kona_i2c_xfer._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @bcm_kona_i2c_xfer._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 654, i32 5}
!89 = !{ptr @bcm_kona_i2c_xfer._entry.42, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bcm_kona_i2c_xfer._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 665, i32 5}
!93 = !{ptr @bcm_kona_i2c_xfer._entry.45, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bcm_kona_i2c_xfer._entry_ptr.47, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 671, i32 5}
!97 = !{ptr @bcm_kona_i2c_xfer._entry.48, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bcm_kona_i2c_xfer._entry_ptr.50, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 279, i32 3}
!101 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @bcm_kona_send_i2c_cmd._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @bcm_kona_send_i2c_cmd._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 244, i32 4}
!106 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @bcm_kona_i2c_wait_if_busy._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @bcm_kona_i2c_wait_if_busy._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 560, i32 3}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @bcm_kona_i2c_switch_to_hs._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @bcm_kona_i2c_switch_to_hs._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @bcm_kona_i2c_switch_to_hs._entry.57, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 567, i32 3}
!116 = !{ptr @bcm_kona_i2c_switch_to_hs._entry_ptr.58, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 578, i32 3}
!119 = !{ptr @bcm_kona_i2c_switch_to_hs._entry.59, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @bcm_kona_i2c_switch_to_hs._entry_ptr.61, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 386, i32 3}
!123 = !{ptr @bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug289, !122, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 393, i32 3}
!126 = !{ptr @bcm_kona_i2c_write_byte.__UNIQUE_ID_ddebug290, !125, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 314, i32 3}
!129 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @bcm_kona_i2c_read_fifo_single._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @bcm_kona_i2c_read_fifo_single._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 436, i32 3}
!134 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bcm_kona_i2c_write_fifo_single._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bcm_kona_i2c_write_fifo_single._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 442, i32 3}
!139 = !{ptr @bcm_kona_i2c_write_fifo_single._entry.68, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bcm_kona_i2c_write_fifo_single._entry_ptr.70, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 593, i32 3}
!143 = !{ptr @bcm_kona_i2c_switch_to_std._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @bcm_kona_i2c_switch_to_std._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @bcm_kona_i2c_of_match, !146, !"bcm_kona_i2c_of_match", i1 false, i1 false}
!146 = !{!"../drivers/i2c/busses/i2c-bcm-kona.c", i32 881, i32 34}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 1, !"min_enum_size", i32 4}
!149 = !{i32 8, !"branch-target-enforcement", i32 0}
!150 = !{i32 8, !"sign-return-address", i32 0}
!151 = !{i32 8, !"sign-return-address-all", i32 0}
!152 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!153 = !{i32 7, !"uwtable", i32 1}
!154 = !{i32 7, !"frame-pointer", i32 2}
!155 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!156 = !{!"auto-init"}
!157 = !{i64 2155582057}
!158 = !{i64 6845043}
!159 = !{i64 2155582998}
!160 = !{i64 6844625}
!161 = !{i64 2155610290}
!162 = !{i64 2155611235}
!163 = !{i64 2155611646}
!164 = !{i64 2155612586}
!165 = !{i64 2155645249}
!166 = !{i64 2155608296}
!167 = !{i64 2155609241}
!168 = !{i64 2155645695}
!169 = !{i64 2155646163}
!170 = !{i64 2155646705}
!171 = !{i64 2148298919, i64 2148298924, i64 2148298937, i64 2148298981, i64 2148299015, i64 2148299036}
!172 = !{i64 2155576995}
!173 = !{i64 2155648999}
!174 = !{i64 2155584045}
!175 = !{i64 2155584990}
!176 = !{i64 2155585534}
!177 = !{i64 2155585828}
!178 = !{i64 2155586327}
!179 = !{i64 2155577663}
!180 = !{i64 2155578424}
!181 = !{i64 2155579141}
!182 = !{i64 2155625469}
!183 = !{i64 2155613377}
!184 = !{i64 2155614331}
!185 = !{i64 2155615864}
!186 = !{i64 2155616805}
!187 = !{i64 2155591679}
!188 = !{i64 2155592154}
!189 = !{i64 2155592682}
!190 = !{i64 2155594926}
!191 = !{i64 2155601978}
!192 = !{i64 2155602454}
!193 = !{i64 2155603163}
!194 = !{i64 2155603402}
!195 = !{i64 2155604093}
!196 = !{i64 2155633984}
!197 = !{i64 2155587082}
!198 = !{i64 2155589235}
!199 = !{i64 2155589664}
!200 = !{i64 2155595190}
!201 = !{i64 2155595639}
!202 = !{i64 2155596071}
!203 = !{i64 2155596482}
!204 = !{i64 2155599441}
