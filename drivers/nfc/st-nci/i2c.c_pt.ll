; ModuleID = '/llk/IR_all_yes/drivers/nfc/st-nci/i2c.c_pt.bc'
source_filename = "../drivers/nfc/st-nci/i2c.c"
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
%struct.st_nci_i2c_phy = type { ptr, ptr, i8, ptr, %struct.st_nci_se_status }
%struct.st_nci_se_status = type { i8, i8 }
%struct.llt_ndlc = type { ptr, ptr, ptr, %struct.timer_list, i8, %struct.timer_list, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
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

@__initcall__kmod_st_nci_i2c__316_293_st_nci_i2c_driver_init6 = internal global ptr @st_nci_i2c_driver_init, section ".initcall6.init", align 4
@st_nci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @st_nci_i2c_probe, ptr @st_nci_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_st_nci_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @st_nci_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_st_nci_i2c_driver_exit = internal global ptr @st_nci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file317 = internal constant [46 x i8] c"st_nci_i2c.file=drivers/nfc/st-nci/st-nci_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [23 x i8] c"st_nci_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [49 x i8] c"st_nci_i2c.description=NCI NFC driver for ST_NCI\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_nci_i2c\00", [21 x i8] zeroinitializer }, align 32
@of_st_nci_i2c_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st21nfcb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st21nfcb_i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st21nfcc-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@st_nci_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"st_nci\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: Need I2C_FUNC_I2C\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_nci_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nfc/st-nci/i2c.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry_ptr = internal global ptr @st_nci_i2c_probe._entry, section ".printk_index", align 4
@st_nci_i2c_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFC: Unable to get RESET GPIO\0A\00", [33 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry_ptr.10 = internal global ptr @st_nci_i2c_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ese-present\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uicc-present\00", [19 x i8] zeroinitializer }, align 32
@i2c_phy_ops = internal constant { %struct.nfc_phy_ops, [20 x i8] } { %struct.nfc_phy_ops { ptr @st_nci_i2c_write, ptr @st_nci_i2c_enable, ptr @st_nci_i2c_disable }, [20 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFC: Unable to register ndlc layer\0A\00", [60 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry_ptr.15 = internal global ptr @st_nci_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_nci\00", [25 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 248, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@st_nci_i2c_probe._entry_ptr.19 = internal global ptr @st_nci_i2c_probe._entry.17, section ".printk_index", align 4
@st_nci_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@st_nci_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: invalid frame len\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st_nci_i2c_read\00", [16 x i8] zeroinitializer }, align 32
@st_nci_i2c_read._entry_ptr = internal global ptr @st_nci_i2c_read._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"st_nci_i2c_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 283, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 285, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"of_st_nci_i2c_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 275, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"st_nci_i2c_id_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 262, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 206, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 220, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 223, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 225, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 230, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 232, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 185, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 238, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 246, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 248, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [28 x i8] c"../drivers/nfc/st-nci/i2c.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 125, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_st_nci_i2c_driver_exit, ptr @__initcall__kmod_st_nci_i2c__316_293_st_nci_i2c_driver_init6, ptr @st_nci_i2c_driver_exit, ptr @st_nci_i2c_probe._entry, ptr @st_nci_i2c_probe._entry.13, ptr @st_nci_i2c_probe._entry.17, ptr @st_nci_i2c_probe._entry.8, ptr @st_nci_i2c_probe._entry_ptr, ptr @st_nci_i2c_probe._entry_ptr.10, ptr @st_nci_i2c_probe._entry_ptr.15, ptr @st_nci_i2c_probe._entry_ptr.19, ptr @st_nci_i2c_read._entry, ptr @st_nci_i2c_read._entry_ptr, ptr @st_nci_i2c_driver, ptr @.str, ptr @of_st_nci_i2c_match, ptr @st_nci_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @i2c_phy_ops, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_st_nci_i2c_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @st_nci_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_nci_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @st_nci_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
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
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_nci_i2c_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_nci_i2c_probe, %if.then15)) #5
          to label %if.end19 [label %if.then15], !srcloc !71

if.then15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_nci_i2c_probe.__UNIQUE_ID_ddebug315, ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end6
  %call20 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 7) #5
  %gpiod_reset = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call20, ptr %gpiod_reset, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end19.cleanup.sink.split_crit_edge, label %if.end27

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end19
  %call.i83 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.11) #5
  %se_status = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %call.i, i32 0, i32 4
  %frombool29 = zext i1 %call.i83 to i8
  %9 = ptrtoint ptr %se_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool29, ptr %se_status, align 4
  %call.i84 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.12) #5
  %is_uicc_present = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %call.i, i32 0, i32 4, i32 1
  %frombool32 = zext i1 %call.i84 to i8
  %10 = ptrtoint ptr %is_uicc_present to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool32, ptr %is_uicc_present, align 1
  %ndlc = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %call.i, i32 0, i32 1
  %call35 = tail call i32 @ndlc_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_phy_ops, ptr noundef %dev1, i32 noundef 1, i32 noundef 0, ptr noundef %ndlc, ptr noundef %se_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %if.end27.cleanup.sink.split_crit_edge, label %if.end41

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end41:                                         ; preds = %if.end27
  %irq_active = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %irq_active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %irq_active, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call43 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %13, ptr noundef null, ptr noundef nonnull @st_nci_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end41.cleanup.sink.split_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %if.end19.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.1, %entry.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end19.cleanup.sink.split_crit_edge ], [ @.str.14, %if.end27.cleanup.sink.split_crit_edge ], [ @.str.18, %if.end41.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %entry.cleanup.sink.split_crit_edge ], [ -19, %if.end19.cleanup.sink.split_crit_edge ], [ %call35, %if.end27.cleanup.sink.split_crit_edge ], [ %call43, %if.end41.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.18.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndlc = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndlc, align 4
  tail call void @ndlc_remove(ptr noundef %3) #5
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
declare dso_local i32 @ndlc_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %buf.i = alloca [250 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %ndlc = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 1
  %0 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndlc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.land.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_id, align 4
  %irq3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp.not = icmp eq i32 %5, %irq
  br i1 %cmp.not, label %if.end38, label %lor.lhs.false2.land.end_crit_edge

lor.lhs.false2.land.end_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false2.land.end_crit_edge, %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b68 = load i1, ptr @st_nci_irq_thread_fn.__already_done, align 1
  br i1 %.b68, label %land.end.cleanup_crit_edge, label %if.then9, !prof !72

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @st_nci_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false2
  %hard_fault = getelementptr inbounds %struct.llt_ndlc, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool40.not = icmp eq i32 %7, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %powered = getelementptr inbounds %struct.llt_ndlc, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %powered to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool44.not = icmp eq i32 %9, 0
  br i1 %tobool44.not, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @disable_irq_nosync(i32 noundef %irq) #5
  %irq_active.i = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 2
  %10 = ptrtoint ptr %irq_active.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_active.i, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %buf.i) #5
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 250)
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end46.if.end.i_crit_edge

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 4000, i32 noundef 2) #5
  %call.i57.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef 4, i16 noundef zeroext 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end46.if.end.i_crit_edge
  %r.0.i = phi i32 [ %call.i57.i, %if.then.i ], [ %call.i.i, %if.end46.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %r.0.i)
  %cmp3.not.i = icmp eq i32 %r.0.i, 4
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.st_nci_i2c_read.exit.thread_crit_edge

if.end.i.st_nci_i2c_read.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_nci_i2c_read.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 2
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i, align 2
  %conv.i = trunc i16 %13 to i8
  %conv.mask.i = and i16 %13, 255
  %conv7.i = zext i16 %conv.mask.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 250, i16 %conv.mask.i)
  %cmp8.i = icmp ugt i16 %conv.mask.i, 250
  br i1 %cmp8.i, label %do.end.i, label %if.end11.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #8
  br label %st_nci_i2c_read.exit.thread

if.end11.i:                                       ; preds = %if.end5.i
  %add.i = add nuw nsw i32 %conv7.i, 4
  %call.i58.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %cmp14.i = icmp eq ptr %call.i58.i, null
  br i1 %cmp14.i, label %if.end11.i.st_nci_i2c_read.exit.thread_crit_edge, label %if.end17.i

if.end11.i.st_nci_i2c_read.exit.thread_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_nci_i2c_read.exit.thread

if.end17.i:                                       ; preds = %if.end11.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i58.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i58.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %17, i32 4
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call18.i = call ptr @skb_put(ptr noundef nonnull %call.i58.i, i32 noundef 4) #5
  %18 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i, align 4
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool.not.i, label %if.end17.i.if.end53_crit_edge, label %if.end21.i

if.end17.i.if.end53_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.end21.i:                                       ; preds = %if.end17.i
  %call.i59.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf.i, i32 noundef %conv7.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i59.i, i32 %conv7.i)
  %cmp26.not.i = icmp eq i32 %call.i59.i, %conv7.i
  br i1 %cmp26.not.i, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef nonnull %call.i58.i, i32 noundef 0) #5
  br label %st_nci_i2c_read.exit.thread

if.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31.i = call ptr @skb_put(ptr noundef nonnull %call.i58.i, i32 noundef %conv7.i) #5
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %24, i32 4
  %25 = call ptr @memcpy(ptr %add.ptr33.i, ptr %buf.i, i32 %conv7.i)
  br label %if.end53

st_nci_i2c_read.exit.thread:                      ; preds = %if.then28.i, %if.end11.i.st_nci_i2c_read.exit.thread_crit_edge, %do.end.i, %if.end.i.st_nci_i2c_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %buf.i) #5
  br label %cleanup

if.end53:                                         ; preds = %if.end29.i, %if.end17.i.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %buf.i) #5
  %26 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndlc, align 4
  call void @ndlc_recv(ptr noundef %27, ptr noundef nonnull %call.i58.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %st_nci_i2c_read.exit.thread, %if.then45, %if.end38.cleanup_crit_edge, %if.then9, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end53 ], [ 1, %if.then45 ], [ 0, %if.then9 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %if.end38.cleanup_crit_edge ], [ 1, %st_nci_i2c_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_i2c_write(ptr nocapture noundef readonly %phy_id, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %ndlc = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 1
  %2 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndlc, align 4
  %hard_fault = getelementptr inbounds %struct.llt_ndlc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %7, i32 noundef %9, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end8, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end8:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 4000, i32 noundef 2) #5
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %call.i28 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %11, i32 noundef %13, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i28)
  %cmp9 = icmp sgt i32 %call.i28, -1
  br i1 %cmp9, label %if.end8.if.then10_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %r.031 = phi i32 [ %call.i28, %if.end8.if.then10_crit_edge ], [ %call.i, %if.end.if.then10_crit_edge ]
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.031, i32 %15)
  %cmp12.not = icmp eq i32 %r.031, %15
  %. = select i1 %cmp12.not, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %entry.cleanup_crit_edge ], [ %call.i28, %if.end8.cleanup_crit_edge ], [ %., %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_i2c_enable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_reset = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 3
  %0 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #5
  %2 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 80000, i32 noundef 85000, i32 noundef 2) #5
  %ndlc = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 1
  %4 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndlc, align 4
  %powered = getelementptr inbounds %struct.llt_ndlc, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %powered to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %irq_active = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 2
  %8 = ptrtoint ptr %irq_active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_active, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp2 = icmp eq i8 %9, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_id, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %13) #5
  %14 = ptrtoint ptr %irq_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %irq_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_nci_i2c_disable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #5
  %irq_active = getelementptr inbounds %struct.st_nci_i2c_phy, ptr %phy_id, i32 0, i32 2
  %4 = ptrtoint ptr %irq_active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq_active, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndlc_recv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndlc_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_st_nci_i2c__316_293_st_nci_i2c_driver_init6, !1, !"__initcall__kmod_st_nci_i2c__316_293_st_nci_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st-nci/i2c.c", i32 293, i32 1}
!2 = !{ptr @__exitcall_st_nci_i2c_driver_exit, !1, !"__exitcall_st_nci_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file317, !4, !"__UNIQUE_ID_file317", i1 false, i1 false}
!4 = !{!"../drivers/nfc/st-nci/i2c.c", i32 295, i32 1}
!5 = !{ptr @__UNIQUE_ID_license318, !4, !"__UNIQUE_ID_license318", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description319, !7, !"__UNIQUE_ID_description319", i1 false, i1 false}
!7 = !{!"../drivers/nfc/st-nci/i2c.c", i32 296, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/st-nci/i2c.c", i32 285, i32 11}
!10 = !{ptr @st_nci_i2c_driver, !11, !"st_nci_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/nfc/st-nci/i2c.c", i32 283, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nfc/st-nci/i2c.c", i32 206, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @st_nci_i2c_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @st_nci_i2c_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nfc/st-nci/i2c.c", i32 220, i32 3}
!22 = !{ptr @st_nci_i2c_probe.__UNIQUE_ID_ddebug315, !21, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/st-nci/i2c.c", i32 223, i32 41}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/nfc/st-nci/i2c.c", i32 225, i32 3}
!27 = !{ptr @st_nci_i2c_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @st_nci_i2c_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nfc/st-nci/i2c.c", i32 230, i32 36}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nfc/st-nci/i2c.c", i32 232, i32 36}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/st-nci/i2c.c", i32 238, i32 3}
!35 = !{ptr @st_nci_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @st_nci_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/st-nci/i2c.c", i32 246, i32 5}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/nfc/st-nci/i2c.c", i32 248, i32 3}
!41 = !{ptr @st_nci_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_nci_i2c_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nfc/st-nci/i2c.c", i32 194, i32 4}
!45 = distinct !{null, !46, !"acpi_st_nci_gpios", i1 false, i1 false}
!46 = !{!"../drivers/nfc/st-nci/i2c.c", i32 193, i32 39}
!47 = distinct !{null, !48, !"reset_gpios", i1 false, i1 false}
!48 = !{!"../drivers/nfc/st-nci/i2c.c", i32 191, i32 38}
!49 = !{ptr @i2c_phy_ops, !50, !"i2c_phy_ops", i1 false, i1 false}
!50 = !{!"../drivers/nfc/st-nci/i2c.c", i32 185, i32 33}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/nfc/st-nci/i2c.c", i32 164, i32 3}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/st-nci/i2c.c", i32 125, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @st_nci_i2c_read._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @st_nci_i2c_read._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @of_st_nci_i2c_match, !59, !"of_st_nci_i2c_match", i1 false, i1 false}
!59 = !{!"../drivers/nfc/st-nci/i2c.c", i32 275, i32 34}
!60 = !{ptr @st_nci_i2c_id_table, !61, !"st_nci_i2c_id_table", i1 false, i1 false}
!61 = !{!"../drivers/nfc/st-nci/i2c.c", i32 262, i32 35}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148958349, i64 2148958354, i64 2148958367, i64 2148958411, i64 2148958445, i64 2148958466}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i8 0, i8 2}
