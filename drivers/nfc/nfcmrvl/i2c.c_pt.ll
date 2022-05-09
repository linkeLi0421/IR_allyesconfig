; ModuleID = '/llk/IR_all_yes/drivers/nfc/nfcmrvl/i2c.c_pt.bc'
source_filename = "../drivers/nfc/nfcmrvl/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfcmrvl_if_ops = type { ptr, ptr, ptr, ptr }
%struct.nfcmrvl_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.nfcmrvl_i2c_drv_data = type { i32, ptr, ptr, ptr }
%struct.nfcmrvl_private = type { i32, %struct.nfcmrvl_platform_data, ptr, %struct.nfcmrvl_fw_dnld, i8, ptr, ptr, i32, ptr }
%struct.nfcmrvl_fw_dnld = type { [33 x i8], ptr, ptr, ptr, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.timer_list }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.nci_ctrl_hdr = type { i8, i8, i8 }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
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

@__initcall__kmod_nfcmrvl_i2c__315_266_nfcmrvl_i2c_driver_init6 = internal global ptr @nfcmrvl_i2c_driver_init, section ".initcall6.init", align 4
@nfcmrvl_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nfcmrvl_i2c_probe, ptr @nfcmrvl_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_nfcmrvl_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nfcmrvl_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nfcmrvl_i2c_driver_exit = internal global ptr @nfcmrvl_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author316 = internal constant [46 x i8] c"nfcmrvl_i2c.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [52 x i8] c"nfcmrvl_i2c.description=Marvell NFC-over-I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [49 x i8] c"nfcmrvl_i2c.file=drivers/nfc/nfcmrvl/nfcmrvl_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [27 x i8] c"nfcmrvl_i2c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfcmrvl_i2c\00", [20 x i8] zeroinitializer }, align 32
@of_nfcmrvl_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,nfc-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nfcmrvl_i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: Need I2C_FUNC_I2C\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfcmrvl_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/nfcmrvl/i2c.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_probe._entry_ptr = internal global ptr @nfcmrvl_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfcmrvl_i2c_int\00", [16 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 218, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_probe._entry_ptr.9 = internal global ptr @nfcmrvl_i2c_probe._entry.7, section ".printk_index", align 4
@i2c_ops = internal constant { %struct.nfcmrvl_if_ops, [16 x i8] } { %struct.nfcmrvl_if_ops { ptr @nfcmrvl_i2c_nci_open, ptr @nfcmrvl_i2c_nci_close, ptr @nfcmrvl_i2c_nci_send, ptr @nfcmrvl_i2c_nci_update_config }, [16 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to get generic entries\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfcmrvl_i2c_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_parse_dt._entry_ptr = internal global ptr @nfcmrvl_i2c_parse_dt._entry, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c-int-falling\00", [16 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_parse_dt._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unable to get irq, error: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_parse_dt._entry_ptr.15 = internal global ptr @nfcmrvl_i2c_parse_dt._entry.13, section ".printk_index", align 4
@nfcmrvl_i2c_int_irq_thread_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NFC: read failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfcmrvl_i2c_int_irq_thread_fn\00", [34 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_int_irq_thread_fn._entry_ptr = internal global ptr @nfcmrvl_i2c_int_irq_thread_fn._entry, section ".printk_index", align 4
@nfcmrvl_i2c_int_irq_thread_fn._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NFC: corrupted RX packet\0A\00", [38 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_int_irq_thread_fn._entry_ptr.20 = internal global ptr @nfcmrvl_i2c_int_irq_thread_fn._entry.18, section ".printk_index", align 4
@nfcmrvl_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 34, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NFC: cannot read NCI header\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfcmrvl_i2c_read\00", [47 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_read._entry_ptr = internal global ptr @nfcmrvl_i2c_read._entry, section ".printk_index", align 4
@nfcmrvl_i2c_read._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 55, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NFC: Invalid frame payload length: %u (expected %u)\0A\00", [43 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_read._entry_ptr.25 = internal global ptr @nfcmrvl_i2c_read._entry.23, section ".printk_index", align 4
@nfcmrvl_i2c_nci_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 122, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: chip may sleep, retry\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfcmrvl_i2c_nci_send\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_nci_send._entry_ptr = internal global ptr @nfcmrvl_i2c_nci_send._entry, section ".printk_index", align 4
@nfcmrvl_i2c_nci_send._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NFC: Invalid length sent: %u (expected %u)\0A\00", [52 x i8] zeroinitializer }, align 32
@nfcmrvl_i2c_nci_send._entry_ptr.31 = internal global ptr @nfcmrvl_i2c_nci_send._entry.29, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"nfcmrvl_i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 256, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 261, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"of_nfcmrvl_i2c_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 244, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"nfcmrvl_i2c_id_table\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 250, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 188, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 215, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 217, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [8 x i8] c"i2c_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 146, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 160, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 164, i32 29 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 171, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 84, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 88, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 34, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 53, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 122, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [29 x i8] c"../drivers/nfc/nfcmrvl/i2c.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 129, i32 4 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_nfcmrvl_i2c_driver_exit, ptr @__initcall__kmod_nfcmrvl_i2c__315_266_nfcmrvl_i2c_driver_init6, ptr @nfcmrvl_i2c_driver_exit, ptr @nfcmrvl_i2c_int_irq_thread_fn._entry, ptr @nfcmrvl_i2c_int_irq_thread_fn._entry.18, ptr @nfcmrvl_i2c_int_irq_thread_fn._entry_ptr, ptr @nfcmrvl_i2c_int_irq_thread_fn._entry_ptr.20, ptr @nfcmrvl_i2c_nci_send._entry, ptr @nfcmrvl_i2c_nci_send._entry.29, ptr @nfcmrvl_i2c_nci_send._entry_ptr, ptr @nfcmrvl_i2c_nci_send._entry_ptr.31, ptr @nfcmrvl_i2c_parse_dt._entry, ptr @nfcmrvl_i2c_parse_dt._entry.13, ptr @nfcmrvl_i2c_parse_dt._entry_ptr, ptr @nfcmrvl_i2c_parse_dt._entry_ptr.15, ptr @nfcmrvl_i2c_probe._entry, ptr @nfcmrvl_i2c_probe._entry.7, ptr @nfcmrvl_i2c_probe._entry_ptr, ptr @nfcmrvl_i2c_probe._entry_ptr.9, ptr @nfcmrvl_i2c_read._entry, ptr @nfcmrvl_i2c_read._entry.23, ptr @nfcmrvl_i2c_read._entry_ptr, ptr @nfcmrvl_i2c_read._entry_ptr.25, ptr @nfcmrvl_i2c_driver, ptr @.str, ptr @of_nfcmrvl_i2c_match, ptr @nfcmrvl_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @i2c_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_nfcmrvl_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_parse_dt._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_int_irq_thread_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_int_irq_thread_fn._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_read._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_nci_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcmrvl_i2c_nci_send._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nfcmrvl_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfcmrvl_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @nfcmrvl_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %config = alloca %struct.nfcmrvl_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config.sroa.gep82 = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %config, i32 0, i32 4
  %config.sroa.gep = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %config, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #7
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = call ptr @memset(ptr %config, i32 255, i32 24)
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i2c = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %i2c, align 4
  %dev7 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev7, align 4
  %priv = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data, align 8
  %.sroa.gep81 = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %12, i32 0, i32 4
  %.sroa.gep = getelementptr inbounds %struct.nfcmrvl_platform_data, ptr %12, i32 0, i32 5
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.lhs.true, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  %call.i74 = call i32 @nfcmrvl_parse_dt(ptr noundef nonnull %14, ptr noundef nonnull %config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i = icmp slt i32 %call.i74, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %call2.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %15 = ptrtoint ptr %config.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %config.sroa.gep, align 4
  %call6.i = call i32 @irq_of_parse_and_map(ptr noundef nonnull %14, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end11.i, label %16

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call6.i) #10
  br label %cleanup

16:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %config.sroa.gep82 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call6.i, ptr %config.sroa.gep82, align 4
  br label %if.end21

if.end21:                                         ; preds = %16, %if.end5.if.end21_crit_edge
  %pdata.0 = phi ptr [ %12, %if.end5.if.end21_crit_edge ], [ %config, %16 ]
  %pdata.0.sroa.phi = phi ptr [ %.sroa.gep, %if.end5.if.end21_crit_edge ], [ %config.sroa.gep, %16 ]
  %pdata.0.sroa.phi80 = phi ptr [ %.sroa.gep81, %if.end5.if.end21_crit_edge ], [ %config.sroa.gep82, %16 ]
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %pdata.0.sroa.phi80 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdata.0.sroa.phi80, align 4
  %22 = ptrtoint ptr %pdata.0.sroa.phi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pdata.0.sroa.phi, align 4
  %or = or i32 %23, 8192
  %call24 = call i32 @devm_request_threaded_irq(ptr noundef %dev23, i32 noundef %21, ptr noundef null, ptr noundef nonnull @nfcmrvl_i2c_int_irq_thread_fn, i32 noundef %or, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  br i1 %cmp25, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %call35 = call ptr @nfcmrvl_nci_register_dev(i32 noundef 2, ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_ops, ptr noundef %dev31, ptr noundef nonnull %pdata.0) #7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call35, ptr %priv, align 4
  %cmp.i75 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %support_fw_dnld = getelementptr inbounds %struct.nfcmrvl_private, ptr %call35, i32 0, i32 4
  %28 = ptrtoint ptr %support_fw_dnld to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %support_fw_dnld, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then39, %do.end29, %do.end11.i, %do.end.i, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ %27, %if.then39 ], [ 0, %if.end42 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end11.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @nfcmrvl_nci_unregister_dev(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_i2c_int_irq_thread_fn(i32 noundef %irq, ptr nocapture noundef readonly %drv_data_ptr) #2 align 64 {
entry:
  %nci_hdr.i = alloca %struct.nci_ctrl_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %drv_data_ptr, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %nci_hdr.i) #7
  %5 = ptrtoint ptr %nci_hdr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %nci_hdr.i, align 1, !annotation !82
  %6 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %nci_hdr.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !82
  %8 = getelementptr inbounds %struct.nci_ctrl_hdr, ptr %nci_hdr.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !82
  %i2c.i = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %drv_data_ptr, i32 0, i32 2
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %nci_hdr.i, i32 noundef 3, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #10
  br label %do.end

if.end.i:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %ndev.i = getelementptr inbounds %struct.nfcmrvl_private, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  %conv.i = zext i8 %19 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %tx_headroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_headroom.i.i, align 4
  %add.i.i = add i32 %add.i, %21
  %tx_tailroom.i.i = getelementptr inbounds %struct.nci_dev, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %tx_tailroom.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_tailroom.i.i, align 4
  %add1.i.i = add i32 %add.i.i, %23
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %add1.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.do.end_crit_edge, label %if.end4.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %tx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_headroom.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %25
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %29, i32 %25
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call.i41.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3) #7
  %30 = call ptr @memcpy(ptr %call.i41.i, ptr %nci_hdr.i, i32 3)
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool7.not.i = icmp eq i8 %32, 0
  br i1 %tobool7.not.i, label %if.end4.i.sw.default_crit_edge, label %if.then8.i

if.end4.i.sw.default_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

if.then8.i:                                       ; preds = %if.end4.i
  %33 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c.i, align 4
  %conv11.i = zext i8 %32 to i32
  %call12.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %conv11.i) #7
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %8, align 1
  %conv14.i = zext i8 %36 to i32
  %call.i42.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef %call12.i, i32 noundef %conv14.i, i16 noundef zeroext 1) #7
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %8, align 1
  %conv17.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i42.i, i32 %conv17.i)
  %cmp18.not.i = icmp eq i32 %call.i42.i, %conv17.i
  br i1 %cmp18.not.i, label %if.then8.i.sw.default_crit_edge, label %do.end23.i

if.then8.i.sw.default_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

do.end23.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c.i, align 4
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25.i, ptr noundef nonnull @.str.24, i32 noundef %call.i42.i, i32 noundef %conv17.i) #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #7
  br label %do.end

do.end:                                           ; preds = %do.end23.i, %if.end.i.do.end_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.do.end_crit_edge ], [ -74, %do.end23.i ], [ -74, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %nci_hdr.i) #7
  %41 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

sw.default:                                       ; preds = %if.then8.i.sw.default_crit_edge, %if.end4.i.sw.default_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %nci_hdr.i) #7
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv, align 4
  %call10 = call i32 @nfcmrvl_nci_recv_frame(ptr noundef %44, ptr noundef nonnull %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c.i, align 4
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.19) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %sw.default.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfcmrvl_nci_register_dev(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_parse_dt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfcmrvl_nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfcmrvl_i2c_nci_open(ptr nocapture noundef readonly %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfcmrvl_i2c_nci_close(ptr nocapture noundef readnone %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcmrvl_i2c_nci_send(ptr noundef %priv, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_data1 = getelementptr inbounds %struct.nfcmrvl_private, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %drv_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %priv, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef %8, i32 noundef %10, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -121
  br i1 %cmp, label %do.end, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.26) #10
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 10000, i32 noundef 2) #7
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %call.i36 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef %16, i32 noundef %18, i16 noundef zeroext 0) #7
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call.i36, %do.end ], [ %call.i, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp9 = icmp sgt i32 %ret.0, -1
  br i1 %cmp9, label %if.then10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %20)
  %cmp12.not = icmp eq i32 %ret.0, %20
  br i1 %cmp12.not, label %if.then10.if.end19_crit_edge, label %do.end16

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.30, i32 noundef %ret.0, i32 noundef %20) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end16, %if.then10.if.end19_crit_edge
  %ret.1 = phi i32 [ -121, %do.end16 ], [ 0, %if.then10.if.end19_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %entry.cleanup_crit_edge ], [ %ret.1, %if.end19 ], [ %ret.0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nfcmrvl_i2c_nci_update_config(ptr nocapture noundef %priv, ptr nocapture noundef %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfcmrvl_nci_unregister_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_nfcmrvl_i2c__315_266_nfcmrvl_i2c_driver_init6, !1, !"__initcall__kmod_nfcmrvl_i2c__315_266_nfcmrvl_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 266, i32 1}
!2 = !{ptr @__exitcall_nfcmrvl_i2c_driver_exit, !1, !"__exitcall_nfcmrvl_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author316, !4, !"__UNIQUE_ID_author316", i1 false, i1 false}
!4 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 268, i32 1}
!5 = !{ptr @__UNIQUE_ID_description317, !6, !"__UNIQUE_ID_description317", i1 false, i1 false}
!6 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 269, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 270, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 261, i32 12}
!12 = !{ptr @nfcmrvl_i2c_driver, !13, !"nfcmrvl_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 256, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 188, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nfcmrvl_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @nfcmrvl_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 215, i32 6}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 217, i32 3}
!26 = !{ptr @nfcmrvl_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nfcmrvl_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 160, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nfcmrvl_i2c_parse_dt._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfcmrvl_i2c_parse_dt._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 164, i32 29}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 171, i32 3}
!37 = !{ptr @nfcmrvl_i2c_parse_dt._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nfcmrvl_i2c_parse_dt._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 84, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nfcmrvl_i2c_int_irq_thread_fn._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @nfcmrvl_i2c_int_irq_thread_fn._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 88, i32 4}
!46 = !{ptr @nfcmrvl_i2c_int_irq_thread_fn._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfcmrvl_i2c_int_irq_thread_fn._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 34, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @nfcmrvl_i2c_read._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @nfcmrvl_i2c_read._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 53, i32 4}
!55 = !{ptr @nfcmrvl_i2c_read._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nfcmrvl_i2c_read._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @i2c_ops, !58, !"i2c_ops", i1 false, i1 false}
!58 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 146, i32 36}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 122, i32 3}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @nfcmrvl_i2c_nci_send._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @nfcmrvl_i2c_nci_send._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 129, i32 4}
!67 = !{ptr @nfcmrvl_i2c_nci_send._entry.29, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nfcmrvl_i2c_nci_send._entry_ptr.31, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @of_nfcmrvl_i2c_match, !70, !"of_nfcmrvl_i2c_match", i1 false, i1 false}
!70 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 244, i32 34}
!71 = !{ptr @nfcmrvl_i2c_id_table, !72, !"nfcmrvl_i2c_id_table", i1 false, i1 false}
!72 = !{!"../drivers/nfc/nfcmrvl/i2c.c", i32 250, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
