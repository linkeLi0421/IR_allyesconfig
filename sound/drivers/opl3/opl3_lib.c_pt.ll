; ModuleID = '/llk/IR_all_yes/sound/drivers/opl3/opl3_lib.c_pt.bc'
source_filename = "../sound/drivers/opl3/opl3_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_opl3_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_interrupt\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_new\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_init\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_init\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_create\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_create\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_create:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_create\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_timer_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_timer_new\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_timer_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_timer_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_timer_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_timer_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_opl3_hwdep_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_opl3_hwdep_new\09\09\09\09"
module asm "\09.long\09__crc_snd_opl3_hwdep_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_opl3_hwdep_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_opl3_hwdep_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_opl3_hwdep_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
%struct.snd_seq_device = type { ptr, i32, ptr, [80 x i8], i32, ptr, ptr, ptr, %struct.device }

@__UNIQUE_ID_author229 = internal constant [92 x i8] c"snd_opl3_lib.author=Jaroslav Kysela <perex@perex.cz>, Hannu Savolainen 1993-1996, Rob Hooft\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [87 x i8] c"snd_opl3_lib.description=Routines for control of AdLib FM cards (OPL2/OPL3/OPL4 chips)\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [50 x i8] c"snd_opl3_lib.file=sound/drivers/opl3/snd-opl3-lib\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"snd_opl3_lib.license=GPL\00", section ".modinfo", align 1
@__kstrtab_snd_opl3_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_interrupt to i32), ptr @__kstrtab_snd_opl3_interrupt, ptr @__kstrtabns_snd_opl3_interrupt }, section "___ksymtab+snd_opl3_interrupt", align 4
@snd_opl3_new.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_opl3_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@snd_opl3_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&opl3->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_opl3_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&opl3->timer_lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_snd_opl3_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_new to i32), ptr @__kstrtab_snd_opl3_new, ptr @__kstrtabns_snd_opl3_new }, section "___ksymtab+snd_opl3_new", align 4
@snd_opl3_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013snd_opl3_init: command not defined!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_opl3_init\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/drivers/opl3/opl3_lib.c\00", [34 x i8] zeroinitializer }, align 32
@snd_opl3_init._entry_ptr = internal global ptr @snd_opl3_init._entry, section ".printk_index", align 4
@__kstrtab_snd_opl3_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_init to i32), ptr @__kstrtab_snd_opl3_init, ptr @__kstrtabns_snd_opl3_init }, section "___ksymtab+snd_opl3_init", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OPL2/3 (left)\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013opl3: can't grab left port 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"OPL2/3 (right)\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013opl3: can't grab right port 0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OPL2/3 chip not detected at 0x%lx/0x%lx\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_snd_opl3_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_create = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_create to i32), ptr @__kstrtab_snd_opl3_create, ptr @__kstrtabns_snd_opl3_create }, section "___ksymtab+snd_opl3_create", align 4
@__kstrtab_snd_opl3_timer_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_timer_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_timer_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_timer_new to i32), ptr @__kstrtab_snd_opl3_timer_new, ptr @__kstrtabns_snd_opl3_timer_new }, section "___ksymtab+snd_opl3_timer_new", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OPL2/OPL3\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"opl3-synth\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_snd_opl3_hwdep_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_opl3_hwdep_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_opl3_hwdep_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_opl3_hwdep_new to i32), ptr @__kstrtab_snd_opl3_hwdep_new, ptr @__kstrtabns_snd_opl3_hwdep_new }, section "___ksymtab+snd_opl3_hwdep_new", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OPL3: stat1 = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OPL3: stat2 = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AdLib timer #1\00", [17 x i8] zeroinitializer }, align 32
@snd_opl3_timer1 = internal constant { %struct.snd_timer_hardware, [48 x i8] } { %struct.snd_timer_hardware { i32 2, i32 80000, i32 0, i32 0, i32 256, ptr null, ptr null, ptr null, ptr @snd_opl3_timer1_start, ptr @snd_opl3_timer1_stop, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AdLib timer #2\00", [17 x i8] zeroinitializer }, align 32
@snd_opl3_timer2 = internal constant { %struct.snd_timer_hardware, [48 x i8] } { %struct.snd_timer_hardware { i32 2, i32 320000, i32 0, i32 0, i32 256, ptr null, ptr null, ptr null, ptr @snd_opl3_timer2_start, ptr @snd_opl3_timer2_stop, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 768, i64 1024]
@___asan_gen_.23 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 337, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 350, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 351, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 368, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 406, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 408, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 413, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 415, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 435, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 491, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 527, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 95, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 111, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 246, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"snd_opl3_timer1\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 217, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 267, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"snd_opl3_timer2\00", align 1
@___asan_gen_.87 = private constant [33 x i8] c"../sound/drivers/opl3/opl3_lib.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 226, i32 40 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__ksymtab_snd_opl3_create, ptr @__ksymtab_snd_opl3_hwdep_new, ptr @__ksymtab_snd_opl3_init, ptr @__ksymtab_snd_opl3_interrupt, ptr @__ksymtab_snd_opl3_new, ptr @__ksymtab_snd_opl3_timer_new, ptr @snd_opl3_init._entry, ptr @snd_opl3_init._entry_ptr, ptr @snd_opl3_new.ops, ptr @snd_opl3_new.__key, ptr @.str, ptr @snd_opl3_new.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_opl3_timer1, ptr @.str.19, ptr @snd_opl3_timer2], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_new.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_timer1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_opl3_timer2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_opl3_interrupt(ptr noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hw, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %conv = zext i8 %5 to i32
  %and2 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %timer1 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer1, align 4
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sticks, align 4
  tail call void @snd_timer_interrupt(ptr noundef %7, i32 noundef %9) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %and11 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.then13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %timer2 = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %timer2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer2, align 4
  %sticks14 = getelementptr inbounds %struct.snd_timer, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %sticks14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sticks14, align 4
  tail call void @snd_timer_interrupt(ptr noundef %11, i32 noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_new(ptr noundef %card, i16 noundef zeroext %hardware, ptr nocapture noundef writeonly %ropl3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ropl3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ropl3, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 952) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %card1 = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %card1, align 4
  %hardware2 = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %hardware2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %hardware, ptr %hardware2, align 8
  %reg_lock = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_opl3_new.__key, i16 noundef signext 3) #6
  %timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %timer_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_opl3_new.__key.1, i16 noundef signext 3) #6
  %call8 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_opl3_new.ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end23.i, label %if.end11

if.end23.i:                                       ; preds = %if.end
  %private_free.i = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_free.i, align 8
  %tobool24.not.i = icmp eq ptr %5, null
  br i1 %tobool24.not.i, label %if.end23.i.snd_opl3_free.exit_crit_edge, label %if.then25.i

if.end23.i.snd_opl3_free.exit_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_opl3_free.exit

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef nonnull %call7.i.i) #6
  br label %snd_opl3_free.exit

snd_opl3_free.exit:                               ; preds = %if.then25.i, %if.end23.i.snd_opl3_free.exit_crit_edge
  tail call void @snd_opl3_clear_patches(ptr noundef nonnull %call7.i.i) #6
  %res_l_port.i = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %res_l_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_l_port.i, align 8
  tail call void @release_and_free_resource(ptr noundef %7) #6
  %res_r_port.i = getelementptr inbounds %struct.snd_opl3, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %res_r_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %res_r_port.i, align 4
  tail call void @release_and_free_resource(ptr noundef %9) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ropl3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %ropl3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %snd_opl3_free.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %snd_opl3_free.exit ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !76

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 316, i32 noundef 9, ptr noundef null) #6
  br label %snd_opl3_free.exit

if.end23.i:                                       ; preds = %entry
  %private_free.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_free.i, align 4
  %tobool24.not.i = icmp eq ptr %3, null
  br i1 %tobool24.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then25.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end27.i_crit_edge
  tail call void @snd_opl3_clear_patches(ptr noundef nonnull %1) #6
  %res_l_port.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %res_l_port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res_l_port.i, align 4
  tail call void @release_and_free_resource(ptr noundef %5) #6
  %res_r_port.i = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %res_r_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_r_port.i, align 4
  tail call void @release_and_free_resource(ptr noundef %7) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %snd_opl3_free.exit

snd_opl3_free.exit:                               ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi i32 [ -6, %do.end.i ], [ 0, %if.end27.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_init(ptr noundef %opl3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 5
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %return

if.end:                                           ; preds = %entry
  tail call void %1(ptr noundef %opl3, i16 noundef zeroext 1, i8 noundef zeroext 32) #6
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %command, align 4
  tail call void %3(ptr noundef %opl3, i16 noundef zeroext 189, i8 noundef zeroext 0) #6
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 4
  %4 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hardware, align 4
  %6 = and i16 %5, -256
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end.return_crit_edge [
    i16 512, label %sw.bb
    i16 768, label %if.end.sw.bb3_crit_edge
    i16 1024, label %if.end.sw.bb3_crit_edge15
  ]

if.end.sw.bb3_crit_edge15:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_voices = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 18
  %8 = ptrtoint ptr %max_voices to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 9, ptr %max_voices, align 2
  br label %return

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge15
  %max_voices4 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 18
  %9 = ptrtoint ptr %max_voices4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %max_voices4, align 2
  %10 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command, align 4
  tail call void %11(ptr noundef %opl3, i16 noundef zeroext 261, i8 noundef zeroext 1) #6
  br label %return

return:                                           ; preds = %sw.bb3, %sw.bb, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb3 ], [ 0, %if.end.return_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_create(ptr noundef %card, i32 noundef %l_port, i32 noundef %r_port, i16 noundef zeroext %hardware, i32 noundef %integrated, ptr nocapture noundef writeonly %ropl3) #0 align 64 {
entry:
  %opl3 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #6
  %0 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !77
  %1 = ptrtoint ptr %ropl3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ropl3, align 4
  %call = call i32 @snd_opl3_new(ptr noundef %card, i16 noundef zeroext %hardware, ptr noundef nonnull %opl3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %integrated)
  %tobool.not = icmp eq i32 %integrated, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then1:                                         ; preds = %if.end
  %call2 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %l_port, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 0) #6
  %2 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opl3, align 4
  %res_l_port = getelementptr inbounds %struct.snd_opl3, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %res_l_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %res_l_port, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 408, ptr noundef nonnull @.str.7, i32 noundef %l_port) #6
  tail call void @snd_device_free(ptr noundef %card, ptr noundef %3) #6
  br label %cleanup

if.end6:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r_port)
  %cmp7.not = icmp eq i32 %r_port, 0
  br i1 %cmp7.not, label %if.end6.if.end15_crit_edge, label %if.then8

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %call9 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %r_port, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %res_r_port = getelementptr inbounds %struct.snd_opl3, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %res_r_port to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %res_r_port, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.then12, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 415, ptr noundef nonnull @.str.9, i32 noundef %r_port) #6
  tail call void @snd_device_free(ptr noundef %card, ptr noundef %3) #6
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %6 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %opl3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %l_port, ptr %7, align 4
  %r_port17 = getelementptr inbounds %struct.snd_opl3, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %r_port17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %r_port, ptr %r_port17, align 4
  %hardware18 = getelementptr inbounds %struct.snd_opl3, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %hardware18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hardware18, align 4
  %.off = add i16 %11, -769
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  %command = getelementptr inbounds %struct.snd_opl3, ptr %7, i32 0, i32 5
  br i1 %switch, label %if.end15.sw.epilog31.thread_crit_edge, label %sw.default

if.end15.sw.epilog31.thread_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.thread

sw.default:                                       ; preds = %if.end15
  %12 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_opl2_command, ptr %command, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_opl3, ptr %7, i32 0, i32 14
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %and10.i55 = and i32 %l_port, 1048575
  %add.i56 = or i32 %and10.i55, -18874368
  %13 = inttoptr i32 %add.i56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 4) #6, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %add15.i = add i32 %l_port, 1
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %15 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 96) #6, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 6442440) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call3.i) #6
  %17 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %command, align 4
  tail call void %18(ptr noundef %7, i16 noundef zeroext 4, i8 noundef zeroext -128) #6
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  %and.i = and i32 %20, 1048575
  %add.i = or i32 %and.i, -18874368
  %21 = inttoptr i32 %add.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %conv.i = zext i8 %22 to i32
  %and3.i = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 95, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #6
  br label %if.then23

if.end.i:                                         ; preds = %sw.default
  %23 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command, align 4
  tail call void %24(ptr noundef %7, i16 noundef zeroext 2, i8 noundef zeroext -1) #6
  %25 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %command, align 4
  tail call void %26(ptr noundef %7, i16 noundef zeroext 4, i8 noundef zeroext 33) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 42949600) #6
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %7, align 4
  %and10.i = and i32 %29, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %30 = inttoptr i32 %add11.i to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %32 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %command, align 4
  tail call void %33(ptr noundef %7, i16 noundef zeroext 4, i8 noundef zeroext 96) #6
  %34 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %command, align 4
  tail call void %35(ptr noundef %7, i16 noundef zeroext 4, i8 noundef zeroext -128) #6
  %conv17.i = zext i8 %31 to i32
  %and18.i = and i32 %conv17.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and18.i)
  %cmp19.not.i = icmp eq i32 %and18.i, 192
  br i1 %cmp19.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 111, ptr noundef nonnull @.str.17, i32 noundef %conv17.i) #6
  br label %if.then23

if.end23.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %hardware18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hardware18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp25.not.i = icmp eq i16 %37, 0
  br i1 %cmp25.not.i, label %if.end28.i, label %if.end23.i.if.end26_crit_edge

if.end23.i.if.end26_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end28.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %22)
  %cmp30.i = icmp eq i8 %22, 6
  br i1 %cmp30.i, label %if.end28.i.if.end61.i_crit_edge, label %if.else.i

if.end28.i.if.end61.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.else.i:                                        ; preds = %if.end28.i
  %38 = ptrtoint ptr %r_port17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r_port17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.else.i.if.end61.i_crit_edge, !prof !76

if.else.i.if.end61.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 128, i32 noundef 9, ptr noundef null) #6
  br label %if.then23

if.end61.i:                                       ; preds = %if.else.i.if.end61.i_crit_edge, %if.end28.i.if.end61.i_crit_edge
  %storemerge.i = phi i16 [ 512, %if.end28.i.if.end61.i_crit_edge ], [ 768, %if.else.i.if.end61.i_crit_edge ]
  %40 = ptrtoint ptr %hardware18 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %storemerge.i, ptr %hardware18, align 4
  br label %if.end26

if.then23:                                        ; preds = %do.end.i, %if.then21.i, %if.then.i
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 4
  %43 = ptrtoint ptr %r_port17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %r_port17, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef 436, ptr noundef nonnull @.str.10, i32 noundef %42, i32 noundef %44) #6
  tail call void @snd_device_free(ptr noundef %card, ptr noundef %7) #6
  br label %cleanup

if.end26:                                         ; preds = %if.end61.i, %if.end23.i.if.end26_crit_edge
  %45 = ptrtoint ptr %hardware18 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hardware18, align 4
  %47 = and i16 %46, -256
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %47, label %sw.epilog31 [
    i16 768, label %if.end26.sw.epilog31.thread_crit_edge
    i16 1024, label %if.end26.sw.epilog31.thread_crit_edge58
  ]

if.end26.sw.epilog31.thread_crit_edge58:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.thread

if.end26.sw.epilog31.thread_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.thread

sw.epilog31.thread:                               ; preds = %if.end26.sw.epilog31.thread_crit_edge, %if.end26.sw.epilog31.thread_crit_edge58, %if.end15.sw.epilog31.thread_crit_edge
  %49 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @snd_opl3_command, ptr %command, align 4
  br label %if.end.i50

sw.epilog31:                                      ; preds = %if.end26
  %50 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load ptr, ptr %command, align 4
  %tobool.not.i47 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i47, label %do.end.i48, label %sw.epilog31.if.end.i50_crit_edge

sw.epilog31.if.end.i50_crit_edge:                 ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i50

do.end.i48:                                       ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %snd_opl3_init.exit

if.end.i50:                                       ; preds = %sw.epilog31.if.end.i50_crit_edge, %sw.epilog31.thread
  %51 = phi ptr [ @snd_opl3_command, %sw.epilog31.thread ], [ %.pr, %sw.epilog31.if.end.i50_crit_edge ]
  tail call void %51(ptr noundef %7, i16 noundef zeroext 1, i8 noundef zeroext 32) #6
  %52 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %command, align 4
  tail call void %53(ptr noundef %7, i16 noundef zeroext 189, i8 noundef zeroext 0) #6
  %54 = ptrtoint ptr %hardware18 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hardware18, align 4
  %56 = and i16 %55, -256
  %57 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %56, label %if.end.i50.snd_opl3_init.exit_crit_edge [
    i16 512, label %sw.bb.i
    i16 768, label %if.end.i50.sw.bb3.i_crit_edge
    i16 1024, label %if.end.i50.sw.bb3.i_crit_edge59
  ]

if.end.i50.sw.bb3.i_crit_edge59:                  ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.i50.sw.bb3.i_crit_edge:                    ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i

if.end.i50.snd_opl3_init.exit_crit_edge:          ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_opl3_init.exit

sw.bb.i:                                          ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #8
  %max_voices.i = getelementptr inbounds %struct.snd_opl3, ptr %7, i32 0, i32 18
  %58 = ptrtoint ptr %max_voices.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 9, ptr %max_voices.i, align 2
  br label %snd_opl3_init.exit

sw.bb3.i:                                         ; preds = %if.end.i50.sw.bb3.i_crit_edge, %if.end.i50.sw.bb3.i_crit_edge59
  %max_voices4.i = getelementptr inbounds %struct.snd_opl3, ptr %7, i32 0, i32 18
  %59 = ptrtoint ptr %max_voices4.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 18, ptr %max_voices4.i, align 2
  %60 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %command, align 4
  tail call void %61(ptr noundef %7, i16 noundef zeroext 261, i8 noundef zeroext 1) #6
  br label %snd_opl3_init.exit

snd_opl3_init.exit:                               ; preds = %sw.bb3.i, %sw.bb.i, %if.end.i50.snd_opl3_init.exit_crit_edge, %do.end.i48
  %62 = ptrtoint ptr %ropl3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %7, ptr %ropl3, align 4
  br label %cleanup

cleanup:                                          ; preds = %snd_opl3_init.exit, %if.then23, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then23 ], [ 0, %snd_opl3_init.exit ], [ -16, %if.then12 ], [ -16, %if.then5 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_opl3_command(ptr noundef %opl3, i16 noundef zeroext %cmd, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %cmd, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %r_port = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 1
  %cond.in = select i1 %tobool.not, ptr %opl3, ptr %r_port
  %1 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond = load i32, ptr %cond.in, align 4
  %reg_lock = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %conv9 = trunc i16 %cmd to i8
  %and10 = and i32 %cond, 1048575
  %add = or i32 %and10, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv9) #6, !srcloc !79
  %3 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opl3, align 4
  %and13 = and i32 %4, 1048575
  %add14 = or i32 %and13, -18874368
  %5 = inttoptr i32 %add14 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %7 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opl3, align 4
  %and20 = and i32 %8, 1048575
  %add21 = or i32 %and20, -18874368
  %9 = inttoptr i32 %add21 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %add28 = add i32 %cond, 1
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %11 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %val) #6, !srcloc !79
  %12 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opl3, align 4
  %and34 = and i32 %13, 1048575
  %add35 = or i32 %and34, -18874368
  %14 = inttoptr i32 %add35 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %16 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opl3, align 4
  %and41 = and i32 %17, 1048575
  %add42 = or i32 %and41, -18874368
  %18 = inttoptr i32 %add42 to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_opl2_command(ptr noundef %opl3, i16 noundef zeroext %cmd, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %cmd, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  %r_port = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 1
  %cond.in = select i1 %tobool.not, ptr %opl3, ptr %r_port
  %1 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %cond = load i32, ptr %cond.in, align 4
  %reg_lock = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %conv9 = trunc i16 %cmd to i8
  %and10 = and i32 %cond, 1048575
  %add = or i32 %and10, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv9) #6, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %add15 = add i32 %cond, 1
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %4 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %val) #6, !srcloc !79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 6442440) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_timer_new(ptr noundef %opl3, i32 noundef %timer1_dev, i32 noundef %timer2_dev) #0 align 64 {
entry:
  %timer.i21 = alloca ptr, align 4
  %tid.i22 = alloca %struct.snd_timer_id, align 4
  %timer.i = alloca ptr, align 4
  %tid.i = alloca %struct.snd_timer_id, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %timer1_dev)
  %cmp = icmp sgt i32 %timer1_dev, -1
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer.i) #6
  %0 = ptrtoint ptr %timer.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %timer.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tid.i) #6
  %1 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 4
  %5 = ptrtoint ptr %tid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %tid.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %card.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 15
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %timer1_dev, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %4, align 4
  %call.i = call i32 @snd_timer_new(ptr noundef %8, ptr noundef nonnull @.str.18, ptr noundef nonnull %tid.i, ptr noundef nonnull %timer.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  %14 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer.i, align 4
  br i1 %cmp.i, label %snd_opl3_timer1_init.exit, label %snd_opl3_timer1_init.exit.thread

snd_opl3_timer1_init.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %timer1.i30 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 8
  %16 = ptrtoint ptr %timer1.i30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %timer1.i30, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer.i) #6
  br label %cleanup

snd_opl3_timer1_init.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %name.i, ptr @.str.18, i32 15)
  %private_data.i = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 10
  %18 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %opl3, ptr %private_data.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_timer, ptr %15, i32 0, i32 12
  %19 = call ptr @memcpy(ptr %hw.i, ptr @snd_opl3_timer1, i32 48)
  %timer1.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 8
  %20 = ptrtoint ptr %timer1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %15, ptr %timer1.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer.i) #6
  br label %if.end3

if.end3:                                          ; preds = %snd_opl3_timer1_init.exit, %entry.if.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %timer2_dev)
  %cmp4 = icmp sgt i32 %timer2_dev, -1
  br i1 %cmp4, label %if.then5, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer.i21) #6
  %21 = ptrtoint ptr %timer.i21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %timer.i21, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tid.i22) #6
  %22 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i22, i32 0, i32 3
  %25 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i22, i32 0, i32 4
  %26 = ptrtoint ptr %tid.i22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %tid.i22, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %22, align 4
  %card.i23 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 15
  %28 = ptrtoint ptr %card.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i23, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %23, align 4
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %timer2_dev, ptr %24, align 4
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %25, align 4
  %call.i24 = call i32 @snd_timer_new(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef nonnull %tid.i22, ptr noundef nonnull %timer.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i24)
  %cmp.i25 = icmp sgt i32 %call.i24, -1
  %35 = ptrtoint ptr %timer.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %timer.i21, align 4
  br i1 %cmp.i25, label %snd_opl3_timer2_init.exit, label %if.then8

snd_opl3_timer2_init.exit:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %name.i26 = getelementptr inbounds %struct.snd_timer, ptr %36, i32 0, i32 6
  %37 = call ptr @memcpy(ptr %name.i26, ptr @.str.19, i32 15)
  %private_data.i27 = getelementptr inbounds %struct.snd_timer, ptr %36, i32 0, i32 10
  %38 = ptrtoint ptr %private_data.i27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %opl3, ptr %private_data.i27, align 4
  %hw.i28 = getelementptr inbounds %struct.snd_timer, ptr %36, i32 0, i32 12
  %39 = call ptr @memcpy(ptr %hw.i28, ptr @snd_opl3_timer2, i32 48)
  %timer2.i = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 9
  %40 = ptrtoint ptr %timer2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %timer2.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid.i22) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer.i21) #6
  br label %cleanup

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %timer2.i32 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 9
  %41 = ptrtoint ptr %timer2.i32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %36, ptr %timer2.i32, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid.i22) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer.i21) #6
  %42 = ptrtoint ptr %card.i23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i23, align 4
  %timer1 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 8
  %44 = ptrtoint ptr %timer1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %timer1, align 4
  call void @snd_device_free(ptr noundef %43, ptr noundef %45) #6
  %46 = ptrtoint ptr %timer1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %timer1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %snd_opl3_timer2_init.exit, %if.end3.cleanup_crit_edge, %snd_opl3_timer1_init.exit.thread
  %retval.0 = phi i32 [ %call.i24, %if.then8 ], [ 0, %snd_opl3_timer2_init.exit ], [ 0, %if.end3.cleanup_crit_edge ], [ %call.i, %snd_opl3_timer1_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_opl3_hwdep_new(ptr noundef %opl3, i32 noundef %device, i32 noundef %seq_device, ptr noundef writeonly %rhwdep) #0 align 64 {
entry:
  %hw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw) #6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw, align 4, !annotation !77
  %card1 = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 15
  %1 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card1, align 4
  %tobool.not = icmp eq ptr %rhwdep, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %rhwdep to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rhwdep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @snd_hwdep_new(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %device, ptr noundef nonnull %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_device_free(ptr noundef %2, ptr noundef %opl3) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %opl3, ptr %private_data, align 4
  %exclusive = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 16
  %7 = ptrtoint ptr %exclusive to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %exclusive, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %exclusive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %device)
  %cmp4 = icmp eq i32 %device, 0
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %oss_type = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %oss_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %oss_type, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %name = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 4
  %id = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 3
  %call8 = call ptr @strcpy(ptr noundef %name, ptr noundef %id) #11
  %hardware = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 4
  %9 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hardware, align 4
  %11 = and i16 %10, -256
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %11, label %if.end6.sw.epilog_crit_edge [
    i16 512, label %if.end6.sw.epilog.sink.split_crit_edge
    i16 768, label %sw.bb12
    i16 1024, label %sw.bb17
  ]

if.end6.sw.epilog.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb12, %if.end6.sw.epilog.sink.split_crit_edge
  %.sink59 = phi i64 [ 5715151713896647936, %sw.bb17 ], [ 5715151709601680640, %sw.bb12 ], [ 5715151705306713344, %if.end6.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 2, %sw.bb17 ], [ 1, %sw.bb12 ], [ 0, %if.end6.sw.epilog.sink.split_crit_edge ]
  %13 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %.sink59, ptr %name, align 1
  %iface21 = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %iface21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %iface21, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end6.sw.epilog_crit_edge
  %open = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @snd_opl3_open, ptr %open, align 4
  %ioctl = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 8, i32 6
  %16 = ptrtoint ptr %ioctl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @snd_opl3_ioctl, ptr %ioctl, align 4
  %write = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_opl3_write, ptr %write, align 4
  %release = getelementptr inbounds %struct.snd_hwdep, ptr %5, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_opl3_release, ptr %release, align 4
  %hwdep = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 13
  %19 = ptrtoint ptr %hwdep to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %hwdep, align 4
  %seq_dev_num = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 7
  %20 = ptrtoint ptr %seq_dev_num to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %seq_device, ptr %seq_dev_num, align 4
  %seq_dev = getelementptr inbounds %struct.snd_opl3, ptr %opl3, i32 0, i32 21
  %call25 = call i32 @snd_seq_device_new(ptr noundef %2, i32 noundef %seq_device, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %seq_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.then28, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %seq_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %seq_dev, align 4
  %name30 = getelementptr inbounds %struct.snd_seq_device, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %name32 = getelementptr inbounds %struct.snd_hwdep, ptr %24, i32 0, i32 4
  %call34 = call ptr @strcpy(ptr noundef %name30, ptr noundef %name32) #11
  %25 = ptrtoint ptr %seq_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %seq_dev, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 1040
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %opl3, ptr %add.ptr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %sw.epilog.if.end36_crit_edge
  br i1 %tobool.not, label %if.end36.cleanup_crit_edge, label %if.then38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %30 = ptrtoint ptr %rhwdep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %rhwdep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end36.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.then38 ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwdep_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_ioctl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_device_new(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_opl3_clear_patches(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_and_free_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_timer1_start(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock) #6
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 9
  %2 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sticks, align 4
  %timer_enable = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %timer_enable to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %timer_enable, align 4
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, -66
  %conv7 = or i8 %7, 1
  %conv8 = zext i8 %conv7 to i16
  store i16 %conv8, ptr %timer_enable, align 4
  %command = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command, align 4
  %10 = trunc i32 %3 to i8
  %conv10 = sub i8 0, %10
  tail call void %9(ptr noundef %1, i16 noundef zeroext 2, i8 noundef zeroext %conv10) #6
  %11 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %command, align 4
  tail call void %12(ptr noundef %1, i16 noundef zeroext 4, i8 noundef zeroext %conv7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_timer1_stop(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock) #6
  %timer_enable = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %timer_enable to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %timer_enable, align 4
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, -66
  %conv7 = or i8 %5, 64
  %conv8 = zext i8 %conv7 to i16
  store i16 %conv8, ptr %timer_enable, align 4
  %command = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 4, i8 noundef zeroext %conv7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_timer2_start(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock) #6
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 9
  %2 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sticks, align 4
  %timer_enable = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %timer_enable to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %timer_enable, align 4
  %6 = trunc i16 %5 to i8
  %7 = and i8 %6, -35
  %conv7 = or i8 %7, 2
  %conv8 = zext i8 %conv7 to i16
  store i16 %conv8, ptr %timer_enable, align 4
  %command = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command, align 4
  %10 = trunc i32 %3 to i8
  %conv10 = sub i8 0, %10
  tail call void %9(ptr noundef %1, i16 noundef zeroext 3, i8 noundef zeroext %conv10) #6
  %11 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %command, align 4
  tail call void %12(ptr noundef %1, i16 noundef zeroext 4, i8 noundef zeroext %conv7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_opl3_timer2_stop(ptr nocapture noundef readonly %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %timer_lock = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock) #6
  %timer_enable = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %timer_enable to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %timer_enable, align 4
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, -35
  %conv7 = or i8 %5, 32
  %conv8 = zext i8 %conv7 to i16
  store i16 %conv8, ptr %timer_enable, align 4
  %command = getelementptr inbounds %struct.snd_opl3, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command, align 4
  tail call void %7(ptr noundef %1, i16 noundef zeroext 4, i8 noundef zeroext %conv7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_author229, !1, !"__UNIQUE_ID_author229", i1 false, i1 false}
!1 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description230, !3, !"__UNIQUE_ID_description230", i1 false, i1 false}
!3 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_opl3_interrupt, !8, !"__ksymtab_snd_opl3_interrupt", i1 false, i1 false}
!8 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 308, i32 1}
!9 = !{ptr @snd_opl3_new.ops, !10, !"ops", i1 false, i1 false}
!10 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 337, i32 37}
!11 = !{ptr @snd_opl3_new.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 350, i32 2}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @snd_opl3_new.__key.1, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 351, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_snd_opl3_new, !18, !"__ksymtab_snd_opl3_new", i1 false, i1 false}
!18 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 363, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 368, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @snd_opl3_init._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @snd_opl3_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_snd_opl3_init, !26, !"__ksymtab_snd_opl3_init", i1 false, i1 false}
!26 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 389, i32 1}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 406, i32 22}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 408, i32 4}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 413, i32 23}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 415, i32 5}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 435, i32 4}
!37 = !{ptr @__ksymtab_snd_opl3_create, !38, !"__ksymtab_snd_opl3_create", i1 false, i1 false}
!38 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 454, i32 1}
!39 = !{ptr @__ksymtab_snd_opl3_timer_new, !40, !"__ksymtab_snd_opl3_timer_new", i1 false, i1 false}
!40 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 476, i32 1}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 491, i32 28}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 505, i32 20}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 509, i32 20}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 513, i32 20}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 527, i32 43}
!51 = !{ptr @__ksymtab_snd_opl3_hwdep_new, !52, !"__ksymtab_snd_opl3_hwdep_new", i1 false, i1 false}
!52 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 538, i32 1}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 95, i32 3}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 111, i32 3}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 246, i32 34}
!59 = !{ptr @snd_opl3_timer1, !60, !"snd_opl3_timer1", i1 false, i1 false}
!60 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 217, i32 40}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 267, i32 34}
!63 = !{ptr @snd_opl3_timer2, !64, !"snd_opl3_timer2", i1 false, i1 false}
!64 = !{!"../sound/drivers/opl3/opl3_lib.c", i32 226, i32 40}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 5721503}
!75 = !{i64 2153939568}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"auto-init"}
!78 = !{i64 2153931764}
!79 = !{i64 5721108}
!80 = !{i64 2153932644}
!81 = !{i64 2153935812}
!82 = !{i64 2153936802}
!83 = !{i64 2153933893}
!84 = !{i64 2153934291}
!85 = !{i64 2153934576}
!86 = !{i64 2153934801}
!87 = !{i64 2153935203}
!88 = !{i64 2153935488}
