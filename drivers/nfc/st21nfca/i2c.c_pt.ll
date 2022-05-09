; ModuleID = '/llk/IR_all_yes/drivers/nfc/st21nfca/i2c.c_pt.bc'
source_filename = "../drivers/nfc/st21nfca/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st21nfca_i2c_phy = type { ptr, ptr, ptr, %struct.st21nfca_se_status, ptr, i32, i32, i32, i32, i32, %struct.mutex }
%struct.st21nfca_se_status = type { i8, i8 }
%struct.sk_buff = type { %union.anon.86, %union.anon.89, %union.anon.90, [48 x i8], %union.anon.91, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.93, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, ptr, %union.anon.88 }
%union.anon.88 = type { ptr }
%union.anon.89 = type { ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, ptr }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.95, i32, i32, i32, i16, i16, %union.anon.97, i32, %union.anon.98, %union.anon.99, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.95 = type { i32 }
%union.anon.97 = type { i32 }
%union.anon.98 = type { i32 }
%union.anon.99 = type { i16 }

@__initcall__kmod_st21nfca_i2c__317_608_st21nfca_hci_i2c_driver_init6 = internal global ptr @st21nfca_hci_i2c_driver_init, section ".initcall6.init", align 4
@st21nfca_hci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @st21nfca_hci_i2c_probe, ptr @st21nfca_hci_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_st21nfca_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @st21nfca_hci_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_st21nfca_hci_i2c_driver_exit = internal global ptr @st21nfca_hci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file318 = internal constant [52 x i8] c"st21nfca_i2c.file=drivers/nfc/st21nfca/st21nfca_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [25 x i8] c"st21nfca_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [53 x i8] c"st21nfca_i2c.description=HCI NFC driver for ST21NFCA\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st21nfca_hci_i2c\00", [47 x i8] zeroinitializer }, align 32
@of_st21nfca_i2c_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st21nfca-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st21nfca_i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"st21nfca_hci\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: Need I2C_FUNC_I2C\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st21nfca_hci_i2c_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nfc/st21nfca/i2c.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry_ptr = internal global ptr @st21nfca_hci_i2c_probe._entry, section ".printk_index", align 4
@st21nfca_hci_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&phy->phy_lock\00", [17 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st21nfca_i2c\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: Unable to get ENABLE GPIO\0A\00", [32 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry_ptr.12 = internal global ptr @st21nfca_hci_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ese-present\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uicc-present\00", [19 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 536, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: Unable to reboot st21nfca\0A\00", [32 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry_ptr.17 = internal global ptr @st21nfca_hci_i2c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st21nfca_hci\00", [19 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 545, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_probe._entry_ptr.21 = internal global ptr @st21nfca_hci_i2c_probe._entry.19, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.nfc_phy_ops, [20 x i8] } { %struct.nfc_phy_ops { ptr @st21nfca_hci_i2c_write, ptr @st21nfca_hci_i2c_enable, ptr @st21nfca_hci_i2c_disable }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shdlc\00", [26 x i8] zeroinitializer }, align 32
@__const.st21nfca_hci_platform_init.reboot_cmd = private unnamed_addr constant [5 x i8] c"~fH\F6~", align 1
@st21nfca_hci_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wait_tab = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 2, i16 3, i16 5, i16 15, i16 20, i16 40], [20 x i8] zeroinitializer }, align 32
@len_seq = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\10\18\0C\1D", [28 x i8] zeroinitializer }, align 32
@check_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013st21nfca_i2c: st21nfca_hci: CRC error 0x%x != 0x%x 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_crc\00", [22 x i8] zeroinitializer }, align 32
@check_crc._entry_ptr = internal global ptr @check_crc._entry, section ".printk_index", align 4
@check_crc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016st21nfca_i2c: HCI NFC driver for ST21NFCA: %s : BAD CRC\0A\00", [37 x i8] zeroinitializer }, align 32
@check_crc._entry_ptr.28 = internal global ptr @check_crc._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crc: \00", [26 x i8] zeroinitializer }, align 32
@st21nfca_hci_i2c_write.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st21nfca_hci_i2c_write\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st21nfca_i2c: %s:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"i2c: \00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 4294967175, i64 4294967222, i64 4294967285, i64 4294967291]
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"st21nfca_hci_i2c_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 598, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 600, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"of_st21nfca_i2c_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 591, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"st21nfca_hci_i2c_id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 579, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 498, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 514, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 519, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 522, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 524, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 530, i32 44 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 532, i32 44 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 536, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 543, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 545, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 477, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 549, i32 44 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"wait_tab\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 78, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [8 x i8] c"len_seq\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 77, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 271, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 275, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 276, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 276, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [30 x i8] c"../drivers/nfc/st21nfca/i2c.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 189, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_st21nfca_hci_i2c_driver_exit, ptr @__initcall__kmod_st21nfca_i2c__317_608_st21nfca_hci_i2c_driver_init6, ptr @check_crc._entry, ptr @check_crc._entry.26, ptr @check_crc._entry_ptr, ptr @check_crc._entry_ptr.28, ptr @st21nfca_hci_i2c_driver_exit, ptr @st21nfca_hci_i2c_probe._entry, ptr @st21nfca_hci_i2c_probe._entry.10, ptr @st21nfca_hci_i2c_probe._entry.15, ptr @st21nfca_hci_i2c_probe._entry.19, ptr @st21nfca_hci_i2c_probe._entry_ptr, ptr @st21nfca_hci_i2c_probe._entry_ptr.12, ptr @st21nfca_hci_i2c_probe._entry_ptr.17, ptr @st21nfca_hci_i2c_probe._entry_ptr.21, ptr @st21nfca_hci_i2c_driver, ptr @.str, ptr @of_st21nfca_i2c_match, ptr @st21nfca_hci_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @st21nfca_hci_i2c_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @i2c_phy_ops, ptr @.str.22, ptr @wait_tab, ptr @len_seq, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_st21nfca_i2c_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_tab to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @len_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_crc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @st21nfca_hci_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_hci_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @st21nfca_hci_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reboot_cmd.i = alloca [5 x i8], align 1
  %tmp.i = alloca [37 x i8], align 1
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %call.i106 = tail call ptr @__alloc_skb(i32 noundef 74, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %pending_skb = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %pending_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i106, ptr %pending_skb, align 4
  %cmp = icmp eq ptr %call.i106, null
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %current_read_len = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %current_read_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %current_read_len, align 4
  %crc_trials = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %crc_trials to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %crc_trials, align 4
  %phy_lock = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %phy_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @st21nfca_hci_i2c_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_hci_i2c_probe.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_hci_i2c_probe, %if.then23)) #5
          to label %if.end27 [label %if.then23], !srcloc !95

if.then23:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st21nfca_hci_i2c_probe.__UNIQUE_ID_ddebug316, ptr noundef %dev1, ptr noundef nonnull @.str.8) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end11
  %call28 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 3) #5
  %gpiod_ena = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %gpiod_ena to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %gpiod_ena, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  %12 = ptrtoint ptr %gpiod_ena to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_ena, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %out_free

if.end37:                                         ; preds = %if.end27
  %call.i107 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.13) #5
  %se_status = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 3
  %frombool40 = zext i1 %call.i107 to i8
  %15 = ptrtoint ptr %se_status to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool40, ptr %se_status, align 4
  %call.i108 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  %is_uicc_present = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 3, i32 1
  %frombool44 = zext i1 %call.i108 to i8
  %16 = ptrtoint ptr %is_uicc_present to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool44, ptr %is_uicc_present, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %reboot_cmd.i) #5
  %17 = call ptr @memcpy(ptr %reboot_cmd.i, ptr @__const.st21nfca_hci_platform_init.reboot_cmd, i32 5)
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %tmp.i) #5
  %18 = call ptr @memset(ptr %tmp.i, i32 255, i32 37)
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call.i.i109 = call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef nonnull %reboot_cmd.i, i32 noundef 5, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp2.i = icmp slt i32 %call.i.i109, 0
  br i1 %cmp2.i, label %for.inc.i, label %if.end37.if.end6.i_crit_edge

if.end37.if.end6.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

for.inc.i:                                        ; preds = %if.end37
  call void @msleep(i32 noundef 50) #5
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %call.i.i109.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %reboot_cmd.i, i32 noundef 5, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109.1)
  %cmp2.i.1 = icmp slt i32 %call.i.i109.1, 0
  br i1 %cmp2.i.1, label %for.inc.i.1, label %for.inc.i.if.end6.i_crit_edge

for.inc.i.if.end6.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @msleep(i32 noundef 300) #5
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %call.i.i109.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %reboot_cmd.i, i32 noundef 5, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109.2)
  %cmp2.i.2 = icmp slt i32 %call.i.i109.2, 0
  br i1 %cmp2.i.2, label %for.inc.i.1.do.end50.sink.split_crit_edge, label %for.inc.i.1.if.end6.i_crit_edge

for.inc.i.1.if.end6.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

for.inc.i.1.do.end50.sink.split_crit_edge:        ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.sink.split

if.end6.i:                                        ; preds = %for.inc.i.1.if.end6.i_crit_edge, %for.inc.i.if.end6.i_crit_edge, %if.end37.if.end6.i_crit_edge
  call void @msleep(i32 noundef 20) #5
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call.i70.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %tmp.i, i32 noundef 37, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i)
  %cmp18.i = icmp slt i32 %call.i70.i, 0
  br i1 %cmp18.i, label %for.inc24.i, label %if.end6.i.land.rhs34.preheader.i_crit_edge

if.end6.i.land.rhs34.preheader.i_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs34.preheader.i

for.inc24.i:                                      ; preds = %if.end6.i
  call void @msleep(i32 noundef 50) #5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call.i70.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %tmp.i, i32 noundef 37, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i.1)
  %cmp18.i.1 = icmp slt i32 %call.i70.i.1, 0
  br i1 %cmp18.i.1, label %for.inc24.i.1, label %for.inc24.i.land.rhs34.preheader.i_crit_edge

for.inc24.i.land.rhs34.preheader.i_crit_edge:     ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs34.preheader.i

for.inc24.i.1:                                    ; preds = %for.inc24.i
  call void @msleep(i32 noundef 300) #5
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call.i70.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %tmp.i, i32 noundef 37, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i.2)
  %cmp18.i.2 = icmp slt i32 %call.i70.i.2, 0
  br i1 %cmp18.i.2, label %for.inc24.i.1.do.end50.sink.split_crit_edge, label %for.inc24.i.1.land.rhs34.preheader.i_crit_edge

for.inc24.i.1.land.rhs34.preheader.i_crit_edge:   ; preds = %for.inc24.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs34.preheader.i

for.inc24.i.1.do.end50.sink.split_crit_edge:      ; preds = %for.inc24.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50.sink.split

land.rhs34.preheader.i:                           ; preds = %for.inc24.i.1.land.rhs34.preheader.i_crit_edge, %for.inc24.i.land.rhs34.preheader.i_crit_edge, %if.end6.i.land.rhs34.preheader.i_crit_edge
  %call.i70.i.lcssa = phi i32 [ %call.i70.i, %if.end6.i.land.rhs34.preheader.i_crit_edge ], [ %call.i70.i.1, %for.inc24.i.land.rhs34.preheader.i_crit_edge ], [ %call.i70.i.2, %for.inc24.i.1.land.rhs34.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %call.i70.i.lcssa)
  %cmp44.not.i = icmp eq i32 %call.i70.i.lcssa, 37
  br i1 %cmp44.not.i, label %if.end52, label %land.rhs34.preheader.i.do.end50_crit_edge

land.rhs34.preheader.i.do.end50_crit_edge:        ; preds = %land.rhs34.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

do.end50.sink.split:                              ; preds = %for.inc24.i.1.do.end50.sink.split_crit_edge, %for.inc.i.1.do.end50.sink.split_crit_edge
  %retval.0.i111.ph.ph = phi i32 [ %call.i.i109.2, %for.inc.i.1.do.end50.sink.split_crit_edge ], [ %call.i70.i.2, %for.inc24.i.1.do.end50.sink.split_crit_edge ]
  call void @msleep(i32 noundef 1000) #5
  br label %do.end50

do.end50:                                         ; preds = %do.end50.sink.split, %land.rhs34.preheader.i.do.end50_crit_edge
  %retval.0.i111.ph = phi i32 [ -19, %land.rhs34.preheader.i.do.end50_crit_edge ], [ %retval.0.i111.ph.ph, %do.end50.sink.split ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %reboot_cmd.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %out_free

if.end52:                                         ; preds = %land.rhs34.preheader.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %reboot_cmd.i) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call54 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %32, ptr noundef null, ptr noundef nonnull @st21nfca_hci_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end59, label %if.end61

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  br label %out_free

if.end61:                                         ; preds = %if.end52
  %hdev = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %call.i, i32 0, i32 1
  %call63 = call i32 @st21nfca_hci_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_phy_ops, ptr noundef nonnull @.str.22, i32 noundef 2, i32 noundef 3, i32 noundef 29, ptr noundef %hdev, ptr noundef %se_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end61.cleanup_crit_edge, label %if.end61.out_free_crit_edge

if.end61.out_free_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_free:                                         ; preds = %if.end61.out_free_crit_edge, %do.end59, %do.end50, %do.end34
  %r.0 = phi i32 [ %14, %do.end34 ], [ %retval.0.i111.ph, %do.end50 ], [ %call54, %do.end59 ], [ %call63, %if.end61.out_free_crit_edge ]
  %33 = ptrtoint ptr %pending_skb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pending_skb, align 4
  call void @kfree_skb_reason(ptr noundef %34, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end61.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %r.0, %out_free ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hdev = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  tail call void @st21nfca_hci_remove(ptr noundef %3) #5
  %powered = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %powered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpiod_ena.i = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %gpiod_ena.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_ena.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %powered, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pending_skb = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %pending_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pending_skb, align 4
  %tobool1.not = icmp eq ptr %10, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %buf.i = alloca [29 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %irq1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp.not = icmp eq i32 %3, %irq
  br i1 %cmp.not, label %if.end36, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b103 = load i1, ptr @st21nfca_hci_irq_thread_fn.__already_done, align 1
  br i1 %.b103, label %land.end.cleanup_crit_edge, label %if.then7, !prof !96

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @st21nfca_hci_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 426, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %hard_fault = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 9
  %4 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.not = icmp eq i32 %5, 0
  br i1 %cmp37.not, label %if.end39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %pending_skb = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 4
  %6 = ptrtoint ptr %pending_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_skb, align 4
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %buf.i) #5
  %8 = getelementptr inbounds [29 x i8], ptr %buf.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %buf.i, i32 255, i32 29)
  %current_read_len.i = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 5
  %10 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_read_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp ult i32 %11, 4
  br i1 %cmp.i, label %if.then.i, label %if.end39.st21nfca_hci_i2c_read.exit.thread_crit_edge

if.end39.st21nfca_hci_i2c_read.exit.thread_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_hci_i2c_read.exit.thread

if.then.i:                                        ; preds = %if.end39
  %arrayidx.i = getelementptr [4 x i8], ptr @len_seq, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %phy_lock.i = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %phy_lock.i, i32 noundef 0) #5
  %conv.i = zext i8 %13 to i32
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 2) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then.i.for.inc.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp3.i, label %for.body.i.1, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp4.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp4.i.1, label %if.then6.i.1, label %for.body.i.1.for.inc.i.1_crit_edge

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

if.then6.i.1:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 3) #5
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then6.i.1, %for.body.i.1.for.inc.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.1)
  %cmp3.i.1 = icmp slt i32 %call.i.i.1, 1
  br i1 %cmp3.i.1, label %for.body.i.2, label %for.inc.i.1.for.end.i_crit_edge

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp4.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp4.i.2, label %if.then6.i.2, label %for.body.i.2.for.inc.i.2_crit_edge

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.2

if.then6.i.2:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 5) #5
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then6.i.2, %for.body.i.2.for.inc.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.2)
  %cmp3.i.2 = icmp slt i32 %call.i.i.2, 1
  br i1 %cmp3.i.2, label %for.body.i.3, label %for.inc.i.2.for.end.i_crit_edge

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %call.i.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp4.i.3 = icmp slt i32 %call.i.i.3, 0
  br i1 %cmp4.i.3, label %if.then6.i.3, label %for.body.i.3.for.inc.i.3_crit_edge

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.3

if.then6.i.3:                                     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 15) #5
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then6.i.3, %for.body.i.3.for.inc.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.3)
  %cmp3.i.3 = icmp slt i32 %call.i.i.3, 1
  br i1 %cmp3.i.3, label %for.body.i.4, label %for.inc.i.3.for.end.i_crit_edge

for.inc.i.3.for.end.i_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.inc.i.3
  %call.i.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %cmp4.i.4 = icmp slt i32 %call.i.i.4, 0
  br i1 %cmp4.i.4, label %if.then6.i.4, label %for.body.i.4.for.inc.i.4_crit_edge

for.body.i.4.for.inc.i.4_crit_edge:               ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.4

if.then6.i.4:                                     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 20) #5
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then6.i.4, %for.body.i.4.for.inc.i.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.4)
  %cmp3.i.4 = icmp slt i32 %call.i.i.4, 1
  br i1 %cmp3.i.4, label %for.body.i.5, label %for.inc.i.4.for.end.i_crit_edge

for.inc.i.4.for.end.i_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.inc.i.4
  %call.i.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.5)
  %cmp4.i.5 = icmp slt i32 %call.i.i.5, 0
  br i1 %cmp4.i.5, label %if.then6.i.5, label %for.body.i.5.for.end.i_crit_edge

for.body.i.5.for.end.i_crit_edge:                 ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then6.i.5:                                     ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 40) #5
  br label %for.end.i

for.end.i:                                        ; preds = %if.then6.i.5, %for.body.i.5.for.end.i_crit_edge, %for.inc.i.4.for.end.i_crit_edge, %for.inc.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge, %for.inc.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %for.inc.i.for.end.i_crit_edge ], [ %call.i.i.1, %for.inc.i.1.for.end.i_crit_edge ], [ %call.i.i.2, %for.inc.i.2.for.end.i_crit_edge ], [ %call.i.i.3, %for.inc.i.3.for.end.i_crit_edge ], [ %call.i.i.4, %for.inc.i.4.for.end.i_crit_edge ], [ %call.i.i.5, %if.then6.i.5 ], [ %call.i.i.5, %for.body.i.5.for.end.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %phy_lock.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.lcssa, i32 %conv.i)
  %cmp11.not.i = icmp eq i32 %call.i.i.lcssa, %conv.i
  br i1 %cmp11.not.i, label %if.end15.i, label %st21nfca_hci_i2c_read.exit.thread113

st21nfca_hci_i2c_read.exit.thread113:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %current_read_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf.i) #5
  br label %if.then41

if.end15.i:                                       ; preds = %for.end.i
  %15 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_read_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %18)
  %cmp19.i = icmp eq i8 %18, 126
  br i1 %tobool.not.i, label %land.lhs.true.i, label %land.lhs.true30.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true.i.if.then26.i_crit_edge

land.lhs.true.i.if.then26.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp24.i = icmp eq i8 %20, 0
  br i1 %cmp24.i, label %land.lhs.true21.i.if.end43.i_crit_edge, label %land.lhs.true21.i.if.then26.i_crit_edge

land.lhs.true21.i.if.then26.i_crit_edge:          ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26.i

land.lhs.true21.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then26.i:                                      ; preds = %land.lhs.true21.i.if.then26.i_crit_edge, %land.lhs.true.i.if.then26.i_crit_edge
  call void @skb_trim(ptr noundef %7, i32 noundef 0) #5
  br label %st21nfca_hci_i2c_read.exit.thread.sink.split

land.lhs.true30.i:                                ; preds = %if.end15.i
  br i1 %cmp19.i, label %land.lhs.true35.i, label %land.lhs.true30.i.if.end43.i_crit_edge

land.lhs.true30.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

land.lhs.true35.i:                                ; preds = %land.lhs.true30.i
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp38.i = icmp eq i8 %22, 0
  br i1 %cmp38.i, label %if.then40.i, label %land.lhs.true35.i.if.end43.i_crit_edge

land.lhs.true35.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then40.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @skb_trim(ptr noundef %7, i32 noundef 0) #5
  %23 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %current_read_len.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %land.lhs.true35.i.if.end43.i_crit_edge, %land.lhs.true30.i.if.end43.i_crit_edge, %land.lhs.true21.i.if.end43.i_crit_edge
  %call.i85.i = call ptr @skb_put(ptr noundef %7, i32 noundef %conv.i) #5
  %24 = call ptr @memcpy(ptr %call.i85.i, ptr %buf.i, i32 %conv.i)
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %len47.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %27 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len47.i, align 4
  %sub.i = add i32 %28, -1
  %arrayidx48.i = getelementptr i8, ptr %26, i32 %sub.i
  %29 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx48.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %30)
  %cmp50.i = icmp eq i8 %30, 126
  br i1 %cmp50.i, label %if.then52.i, label %if.end55.i

if.then52.i:                                      ; preds = %if.end43.i
  %31 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %current_read_len.i, align 4
  %32 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len47.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %land.lhs.true.i.i [
    i32 0, label %if.then52.i.st21nfca_hci_i2c_read.exit.thread106_crit_edge
    i32 1, label %if.end.thread.i.i
  ]

if.then52.i.st21nfca_hci_i2c_read.exit.thread106_crit_edge: ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_hci_i2c_read.exit.thread106

land.lhs.true.i.i:                                ; preds = %if.then52.i
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp3.not.i.i = icmp eq i8 %38, 0
  br i1 %cmp3.not.i.i, label %for.cond.preheader.i.i.i, label %land.lhs.true.i.i.st21nfca_hci_i2c_read.exit.thread106_crit_edge

land.lhs.true.i.i.st21nfca_hci_i2c_read.exit.thread106_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_hci_i2c_read.exit.thread106

if.end.thread.i.i:                                ; preds = %if.then52.i
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %arrayidx.i86.i.i = getelementptr i8, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx.i86.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i86.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %42)
  %cmp.i87.i.i = icmp eq i8 %42, 126
  br i1 %cmp.i87.i.i, label %if.end.thread.i.i.st21nfca_hci_i2c_read.exit.thread111_crit_edge, label %if.end.thread.i.i.if.then9.i.i_crit_edge

if.end.thread.i.i.if.then9.i.i_crit_edge:         ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i

if.end.thread.i.i.st21nfca_hci_i2c_read.exit.thread111_crit_edge: ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_hci_i2c_read.exit.thread111

for.cond.preheader.i.i.i:                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp213.i.i.i = icmp sgt i32 %33, 1
  br i1 %cmp213.i.i.i, label %for.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.if.then9.i.i_crit_edge

for.cond.preheader.i.i.i.if.then9.i.i_crit_edge:  ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i

for.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.inc.i.i.i.land.rhs.i.i.i_crit_edge, %for.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge
  %len.014.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.land.rhs.i.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge ]
  %arrayidx4.i.i.i = getelementptr i8, ptr %36, i32 %len.014.i.i.i
  %43 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx4.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %44)
  %cmp6.not.i.i.i = icmp eq i8 %44, 126
  br i1 %cmp6.not.i.i.i, label %land.rhs.i.i.i.if.then9.i.i_crit_edge, label %for.inc.i.i.i

land.rhs.i.i.i.if.then9.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i

for.inc.i.i.i:                                    ; preds = %land.rhs.i.i.i
  %inc.i.i.i = add nuw nsw i32 %len.014.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %33
  br i1 %exitcond.not.i.i.i, label %get_frame_size.exit.i.i, label %for.inc.i.i.i.land.rhs.i.i.i_crit_edge

for.inc.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i.i

get_frame_size.exit.i.i:                          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.i.i = icmp sgt i32 %33, 0
  br i1 %cmp7.i.i, label %get_frame_size.exit.i.i.if.then9.i.i_crit_edge, label %get_frame_size.exit.i.i.st21nfca_hci_i2c_read.exit.thread111_crit_edge

get_frame_size.exit.i.i.st21nfca_hci_i2c_read.exit.thread111_crit_edge: ; preds = %get_frame_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_hci_i2c_read.exit.thread111

get_frame_size.exit.i.i.if.then9.i.i_crit_edge:   ; preds = %get_frame_size.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i.i

if.then9.i.i:                                     ; preds = %get_frame_size.exit.i.i.if.then9.i.i_crit_edge, %land.rhs.i.i.i.if.then9.i.i_crit_edge, %for.cond.preheader.i.i.i.if.then9.i.i_crit_edge, %if.end.thread.i.i.if.then9.i.i_crit_edge
  %retval.0.i96.i.i = phi i32 [ %33, %get_frame_size.exit.i.i.if.then9.i.i_crit_edge ], [ 1, %for.cond.preheader.i.i.i.if.then9.i.i_crit_edge ], [ 1, %if.end.thread.i.i.if.then9.i.i_crit_edge ], [ %len.014.i.i.i, %land.rhs.i.i.i.if.then9.i.i_crit_edge ]
  call void @skb_trim(ptr noundef %7, i32 noundef %retval.0.i96.i.i) #5
  %45 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp11106.i.i = icmp ugt i32 %46, 1
  br i1 %cmp11106.i.i, label %if.then9.i.i.for.body.i.i_crit_edge, label %if.then9.i.i.for.end.i.i_crit_edge

if.then9.i.i.for.end.i.i_crit_edge:               ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

if.then9.i.i.for.body.i.i_crit_edge:              ; preds = %if.then9.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end28.i.i.for.body.i.i_crit_edge, %if.then9.i.i.for.body.i.i_crit_edge
  %j.0108.i.i = phi i32 [ %j.1.i.i, %if.end28.i.i.for.body.i.i_crit_edge ], [ 0, %if.then9.i.i.for.body.i.i_crit_edge ]
  %i.0107.i.i = phi i32 [ %inc34.i.i, %if.end28.i.i.for.body.i.i_crit_edge ], [ 1, %if.then9.i.i.for.body.i.i_crit_edge ]
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %add.i.i = add i32 %i.0107.i.i, %j.0108.i.i
  %arrayidx14.i.i = getelementptr i8, ptr %48, i32 %add.i.i
  %49 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx14.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 125, i8 %50)
  %cmp16.i.i = icmp eq i8 %50, 125
  br i1 %cmp16.i.i, label %if.then18.i.i, label %for.body.i.i.if.end28.i.i_crit_edge

for.body.i.i.if.end28.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add21.i.i = add i32 %add.i.i, 1
  %arrayidx22.i.i = getelementptr i8, ptr %48, i32 %add21.i.i
  %51 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx22.i.i, align 1
  %53 = or i8 %52, 32
  %arrayidx26.i.i = getelementptr i8, ptr %48, i32 %i.0107.i.i
  %54 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx26.i.i, align 1
  %inc.i.i = add nuw i32 %i.0107.i.i, 1
  %inc27.i.i = add i32 %j.0108.i.i, 1
  %.pre.i.i = add i32 %inc.i.i, %inc27.i.i
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then18.i.i, %for.body.i.i.if.end28.i.i_crit_edge
  %add30.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.then18.i.i ], [ %add.i.i, %for.body.i.i.if.end28.i.i_crit_edge ]
  %i.1.i.i = phi i32 [ %inc.i.i, %if.then18.i.i ], [ %i.0107.i.i, %for.body.i.i.if.end28.i.i_crit_edge ]
  %j.1.i.i = phi i32 [ %inc27.i.i, %if.then18.i.i ], [ %j.0108.i.i, %for.body.i.i.if.end28.i.i_crit_edge ]
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %arrayidx31.i.i = getelementptr i8, ptr %56, i32 %add30.pre-phi.i.i
  %57 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx31.i.i, align 1
  %arrayidx33.i.i = getelementptr i8, ptr %56, i32 %i.1.i.i
  %59 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx33.i.i, align 1
  %inc34.i.i = add i32 %i.1.i.i, 1
  %60 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len47.i, align 4
  %cmp11.i.i = icmp ult i32 %inc34.i.i, %61
  br i1 %cmp11.i.i, label %if.end28.i.i.for.body.i.i_crit_edge, label %for.end.loopexit.i.i

if.end28.i.i.for.body.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = sub i32 %inc34.i.i, %j.1.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.loopexit.i.i, %if.then9.i.i.for.end.i.i_crit_edge
  %sub.i.i = phi i32 [ %62, %for.end.loopexit.i.i ], [ 1, %if.then9.i.i.for.end.i.i_crit_edge ]
  call void @skb_trim(ptr noundef %7, i32 noundef %sub.i.i) #5
  %call35.i.i = call ptr @skb_pull(ptr noundef %7, i32 noundef 1) #5
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %65 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len47.i, align 4
  %sub.i.i.i = add i32 %66, -2
  %call.i.i.i = call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %64, i32 noundef %sub.i.i.i) #5
  %neg.i.i.i = xor i16 %call.i.i.i, -1
  %arrayidx.i83.i.i = getelementptr i8, ptr %64, i32 %sub.i.i.i
  %67 = ptrtoint ptr %arrayidx.i83.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i83.i.i, align 1
  %conv4.i.i.i = zext i16 %neg.i.i.i to i32
  %69 = trunc i16 %neg.i.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %69)
  %cmp.not.i.i.i = icmp eq i8 %68, %69
  %sub6.i.i.i = add i32 %66, -1
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %for.end.i.i.check_crc.exit.i.i_crit_edge

for.end.i.i.check_crc.exit.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_crc.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.end.i.i
  %arrayidx7.i.i.i = getelementptr i8, ptr %64, i32 %sub6.i.i.i
  %70 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx7.i.i.i, align 1
  %conv8.i.i.i = zext i8 %71 to i32
  %72 = lshr i32 %conv4.i.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv8.i.i.i)
  %cmp10.not.i.i.i = icmp eq i32 %72, %conv8.i.i.i
  br i1 %cmp10.not.i.i.i, label %st21nfca_hci_i2c_read.exit, label %lor.lhs.false.i.i.i.check_crc.exit.i.i_crit_edge

lor.lhs.false.i.i.i.check_crc.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_crc.exit.i.i

check_crc.exit.i.i:                               ; preds = %lor.lhs.false.i.i.i.check_crc.exit.i.i_crit_edge, %for.end.i.i.check_crc.exit.i.i_crit_edge
  %arrayidx14.i.i.i = getelementptr i8, ptr %64, i32 %sub6.i.i.i
  %73 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx14.i.i.i, align 1
  %conv15.i.i.i = zext i8 %74 to i32
  %conv18.i.i.i = zext i8 %68 to i32
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv4.i.i.i, i32 noundef %conv15.i.i.i, i32 noundef %conv18.i.i.i) #8
  %call24.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25) #8
  call void @print_hex_dump(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 0, i32 noundef 16, i32 noundef 2, ptr noundef %64, i32 noundef %66, i1 noundef zeroext false) #5
  br label %st21nfca_hci_i2c_read.exit.thread106

if.end55.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %current_read_len.i, align 4
  %inc57.i = add i32 %76, 1
  br label %st21nfca_hci_i2c_read.exit.thread.sink.split

st21nfca_hci_i2c_read.exit.thread.sink.split:     ; preds = %if.end55.i, %if.then26.i
  %inc57.i.sink = phi i32 [ %inc57.i, %if.end55.i ], [ 0, %if.then26.i ]
  %77 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %inc57.i.sink, ptr %current_read_len.i, align 4
  br label %st21nfca_hci_i2c_read.exit.thread

st21nfca_hci_i2c_read.exit.thread:                ; preds = %st21nfca_hci_i2c_read.exit.thread.sink.split, %if.end39.st21nfca_hci_i2c_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf.i) #5
  br label %cleanup

st21nfca_hci_i2c_read.exit.thread106:             ; preds = %check_crc.exit.i.i, %land.lhs.true.i.i.st21nfca_hci_i2c_read.exit.thread106_crit_edge, %if.then52.i.st21nfca_hci_i2c_read.exit.thread106_crit_edge
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf.i) #5
  br label %land.lhs.true

st21nfca_hci_i2c_read.exit.thread111:             ; preds = %get_frame_size.exit.i.i.st21nfca_hci_i2c_read.exit.thread111_crit_edge, %if.end.thread.i.i.st21nfca_hci_i2c_read.exit.thread111_crit_edge
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf.i) #5
  br label %if.else61

st21nfca_hci_i2c_read.exit:                       ; preds = %lor.lhs.false.i.i.i
  %call43.i.i = call ptr @skb_pull(ptr noundef %7, i32 noundef 1) #5
  %78 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len47.i, align 4
  %sub45.i.i = add i32 %79, -2
  call void @skb_trim(ptr noundef %7, i32 noundef %sub45.i.i) #5
  %80 = ptrtoint ptr %len47.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len47.i, align 4
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf.i) #5
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %81, label %if.else54 [
    i32 -121, label %st21nfca_hci_i2c_read.exit.if.then41_crit_edge
    i32 -11, label %st21nfca_hci_i2c_read.exit.cleanup_crit_edge
    i32 -5, label %st21nfca_hci_i2c_read.exit.cleanup_crit_edge123
    i32 -74, label %st21nfca_hci_i2c_read.exit.land.lhs.true_crit_edge
  ]

st21nfca_hci_i2c_read.exit.land.lhs.true_crit_edge: ; preds = %st21nfca_hci_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

st21nfca_hci_i2c_read.exit.cleanup_crit_edge123:  ; preds = %st21nfca_hci_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

st21nfca_hci_i2c_read.exit.cleanup_crit_edge:     ; preds = %st21nfca_hci_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

st21nfca_hci_i2c_read.exit.if.then41_crit_edge:   ; preds = %st21nfca_hci_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %st21nfca_hci_i2c_read.exit.if.then41_crit_edge, %st21nfca_hci_i2c_read.exit.thread113
  %83 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -121, ptr %hard_fault, align 4
  %hdev = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 1
  %84 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hdev, align 4
  call void @nfc_hci_recv_frame(ptr noundef %85, ptr noundef null) #5
  br label %cleanup

land.lhs.true:                                    ; preds = %st21nfca_hci_i2c_read.exit.land.lhs.true_crit_edge, %st21nfca_hci_i2c_read.exit.thread106
  %crc_trials = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 6
  %86 = ptrtoint ptr %crc_trials to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %crc_trials, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %87)
  %cmp49 = icmp ult i32 %87, 6
  br i1 %cmp49, label %if.then50, label %land.lhs.true.if.else61_crit_edge

land.lhs.true.if.else61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else61

if.then50:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [6 x i16], ptr @wait_tab, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %89 to i32
  call void @msleep(i32 noundef %conv) #5
  %90 = ptrtoint ptr %crc_trials to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %crc_trials, align 4
  %inc = add i32 %91, 1
  store i32 %inc, ptr %crc_trials, align 4
  %92 = ptrtoint ptr %current_read_len.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %current_read_len.i, align 4
  %93 = ptrtoint ptr %pending_skb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pending_skb, align 4
  call void @kfree_skb_reason(ptr noundef %94, i32 noundef 0) #5
  br label %if.end66

if.else54:                                        ; preds = %st21nfca_hci_i2c_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp55 = icmp sgt i32 %81, 0
  br i1 %cmp55, label %if.then57, label %if.else54.if.else61_crit_edge

if.else54.if.else61_crit_edge:                    ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else61

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #7
  %hdev58 = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 1
  %95 = ptrtoint ptr %hdev58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hdev58, align 4
  %97 = ptrtoint ptr %pending_skb to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pending_skb, align 4
  call void @nfc_hci_recv_frame(ptr noundef %96, ptr noundef %98) #5
  %crc_trials60 = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 6
  %99 = ptrtoint ptr %crc_trials60 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %crc_trials60, align 4
  br label %if.end66

if.else61:                                        ; preds = %if.else54.if.else61_crit_edge, %land.lhs.true.if.else61_crit_edge, %st21nfca_hci_i2c_read.exit.thread111
  %100 = ptrtoint ptr %pending_skb to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pending_skb, align 4
  call void @kfree_skb_reason(ptr noundef %101, i32 noundef 0) #5
  br label %if.end66

if.end66:                                         ; preds = %if.else61, %if.then57, %if.then50
  %call.i = call ptr @__alloc_skb(i32 noundef 74, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %102 = ptrtoint ptr %pending_skb to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call.i, ptr %pending_skb, align 4
  %cmp70 = icmp eq ptr %call.i, null
  br i1 %cmp70, label %if.then72, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -12, ptr %hard_fault, align 4
  %hdev74 = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 1
  %104 = ptrtoint ptr %hdev74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hdev74, align 4
  call void @nfc_hci_recv_frame(ptr noundef %105, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end66.cleanup_crit_edge, %if.then41, %st21nfca_hci_i2c_read.exit.cleanup_crit_edge, %st21nfca_hci_i2c_read.exit.cleanup_crit_edge123, %st21nfca_hci_i2c_read.exit.thread, %if.end36.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then41 ], [ 0, %if.then7 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %if.end36.cleanup_crit_edge ], [ 1, %st21nfca_hci_i2c_read.exit.cleanup_crit_edge ], [ 1, %st21nfca_hci_i2c_read.exit.cleanup_crit_edge123 ], [ 1, %if.then72 ], [ 1, %if.end66.cleanup_crit_edge ], [ 1, %st21nfca_hci_i2c_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_hci_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_i2c_write(ptr noundef %phy_id, ptr noundef %skb) #2 align 64 {
entry:
  %tmp = alloca [74 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %tmp) #5
  %2 = getelementptr inbounds i8, ptr %tmp, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 73)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_hci_i2c_write.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_hci_i2c_write, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st21nfca_hci_i2c_write.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #5
  %hard_fault = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 9
  %8 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end9, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call.i, align 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %call1.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %12, i32 noundef %14) #5
  %neg.i = xor i16 %call1.i, -1
  %conv4.i = trunc i16 %neg.i to i8
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #5
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4.i, ptr %call.i.i, align 1
  %16 = lshr i16 %neg.i, 8
  %conv7.i = trunc i16 %16 to i8
  %call.i15.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #5
  %17 = ptrtoint ptr %call.i15.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7.i, ptr %call.i15.i, align 1
  %call.i109 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #5
  %18 = ptrtoint ptr %call.i109 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 126, ptr %call.i109, align 1
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %19 = ptrtoint ptr %call10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 126, ptr %call10, align 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %tmp, align 1
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %sub = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp14115 = icmp ugt i32 %sub, 1
  br i1 %cmp14115, label %if.end9.for.body_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %j.0117 = phi i32 [ %inc36, %for.inc.for.body_crit_edge ], [ 1, %if.end9.for.body_crit_edge ]
  %i.0116 = phi i32 [ %inc35, %for.inc.for.body_crit_edge ], [ 1, %if.end9.for.body_crit_edge ]
  %arrayidx16 = getelementptr i8, ptr %21, i32 %i.0116
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16, align 1
  %.off = add i8 %28, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %arrayidx25 = getelementptr [74 x i8], ptr %tmp, i32 0, i32 %j.0117
  br i1 %switch, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 125, ptr %arrayidx25, align 1
  %inc = add i32 %j.0117, 1
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx16, align 1
  %32 = xor i8 %31, 32
  %arrayidx30 = getelementptr [74 x i8], ptr %tmp, i32 0, i32 %inc
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx30, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %28, ptr %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then24
  %j.1 = phi i32 [ %inc, %if.then24 ], [ %j.0117, %if.else ]
  %inc35 = add nuw i32 %i.0116, 1
  %inc36 = add i32 %j.1, 1
  %exitcond.not = icmp eq i32 %inc35, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %if.end9.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %j.0.lcssa = phi i32 [ 1, %if.end9.for.end_crit_edge ], [ %inc36, %for.inc.for.end_crit_edge ]
  %arrayidx38 = getelementptr i8, ptr %21, i32 %i.0.lcssa
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr [74 x i8], ptr %tmp, i32 0, i32 %j.0.lcssa
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx39, align 1
  %inc40 = add i32 %j.0.lcssa, 1
  %phy_lock = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %phy_lock, i32 noundef 0) #5
  %call.i110 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmp, i32 noundef %inc40, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp48 = icmp slt i32 %call.i110, 0
  br i1 %cmp48, label %for.inc54, label %for.end.for.end56_crit_edge

for.end.for.end56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.inc54:                                        ; preds = %for.end
  call void @msleep(i32 noundef 2) #5
  %call.i110.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmp, i32 noundef %inc40, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.1)
  %cmp48.1 = icmp slt i32 %call.i110.1, 0
  br i1 %cmp48.1, label %for.inc54.1, label %for.inc54.for.end56_crit_edge

for.inc54.for.end56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.inc54.1:                                      ; preds = %for.inc54
  call void @msleep(i32 noundef 3) #5
  %call.i110.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmp, i32 noundef %inc40, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.2)
  %cmp48.2 = icmp slt i32 %call.i110.2, 0
  br i1 %cmp48.2, label %for.inc54.2, label %for.inc54.1.for.end56_crit_edge

for.inc54.1.for.end56_crit_edge:                  ; preds = %for.inc54.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.inc54.2:                                      ; preds = %for.inc54.1
  call void @msleep(i32 noundef 5) #5
  %call.i110.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmp, i32 noundef %inc40, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.3)
  %cmp48.3 = icmp slt i32 %call.i110.3, 0
  br i1 %cmp48.3, label %for.inc54.3, label %for.inc54.2.for.end56_crit_edge

for.inc54.2.for.end56_crit_edge:                  ; preds = %for.inc54.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.inc54.3:                                      ; preds = %for.inc54.2
  call void @msleep(i32 noundef 15) #5
  %call.i110.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmp, i32 noundef %inc40, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.4)
  %cmp48.4 = icmp slt i32 %call.i110.4, 0
  br i1 %cmp48.4, label %for.inc54.4, label %for.inc54.3.for.end56_crit_edge

for.inc54.3.for.end56_crit_edge:                  ; preds = %for.inc54.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.inc54.4:                                      ; preds = %for.inc54.3
  call void @msleep(i32 noundef 20) #5
  %call.i110.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %tmp, i32 noundef %inc40, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.5)
  %cmp48.5 = icmp slt i32 %call.i110.5, 0
  br i1 %cmp48.5, label %for.inc54.5, label %for.inc54.4.for.end56_crit_edge

for.inc54.4.for.end56_crit_edge:                  ; preds = %for.inc54.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end56

for.inc54.5:                                      ; preds = %for.inc54.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 40) #5
  br label %for.end56

for.end56:                                        ; preds = %for.inc54.5, %for.inc54.4.for.end56_crit_edge, %for.inc54.3.for.end56_crit_edge, %for.inc54.2.for.end56_crit_edge, %for.inc54.1.for.end56_crit_edge, %for.inc54.for.end56_crit_edge, %for.end.for.end56_crit_edge
  %call.i110.lcssa = phi i32 [ %call.i110, %for.end.for.end56_crit_edge ], [ %call.i110.1, %for.inc54.for.end56_crit_edge ], [ %call.i110.2, %for.inc54.1.for.end56_crit_edge ], [ %call.i110.3, %for.inc54.2.for.end56_crit_edge ], [ %call.i110.4, %for.inc54.3.for.end56_crit_edge ], [ %call.i110.5, %for.inc54.4.for.end56_crit_edge ], [ %call.i110.5, %for.inc54.5 ]
  %cmp48.lcssa = phi i1 [ %cmp48, %for.end.for.end56_crit_edge ], [ %cmp48.1, %for.inc54.for.end56_crit_edge ], [ %cmp48.2, %for.inc54.1.for.end56_crit_edge ], [ %cmp48.3, %for.inc54.2.for.end56_crit_edge ], [ %cmp48.4, %for.inc54.3.for.end56_crit_edge ], [ %cmp48.5, %for.inc54.4.for.end56_crit_edge ], [ %cmp48.5, %for.inc54.5 ]
  call void @mutex_unlock(ptr noundef %phy_lock) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i110.lcssa, i32 %inc40)
  %cmp61.not = icmp eq i32 %call.i110.lcssa, %inc40
  %. = select i1 %cmp61.not, i32 0, i32 -121
  %r.1 = select i1 %cmp48.lcssa, i32 %call.i110.lcssa, i32 %.
  %call.i111 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #5
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %sub.i = add i32 %39, -3
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end56, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %for.end56 ], [ %9, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %tmp) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_i2c_enable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_ena = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 2
  %0 = ptrtoint ptr %gpiod_ena to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_ena, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 1) #5
  %powered = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 7
  %2 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %powered, align 4
  %run_mode = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 8
  %3 = ptrtoint ptr %run_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %run_mode, align 4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_hci_i2c_disable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_ena = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 2
  %0 = ptrtoint ptr %gpiod_ena to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_ena, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #5
  %powered = getelementptr inbounds %struct.st21nfca_i2c_phy, ptr %phy_id, i32 0, i32 7
  %2 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %powered, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @st21nfca_hci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_st21nfca_i2c__317_608_st21nfca_hci_i2c_driver_init6, !1, !"__initcall__kmod_st21nfca_i2c__317_608_st21nfca_hci_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 608, i32 1}
!2 = !{ptr @__exitcall_st21nfca_hci_i2c_driver_exit, !1, !"__exitcall_st21nfca_hci_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file318, !4, !"__UNIQUE_ID_file318", i1 false, i1 false}
!4 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 610, i32 1}
!5 = !{ptr @__UNIQUE_ID_license319, !4, !"__UNIQUE_ID_license319", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description320, !7, !"__UNIQUE_ID_description320", i1 false, i1 false}
!7 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 611, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 600, i32 11}
!10 = !{ptr @st21nfca_hci_i2c_driver, !11, !"st21nfca_hci_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 598, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 498, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @st21nfca_hci_i2c_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @st21nfca_hci_i2c_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @st21nfca_hci_i2c_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 514, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 519, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @st21nfca_hci_i2c_probe.__UNIQUE_ID_ddebug316, !24, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 522, i32 39}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 524, i32 3}
!31 = !{ptr @st21nfca_hci_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @st21nfca_hci_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 530, i32 44}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 532, i32 44}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 536, i32 3}
!39 = !{ptr @st21nfca_hci_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @st21nfca_hci_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 543, i32 5}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 545, i32 3}
!45 = !{ptr @st21nfca_hci_i2c_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @st21nfca_hci_i2c_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 549, i32 44}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 486, i32 4}
!51 = distinct !{null, !52, !"acpi_st21nfca_gpios", i1 false, i1 false}
!52 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 485, i32 39}
!53 = distinct !{null, !54, !"enable_gpios", i1 false, i1 false}
!54 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 483, i32 38}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 426, i32 3}
!57 = !{ptr @len_seq, !58, !"len_seq", i1 false, i1 false}
!58 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 77, i32 17}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 271, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @check_crc._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @check_crc._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 275, i32 3}
!66 = !{ptr @check_crc._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @check_crc._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 276, i32 18}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 276, i32 30}
!72 = !{ptr @wait_tab, !73, !"wait_tab", i1 false, i1 false}
!73 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 78, i32 18}
!74 = !{ptr @i2c_phy_ops, !75, !"i2c_phy_ops", i1 false, i1 false}
!75 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 477, i32 33}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 189, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @st21nfca_hci_i2c_write.__UNIQUE_ID_ddebug315, !77, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!80 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @of_st21nfca_i2c_match, !83, !"of_st21nfca_i2c_match", i1 false, i1 false}
!83 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 591, i32 34}
!84 = !{ptr @st21nfca_hci_i2c_id_table, !85, !"st21nfca_hci_i2c_id_table", i1 false, i1 false}
!85 = !{!"../drivers/nfc/st21nfca/i2c.c", i32 579, i32 35}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148967981, i64 2148967986, i64 2148967999, i64 2148968043, i64 2148968077, i64 2148968098}
!96 = !{!"branch_weights", i32 2000, i32 1}
