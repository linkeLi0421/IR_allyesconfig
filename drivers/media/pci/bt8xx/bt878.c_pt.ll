; ModuleID = '/llk/IR_all_yes/drivers/media/pci/bt8xx/bt878.c_pt.bc'
source_filename = "../drivers/media/pci/bt8xx/bt878.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bt878_num\22, \22a\22\09"
module asm "\09.weak\09__crc_bt878_num\09\09\09\09"
module asm "\09.long\09__crc_bt878_num\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt878_num:\09\09\09\09\09"
module asm "\09.asciz \09\22bt878_num\22\09\09\09\09\09"
module asm "__kstrtabns_bt878_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt878\22, \22a\22\09"
module asm "\09.weak\09__crc_bt878\09\09\09\09"
module asm "\09.long\09__crc_bt878\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt878:\09\09\09\09\09"
module asm "\09.asciz \09\22bt878\22\09\09\09\09\09"
module asm "__kstrtabns_bt878:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt878_start\22, \22a\22\09"
module asm "\09.weak\09__crc_bt878_start\09\09\09\09"
module asm "\09.long\09__crc_bt878_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt878_start:\09\09\09\09\09"
module asm "\09.asciz \09\22bt878_start\22\09\09\09\09\09"
module asm "__kstrtabns_bt878_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt878_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_bt878_stop\09\09\09\09"
module asm "\09.long\09__crc_bt878_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt878_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22bt878_stop\22\09\09\09\09\09"
module asm "__kstrtabns_bt878_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bt878_device_control\22, \22a\22\09"
module asm "\09.weak\09__crc_bt878_device_control\09\09\09\09"
module asm "\09.long\09__crc_bt878_device_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bt878_device_control:\09\09\09\09\09"
module asm "\09.asciz \09\22bt878_device_control\22\09\09\09\09\09"
module asm "__kstrtabns_bt878_device_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bt878 = type { %struct.mutex, i32, i32, ptr, ptr, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.tasklet_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dst_gpio_enable = type { i32, i32 }
%struct.dst_gpio_output = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__param_str_verbose = internal constant [14 x i8] c"bt878.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bt878_verbose = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @bt878_verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype300 = internal constant [27 x i8] c"bt878.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose301 = internal constant [64 x i8] c"bt878.parm=verbose:verbose startup messages, default is 1 (yes)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"bt878.debug\00", align 1
@bt878_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bt878_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype302 = internal constant [25 x i8] c"bt878.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug303 = internal constant [60 x i8] c"bt878.parm=debug:Turn on/off debugging, default is 0 (off).\00", section ".modinfo", align 1
@bt878_num = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_bt878_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt878_num = external dso_local constant [0 x i8], align 1
@__ksymtab_bt878_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt878_num to i32), ptr @__kstrtab_bt878_num, ptr @__kstrtabns_bt878_num }, section "___ksymtab+bt878_num", align 4
@bt878 = dso_local global { [4 x %struct.bt878], [208 x i8] } zeroinitializer, align 32
@__kstrtab_bt878 = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt878 = external dso_local constant [0 x i8], align 1
@__ksymtab_bt878 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt878 to i32), ptr @__kstrtab_bt878, ptr @__kstrtabns_bt878 }, section "___ksymtab+bt878", align 4
@bt878_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017bt878 debug: bt878_start (ctl=%8.8x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt878_start\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/pci/bt8xx/bt878.c\00", [32 x i8] zeroinitializer }, align 32
@bt878_start._entry_ptr = internal global ptr @bt878_start._entry, section ".printk_index", align 4
@bt878_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017bt878 debug: bt878_stop\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt878_stop\00", [21 x i8] zeroinitializer }, align 32
@bt878_stop._entry_ptr = internal global ptr @bt878_stop._entry, section ".printk_index", align 4
@bt878_stop._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017bt878(%d) debug: bt878_stop, i=%d, stat=0x%8.8x\0A\00", [45 x i8] zeroinitializer }, align 32
@bt878_stop._entry_ptr.7 = internal global ptr @bt878_stop._entry.5, section ".printk_index", align 4
@__kstrtab_bt878_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt878_start = external dso_local constant [0 x i8], align 1
@__ksymtab_bt878_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt878_start to i32), ptr @__kstrtab_bt878_start, ptr @__kstrtabns_bt878_start }, section "___ksymtab+bt878_start", align 4
@__kstrtab_bt878_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt878_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_bt878_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt878_stop to i32), ptr @__kstrtab_bt878_stop, ptr @__kstrtabns_bt878_stop }, section "___ksymtab+bt878_stop", align 4
@__kstrtab_bt878_device_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_bt878_device_control = external dso_local constant [0 x i8], align 1
@__ksymtab_bt878_device_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bt878_device_control to i32), ptr @__kstrtab_bt878_device_control, ptr @__kstrtabns_bt878_device_control }, section "___ksymtab+bt878_device_control", align 4
@bt878_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.10, ptr @bt878_pci_tbl, ptr @bt878_probe, ptr @bt878_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_bt878__304_563_bt878_init_module6 = internal global ptr @bt878_init_module, section ".initcall6.init", align 4
@__exitcall_bt878_cleanup_module = internal global ptr @bt878_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file305 = internal constant [41 x i8] c"bt878.file=drivers/media/pci/bt8xx/bt878\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [18 x i8] c"bt878.license=GPL\00", section ".modinfo", align 1
@bt878_risc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017bt878: risc len lines %u, bytes per line %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bt878_risc_program\00", [45 x i8] zeroinitializer }, align 32
@bt878_risc_program._entry_ptr = internal global ptr @bt878_risc_program._entry, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bt878\00", [26 x i8] zeroinitializer }, align 32
@bt878_pci_tbl = internal constant { [13 x %struct.pci_device_id], [96 x i8] } { [13 x %struct.pci_device_id] [%struct.pci_device_id { i32 4254, i32 2168, i32 113, i32 257, i32 0, i32 0, i32 ptrtoint (ptr @.str.11 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 5217, i32 1889, i32 0, i32 0, i32 ptrtoint (ptr @.str.12 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 4541, i32 28, i32 0, i32 0, i32 ptrtoint (ptr @.str.13 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 4541, i32 38, i32 0, i32 0, i32 ptrtoint (ptr @.str.14 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 6178, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @.str.15 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 9999, i32 64512, i32 0, i32 0, i32 ptrtoint (ptr @.str.16 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 5217, i32 1905, i32 0, i32 0, i32 ptrtoint (ptr @.str.17 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 6316, i32 56080, i32 0, i32 0, i32 ptrtoint (ptr @.str.18 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 6316, i32 56081, i32 0, i32 0, i32 ptrtoint (ptr @.str.19 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 6316, i32 54528, i32 0, i32 0, i32 ptrtoint (ptr @.str.20 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 28771, i32 8192, i32 0, i32 0, i32 ptrtoint (ptr @.str.21 to i32), i32 0 }, %struct.pci_device_id { i32 4254, i32 2168, i32 6178, i32 38, i32 0, i32 0, i32 ptrtoint (ptr @.str.22 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Nebula Electronics DigiTV\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AverMedia AverTV DVB-T 761\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Pinnacle PCTV Sat\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Pinnacle PCTV SAT CI\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Twinhan VisionPlus DVB\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ChainTech digitop DST-1000 DVB-S\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AVermedia AverTV DVB-T 771\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DViCO FusionHDTV DVB-T Lite\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ultraview DVB-T Lite\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DViCO FusionHDTV 5 Lite\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcHDTV HD-2000 TV\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DNTV Live! Mini\00", [16 x i8] zeroinitializer }, align 32
@bt878_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bt878: Bt878 AUDIO function found (%d).\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bt878_probe\00", [20 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr = internal global ptr @bt878_probe._entry, section ".printk_index", align 4
@bt878_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013bt878: Too many devices inserted\0A\00", [60 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.27 = internal global ptr @bt878_probe._entry.25, section ".printk_index", align 4
@bt878_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: card id=[0x%x],[ %s ] has DVB functions.\0A\00", [48 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.30 = internal global ptr @bt878_probe._entry.28, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@bt878_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016bt878(%d): Bt%x (rev %d) at %02x:%02x.%x, \00", [51 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.33 = internal global ptr @bt878_probe._entry.31, section ".printk_index", align 4
@bt878_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq: %d, latency: %d, memory: 0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.36 = internal global ptr @bt878_probe._entry.34, section ".printk_index", align 4
@bt878_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013bt878(%d): Bad irq number or handler\0A\00", [56 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.39 = internal global ptr @bt878_probe._entry.37, section ".printk_index", align 4
@bt878_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013bt878(%d): IRQ %d busy, change your PnP config in BIOS\0A\00", [38 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.42 = internal global ptr @bt878_probe._entry.40, section ".printk_index", align 4
@bt878_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013bt878: failed to allocate memory!\0A\00", [59 x i8] zeroinitializer }, align 32
@bt878_probe._entry_ptr.45 = internal global ptr @bt878_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@bt878_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016bt878(%d): irq%s%s risc_pc=%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bt878_irq\00", [22 x i8] zeroinitializer }, align 32
@bt878_irq._entry_ptr = internal global ptr @bt878_irq._entry, section ".printk_index", align 4
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" SCERR\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" OCERR\00", [25 x i8] zeroinitializer }, align 32
@bt878_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016bt878(%d): irq%s%s%s risc_pc=%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@bt878_irq._entry_ptr.54 = internal global ptr @bt878_irq._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" PABORT\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" RIPERR\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" PPERR\00", [25 x i8] zeroinitializer }, align 32
@bt878_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bt878_irq._entry_ptr.59 = internal global ptr @bt878_irq._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" FDSR\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FTRGT\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" FBUS\00", [26 x i8] zeroinitializer }, align 32
@bt878_irq._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.48, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013bt878(%d): IRQ lockup, cleared int mask\0A\00", [53 x i8] zeroinitializer }, align 32
@bt878_irq._entry_ptr.65 = internal global ptr @bt878_irq._entry.63, section ".printk_index", align 4
@bt878_make_risc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013bt878: buffer size error!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bt878_make_risc\00", [16 x i8] zeroinitializer }, align 32
@bt878_make_risc._entry_ptr = internal global ptr @bt878_make_risc._entry, section ".printk_index", align 4
@bt878_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016bt878(%d): unloading\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bt878_remove\00", [19 x i8] zeroinitializer }, align 32
@bt878_remove._entry_ptr = internal global ptr @bt878_remove._entry, section ".printk_index", align 4
@bt878_remove._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017bt878_mem: 0x%p.\0A\00", [44 x i8] zeroinitializer }, align 32
@bt878_remove._entry_ptr.72 = internal global ptr @bt878_remove._entry.70, section ".printk_index", align 4
@bt878_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016bt878: AUDIO driver version %d.%d.%d loaded\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bt878_init_module\00", [46 x i8] zeroinitializer }, align 32
@bt878_init_module._entry_ptr = internal global ptr @bt878_init_module._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967280]
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"bt878_verbose\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 36, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"bt878_debug\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 37, i32 21 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"bt878_num\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 45, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"bt878\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 46, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 190, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 224, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 236, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"bt878_pci_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 535, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 152, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 536, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"bt878_pci_tbl\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 370, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 371, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 372, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 373, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 374, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 375, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 376, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 378, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 379, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 380, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 381, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 382, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 383, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 405, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 408, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 417, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 438, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 441, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 456, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 461, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 473, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 391, i32 59 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 267, i32 5 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 278, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 291, i32 5 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 310, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 136, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 502, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 518, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [35 x i8] c"../drivers/media/pci/bt8xx/bt878.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 550, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_debug303, ptr @__UNIQUE_ID_debugtype302, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__UNIQUE_ID_verbose301, ptr @__UNIQUE_ID_verbosetype300, ptr @__exitcall_bt878_cleanup_module, ptr @__initcall__kmod_bt878__304_563_bt878_init_module6, ptr @__ksymtab_bt878, ptr @__ksymtab_bt878_device_control, ptr @__ksymtab_bt878_num, ptr @__ksymtab_bt878_start, ptr @__ksymtab_bt878_stop, ptr @__param_debug, ptr @__param_verbose, ptr @bt878_cleanup_module, ptr @bt878_init_module._entry, ptr @bt878_init_module._entry_ptr, ptr @bt878_irq._entry, ptr @bt878_irq._entry.52, ptr @bt878_irq._entry.58, ptr @bt878_irq._entry.63, ptr @bt878_irq._entry_ptr, ptr @bt878_irq._entry_ptr.54, ptr @bt878_irq._entry_ptr.59, ptr @bt878_irq._entry_ptr.65, ptr @bt878_make_risc._entry, ptr @bt878_make_risc._entry_ptr, ptr @bt878_probe._entry, ptr @bt878_probe._entry.25, ptr @bt878_probe._entry.28, ptr @bt878_probe._entry.31, ptr @bt878_probe._entry.34, ptr @bt878_probe._entry.37, ptr @bt878_probe._entry.40, ptr @bt878_probe._entry.43, ptr @bt878_probe._entry_ptr, ptr @bt878_probe._entry_ptr.27, ptr @bt878_probe._entry_ptr.30, ptr @bt878_probe._entry_ptr.33, ptr @bt878_probe._entry_ptr.36, ptr @bt878_probe._entry_ptr.39, ptr @bt878_probe._entry_ptr.42, ptr @bt878_probe._entry_ptr.45, ptr @bt878_remove._entry, ptr @bt878_remove._entry.70, ptr @bt878_remove._entry_ptr, ptr @bt878_remove._entry_ptr.72, ptr @bt878_risc_program._entry, ptr @bt878_risc_program._entry_ptr, ptr @bt878_start._entry, ptr @bt878_start._entry_ptr, ptr @bt878_stop._entry, ptr @bt878_stop._entry.5, ptr @bt878_stop._entry_ptr, ptr @bt878_stop._entry_ptr.7, ptr @bt878_verbose, ptr @bt878_debug, ptr @bt878_num, ptr @bt878, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @bt878_pci_driver, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @bt878_pci_tbl, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878 to i32), i32 848, i32 1056, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_stop._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_risc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_pci_tbl to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_irq._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_make_risc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_remove._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt878_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt878_start(ptr nocapture noundef %bt, i32 noundef %controlreg, i32 noundef %op_sync_orin, i32 noundef %irq_err_ignore) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bt878_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %controlreg) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %risc_pos.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 23
  %or.i = or i32 %op_sync_orin, -2147483642
  %1 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %risc_cpu.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 21
  %2 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %risc_cpu.i, align 4
  %4 = ptrtoint ptr %risc_pos.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %risc_pos.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %3, align 4
  %6 = load ptr, ptr %risc_cpu.i, align 4
  %7 = load i32, ptr %risc_pos.i, align 4
  %inc4.i = add i32 %7, 1
  store i32 %inc4.i, ptr %risc_pos.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %6, i32 %7
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx5.i, align 4
  %9 = load i32, ptr @bt878_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end3.do.end8.i_crit_edge, label %do.end.i

do.end3.do.end8.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %line_count.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 16
  %10 = ptrtoint ptr %line_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line_count.i, align 4
  %line_bytes.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 15
  %12 = ptrtoint ptr %line_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %line_bytes.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %13) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.end3.do.end8.i_crit_edge
  %line_count9.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 16
  %14 = ptrtoint ptr %line_count9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %line_count9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp114.not.i = icmp eq i32 %15, 0
  br i1 %cmp114.not.i, label %do.end8.i.bt878_risc_program.exit_crit_edge, label %for.body.lr.ph.i

do.end8.i.bt878_risc_program.exit_crit_edge:      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bt878_risc_program.exit

for.body.lr.ph.i:                                 ; preds = %do.end8.i
  %block_bytes.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 14
  %line_bytes32.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 15
  %block_count.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 13
  %buf_dma.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %if.end38.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf_pos.0116.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add45.i, %if.end38.i.for.body.i_crit_edge ]
  %line.0115.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc46.i, %if.end38.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %block_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %block_bytes.i, align 4
  %buf_pos.0116.i.frozen = freeze i32 %buf_pos.0116.i
  %.frozen = freeze i32 %17
  %div.i = udiv i32 %buf_pos.0116.i.frozen, %.frozen
  %18 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %buf_pos.0116.i.frozen, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool10.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %block_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_count.i, align 4
  %sub.i = add i32 %div.i, -1
  %add.i = add i32 %sub.i, %20
  %neg.i = xor i32 %add.i, -1
  %rem14.i = urem i32 %neg.i, %20
  %and.i = shl i32 %rem14.i, 20
  %shl.i = and i32 %and.i, 15728640
  %rem21.i = urem i32 %add.i, %20
  %and22.i = shl i32 %rem21.i, 16
  %shl23.i = and i32 %and22.i, 983040
  %21 = ptrtoint ptr %line_bytes32.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %line_bytes32.i, align 4
  %or24.i = or i32 %22, %shl.i
  %or25.i = or i32 %or24.i, %shl23.i
  %or27.i = or i32 %or25.i, 486539264
  %23 = tail call i32 @llvm.bswap.i32(i32 %or27.i) #8
  %24 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %risc_cpu.i, align 4
  %26 = ptrtoint ptr %risc_pos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %risc_pos.i, align 4
  %inc30.i = add i32 %27, 1
  store i32 %inc30.i, ptr %risc_pos.i, align 4
  %arrayidx31.i = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %arrayidx31.i, align 4
  br label %if.end38.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %line_bytes32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line_bytes32.i, align 4
  %or33.i = or i32 %30, 469762048
  %31 = tail call i32 @llvm.bswap.i32(i32 %or33.i) #8
  %32 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %risc_cpu.i, align 4
  %34 = ptrtoint ptr %risc_pos.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %risc_pos.i, align 4
  %inc36.i = add i32 %35, 1
  store i32 %inc36.i, ptr %risc_pos.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %31, ptr %arrayidx37.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i, %if.then11.i
  %37 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buf_dma.i, align 4
  %add39.i = add i32 %38, %buf_pos.0116.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %add39.i) #8
  %40 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %risc_cpu.i, align 4
  %42 = ptrtoint ptr %risc_pos.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %risc_pos.i, align 4
  %inc42.i = add i32 %43, 1
  store i32 %inc42.i, ptr %risc_pos.i, align 4
  %arrayidx43.i = getelementptr i32, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %39, ptr %arrayidx43.i, align 4
  %45 = ptrtoint ptr %line_bytes32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %line_bytes32.i, align 4
  %add45.i = add i32 %46, %buf_pos.0116.i
  %inc46.i = add nuw i32 %line.0115.i, 1
  %47 = ptrtoint ptr %line_count9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %line_count9.i, align 4
  %cmp.i = icmp ult i32 %inc46.i, %48
  br i1 %cmp.i, label %if.end38.i.for.body.i_crit_edge, label %if.end38.i.bt878_risc_program.exit_crit_edge

if.end38.i.bt878_risc_program.exit_crit_edge:     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bt878_risc_program.exit

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

bt878_risc_program.exit:                          ; preds = %if.end38.i.bt878_risc_program.exit_crit_edge, %do.end8.i.bt878_risc_program.exit_crit_edge
  %or48.i = or i32 %op_sync_orin, -2147483636
  %49 = tail call i32 @llvm.bswap.i32(i32 %or48.i) #8
  %50 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %risc_cpu.i, align 4
  %52 = ptrtoint ptr %risc_pos.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %risc_pos.i, align 4
  %inc51.i = add i32 %53, 1
  store i32 %inc51.i, ptr %risc_pos.i, align 4
  %arrayidx52.i = getelementptr i32, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %49, ptr %arrayidx52.i, align 4
  %55 = load ptr, ptr %risc_cpu.i, align 4
  %56 = load i32, ptr %risc_pos.i, align 4
  %inc55.i = add i32 %56, 1
  store i32 %inc55.i, ptr %risc_pos.i, align 4
  %arrayidx56.i = getelementptr i32, ptr %55, i32 %56
  %57 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx56.i, align 4
  %58 = load ptr, ptr %risc_cpu.i, align 4
  %59 = load i32, ptr %risc_pos.i, align 4
  %inc59.i = add i32 %59, 1
  store i32 %inc59.i, ptr %risc_pos.i, align 4
  %arrayidx60.i = getelementptr i32, ptr %58, i32 %59
  %60 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 112, ptr %arrayidx60.i, align 4
  %risc_dma.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 22
  %61 = ptrtoint ptr %risc_dma.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %risc_dma.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  %64 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %risc_cpu.i, align 4
  %66 = ptrtoint ptr %risc_pos.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %risc_pos.i, align 4
  %inc63.i = add i32 %67, 1
  store i32 %inc63.i, ptr %risc_pos.i, align 4
  %arrayidx64.i = getelementptr i32, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %arrayidx64.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %line_count9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %line_count9.i, align 4
  %shl69.i = shl i32 %70, 16
  %line_bytes70.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 15
  %71 = ptrtoint ptr %line_bytes70.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %line_bytes70.i, align 4
  %or71.i = or i32 %shl69.i, %72
  %73 = tail call i32 @llvm.bswap.i32(i32 %or71.i) #8
  %bt878_mem.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 10
  %74 = ptrtoint ptr %bt878_mem.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bt878_mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %75, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %73) #8, !srcloc !176
  %and = and i32 %controlreg, -32
  %or = or i32 %and, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %risc_dma.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %risc_dma.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %bt878_mem.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bt878_mem.i, align 4
  %add.ptr = getelementptr i8, ptr %80, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %78) #8, !srcloc !176
  %neg = and i32 %irq_err_ignore, 1046528
  %and7 = xor i32 %neg, 1046528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %81 = tail call i32 @llvm.bswap.i32(i32 %and7)
  %82 = ptrtoint ptr %bt878_mem.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bt878_mem.i, align 4
  %add.ptr12 = getelementptr i8, ptr %83, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %81) #8, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %84 = tail call i32 @llvm.bswap.i32(i32 %or)
  %85 = ptrtoint ptr %bt878_mem.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bt878_mem.i, align 4
  %add.ptr17 = getelementptr i8, ptr %86, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %84) #8, !srcloc !176
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bt878_stop(ptr nocapture noundef readonly %bt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bt878_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %do.end

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %bt878_mem = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 10
  %1 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bt878_mem, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bt878_mem, align 4
  %add.ptr11 = getelementptr i8, ptr %4, i32 268
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %6 = and i32 %5, -318767105
  %7 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bt878_mem, align 4
  %add.ptr16 = getelementptr i8, ptr %8, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %6) #8, !srcloc !176
  br label %do.body17

do.body17:                                        ; preds = %if.end28.do.body17_crit_edge, %do.body4
  %i.0 = phi i32 [ 0, %do.body4 ], [ %inc, %if.end28.do.body17_crit_edge ]
  %9 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bt878_mem, align 4
  %add.ptr21 = getelementptr i8, ptr %10, i32 256
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !182
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %and25 = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body17.do.body31_crit_edge, label %if.end28

do.body17.do.body31_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

if.end28:                                         ; preds = %do.body17
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %if.end28.do.body31_crit_edge, label %if.end28.do.body17_crit_edge

if.end28.do.body17_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.end28.do.body31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

do.body31:                                        ; preds = %if.end28.do.body31_crit_edge, %do.body17.do.body31_crit_edge
  %i.1 = phi i32 [ 500, %if.end28.do.body31_crit_edge ], [ %i.0, %do.body17.do.body31_crit_edge ]
  %13 = load i32, ptr @bt878_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool32.not = icmp eq i32 %13, 0
  br i1 %tobool32.not, label %do.body31.do.end41_crit_edge, label %do.end36

do.body31.do.end41_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.end36:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %nr = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 1
  %14 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %i.1, i32 noundef %12) #11
  br label %do.end41

do.end41:                                         ; preds = %do.end36, %do.body31.do.end41_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bt878_device_control(ptr noundef %bt, i32 noundef %cmd, ptr noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bt, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb7
    i32 3, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bttv_nr = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 2
  %1 = ptrtoint ptr %bttv_nr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bttv_nr, align 4
  %3 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mp, align 4
  %enable = getelementptr inbounds %struct.dst_gpio_enable, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable, align 4
  %call2 = tail call i32 @bttv_gpio_enable(i32 noundef %2, i32 noundef %4, i32 noundef %6) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bttv_nr4 = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 2
  %7 = ptrtoint ptr %bttv_nr4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bttv_nr4, align 4
  %9 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mp, align 4
  %highvals = getelementptr inbounds %struct.dst_gpio_output, ptr %mp, i32 0, i32 1
  %11 = ptrtoint ptr %highvals to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %highvals, align 4
  %call6 = tail call i32 @bttv_write_gpio(i32 noundef %8, i32 noundef %10, i32 noundef %12) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %bttv_nr8 = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 2
  %13 = ptrtoint ptr %bttv_nr8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bttv_nr8, align 4
  %call9 = tail call i32 @bttv_read_gpio(i32 noundef %14, ptr noundef %mp) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mp, align 4
  %TS_Size = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 6
  %17 = ptrtoint ptr %TS_Size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %TS_Size, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ 0, %sw.bb10 ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb3 ], [ %call2, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bt) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %sw.epilog ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_gpio_enable(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_write_gpio(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bttv_read_gpio(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bt878_cleanup_module() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @bt878_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bt878_init_module() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @bt878_num, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @bt878_pci_driver, ptr noundef null, ptr noundef nonnull @.str.10) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt878_probe(ptr noundef %dev, ptr nocapture noundef readonly %pci_id) #0 align 64 {
entry:
  %lat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lat) #8
  %0 = ptrtoint ptr %lat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %lat, align 1, !annotation !185
  %1 = load i32, ptr @bt878_num, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %1) #11
  %2 = load i32, ptr @bt878_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp sgt i32 %2, 3
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @pci_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 10
  %3 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %4 to i32
  %shl = shl nuw i32 %conv, 16
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %subsystem_vendor, align 4
  %conv9 = zext i16 %6 to i32
  %or = or i32 %shl, %conv9
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %9 = inttoptr i32 %8 to ptr
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.46, ptr %9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef %or, ptr noundef %spec.select.i) #11
  %10 = load i32, ptr @bt878_num, align 4
  %arrayidx = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10
  %dev16 = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 4
  %11 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev16, align 4
  %nr = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 1
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %nr, align 4
  %shutdown = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 25
  %13 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %shutdown, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device, align 2
  %conv17 = zext i16 %15 to i32
  %id = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 5
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv17, ptr %id, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %irq18 = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 8
  %19 = ptrtoint ptr %irq18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq18, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %20 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource, align 8
  %bt878_adr = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 9
  %22 = ptrtoint ptr %bt878_adr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bt878_adr, align 4
  %23 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %24 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp25 = icmp eq i32 %25, 0
  %sub = sub i32 1, %23
  %add = add i32 %sub, %25
  %cond = select i1 %cmp25, i32 0, i32 %add
  %call33 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %23, i32 noundef %cond, ptr noundef nonnull @.str.10, i32 noundef 0) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end8.fail0_crit_edge, label %if.end36

if.end8.fail0_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail0

if.end36:                                         ; preds = %if.end8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %26 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %revision, align 4
  %revision37 = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 7
  %28 = ptrtoint ptr %revision37 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %revision37, align 4
  %call38 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 13, ptr noundef nonnull %lat) #8
  %29 = load i32, ptr @bt878_num, align 4
  %30 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id, align 4
  %32 = ptrtoint ptr %revision37 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision37, align 4
  %conv45 = zext i8 %33 to i32
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %number, align 4
  %conv46 = zext i8 %37 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %38 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %39, 3
  %and = and i32 %shr, 31
  %and48 = and i32 %39, 7
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %29, i32 noundef %31, i32 noundef %conv45, i32 noundef %conv46, i32 noundef %and, i32 noundef %and48) #11
  %40 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq18, align 4
  %42 = ptrtoint ptr %lat to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %lat, align 1
  %conv55 = zext i8 %43 to i32
  %44 = ptrtoint ptr %bt878_adr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bt878_adr, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %41, i32 noundef %conv55, i32 noundef %45) #11
  %46 = ptrtoint ptr %bt878_adr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bt878_adr, align 4
  %call59 = call ptr @ioremap(i32 noundef %47, i32 noundef 4096) #8
  %bt878_mem = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 10
  %48 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call59, ptr %bt878_mem, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bt878_mem, align 4
  %add.ptr = getelementptr i8, ptr %50, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !176
  %51 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq18, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %52, ptr noundef nonnull @bt878_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.10, ptr noundef %arrayidx) #8
  %53 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call.i, label %if.end84 [
    i32 -22, label %do.end71
    i32 -16, label %do.end80
  ]

do.end71:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %54 = load i32, ptr @bt878_num, align 4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %54) #11
  br label %fail1

do.end80:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %55 = load i32, ptr @bt878_num, align 4
  %56 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq18, align 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %55, i32 noundef %57) #11
  br label %fail1

if.end84:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp85 = icmp slt i32 %call.i, 0
  br i1 %cmp85, label %if.end84.fail1_crit_edge, label %if.end88

if.end84.fail1_crit_edge:                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end88:                                         ; preds = %if.end84
  call void @pci_set_master(ptr noundef %dev) #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %call89 = call fastcc i32 @bt878_mem_alloc(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end97, label %do.end94

do.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #11
  %59 = ptrtoint ptr %irq18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq18, align 4
  %call109 = call ptr @free_irq(i32 noundef %60, ptr noundef %arrayidx) #8
  br label %fail1

if.end97:                                         ; preds = %if.end88
  call fastcc void @bt878_make_risc(ptr noundef %arrayidx)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  call void @arm_heavy_mb() #8
  %61 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bt878_mem, align 4
  %add.ptr103 = getelementptr i8, ptr %62, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #8, !srcloc !176
  %63 = load i32, ptr @bt878_num, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr @bt878_num, align 4
  %64 = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 24, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool104.not = icmp eq ptr %66, null
  br i1 %tobool104.not, label %if.then105, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then105:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr [4 x %struct.bt878], ptr @bt878, i32 0, i32 %10, i32 24
  call fastcc void @tasklet_disable(ptr noundef %tasklet)
  br label %cleanup

fail1:                                            ; preds = %do.end94, %if.end84.fail1_crit_edge, %do.end80, %do.end71
  %result.0 = phi i32 [ -22, %do.end71 ], [ -16, %do.end80 ], [ %call.i, %if.end84.fail1_crit_edge ], [ %call89, %do.end94 ]
  %67 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev16, align 4
  %resource111 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 47
  %69 = ptrtoint ptr %resource111 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %resource111, align 8
  %end117 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 47, i32 0, i32 1
  %71 = ptrtoint ptr %end117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %end117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp118 = icmp eq i32 %72, 0
  %sub130 = sub i32 1, %70
  %add131 = add i32 %sub130, %72
  %cond133 = select i1 %cmp118, i32 0, i32 %add131
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %70, i32 noundef %cond133) #8
  br label %fail0

fail0:                                            ; preds = %fail1, %if.end8.fail0_crit_edge
  %result.1 = phi i32 [ %result.0, %fail1 ], [ -16, %if.end8.fail0_crit_edge ]
  call void @pci_disable_device(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %fail0, %if.then105, %if.end97.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end3
  %retval.0 = phi i32 [ -12, %do.end3 ], [ %result.1, %fail0 ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then105 ], [ 0, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lat) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bt878_remove(ptr noundef %pci_dev) #0 align 64 {
entry:
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #8
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %command, align 1, !annotation !185
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = load i32, ptr @bt878_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %do.end

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nr = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %5) #11
  br label %do.body2

do.body2:                                         ; preds = %do.end, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %bt878_mem = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 10
  %6 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt878_mem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 268
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %9 = and i32 %8, -318767105
  %10 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bt878_mem, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #8, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bt878_mem, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #8, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bt878_mem, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 -1) #8, !srcloc !176
  %dev = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %call20 = call i32 @pci_read_config_byte(ptr noundef %17, i32 noundef 4, ptr noundef nonnull %command) #8
  %18 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %command, align 1
  %20 = and i8 %19, -5
  store i8 %20, ptr %command, align 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call24 = call i32 @pci_write_config_byte(ptr noundef %22, i32 noundef 4, i8 noundef zeroext %20) #8
  %irq = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 8
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call25 = call ptr @free_irq(i32 noundef %24, ptr noundef %2) #8
  %25 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bt878_mem, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %26) #11
  %27 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt878_mem, align 4
  %tobool33.not = icmp eq ptr %28, null
  br i1 %tobool33.not, label %do.body2.if.end36_crit_edge, label %if.then34

do.body2.if.end36_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %28) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %do.body2.if.end36_crit_edge
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 47
  %31 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %resource, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 47, i32 0, i32 1
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  %sub = sub i32 1, %32
  %add = add i32 %sub, %34
  %cond = select i1 %cmp, i32 0, i32 %add
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %32, i32 noundef %cond) #8
  %shutdown = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 25
  %35 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %shutdown, align 4
  %buf_cpu.i = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 18
  %36 = ptrtoint ptr %buf_cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buf_cpu.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end36.if.end.i_crit_edge, label %if.then.i

if.end36.if.end.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %buf_size.i = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 17
  %40 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_size.i, align 4
  %buf_dma.i = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 19
  %42 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %41, ptr noundef nonnull %37, i32 noundef %43, i32 noundef 0) #8
  %44 = ptrtoint ptr %buf_cpu.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %buf_cpu.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end36.if.end.i_crit_edge
  %risc_cpu.i = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 21
  %45 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %risc_cpu.i, align 4
  %tobool4.not.i = icmp eq ptr %46, null
  br i1 %tobool4.not.i, label %if.end.i.bt878_mem_free.exit_crit_edge, label %if.then5.i

if.end.i.bt878_mem_free.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bt878_mem_free.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %risc_size.i = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 20
  %49 = ptrtoint ptr %risc_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %risc_size.i, align 4
  %risc_dma.i = getelementptr inbounds %struct.bt878, ptr %2, i32 0, i32 22
  %51 = ptrtoint ptr %risc_dma.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %risc_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef %50, ptr noundef nonnull %46, i32 noundef %52, i32 noundef 0) #8
  %53 = ptrtoint ptr %risc_cpu.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %risc_cpu.i, align 4
  br label %bt878_mem_free.exit

bt878_mem_free.exit:                              ; preds = %if.then5.i, %if.end.i.bt878_mem_free.exit_crit_edge
  call void @pci_disable_device(ptr noundef %pci_dev) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bt878_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bt878_mem = getelementptr inbounds %struct.bt878, ptr %dev_id, i32 0, i32 10
  %nr = getelementptr inbounds %struct.bt878, ptr %dev_id, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end101.while.cond_crit_edge, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %inc, %if.end101.while.cond_crit_edge ]
  %0 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bt878_mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %3 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bt878_mem, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 260
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %do.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bt878_mem, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #8, !srcloc !176
  %and11 = and i32 %7, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.if.end34_crit_edge, label %if.then13

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then13:                                        ; preds = %do.body
  %10 = load i32, ptr @bt878_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %if.then13.if.end34_crit_edge, label %do.end18

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr, align 4
  %and20 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond = select i1 %tobool21.not, ptr @.str.50, ptr @.str.49
  %and22 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.50, ptr @.str.51
  %13 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bt878_mem, align 4
  %add.ptr28 = getelementptr i8, ptr %14, i32 288
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #8, !srcloc !182
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %12, ptr noundef nonnull %cond, ptr noundef nonnull %cond24, i32 noundef %16) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end18, %if.then13.if.end34_crit_edge, %do.body.if.end34_crit_edge
  %and35 = and i32 %7, 229376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end63_crit_edge, label %if.then37

if.end34.if.end63_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then37:                                        ; preds = %if.end34
  %17 = load i32, ptr @bt878_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool38.not = icmp eq i32 %17, 0
  br i1 %tobool38.not, label %if.then37.if.end63_crit_edge, label %do.end42

if.then37.if.end63_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end42:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr, align 4
  %and45 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.50, ptr @.str.55
  %and48 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.50, ptr @.str.56
  %and51 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.50, ptr @.str.57
  %20 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bt878_mem, align 4
  %add.ptr57 = getelementptr i8, ptr %21, i32 288
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #8, !srcloc !182
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %19, ptr noundef nonnull %cond47, ptr noundef nonnull %cond50, ptr noundef nonnull %cond53, i32 noundef %23) #11
  br label %if.end63

if.end63:                                         ; preds = %do.end42, %if.then37.if.end63_crit_edge, %if.end34.if.end63_crit_edge
  %and64 = and i32 %7, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end63.if.end92_crit_edge, label %if.then66

if.end63.if.end92_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then66:                                        ; preds = %if.end63
  %24 = load i32, ptr @bt878_verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool67.not = icmp eq i32 %24, 0
  br i1 %tobool67.not, label %if.then66.if.end92_crit_edge, label %do.end71

if.then66.if.end92_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.end71:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr, align 4
  %and74 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %cond76 = select i1 %tobool75.not, ptr @.str.50, ptr @.str.60
  %and77 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  %cond79 = select i1 %tobool78.not, ptr @.str.50, ptr @.str.61
  %and80 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %cond82 = select i1 %tobool81.not, ptr @.str.50, ptr @.str.62
  %27 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bt878_mem, align 4
  %add.ptr86 = getelementptr i8, ptr %28, i32 288
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #8, !srcloc !182
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %26, ptr noundef nonnull %cond76, ptr noundef nonnull %cond79, ptr noundef nonnull %cond82, i32 noundef %30) #11
  br label %if.end92

if.end92:                                         ; preds = %do.end71, %if.then66.if.end92_crit_edge, %if.end63.if.end92_crit_edge
  %and93 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end101, label %if.then95

if.then95:                                        ; preds = %if.end92
  %31 = lshr i32 %2, 4
  %shr = and i32 %31, 15
  %finished_block = getelementptr inbounds %struct.bt878, ptr %dev_id, i32 0, i32 11
  %32 = ptrtoint ptr %finished_block to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %shr, ptr %finished_block, align 4
  %33 = getelementptr inbounds %struct.bt878, ptr %dev_id, i32 0, i32 24, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool97.not = icmp eq ptr %35, null
  br i1 %tobool97.not, label %if.then95.cleanup_crit_edge, label %if.then98

if.then95.cleanup_crit_edge:                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then98:                                        ; preds = %if.then95
  %state.i = getelementptr inbounds %struct.bt878, ptr %dev_id, i32 0, i32 24, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.bt878, ptr %dev_id, i32 0, i32 24
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %cleanup

if.end101:                                        ; preds = %if.end92
  %inc = add nuw nsw i32 %count.0, 1
  %exitcond = icmp eq i32 %inc, 21
  br i1 %exitcond, label %do.body103, label %if.end101.while.cond_crit_edge

if.end101.while.cond_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.body103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %bt878_mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bt878_mem, align 4
  %add.ptr107 = getelementptr i8, ptr %37, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 0) #8, !srcloc !176
  %38 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr, align 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %39) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body103, %if.then.i, %if.then98.cleanup_crit_edge, %if.then95.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then95.cleanup_crit_edge ], [ 1, %do.body103 ], [ 1, %if.then98.cleanup_crit_edge ], [ 1, %if.then.i ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bt878_mem_alloc(ptr noundef %bt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_cpu = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 18
  %0 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf_cpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %buf_size = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 17
  %2 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131072, ptr %buf_size, align 4
  %dev = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %buf_dma = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 19
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 131072, ptr noundef %buf_dma, i32 noundef 3264, i32 noundef 0) #8
  %5 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %buf_cpu, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.return_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %risc_cpu = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 21
  %6 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %risc_cpu, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.then9, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then9:                                         ; preds = %if.end7
  %risc_size = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 20
  %8 = ptrtoint ptr %risc_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %risc_size, align 4
  %dev10 = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 4
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %risc_dma = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 22
  %call.i34 = tail call ptr @dma_alloc_attrs(ptr noundef %dev11, i32 noundef 4096, ptr noundef %risc_dma, i32 noundef 3264, i32 noundef 0) #8
  %11 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i34, ptr %risc_cpu, align 4
  %tobool16.not = icmp eq ptr %call.i34, null
  br i1 %tobool16.not, label %if.then17, label %if.then9.return_crit_edge

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then17:                                        ; preds = %if.then9
  %12 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf_cpu, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then17.return_crit_edge, label %if.end.i

if.then17.return_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %if.then17
  %14 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %buf_size.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 17
  %16 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buf_size.i, align 4
  %buf_dma.i = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 19
  %18 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i, i32 noundef %17, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #8
  %20 = ptrtoint ptr %buf_cpu to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %buf_cpu, align 4
  %21 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load ptr, ptr %risc_cpu, align 4
  %tobool4.not.i = icmp eq ptr %.pr, null
  br i1 %tobool4.not.i, label %if.end.i.return_crit_edge, label %if.then5.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev10, align 4
  %dev7.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %risc_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %risc_size, align 4
  %26 = ptrtoint ptr %risc_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %risc_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev7.i, i32 noundef %25, ptr noundef nonnull %.pr, i32 noundef %27, i32 noundef 0) #8
  %28 = ptrtoint ptr %risc_cpu to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %risc_cpu, align 4
  br label %return

return:                                           ; preds = %if.then5.i, %if.end.i.return_crit_edge, %if.then17.return_crit_edge, %if.then9.return_crit_edge, %if.end7.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.return_crit_edge ], [ 0, %if.then9.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ -12, %if.end.i.return_crit_edge ], [ -12, %if.then5.i ], [ -12, %if.then17.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bt878_make_risc(ptr nocapture noundef %bt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_size = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 17
  %0 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_size, align 4
  %shr = lshr i32 %1, 4
  %block_bytes = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 14
  %2 = ptrtoint ptr %block_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr, ptr %block_bytes, align 4
  %block_count = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 13
  %3 = ptrtoint ptr %block_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %block_count, align 4
  %line_bytes = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 15
  %4 = ptrtoint ptr %line_bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %line_bytes, align 4
  %line_count = getelementptr inbounds %struct.bt878, ptr %bt, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %1)
  %cmp2 = icmp ugt i32 %1, 65535
  br i1 %cmp2, label %entry.while.body_crit_edge, label %while.end.thread

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %line_count, align 4
  br label %return

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %storemerge3 = phi i32 [ %shl, %while.body.while.body_crit_edge ], [ 16, %entry.while.body_crit_edge ]
  %6 = phi i32 [ %shr5, %while.body.while.body_crit_edge ], [ %shr, %entry.while.body_crit_edge ]
  %shr5 = lshr i32 %6, 1
  %shl = shl i32 %storemerge3, 1
  %cmp = icmp ugt i32 %6, 8191
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  %7 = ptrtoint ptr %line_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr5, ptr %line_bytes, align 4
  %8 = ptrtoint ptr %line_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %line_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %shl)
  %cmp8 = icmp ugt i32 %shl, 255
  br i1 %cmp8, label %do.end, label %while.end.return_crit_edge

while.end.return_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #11
  br label %return

return:                                           ; preds = %do.end, %while.end.return_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_disable(ptr noundef %t) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %count.i = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #8, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @tasklet_unlock_wait(ptr noundef %t) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !201
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype300, !1, !"__UNIQUE_ID_verbosetype300", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_verbose301, !4, !"__UNIQUE_ID_verbose301", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 40, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype302, !6, !"__UNIQUE_ID_debugtype302", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug303, !9, !"__UNIQUE_ID_debug303", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 43, i32 1}
!10 = !{ptr @__ksymtab_bt878_num, !11, !"__ksymtab_bt878_num", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 48, i32 1}
!12 = !{ptr @__ksymtab_bt878, !13, !"__ksymtab_bt878", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 49, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 190, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bt878_start._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @bt878_start._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 224, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bt878_stop._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @bt878_stop._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 236, i32 2}
!27 = !{ptr @bt878_stop._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bt878_stop._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_bt878_start, !30, !"__ksymtab_bt878_start", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 240, i32 1}
!31 = !{ptr @__ksymtab_bt878_stop, !32, !"__ksymtab_bt878_stop", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 241, i32 1}
!33 = !{ptr @__ksymtab_bt878_device_control, !34, !"__ksymtab_bt878_device_control", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 360, i32 1}
!35 = !{ptr @__initcall__kmod_bt878__304_563_bt878_init_module6, !36, !"__initcall__kmod_bt878__304_563_bt878_init_module6", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 563, i32 1}
!37 = !{ptr @__exitcall_bt878_cleanup_module, !38, !"__exitcall_bt878_cleanup_module", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 564, i32 1}
!39 = !{ptr @__UNIQUE_ID_file305, !40, !"__UNIQUE_ID_file305", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 566, i32 1}
!41 = !{ptr @__UNIQUE_ID_license306, !40, !"__UNIQUE_ID_license306", i1 false, i1 false}
!42 = !{ptr @bt878_debug, !43, !"bt878_debug", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 37, i32 21}
!44 = !{ptr @bt878_num, !45, !"bt878_num", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 45, i32 5}
!46 = !{ptr @bt878, !47, !"bt878", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 46, i32 14}
!48 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!49 = !{ptr @bt878_verbose, !50, !"bt878_verbose", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 36, i32 21}
!51 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 152, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bt878_risc_program._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bt878_risc_program._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 536, i32 15}
!59 = !{ptr @bt878_pci_driver, !60, !"bt878_pci_driver", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 535, i32 26}
!61 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 371, i32 2}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 372, i32 2}
!65 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 373, i32 2}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 374, i32 2}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 375, i32 2}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 376, i32 2}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 378, i32 2}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 379, i32 2}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 380, i32 2}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 381, i32 2}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 382, i32 2}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 383, i32 2}
!85 = !{ptr @bt878_pci_tbl, !86, !"bt878_pci_tbl", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 370, i32 35}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 405, i32 2}
!89 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @bt878_probe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @bt878_probe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 408, i32 3}
!94 = !{ptr @bt878_probe._entry.25, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @bt878_probe._entry_ptr.27, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 417, i32 2}
!98 = !{ptr @bt878_probe._entry.28, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @bt878_probe._entry_ptr.30, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 438, i32 2}
!102 = !{ptr @bt878_probe._entry.31, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @bt878_probe._entry_ptr.33, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 441, i32 2}
!106 = !{ptr @bt878_probe._entry.34, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @bt878_probe._entry_ptr.36, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 456, i32 3}
!110 = !{ptr @bt878_probe._entry.37, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @bt878_probe._entry_ptr.39, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 461, i32 3}
!114 = !{ptr @bt878_probe._entry.40, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @bt878_probe._entry_ptr.42, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 473, i32 3}
!118 = !{ptr @bt878_probe._entry.43, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @bt878_probe._entry_ptr.45, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 391, i32 59}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 267, i32 5}
!124 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @bt878_irq._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @bt878_irq._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 278, i32 5}
!132 = !{ptr @bt878_irq._entry.52, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @bt878_irq._entry_ptr.54, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @bt878_irq._entry.58, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 291, i32 5}
!139 = !{ptr @bt878_irq._entry_ptr.59, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 310, i32 4}
!145 = !{ptr @bt878_irq._entry.63, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @bt878_irq._entry_ptr.65, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 136, i32 3}
!149 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @bt878_make_risc._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @bt878_make_risc._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 502, i32 3}
!154 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @bt878_remove._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @bt878_remove._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 518, i32 2}
!159 = !{ptr @bt878_remove._entry.70, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @bt878_remove._entry_ptr.72, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/bt8xx/bt878.c", i32 550, i32 2}
!163 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @bt878_init_module._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @bt878_init_module._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{i64 2156734129}
!176 = !{i64 4992399}
!177 = !{i64 2156736470}
!178 = !{i64 2156737139}
!179 = !{i64 2156737730}
!180 = !{i64 2156739827}
!181 = !{i64 2156741794}
!182 = !{i64 4992817}
!183 = !{i64 2156742775}
!184 = !{i64 2156743377}
!185 = !{!"auto-init"}
!186 = !{i64 2156776272}
!187 = !{i64 2156781480}
!188 = !{i64 2156785470}
!189 = !{i64 2156786451}
!190 = !{i64 2156786805}
!191 = !{i64 2156787354}
!192 = !{i64 2156752384}
!193 = !{i64 2156752970}
!194 = !{i64 2156753320}
!195 = !{i64 2156755935}
!196 = !{i64 2156758469}
!197 = !{i64 2156760969}
!198 = !{i64 2156761325}
!199 = !{i64 2148352592, i64 2148352618, i64 2148352647, i64 2148352681, i64 2148352712, i64 2148352735}
!200 = !{i64 2153088822}
!201 = !{i64 2153089464}
