; ModuleID = '/llk/IR_all_yes/drivers/nfc/nxp-nci/i2c.c_pt.bc'
source_filename = "../drivers/nfc/nxp-nci/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nxp_nci_phy_ops = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nxp_nci_i2c_phy = type { ptr, ptr, ptr, ptr, i32 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nxp_nci_info = type { ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.nxp_nci_fw_info }
%struct.nxp_nci_fw_info = type { [33 x i8], ptr, i32, i32, ptr, i32, %struct.work_struct, %struct.completion, i32 }
%struct.sk_buff = type { %union.anon.89, %union.anon.92, %union.anon.93, [48 x i8], %union.anon.94, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.96, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr, %union.anon.91 }
%union.anon.91 = type { ptr }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, ptr }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.98, i32, i32, i32, i16, i16, %union.anon.100, i32, %union.anon.101, %union.anon.102, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.98 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i16 }
%struct.nci_ctrl_hdr = type { i8, i8, i8 }

@__initcall__kmod_nxp_nci_i2c__316_352_nxp_nci_i2c_driver_init6 = internal global ptr @nxp_nci_i2c_driver_init, section ".initcall6.init", align 4
@nxp_nci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nxp_nci_i2c_probe, ptr @nxp_nci_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_nxp_nci_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nxp_nci_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nxp_nci_i2c_driver_exit = internal global ptr @nxp_nci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file317 = internal constant [49 x i8] c"nxp_nci_i2c.file=drivers/nfc/nxp-nci/nxp-nci_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [24 x i8] c"nxp_nci_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [63 x i8] c"nxp_nci_i2c.description=I2C driver for NXP NCI NFC controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [68 x i8] c"nxp_nci_i2c.author=Cl\C3\A9ment Perrochaud <clement.perrochaud@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author321 = internal constant [67 x i8] c"nxp_nci_i2c.author=Oleg Zhurakivskyy <oleg.zhurakivskyy@intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp-nci_i2c\00", [20 x i8] zeroinitializer }, align 32
@of_nxp_nci_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,nxp-nci-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nxp-nci_i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: Need I2C_FUNC_I2C\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxp_nci_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/nxp-nci/i2c.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry_ptr = internal global ptr @nxp_nci_i2c_probe._entry, section ".printk_index", align 4
@nxp_nci_i2c_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp_nci_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: Failed to get EN gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry_ptr.11 = internal global ptr @nxp_nci_i2c_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: Failed to get FW gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry_ptr.15 = internal global ptr @nxp_nci_i2c_probe._entry.13, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.nxp_nci_phy_ops, [24 x i8] } { %struct.nxp_nci_phy_ops { ptr @nxp_nci_i2c_set_mode, ptr @nxp_nci_i2c_write }, [24 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_probe._entry_ptr.18 = internal global ptr @nxp_nci_i2c_probe._entry.16, section ".printk_index", align 4
@nxp_nci_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFC: Error %d on I2C send\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxp_nci_i2c_write\00", [46 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_write._entry_ptr = internal global ptr @nxp_nci_i2c_write._entry, section ".printk_index", align 4
@nxp_nci_i2c_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 81, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFC: Invalid length sent: %u (expected %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_write._entry_ptr.25 = internal global ptr @nxp_nci_i2c_write._entry.23, section ".printk_index", align 4
@nxp_nci_i2c_irq_thread_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: Read failed with error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nxp_nci_i2c_irq_thread_fn\00", [38 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_irq_thread_fn._entry_ptr = internal global ptr @nxp_nci_i2c_irq_thread_fn._entry, section ".printk_index", align 4
@nxp_nci_i2c_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nxp_nci_i2c_nci_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFC: Incorrect header length: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nxp_nci_i2c_nci_read\00", [43 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_nci_read._entry_ptr = internal global ptr @nxp_nci_i2c_nci_read._entry, section ".printk_index", align 4
@nxp_nci_i2c_nci_read._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NFC: Invalid frame payload length: %u (expected %u)\0A\00", [43 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_nci_read._entry_ptr.32 = internal global ptr @nxp_nci_i2c_nci_read._entry.30, section ".printk_index", align 4
@nxp_nci_i2c_fw_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.33, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nxp_nci_i2c_fw_read\00", [44 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_fw_read._entry_ptr = internal global ptr @nxp_nci_i2c_fw_read._entry, section ".printk_index", align 4
@nxp_nci_i2c_fw_read._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"NFC: Invalid frame length: %u (expected %zu)\0A\00", [50 x i8] zeroinitializer }, align 32
@nxp_nci_i2c_fw_read._entry_ptr.36 = internal global ptr @nxp_nci_i2c_fw_read._entry.34, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"nxp_nci_i2c_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 341, i32 26 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 343, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"of_nxp_nci_i2c_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 326, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"nxp_nci_i2c_id_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 320, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 267, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 281, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 283, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 285, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 289, i32 47 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 291, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 91, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 305, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 77, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 79, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 227, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 152, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 167, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 108, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [29 x i8] c"../drivers/nfc/nxp-nci/i2c.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 126, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_nxp_nci_i2c_driver_exit, ptr @__initcall__kmod_nxp_nci_i2c__316_352_nxp_nci_i2c_driver_init6, ptr @nxp_nci_i2c_driver_exit, ptr @nxp_nci_i2c_fw_read._entry, ptr @nxp_nci_i2c_fw_read._entry.34, ptr @nxp_nci_i2c_fw_read._entry_ptr, ptr @nxp_nci_i2c_fw_read._entry_ptr.36, ptr @nxp_nci_i2c_irq_thread_fn._entry, ptr @nxp_nci_i2c_irq_thread_fn._entry_ptr, ptr @nxp_nci_i2c_nci_read._entry, ptr @nxp_nci_i2c_nci_read._entry.30, ptr @nxp_nci_i2c_nci_read._entry_ptr, ptr @nxp_nci_i2c_nci_read._entry_ptr.32, ptr @nxp_nci_i2c_probe._entry, ptr @nxp_nci_i2c_probe._entry.13, ptr @nxp_nci_i2c_probe._entry.16, ptr @nxp_nci_i2c_probe._entry.9, ptr @nxp_nci_i2c_probe._entry_ptr, ptr @nxp_nci_i2c_probe._entry_ptr.11, ptr @nxp_nci_i2c_probe._entry_ptr.15, ptr @nxp_nci_i2c_probe._entry_ptr.18, ptr @nxp_nci_i2c_write._entry, ptr @nxp_nci_i2c_write._entry.23, ptr @nxp_nci_i2c_write._entry_ptr, ptr @nxp_nci_i2c_write._entry_ptr.25, ptr @nxp_nci_i2c_driver, ptr @.str, ptr @of_nxp_nci_i2c_match, ptr @nxp_nci_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @i2c_phy_ops, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_nxp_nci_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_irq_thread_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_nci_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_nci_read._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_fw_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxp_nci_i2c_fw_read._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nxp_nci_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nxp_nci_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @nxp_nci_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxp_nci_i2c_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxp_nci_i2c_probe, %if.then16)) #5
          to label %if.end20 [label %if.then16], !srcloc !102

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nxp_nci_i2c_probe.__UNIQUE_ID_ddebug315, ptr noundef %dev1, ptr noundef nonnull @.str.7) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end7
  %call21 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #5
  %gpiod_en = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %gpiod_en, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %9 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpiod_en, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %call31 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  %gpiod_fw = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call31, ptr %gpiod_fw, align 4
  %cmp.i83 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %13 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpiod_fw, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %ndev = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %call.i, i32 0, i32 1
  %call42 = tail call i32 @nxp_nci_probe(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @i2c_phy_ops, i32 noundef 32, ptr noundef %ndev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.end40.cleanup_crit_edge, label %if.end44

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call45 = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef null, ptr noundef nonnull @nxp_nci_i2c_irq_thread_fn, i32 noundef 8193, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end44.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end37, %do.end27, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %11, %do.end27 ], [ %15, %do.end37 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call42, %if.end40.cleanup_crit_edge ], [ %call45, %do.end50 ], [ %call45, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void @nxp_nci_remove(ptr noundef %3) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nxp_nci_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_i2c_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #5
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %skb, align 4
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %ndev = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %phy_id, i32 0, i32 1
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.land.end_crit_edge, label %if.end

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_id, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.land.end_crit_edge, label %lor.lhs.false3

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false3:                                   ; preds = %if.end
  %irq4 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %irq)
  %cmp.not = icmp eq i32 %6, %irq
  br i1 %cmp.not, label %if.end6, label %lor.lhs.false3.land.end_crit_edge

lor.lhs.false3.land.end_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

if.end6:                                          ; preds = %lor.lhs.false3
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %2, i32 0, i32 26
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end6.land.end_crit_edge, label %if.end10

if.end6.land.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

if.end10:                                         ; preds = %if.end6
  %info_lock = getelementptr inbounds %struct.nxp_nci_info, ptr %8, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #5
  %hard_fault = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %phy_id, i32 0, i32 4
  %9 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %if.end13, label %if.end10.exit_irq_handled_crit_edge

if.end10.exit_irq_handled_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_irq_handled

if.end13:                                         ; preds = %if.end10
  %mode = getelementptr inbounds %struct.nxp_nci_info, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end13.if.end29_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 0, label %if.end13.if.then19_crit_edge
  ]

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

sw.bb:                                            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = call fastcc i32 @nxp_nci_i2c_nci_read(ptr noundef nonnull %phy_id, ptr noundef nonnull %skb)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call fastcc i32 @nxp_nci_i2c_fw_read(ptr noundef nonnull %phy_id, ptr noundef nonnull %skb)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb
  %r.0 = phi i32 [ %call16, %sw.bb15 ], [ %call14, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %r.0)
  %cmp18 = icmp eq i32 %r.0, -121
  br i1 %cmp18, label %sw.epilog.if.then19_crit_edge, label %if.end26

sw.epilog.if.then19_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

if.then19:                                        ; preds = %sw.epilog.if.then19_crit_edge, %if.end13.if.then19_crit_edge
  %14 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -121, ptr %hard_fault, align 4
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp22 = icmp eq i32 %16, 2
  br i1 %cmp22, label %if.then23, label %if.then19.do.end_crit_edge

if.then19.do.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev, align 4
  tail call void @nxp_nci_fw_recv_frame(ptr noundef %18, ptr noundef null) #5
  br label %do.end

if.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %cmp27 = icmp slt i32 %r.0, 0
  br i1 %cmp27, label %if.end26.do.end_crit_edge, label %if.end29thread-pre-split

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end26.do.end_crit_edge, %if.then23, %if.then19.do.end_crit_edge
  %r.0106113 = phi i32 [ %r.0, %if.end26.do.end_crit_edge ], [ -121, %if.then19.do.end_crit_edge ], [ -121, %if.then23 ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %r.0106113) #8
  br label %exit_irq_handled

if.end29thread-pre-split:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %mode, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29thread-pre-split, %if.end13.if.end29_crit_edge
  %20 = phi i32 [ %.pr, %if.end29thread-pre-split ], [ %12, %if.end13.if.end29_crit_edge ]
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %20, label %if.end29.exit_irq_handled_crit_edge [
    i32 1, label %sw.bb31
    i32 2, label %sw.bb34
  ]

if.end29.exit_irq_handled_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_irq_handled

sw.bb31:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %call33 = tail call i32 @nci_recv_frame(ptr noundef %23, ptr noundef %25) #5
  br label %exit_irq_handled

sw.bb34:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev, align 4
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  tail call void @nxp_nci_fw_recv_frame(ptr noundef %27, ptr noundef %29) #5
  br label %exit_irq_handled

exit_irq_handled:                                 ; preds = %sw.bb34, %sw.bb31, %if.end29.exit_irq_handled_crit_edge, %do.end, %if.end10.exit_irq_handled_crit_edge
  tail call void @mutex_unlock(ptr noundef %info_lock) #5
  br label %cleanup

land.end:                                         ; preds = %if.end6.land.end_crit_edge, %lor.lhs.false3.land.end_crit_edge, %if.end.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b103 = load i1, ptr @nxp_nci_i2c_irq_thread_fn.__already_done, align 1
  br i1 %.b103, label %land.end.cleanup_crit_edge, label %if.then43, !prof !103

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nxp_nci_i2c_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 246, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %land.end.cleanup_crit_edge, %exit_irq_handled
  %retval.0 = phi i32 [ 1, %exit_irq_handled ], [ 0, %if.then43 ], [ 0, %land.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_i2c_set_mode(ptr nocapture noundef %phy_id, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_fw = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %phy_id, i32 0, i32 3
  %0 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp = icmp eq i32 %mode, 2
  %cond = zext i1 %cmp to i32
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef %cond) #5
  %gpiod_en = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %phy_id, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp1.not = icmp ne i32 %mode, 0
  %cond2 = zext i1 %cmp1.not to i32
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef %cond2) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp3 = icmp eq i32 %mode, 0
  br i1 %cmp3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hard_fault = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %phy_id, i32 0, i32 4
  %4 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %hard_fault, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxp_nci_i2c_write(ptr nocapture noundef readonly %phy_id, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %hard_fault = getelementptr inbounds %struct.nxp_nci_i2c_phy, ptr %phy_id, i32 0, i32 4
  %2 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %5, i32 noundef %7, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end7, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end7:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 110) #5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call.i39 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %9, i32 noundef %11, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp8 = icmp slt i32 %call.i39, 0
  br i1 %cmp8, label %do.end, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i39) #8
  br label %cleanup

if.else:                                          ; preds = %if.end7.if.else_crit_edge, %if.end.if.else_crit_edge
  %r.042 = phi i32 [ %call.i39, %if.end7.if.else_crit_edge ], [ %call.i, %if.end.if.else_crit_edge ]
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.042, i32 %13)
  %cmp11.not = icmp eq i32 %r.042, %13
  br i1 %cmp11.not, label %if.else.cleanup_crit_edge, label %do.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.24, i32 noundef %r.042, i32 noundef %13) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.else.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %entry.cleanup_crit_edge ], [ %call.i39, %do.end ], [ -121, %do.end15 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_nci_i2c_nci_read(ptr nocapture noundef readonly %phy, ptr nocapture noundef %skb) unnamed_addr #2 align 64 {
entry:
  %header = alloca %struct.nci_ctrl_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %header) #5
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %header, align 1, !annotation !104
  %1 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %header, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !104
  %3 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %header, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !104
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %header, i32 noundef 3, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 3
  br i1 %cmp1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %conv = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv, 3
  %call.i42 = call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %9 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i42, ptr %skb, align 4
  %cmp5 = icmp eq ptr %call.i42, null
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call.i43 = call ptr @skb_put(ptr noundef nonnull %call.i42, i32 noundef 3) #5
  %10 = call ptr @memcpy(ptr %call.i43, ptr %header, i32 3)
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %conv11 = zext i8 %14 to i32
  %call12 = call ptr @skb_put(ptr noundef %12, i32 noundef %conv11) #5
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %3, align 1
  %conv14 = zext i8 %16 to i32
  %call.i44 = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef %call12, i32 noundef %conv14, i16 noundef zeroext 1) #5
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %conv17 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i44, i32 %conv17)
  %cmp18.not = icmp eq i32 %call.i44, %conv17
  br i1 %cmp18.not, label %if.end8.cleanup_crit_edge, label %do.end23

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.31, i32 noundef %call.i44, i32 noundef %conv17) #8
  %19 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -74, %do.end ], [ -74, %do.end23 ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %header) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxp_nci_i2c_fw_read(ptr nocapture noundef readonly %phy, ptr nocapture noundef %skb) unnamed_addr #2 align 64 {
entry:
  %header = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %header) #5
  %2 = ptrtoint ptr %header to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %header, align 2, !annotation !104
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %header, i32 noundef 2, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 2
  br i1 %cmp1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %header, align 2
  %5 = and i16 %4, 1023
  %narrow = add nuw nsw i16 %5, 2
  %add = zext i16 %narrow to i32
  %add4 = add nuw nsw i32 %add, 2
  %call.i40 = call ptr @__alloc_skb(i32 noundef %add4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i40, ptr %skb, align 4
  %cmp6 = icmp eq ptr %call.i40, null
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %call.i41 = call ptr @skb_put(ptr noundef nonnull %call.i40, i32 noundef 2) #5
  %7 = ptrtoint ptr %header to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %header, align 2
  %9 = ptrtoint ptr %call.i41 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %call.i41, align 1
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb, align 4
  %call11 = call ptr @skb_put(ptr noundef %11, i32 noundef %add) #5
  %call.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %call11, i32 noundef %add, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i42, i32 %add)
  %cmp13.not = icmp eq i32 %call.i42, %add
  br i1 %cmp13.not, label %if.end9.cleanup_crit_edge, label %do.end18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.35, i32 noundef %call.i42, i32 noundef %add) #8
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -74, %do.end ], [ -74, %do.end18 ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %header) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nxp_nci_fw_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nxp_nci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_nxp_nci_i2c__316_352_nxp_nci_i2c_driver_init6, !1, !"__initcall__kmod_nxp_nci_i2c__316_352_nxp_nci_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 352, i32 1}
!2 = !{ptr @__exitcall_nxp_nci_i2c_driver_exit, !1, !"__exitcall_nxp_nci_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file317, !4, !"__UNIQUE_ID_file317", i1 false, i1 false}
!4 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 354, i32 1}
!5 = !{ptr @__UNIQUE_ID_license318, !4, !"__UNIQUE_ID_license318", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description319, !7, !"__UNIQUE_ID_description319", i1 false, i1 false}
!7 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 355, i32 1}
!8 = !{ptr @__UNIQUE_ID_author320, !9, !"__UNIQUE_ID_author320", i1 false, i1 false}
!9 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 356, i32 1}
!10 = !{ptr @__UNIQUE_ID_author321, !11, !"__UNIQUE_ID_author321", i1 false, i1 false}
!11 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 357, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 343, i32 14}
!14 = !{ptr @nxp_nci_i2c_driver, !15, !"nxp_nci_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 341, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 267, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nxp_nci_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @nxp_nci_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 281, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nxp_nci_i2c_probe.__UNIQUE_ID_ddebug315, !25, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 283, i32 38}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 285, i32 3}
!32 = !{ptr @nxp_nci_i2c_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nxp_nci_i2c_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 289, i32 47}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 291, i32 3}
!38 = !{ptr @nxp_nci_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @nxp_nci_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 305, i32 3}
!42 = !{ptr @nxp_nci_i2c_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nxp_nci_i2c_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 254, i32 4}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 255, i32 4}
!48 = distinct !{null, !49, !"acpi_nxp_nci_gpios", i1 false, i1 false}
!49 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 253, i32 39}
!50 = distinct !{null, !51, !"enable_gpios", i1 false, i1 false}
!51 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 251, i32 38}
!52 = distinct !{null, !53, !"firmware_gpios", i1 false, i1 false}
!53 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 250, i32 38}
!54 = !{ptr @i2c_phy_ops, !55, !"i2c_phy_ops", i1 false, i1 false}
!55 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 91, i32 37}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 77, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nxp_nci_i2c_write._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @nxp_nci_i2c_write._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 79, i32 3}
!63 = !{ptr @nxp_nci_i2c_write._entry.23, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @nxp_nci_i2c_write._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 227, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nxp_nci_i2c_irq_thread_fn._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nxp_nci_i2c_irq_thread_fn._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 246, i32 2}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 152, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nxp_nci_i2c_nci_read._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @nxp_nci_i2c_nci_read._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 167, i32 3}
!79 = !{ptr @nxp_nci_i2c_nci_read._entry.30, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @nxp_nci_i2c_nci_read._entry_ptr.32, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 108, i32 3}
!83 = !{ptr @nxp_nci_i2c_fw_read._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @nxp_nci_i2c_fw_read._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 126, i32 3}
!87 = !{ptr @nxp_nci_i2c_fw_read._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @nxp_nci_i2c_fw_read._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @of_nxp_nci_i2c_match, !90, !"of_nxp_nci_i2c_match", i1 false, i1 false}
!90 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 326, i32 34}
!91 = !{ptr @nxp_nci_i2c_id_table, !92, !"nxp_nci_i2c_id_table", i1 false, i1 false}
!92 = !{!"../drivers/nfc/nxp-nci/i2c.c", i32 320, i32 35}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148954096, i64 2148954101, i64 2148954114, i64 2148954158, i64 2148954192, i64 2148954213}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{!"auto-init"}
