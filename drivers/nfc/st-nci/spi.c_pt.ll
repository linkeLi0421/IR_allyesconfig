; ModuleID = '/llk/IR_all_yes/drivers/nfc/st-nci/spi.c_pt.bc'
source_filename = "../drivers/nfc/st-nci/spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.st_nci_spi_phy = type { ptr, ptr, i8, ptr, %struct.st_nci_se_status }
%struct.st_nci_se_status = type { i8, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.llt_ndlc = type { ptr, ptr, ptr, %struct.timer_list, i8, %struct.timer_list, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.74, %union.anon.77, %union.anon.78, [48 x i8], %union.anon.79, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.81, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, ptr, %union.anon.76 }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%union.anon.78 = type { i64 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.83, i32, i32, i32, i16, i16, %union.anon.85, i32, %union.anon.86, %union.anon.87, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.83 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i32 }
%union.anon.87 = type { i16 }

@__initcall__kmod_st_nci_spi__279_304_st_nci_spi_driver_init6 = internal global ptr @st_nci_spi_driver_init, section ".initcall6.init", align 4
@st_nci_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @st_nci_spi_id_table, ptr @st_nci_spi_probe, ptr @st_nci_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_st_nci_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_st_nci_spi_driver_exit = internal global ptr @st_nci_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file280 = internal constant [46 x i8] c"st_nci_spi.file=drivers/nfc/st-nci/st-nci_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [23 x i8] c"st_nci_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description282 = internal constant [49 x i8] c"st_nci_spi.description=NCI NFC driver for ST_NCI\00", section ".modinfo", align 1
@st_nci_spi_id_table = internal global { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"st_nci_spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"st21nfcb-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st_nci_spi\00", [21 x i8] zeroinitializer }, align 32
@of_st_nci_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st21nfcb-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@st_nci_spi_probe.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_nci_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/nfc/st-nci/spi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: dev is NULL. Device is not accessible.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"st_nci_spi: %s: dev is NULL. Device is not accessible.\0A\00", [40 x i8] zeroinitializer }, align 32
@st_nci_spi_probe.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@st_nci_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 238, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NFC: Unable to get RESET GPIO\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_nci_spi_probe._entry_ptr = internal global ptr @st_nci_spi_probe._entry, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ese-present\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uicc-present\00", [19 x i8] zeroinitializer }, align 32
@spi_phy_ops = internal constant { %struct.nfc_phy_ops, [20 x i8] } { %struct.nfc_phy_ops { ptr @st_nci_spi_write, ptr @st_nci_spi_enable, ptr @st_nci_spi_disable }, [20 x i8] zeroinitializer }, align 32
@st_nci_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 251, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NFC: Unable to register ndlc layer\0A\00", [60 x i8] zeroinitializer }, align 32
@st_nci_spi_probe._entry_ptr.14 = internal global ptr @st_nci_spi_probe._entry.12, section ".printk_index", align 4
@st_nci_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 261, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@st_nci_spi_probe._entry_ptr.17 = internal global ptr @st_nci_spi_probe._entry.15, section ".printk_index", align 4
@st_nci_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@st_nci_spi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 135, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: invalid frame len\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st_nci_spi_read\00", [16 x i8] zeroinitializer }, align 32
@st_nci_spi_read._entry_ptr = internal global ptr @st_nci_spi_read._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"st_nci_spi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 294, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"st_nci_spi_id_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 275, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 296, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"of_st_nci_spi_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 288, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 217, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 233, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 236, i32 47 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 238, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 243, i32 41 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 245, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"spi_phy_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 197, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 251, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 261, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [28 x i8] c"../drivers/nfc/st-nci/spi.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 135, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_st_nci_spi_driver_exit, ptr @__initcall__kmod_st_nci_spi__279_304_st_nci_spi_driver_init6, ptr @st_nci_spi_driver_exit, ptr @st_nci_spi_probe._entry, ptr @st_nci_spi_probe._entry.12, ptr @st_nci_spi_probe._entry.15, ptr @st_nci_spi_probe._entry_ptr, ptr @st_nci_spi_probe._entry_ptr.14, ptr @st_nci_spi_probe._entry_ptr.17, ptr @st_nci_spi_read._entry, ptr @st_nci_spi_read._entry_ptr, ptr @st_nci_spi_driver, ptr @st_nci_spi_id_table, ptr @.str, ptr @of_st_nci_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @spi_phy_ops, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_spi_id_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_st_nci_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_spi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @st_nci_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_nci_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @st_nci_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_spi_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_nci_spi_probe.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_nci_spi_probe, %if.then4)) #5
          to label %cleanup [label %if.then4], !srcloc !69

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_nci_spi_probe.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_nci_spi_probe.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_nci_spi_probe, %if.then27)) #5
          to label %if.end32 [label %if.then27], !srcloc !69

if.then27:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @st_nci_spi_probe.__UNIQUE_ID_ddebug278, ptr noundef nonnull %dev, ptr noundef nonnull @.str.5) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end10
  %call34 = tail call ptr @devm_gpiod_get(ptr noundef nonnull %dev, ptr noundef nonnull @.str.6, i32 noundef 7) #5
  %gpiod_reset = getelementptr inbounds %struct.st_nci_spi_phy, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call34, ptr %gpiod_reset, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.7) #8
  %3 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpiod_reset, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end32
  %call.i104 = tail call zeroext i1 @device_property_present(ptr noundef nonnull %dev, ptr noundef nonnull @.str.10) #5
  %se_status = getelementptr inbounds %struct.st_nci_spi_phy, ptr %call.i, i32 0, i32 4
  %frombool47 = zext i1 %call.i104 to i8
  %6 = ptrtoint ptr %se_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool47, ptr %se_status, align 4
  %call.i105 = tail call zeroext i1 @device_property_present(ptr noundef nonnull %dev, ptr noundef nonnull @.str.11) #5
  %is_uicc_present = getelementptr inbounds %struct.st_nci_spi_phy, ptr %call.i, i32 0, i32 4, i32 1
  %frombool51 = zext i1 %call.i105 to i8
  %7 = ptrtoint ptr %is_uicc_present to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool51, ptr %is_uicc_present, align 1
  %ndlc = getelementptr inbounds %struct.st_nci_spi_phy, ptr %call.i, i32 0, i32 1
  %call54 = tail call i32 @ndlc_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @spi_phy_ops, ptr noundef nonnull %dev, i32 noundef 1, i32 noundef 0, ptr noundef %ndlc, ptr noundef %se_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp slt i32 %call54, 0
  br i1 %cmp, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end44
  %irq_active = getelementptr inbounds %struct.st_nci_spi_phy, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %irq_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %irq_active, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call62 = tail call i32 @devm_request_threaded_irq(ptr noundef nonnull %dev, i32 noundef %10, ptr noundef null, ptr noundef nonnull @st_nci_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end67, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev, ptr noundef nonnull @.str.16) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.end60.cleanup_crit_edge, %do.end58, %do.end40, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ %5, %do.end40 ], [ %call54, %do.end58 ], [ -19, %if.then4 ], [ -12, %if.end5.cleanup_crit_edge ], [ %call62, %do.end67 ], [ %call62, %if.end60.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_spi_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndlc = getelementptr inbounds %struct.st_nci_spi_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndlc, align 4
  tail call void @ndlc_remove(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndlc_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %msg.i53.i = alloca %struct.spi_message, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %buf.i = alloca [250 x i8], align 4
  %spi_xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %ndlc = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 1
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
  %irq3 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
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
  br i1 %.b68, label %land.end.cleanup_crit_edge, label %if.then9, !prof !70

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @st_nci_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef null) #5
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
  %irq_active.i = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 2
  %10 = ptrtoint ptr %irq_active.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %irq_active.i, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 250, ptr nonnull %buf.i) #5
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 250)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_xfer.i) #5
  %12 = call ptr @memset(ptr %spi_xfer.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end46.spi_sync_transfer.exit.i_crit_edge

if.end46.spi_sync_transfer.exit.i_crit_edge:      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_sync_transfer.exit.i

spi_sync_transfer.exit.i:                         ; preds = %if.end.i.i.i.i.i.i, %if.end46.spi_sync_transfer.exit.i_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %spi_sync_transfer.exit.i.st_nci_spi_read.exit.thread_crit_edge, label %if.end.i

spi_sync_transfer.exit.i.st_nci_spi_read.exit.thread_crit_edge: ; preds = %spi_sync_transfer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_nci_spi_read.exit.thread

if.end.i:                                         ; preds = %spi_sync_transfer.exit.i
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 2
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i, align 2
  %conv.i = trunc i16 %26 to i8
  %conv.mask.i = and i16 %26, 255
  %conv3.i = zext i16 %conv.mask.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 250, i16 %conv.mask.i)
  %cmp4.i = icmp ugt i16 %conv.mask.i, 250
  br i1 %cmp4.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #8
  %27 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndlc, align 4
  %hard_fault.i = getelementptr inbounds %struct.llt_ndlc, ptr %28, i32 0, i32 12
  %29 = ptrtoint ptr %hard_fault.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %hard_fault.i, align 4
  br label %st_nci_spi_read.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %add.i = add nuw nsw i32 %conv3.i, 4
  %call.i52.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %cmp11.i = icmp eq ptr %call.i52.i, null
  br i1 %cmp11.i, label %if.end8.i.st_nci_spi_read.exit.thread_crit_edge, label %if.end14.i

if.end8.i.st_nci_spi_read.exit.thread_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_nci_spi_read.exit.thread

if.end14.i:                                       ; preds = %if.end8.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i52.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i52.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 4
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call15.i = call ptr @skb_put(ptr noundef nonnull %call.i52.i, i32 noundef 4) #5
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool.not.i, label %if.end14.i.if.end53_crit_edge, label %if.end18.i

if.end14.i.if.end53_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.end18.i:                                       ; preds = %if.end14.i
  %39 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv3.i, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i53.i) #5
  %40 = getelementptr inbounds i8, ptr %msg.i53.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i53.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i53.i, ptr %msg.i53.i, align 4
  %prev.i.i.i.i.i54.i = getelementptr inbounds %struct.list_head, ptr %msg.i53.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i53.i, ptr %prev.i.i.i.i.i54.i, align 4
  %resources.i.i.i.i55.i = getelementptr inbounds %struct.spi_message, ptr %msg.i53.i, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i55.i, ptr %resources.i.i.i.i55.i, align 4
  %prev.i2.i.i.i.i56.i = getelementptr inbounds %struct.spi_message, ptr %msg.i53.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i55.i, ptr %prev.i2.i.i.i.i56.i, align 4
  %call.i.i.i.i.i58.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i53.i, ptr noundef nonnull %msg.i53.i) #5
  br i1 %call.i.i.i.i.i58.i, label %if.end.i.i.i.i.i60.i, label %if.end18.i.spi_sync_transfer.exit62.i_crit_edge

if.end18.i.spi_sync_transfer.exit62.i_crit_edge:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit62.i

if.end.i.i.i.i.i60.i:                             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %prev.i.i.i.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i54.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i53.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i59.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i53.i, ptr %prev3.i.i.i.i.i59.i, align 4
  %49 = ptrtoint ptr %msg.i53.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i53.i, align 4
  br label %spi_sync_transfer.exit62.i

spi_sync_transfer.exit62.i:                       ; preds = %if.end.i.i.i.i.i60.i, %if.end18.i.spi_sync_transfer.exit62.i_crit_edge
  %call.i61.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i53.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i53.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %cmp22.i = icmp slt i32 %call.i61.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %spi_sync_transfer.exit62.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef nonnull %call.i52.i, i32 noundef 0) #5
  br label %st_nci_spi_read.exit.thread

if.end25.i:                                       ; preds = %spi_sync_transfer.exit62.i
  call void @__sanitizer_cov_trace_pc() #7
  %call27.i = call ptr @skb_put(ptr noundef nonnull %call.i52.i, i32 noundef %conv3.i) #5
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %51, i32 4
  %52 = call ptr @memcpy(ptr %add.ptr29.i, ptr %buf.i, i32 %conv3.i)
  br label %if.end53

st_nci_spi_read.exit.thread:                      ; preds = %if.then24.i, %if.end8.i.st_nci_spi_read.exit.thread_crit_edge, %do.end.i, %spi_sync_transfer.exit.i.st_nci_spi_read.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer.i) #5
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %buf.i) #5
  br label %cleanup

if.end53:                                         ; preds = %if.end25.i, %if.end14.i.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer.i) #5
  call void @llvm.lifetime.end.p0(i64 250, ptr nonnull %buf.i) #5
  %53 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ndlc, align 4
  call void @ndlc_recv(ptr noundef %54, ptr noundef nonnull %call.i52.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %st_nci_spi_read.exit.thread, %if.then45, %if.end38.cleanup_crit_edge, %if.then9, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end53 ], [ 1, %if.then45 ], [ 0, %if.then9 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %if.end38.cleanup_crit_edge ], [ 1, %st_nci_spi_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_spi_write(ptr nocapture noundef readonly %phy_id, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %buf = alloca [254 x i8], align 1
  %spi_xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  call void @llvm.lifetime.start.p0(i64 254, ptr nonnull %buf) #5
  %2 = call ptr @memset(ptr %buf, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %spi_xfer) #5
  %3 = getelementptr inbounds i8, ptr %spi_xfer, i32 12
  %4 = call ptr @memset(ptr %3, i32 0, i32 84)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %spi_xfer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %spi_xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 2
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1, align 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len, align 4
  %ndlc = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 1
  %12 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndlc, align 4
  %hard_fault = getelementptr inbounds %struct.llt_ndlc, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_sync_transfer.exit_crit_edge

if.end.spi_sync_transfer.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %spi_xfer, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %if.end.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then4, label %spi_sync_transfer.exit.cleanup_crit_edge

spi_sync_transfer.exit.cleanup_crit_edge:         ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %spi_sync_transfer.exit
  %26 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len1, align 4
  %call.i33 = call ptr @__alloc_skb(i32 noundef %27, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool7.not = icmp eq ptr %call.i33, null
  br i1 %tobool7.not, label %if.then4.cleanup_crit_edge, label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len1, align 4
  %call11 = call ptr @skb_put(ptr noundef nonnull %call.i33, i32 noundef %29) #5
  %data12 = getelementptr inbounds %struct.sk_buff, ptr %call.i33, i32 0, i32 19
  %30 = ptrtoint ptr %data12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data12, align 4
  %32 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len1, align 4
  %34 = call ptr @memcpy(ptr %31, ptr %buf, i32 %33)
  %35 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndlc, align 4
  call void @ndlc_recv(ptr noundef %36, ptr noundef nonnull %call.i33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4.cleanup_crit_edge, %spi_sync_transfer.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %entry.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ], [ 0, %if.end9 ], [ %call.i, %spi_sync_transfer.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %spi_xfer) #5
  call void @llvm.lifetime.end.p0(i64 254, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_spi_enable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_reset = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 3
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
  %ndlc = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 1
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
  %irq_active = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 2
  %8 = ptrtoint ptr %irq_active to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_active, align 4, !range !71
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
  %irq = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 8
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
define internal void @st_nci_spi_disable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %3) #5
  %irq_active = getelementptr inbounds %struct.st_nci_spi_phy, ptr %phy_id, i32 0, i32 2
  %4 = ptrtoint ptr %irq_active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %irq_active, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndlc_recv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_st_nci_spi__279_304_st_nci_spi_driver_init6, !1, !"__initcall__kmod_st_nci_spi__279_304_st_nci_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st-nci/spi.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_st_nci_spi_driver_exit, !1, !"__exitcall_st_nci_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file280, !4, !"__UNIQUE_ID_file280", i1 false, i1 false}
!4 = !{!"../drivers/nfc/st-nci/spi.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_license281, !4, !"__UNIQUE_ID_license281", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description282, !7, !"__UNIQUE_ID_description282", i1 false, i1 false}
!7 = !{!"../drivers/nfc/st-nci/spi.c", i32 307, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/st-nci/spi.c", i32 296, i32 11}
!10 = !{ptr @st_nci_spi_driver, !11, !"st_nci_spi_driver", i1 false, i1 false}
!11 = !{!"../drivers/nfc/st-nci/spi.c", i32 294, i32 26}
!12 = !{ptr @st_nci_spi_id_table, !13, !"st_nci_spi_id_table", i1 false, i1 false}
!13 = !{!"../drivers/nfc/st-nci/spi.c", i32 275, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nfc/st-nci/spi.c", i32 217, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @st_nci_spi_probe.__UNIQUE_ID_ddebug277, !15, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nfc/st-nci/spi.c", i32 233, i32 3}
!22 = !{ptr @st_nci_spi_probe.__UNIQUE_ID_ddebug278, !21, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/st-nci/spi.c", i32 236, i32 47}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/nfc/st-nci/spi.c", i32 238, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @st_nci_spi_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @st_nci_spi_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nfc/st-nci/spi.c", i32 243, i32 41}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/st-nci/spi.c", i32 245, i32 41}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/st-nci/spi.c", i32 251, i32 3}
!37 = !{ptr @st_nci_spi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @st_nci_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/nfc/st-nci/spi.c", i32 261, i32 3}
!41 = !{ptr @st_nci_spi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_nci_spi_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nfc/st-nci/spi.c", i32 206, i32 4}
!45 = distinct !{null, !46, !"acpi_st_nci_gpios", i1 false, i1 false}
!46 = !{!"../drivers/nfc/st-nci/spi.c", i32 205, i32 39}
!47 = distinct !{null, !48, !"reset_gpios", i1 false, i1 false}
!48 = !{!"../drivers/nfc/st-nci/spi.c", i32 203, i32 38}
!49 = !{ptr @spi_phy_ops, !50, !"spi_phy_ops", i1 false, i1 false}
!50 = !{!"../drivers/nfc/st-nci/spi.c", i32 197, i32 33}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/nfc/st-nci/spi.c", i32 176, i32 3}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/st-nci/spi.c", i32 135, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @st_nci_spi_read._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @st_nci_spi_read._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @of_st_nci_spi_match, !59, !"of_st_nci_spi_match", i1 false, i1 false}
!59 = !{!"../drivers/nfc/st-nci/spi.c", i32 288, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148958537, i64 2148958542, i64 2148958555, i64 2148958599, i64 2148958633, i64 2148958654}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i8 0, i8 2}
