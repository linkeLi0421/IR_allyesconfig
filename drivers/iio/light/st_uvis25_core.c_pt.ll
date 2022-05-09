; ModuleID = '/llk/IR_all_yes/drivers/iio/light/st_uvis25_core.c_pt.bc'
source_filename = "../drivers/iio/light/st_uvis25_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_uvis25_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st_uvis25_probe\09\09\09\09"
module asm "\09.long\09__crc_st_uvis25_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_uvis25_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st_uvis25_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st_uvis25_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st_uvis25_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_st_uvis25_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_st_uvis25_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_uvis25_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22st_uvis25_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_st_uvis25_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.st_uvis25_hw = type { ptr, ptr, i8, i32, %struct.anon.44 }
%struct.anon.44 = type { i8, i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@st_uvis25_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 40, i32 0, %struct.anon.43 { i8 117, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uvis25\00", [25 x i8] zeroinitializer }, align 32
@st_uvis25_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @st_uvis25_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_st_uvis25_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_uvis25_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st_uvis25_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_uvis25_probe to i32), ptr @__kstrtab_st_uvis25_probe, ptr @__kstrtabns_st_uvis25_probe }, section "___ksymtab+st_uvis25_probe", align 4
@st_uvis25_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_uvis25_suspend, ptr @st_uvis25_resume, ptr @st_uvis25_suspend, ptr @st_uvis25_resume, ptr @st_uvis25_suspend, ptr @st_uvis25_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_st_uvis25_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_uvis25_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_st_uvis25_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_uvis25_pm_ops to i32), ptr @__kstrtab_st_uvis25_pm_ops, ptr @__kstrtabns_st_uvis25_pm_ops }, section "___ksymtab+st_uvis25_pm_ops", align 4
@__UNIQUE_ID_author187 = internal constant [70 x i8] c"st_uvis25_core.author=Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [67 x i8] c"st_uvis25_core.description=STMicroelectronics uvis25 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [53 x i8] c"st_uvis25_core.file=drivers/iio/light/st_uvis25_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [30 x i8] c"st_uvis25_core.license=GPL v2\00", section ".modinfo", align 1
@st_uvis25_check_whoami._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 61, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read whoami register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_uvis25_check_whoami\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/light/st_uvis25_core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_uvis25_check_whoami._entry_ptr = internal global ptr @st_uvis25_check_whoami._entry, section ".printk_index", align 4
@st_uvis25_check_whoami._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 68, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wrong whoami {%02x vs %02x}\0A\00", [35 x i8] zeroinitializer }, align 32
@st_uvis25_check_whoami._entry_ptr.8 = internal global ptr @st_uvis25_check_whoami._entry.6, section ".printk_index", align 4
@st_uvis25_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @st_uvis25_buffer_preenable, ptr null, ptr null, ptr @st_uvis25_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_uvis25_allocate_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 188, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mode %lx unsupported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st_uvis25_allocate_trigger\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_uvis25_allocate_trigger._entry_ptr = internal global ptr @st_uvis25_allocate_trigger._entry, section ".printk_index", align 4
@st_uvis25_allocate_trigger._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request trigger irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@st_uvis25_allocate_trigger._entry_ptr.14 = internal global ptr @st_uvis25_allocate_trigger._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-trigger\00", [21 x i8] zeroinitializer }, align 32
@switch.table.st_uvis25_probe = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"st_uvis25_channels\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 39, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 307, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"st_uvis25_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 265, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"st_uvis25_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 349, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 60, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 66, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"st_uvis25_buffer_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 227, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 188, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 202, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../drivers/iio/light/st_uvis25_core.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 207, i32 41 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"switch.table.st_uvis25_probe\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_st_uvis25_pm_ops, ptr @__ksymtab_st_uvis25_probe, ptr @st_uvis25_allocate_trigger._entry, ptr @st_uvis25_allocate_trigger._entry.12, ptr @st_uvis25_allocate_trigger._entry_ptr, ptr @st_uvis25_allocate_trigger._entry_ptr.14, ptr @st_uvis25_check_whoami._entry, ptr @st_uvis25_check_whoami._entry.6, ptr @st_uvis25_check_whoami._entry_ptr, ptr @st_uvis25_check_whoami._entry_ptr.8, ptr @st_uvis25_channels, ptr @.str, ptr @st_uvis25_info, ptr @st_uvis25_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @st_uvis25_buffer_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @switch.table.st_uvis25_probe], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_check_whoami._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_check_whoami._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_allocate_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_uvis25_allocate_trigger._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.st_uvis25_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_uvis25_probe(ptr noundef %dev, i32 noundef %irq, ptr noundef %regmap) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 32) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %irq2 = getelementptr inbounds %struct.st_uvis25_hw, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %irq, ptr %irq2, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %data.i, align 4, !annotation !54
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 8
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 15, ptr noundef nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %call2.i = call ptr @regmap_get_device(ptr noundef %9) #4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call2.i, ptr noundef nonnull @.str.1) #7
  br label %st_uvis25_check_whoami.exit.thread

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 202, i32 %11)
  %cmp3.not.i = icmp eq i32 %11, 202
  br i1 %cmp3.not.i, label %if.end6, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %call9.i = call ptr @regmap_get_device(ptr noundef %13) #4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call9.i, ptr noundef nonnull @.str.7, i32 noundef %15, i32 noundef 202) #7
  br label %st_uvis25_check_whoami.exit.thread

st_uvis25_check_whoami.exit.thread:               ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -19, %do.end7.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @st_uvis25_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @st_uvis25_info, ptr %info, align 8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 33, i32 noundef 128, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i49 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i49, label %if.end6.cleanup_crit_edge, label %st_uvis25_init_sensor.exit

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

st_uvis25_init_sensor.exit:                       ; preds = %if.end6
  call void @msleep(i32 noundef 2000) #4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 8
  %call.i5.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 32, i32 noundef 2, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp8 = icmp slt i32 %call.i5.i, 0
  br i1 %cmp8, label %st_uvis25_init_sensor.exit.cleanup_crit_edge, label %if.end10

st_uvis25_init_sensor.exit.cleanup_crit_edge:     ; preds = %st_uvis25_init_sensor.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %st_uvis25_init_sensor.exit
  %25 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp12 = icmp sgt i32 %26, 0
  br i1 %cmp12, label %if.then13, label %if.end10.if.end22_crit_edge

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then13:                                        ; preds = %if.end10
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %call1.i = call ptr @regmap_get_device(ptr noundef %30) #4
  %call2.i52 = call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %call1.i, ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @st_uvis25_buffer_handler_thread, i32 noundef 0, ptr noundef nonnull @st_uvis25_buffer_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i52)
  %cmp15 = icmp slt i32 %call2.i52, 0
  br i1 %cmp15, label %if.then13.cleanup_crit_edge, label %if.end17

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %call1.i54 = call ptr @regmap_get_device(ptr noundef %34) #4
  %irq.i = getelementptr inbounds %struct.st_uvis25_hw, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  %call2.i55 = call ptr @irq_get_irq_data(i32 noundef %36) #4
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call2.i55, i32 0, i32 3
  %37 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and.i.i = and i32 %40, 15
  %switch.tableidx = add nsw i32 %and.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %41 = icmp ult i32 %switch.tableidx, 8
  br i1 %41, label %switch.hole_check, label %if.end17.do.end.i56_crit_edge

if.end17.do.end.i56_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i56

do.end.i56:                                       ; preds = %switch.hole_check.do.end.i56_crit_edge, %if.end17.do.end.i56_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %call1.i54, ptr noundef nonnull @.str.9, i32 noundef %and.i.i) #7
  br label %cleanup

switch.hole_check:                                ; preds = %if.end17
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %42 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %switch.lobit.not = icmp eq i8 %42, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i56_crit_edge, label %switch.lookup

switch.hole_check.do.end.i56_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i56

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.st_uvis25_probe, i32 0, i32 %switch.tableidx
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %32, align 8
  %call.i.i57 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 34, i32 noundef 128, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i57)
  %cmp.i58 = icmp slt i32 %call.i.i57, 0
  br i1 %cmp.i58, label %switch.lookup.cleanup_crit_edge, label %if.end.i60

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i60:                                       ; preds = %switch.lookup
  %46 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq.i, align 4
  %or.i = or i32 %and.i.i, 8192
  %48 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name, align 8
  %call9.i59 = call i32 @devm_request_threaded_irq(ptr noundef %call1.i54, i32 noundef %47, ptr noundef null, ptr noundef nonnull @st_uvis25_trigger_handler_thread, i32 noundef %or.i, ptr noundef %49, ptr noundef %32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i59)
  %tobool10.not.i = icmp eq i32 %call9.i59, 0
  br i1 %tobool10.not.i, label %if.end16.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i54, ptr noundef nonnull @.str.13, i32 noundef %51) #7
  br label %cleanup

if.end16.i:                                       ; preds = %if.end.i60
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 8
  %call18.i = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %call1.i54, ptr noundef nonnull @.str.15, ptr noundef %53) #4
  %trig.i = getelementptr inbounds %struct.st_uvis25_hw, ptr %32, i32 0, i32 1
  %54 = ptrtoint ptr %trig.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call18.i, ptr %trig.i, align 4
  %tobool20.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool20.not.i, label %if.end16.i.cleanup_crit_edge, label %st_uvis25_allocate_trigger.exit

if.end16.i.cleanup_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

st_uvis25_allocate_trigger.exit:                  ; preds = %if.end16.i
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call18.i, i32 0, i32 4, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call, ptr %driver_data.i.i.i, align 4
  %56 = ptrtoint ptr %trig.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trig.i, align 4
  %call25.i = call i32 @__devm_iio_trigger_register(ptr noundef %call1.i54, ptr noundef %57, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool19.not = icmp eq i32 %call25.i, 0
  br i1 %tobool19.not, label %st_uvis25_allocate_trigger.exit.if.end22_crit_edge, label %st_uvis25_allocate_trigger.exit.cleanup_crit_edge

st_uvis25_allocate_trigger.exit.cleanup_crit_edge: ; preds = %st_uvis25_allocate_trigger.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

st_uvis25_allocate_trigger.exit.if.end22_crit_edge: ; preds = %st_uvis25_allocate_trigger.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %st_uvis25_allocate_trigger.exit.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %call23 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %st_uvis25_allocate_trigger.exit.cleanup_crit_edge, %if.end16.i.cleanup_crit_edge, %do.end14.i, %switch.lookup.cleanup_crit_edge, %do.end.i56, %if.then13.cleanup_crit_edge, %st_uvis25_init_sensor.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %st_uvis25_check_whoami.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i5.i, %st_uvis25_init_sensor.exit.cleanup_crit_edge ], [ %call2.i52, %if.then13.cleanup_crit_edge ], [ %call25.i, %st_uvis25_allocate_trigger.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %st_uvis25_check_whoami.exit.thread ], [ %call.i.i, %if.end6.cleanup_crit_edge ], [ -12, %if.end16.i.cleanup_crit_edge ], [ %call.i.i57, %switch.lookup.cleanup_crit_edge ], [ %call9.i59, %do.end14.i ], [ -22, %do.end.i56 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %enabled = getelementptr inbounds %struct.st_uvis25_hw, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 32, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %ch, ptr noundef %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mask)
  %cond = icmp eq i32 %mask, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %irq = getelementptr inbounds %struct.st_uvis25_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then2, label %sw.bb.if.end4_crit_edge

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @disable_irq(i32 noundef %3) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %sw.bb.if.end4_crit_edge
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 32, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end4.st_uvis25_read_oneshot.exit_crit_edge, label %if.end.i

if.end4.st_uvis25_read_oneshot.exit_crit_edge:    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_uvis25_read_oneshot.exit

if.end.i:                                         ; preds = %if.end4
  %enabled.i.i = getelementptr inbounds %struct.st_uvis25_hw, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled.i.i, align 8
  tail call void @msleep(i32 noundef 1500) #4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 32, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %cmp.i16.i = icmp slt i32 %call.i.i15.i, 0
  br i1 %cmp.i16.i, label %if.end.i.st_uvis25_read_oneshot.exit_crit_edge, label %if.end4.i

if.end.i.st_uvis25_read_oneshot.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_uvis25_read_oneshot.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enabled.i.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %conv.i = and i32 %5, 255
  %call5.i = tail call i32 @regmap_read(ptr noundef %13, i32 noundef %conv.i, ptr noundef %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  %spec.select.i = select i1 %cmp6.i, i32 %call5.i, i32 1
  br label %st_uvis25_read_oneshot.exit

st_uvis25_read_oneshot.exit:                      ; preds = %if.end4.i, %if.end.i.st_uvis25_read_oneshot.exit_crit_edge, %if.end4.st_uvis25_read_oneshot.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i, %if.end4.i ], [ %call.i.i.i, %if.end4.st_uvis25_read_oneshot.exit_crit_edge ], [ %call.i.i15.i, %if.end.i.st_uvis25_read_oneshot.exit_crit_edge ]
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7 = icmp sgt i32 %15, 0
  br i1 %cmp7, label %if.then9, label %st_uvis25_read_oneshot.exit.sw.epilog_crit_edge

st_uvis25_read_oneshot.exit.sw.epilog_crit_edge:  ; preds = %st_uvis25_read_oneshot.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then9:                                         ; preds = %st_uvis25_read_oneshot.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @enable_irq(i32 noundef %15) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then9, %st_uvis25_read_oneshot.exit.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %if.then9 ], [ %retval.0.i, %st_uvis25_read_oneshot.exit.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_buffer_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !54
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 40, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i8
  %scan = getelementptr inbounds %struct.st_uvis25_hw, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %scan to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %scan, align 8
  %call3 = call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scan_timestamp.i, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %13, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #4
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.out_crit_edge
  %trig = getelementptr inbounds %struct.st_uvis25_hw, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %16) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_buffer_preenable(ptr nocapture noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 32, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.st_uvis25_set_enable.exit_crit_edge, label %if.end.i

entry.st_uvis25_set_enable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_uvis25_set_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %enabled.i = getelementptr inbounds %struct.st_uvis25_hw, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enabled.i, align 8
  br label %st_uvis25_set_enable.exit

st_uvis25_set_enable.exit:                        ; preds = %if.end.i, %entry.st_uvis25_set_enable.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i.i, %entry.st_uvis25_set_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_buffer_postdisable(ptr nocapture noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 32, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.st_uvis25_set_enable.exit_crit_edge, label %if.end.i

entry.st_uvis25_set_enable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_uvis25_set_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %enabled.i = getelementptr inbounds %struct.st_uvis25_hw, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 8
  br label %st_uvis25_set_enable.exit

st_uvis25_set_enable.exit:                        ; preds = %if.end.i, %entry.st_uvis25_set_enable.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i.i, %entry.st_uvis25_set_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_uvis25_trigger_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !54
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 39, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trig = getelementptr inbounds %struct.st_uvis25_hw, ptr %private, i32 0, i32 1
  %5 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trig, align 4
  call void @iio_trigger_poll_chained(ptr noundef %6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 307, i32 18}
!2 = !{ptr @__ksymtab_st_uvis25_probe, !3, !"__ksymtab_st_uvis25_probe", i1 false, i1 false}
!3 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 326, i32 1}
!4 = !{ptr @st_uvis25_pm_ops, !5, !"st_uvis25_pm_ops", i1 false, i1 false}
!5 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 349, i32 25}
!6 = !{ptr @__ksymtab_st_uvis25_pm_ops, !7, !"__ksymtab_st_uvis25_pm_ops", i1 false, i1 false}
!7 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 352, i32 1}
!8 = !{ptr @__UNIQUE_ID_author187, !9, !"__UNIQUE_ID_author187", i1 false, i1 false}
!9 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 354, i32 1}
!10 = !{ptr @__UNIQUE_ID_description188, !11, !"__UNIQUE_ID_description188", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 355, i32 1}
!12 = !{ptr @__UNIQUE_ID_file189, !13, !"__UNIQUE_ID_file189", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 356, i32 1}
!14 = !{ptr @__UNIQUE_ID_license190, !13, !"__UNIQUE_ID_license190", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 60, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @st_uvis25_check_whoami._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @st_uvis25_check_whoami._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 66, i32 3}
!25 = !{ptr @st_uvis25_check_whoami._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @st_uvis25_check_whoami._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @st_uvis25_channels, !28, !"st_uvis25_channels", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 39, i32 35}
!29 = !{ptr @st_uvis25_info, !30, !"st_uvis25_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 265, i32 30}
!31 = !{ptr @st_uvis25_buffer_ops, !32, !"st_uvis25_buffer_ops", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 227, i32 42}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 188, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @st_uvis25_allocate_trigger._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @st_uvis25_allocate_trigger._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 202, i32 3}
!41 = !{ptr @st_uvis25_allocate_trigger._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @st_uvis25_allocate_trigger._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/st_uvis25_core.c", i32 207, i32 41}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i8 0, i8 2}
