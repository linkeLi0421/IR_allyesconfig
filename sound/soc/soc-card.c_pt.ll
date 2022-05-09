; ModuleID = '/llk/IR_all_yes/sound/soc/soc-card.c_pt.bc'
source_filename = "../sound/soc/soc-card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_card_get_kcontrol\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_card_get_kcontrol\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_card_get_kcontrol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_get_kcontrol:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_get_kcontrol\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_get_kcontrol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_card_jack_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_card_jack_new\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_card_jack_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_jack_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_card_add_dai_link\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_card_add_dai_link\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_card_add_dai_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_add_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_add_dai_link\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_add_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_card_remove_dai_link\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_card_remove_dai_link\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_card_remove_dai_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_card_remove_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_card_remove_dai_link\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_card_remove_dai_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.8 }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.10 }
%union.anon.10 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.7, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.7 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }

@__kstrtab_snd_soc_card_get_kcontrol = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_get_kcontrol = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_get_kcontrol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_get_kcontrol to i32), ptr @__kstrtab_snd_soc_card_get_kcontrol, ptr @__kstrtabns_snd_soc_card_get_kcontrol }, section "___ksymtab_gpl+snd_soc_card_get_kcontrol", align 4
@snd_soc_card_jack_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&jack->mutex\00", [19 x i8] zeroinitializer }, align 32
@snd_soc_card_jack_new.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&jack->notifier)->rwsem\00", [38 x i8] zeroinitializer }, align 32
@__func__.snd_soc_card_jack_new = private unnamed_addr constant [22 x i8] c"snd_soc_card_jack_new\00", align 1
@__kstrtab_snd_soc_card_jack_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_jack_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_jack_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_jack_new to i32), ptr @__kstrtab_snd_soc_card_jack_new, ptr @__kstrtabns_snd_soc_card_jack_new }, section "___ksymtab_gpl+snd_soc_card_jack_new", align 4
@__func__.snd_soc_card_suspend_pre = private unnamed_addr constant [25 x i8] c"snd_soc_card_suspend_pre\00", align 1
@__func__.snd_soc_card_suspend_post = private unnamed_addr constant [26 x i8] c"snd_soc_card_suspend_post\00", align 1
@__func__.snd_soc_card_resume_pre = private unnamed_addr constant [24 x i8] c"snd_soc_card_resume_pre\00", align 1
@__func__.snd_soc_card_resume_post = private unnamed_addr constant [25 x i8] c"snd_soc_card_resume_post\00", align 1
@__func__.snd_soc_card_probe = private unnamed_addr constant [19 x i8] c"snd_soc_card_probe\00", align 1
@__func__.snd_soc_card_late_probe = private unnamed_addr constant [24 x i8] c"snd_soc_card_late_probe\00", align 1
@__func__.snd_soc_card_remove = private unnamed_addr constant [20 x i8] c"snd_soc_card_remove\00", align 1
@__func__.snd_soc_card_set_bias_level = private unnamed_addr constant [28 x i8] c"snd_soc_card_set_bias_level\00", align 1
@__func__.snd_soc_card_set_bias_level_post = private unnamed_addr constant [33 x i8] c"snd_soc_card_set_bias_level_post\00", align 1
@__func__.snd_soc_card_add_dai_link = private unnamed_addr constant [26 x i8] c"snd_soc_card_add_dai_link\00", align 1
@__kstrtab_snd_soc_card_add_dai_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_add_dai_link = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_add_dai_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_add_dai_link to i32), ptr @__kstrtab_snd_soc_card_add_dai_link, ptr @__kstrtabns_snd_soc_card_add_dai_link }, section "___ksymtab_gpl+snd_soc_card_add_dai_link", align 4
@__kstrtab_snd_soc_card_remove_dai_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_card_remove_dai_link = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_card_remove_dai_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_card_remove_dai_link to i32), ptr @__kstrtab_snd_soc_card_remove_dai_link, ptr @__kstrtabns_snd_soc_card_remove_dai_link }, section "___ksymtab_gpl+snd_soc_card_remove_dai_link", align 4
@_soc_card_ret._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 23, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ASoC: error at %s on %s: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_soc_card_ret\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/soc/soc-card.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_soc_card_ret._entry_ptr = internal global ptr @_soc_card_ret._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966772, i64 4294966779]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 66, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 70, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [24 x i8] c"../sound/soc/soc-card.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 21, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_snd_soc_card_add_dai_link, ptr @__ksymtab_snd_soc_card_get_kcontrol, ptr @__ksymtab_snd_soc_card_jack_new, ptr @__ksymtab_snd_soc_card_remove_dai_link, ptr @_soc_card_ret._entry, ptr @_soc_card_ret._entry_ptr, ptr @snd_soc_card_jack_new.__key, ptr @.str, ptr @snd_soc_card_jack_new.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_card_jack_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_card_jack_new.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_soc_card_ret._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_soc_card_get_kcontrol(ptr nocapture noundef readonly %soc_card, ptr noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %soc_card, i32 0, i32 6
  %0 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd_card, align 4
  %controls = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %kctl.0.in = phi ptr [ %controls, %if.end ], [ %kctl.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %kctl.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %kctl.0 = load ptr, ptr %kctl.0.in, align 4
  %cmp.not = icmp eq ptr %kctl.0, %controls
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %name7 = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl.0, i32 0, i32 1, i32 4
  %call = tail call i32 @strncmp(ptr noundef %name7, ptr noundef nonnull %name, i32 noundef 44)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %kctl.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_jack_new(ptr noundef %card, ptr noundef %id, i32 noundef %type, ptr noundef %jack, ptr noundef %pins, i32 noundef %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %jack, ptr noundef nonnull @.str, ptr noundef nonnull @snd_soc_card_jack_new.__key) #5
  %card1 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 2
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %card, ptr %card1, align 4
  %pins2 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 3
  %1 = ptrtoint ptr %pins2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pins2, ptr %pins2, align 4
  %prev.i = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pins2, ptr %prev.i, align 4
  %jack_zones = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 6
  %3 = ptrtoint ptr %jack_zones to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %jack_zones, ptr %jack_zones, align 4
  %prev.i27 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack_zones, ptr %prev.i27, align 4
  %notifier = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 5
  tail call void @__init_rwsem(ptr noundef %notifier, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_soc_card_jack_new.__key.1) #5
  %head = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %head, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 6
  %6 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %snd_card, align 4
  %jack10 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 1
  %call = tail call i32 @snd_jack_new(ptr noundef %7, ptr noundef %id, i32 noundef %type, ptr noundef %jack10, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pins)
  %tobool11.not = icmp eq i32 %num_pins, 0
  br i1 %tobool11.not, label %if.end._soc_card_ret.exit_crit_edge, label %if.then12

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @snd_soc_jack_add_pins(ptr noundef %jack, i32 noundef %num_pins, ptr noundef %pins) #5
  br label %end

end:                                              ; preds = %if.then12, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call13, %if.then12 ]
  %8 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.0, label %do.end.i [
    i32 -517, label %end._soc_card_ret.exit_crit_edge
    i32 -524, label %end._soc_card_ret.exit_crit_edge30
    i32 0, label %end._soc_card_ret.exit_crit_edge31
  ]

end._soc_card_ret.exit_crit_edge31:               ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

end._soc_card_ret.exit_crit_edge30:               ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

end._soc_card_ret.exit_crit_edge:                 ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_jack_new, ptr noundef %12, i32 noundef %ret.0) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %end._soc_card_ret.exit_crit_edge, %end._soc_card_ret.exit_crit_edge30, %end._soc_card_ret.exit_crit_edge31, %if.end._soc_card_ret.exit_crit_edge
  %ret.029 = phi i32 [ %ret.0, %end._soc_card_ret.exit_crit_edge ], [ %ret.0, %end._soc_card_ret.exit_crit_edge30 ], [ %ret.0, %end._soc_card_ret.exit_crit_edge31 ], [ %ret.0, %do.end.i ], [ 0, %if.end._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.029
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_pins(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_suspend_pre(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %suspend_pre = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 15
  %0 = ptrtoint ptr %suspend_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend_pre, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %if.end

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge8
    i32 0, label %if.end._soc_card_ret.exit_crit_edge9
  ]

if.end._soc_card_ret.exit_crit_edge9:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge8:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_suspend_pre, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge8, %if.end._soc_card_ret.exit_crit_edge9, %entry._soc_card_ret.exit_crit_edge
  %ret.07 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge8 ], [ %call, %if.end._soc_card_ret.exit_crit_edge9 ], [ %call, %do.end.i ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.07
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_suspend_post(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %suspend_post = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 16
  %0 = ptrtoint ptr %suspend_post to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suspend_post, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %if.end

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge8
    i32 0, label %if.end._soc_card_ret.exit_crit_edge9
  ]

if.end._soc_card_ret.exit_crit_edge9:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge8:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_suspend_post, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge8, %if.end._soc_card_ret.exit_crit_edge9, %entry._soc_card_ret.exit_crit_edge
  %ret.07 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge8 ], [ %call, %if.end._soc_card_ret.exit_crit_edge9 ], [ %call, %do.end.i ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.07
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_resume_pre(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resume_pre = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 17
  %0 = ptrtoint ptr %resume_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resume_pre, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %if.end

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge8
    i32 0, label %if.end._soc_card_ret.exit_crit_edge9
  ]

if.end._soc_card_ret.exit_crit_edge9:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge8:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_resume_pre, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge8, %if.end._soc_card_ret.exit_crit_edge9, %entry._soc_card_ret.exit_crit_edge
  %ret.07 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge8 ], [ %call, %if.end._soc_card_ret.exit_crit_edge9 ], [ %call, %do.end.i ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.07
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_resume_post(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resume_post = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 18
  %0 = ptrtoint ptr %resume_post to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resume_post, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %if.end

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge8
    i32 0, label %if.end._soc_card_ret.exit_crit_edge9
  ]

if.end._soc_card_ret.exit_crit_edge9:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge8:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_resume_post, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge8, %if.end._soc_card_ret.exit_crit_edge9, %entry._soc_card_ret.exit_crit_edge
  %ret.07 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge8 ], [ %call, %if.end._soc_card_ret.exit_crit_edge9 ], [ %call, %do.end.i ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.07
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_probe(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 12
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.then
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.then2.return_crit_edge
    i32 -524, label %if.then2.return_crit_edge11
  ]

if.then2.return_crit_edge11:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_probe, ptr noundef %6, i32 noundef %call) #8
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %probed = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 56
  %7 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %probed, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %probed, align 4
  br label %return

return:                                           ; preds = %cleanup, %do.end.i, %if.then2.return_crit_edge, %if.then2.return_crit_edge11, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %entry.return_crit_edge ], [ %call, %do.end.i ], [ %call, %if.then2.return_crit_edge ], [ %call, %if.then2.return_crit_edge11 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_late_probe(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %late_probe = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 13
  %0 = ptrtoint ptr %late_probe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %late_probe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.then
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.then2.return_crit_edge
    i32 -524, label %if.then2.return_crit_edge11
  ]

if.then2.return_crit_edge11:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then2.return_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_late_probe, ptr noundef %6, i32 noundef %call) #8
  br label %return

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %probed = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 56
  %7 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %probed, align 4
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %probed, align 4
  br label %return

return:                                           ; preds = %if.end4, %do.end.i, %if.then2.return_crit_edge, %if.then2.return_crit_edge11
  %retval.1 = phi i32 [ 0, %if.end4 ], [ %call, %do.end.i ], [ %call, %if.then2.return_crit_edge ], [ %call, %if.then2.return_crit_edge11 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_remove(ptr noundef %card) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %probed = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 56
  %0 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %probed, align 4
  %1 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %land.lhs.true

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %remove = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 14
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end.thread_crit_edge, label %if.end

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %4 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load413 = load i8, ptr %probed, align 4
  %bf.clear514 = and i8 %bf.load413, -9
  store i8 %bf.clear514, ptr %probed, align 4
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %card) #5
  %5 = ptrtoint ptr %probed to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load4 = load i8, ptr %probed, align 4
  %bf.clear5 = and i8 %bf.load4, -9
  store i8 %bf.clear5, ptr %probed, align 4
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge16
    i32 0, label %if.end._soc_card_ret.exit_crit_edge17
  ]

if.end._soc_card_ret.exit_crit_edge17:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge16:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_remove, ptr noundef %10, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge16, %if.end._soc_card_ret.exit_crit_edge17, %if.end.thread
  %ret.015 = phi i32 [ 0, %if.end.thread ], [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge16 ], [ %call, %if.end._soc_card_ret.exit_crit_edge17 ], [ %call, %do.end.i ]
  ret i32 %ret.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_set_bias_level(ptr noundef %card, ptr noundef %dapm, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %land.lhs.true

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

land.lhs.true:                                    ; preds = %entry
  %set_bias_level = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 19
  %0 = ptrtoint ptr %set_bias_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_bias_level, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true._soc_card_ret.exit_crit_edge, label %if.end

land.lhs.true._soc_card_ret.exit_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %1(ptr noundef nonnull %card, ptr noundef %dapm, i32 noundef %level) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge10
    i32 0, label %if.end._soc_card_ret.exit_crit_edge11
  ]

if.end._soc_card_ret.exit_crit_edge11:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge10:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_set_bias_level, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge10, %if.end._soc_card_ret.exit_crit_edge11, %land.lhs.true._soc_card_ret.exit_crit_edge, %entry._soc_card_ret.exit_crit_edge
  %ret.09 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge10 ], [ %call, %if.end._soc_card_ret.exit_crit_edge11 ], [ %call, %do.end.i ], [ 0, %land.lhs.true._soc_card_ret.exit_crit_edge ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.09
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_set_bias_level_post(ptr noundef %card, ptr noundef %dapm, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %land.lhs.true

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

land.lhs.true:                                    ; preds = %entry
  %set_bias_level_post = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 20
  %0 = ptrtoint ptr %set_bias_level_post to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_bias_level_post, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true._soc_card_ret.exit_crit_edge, label %if.end

land.lhs.true._soc_card_ret.exit_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 %1(ptr noundef nonnull %card, ptr noundef %dapm, i32 noundef %level) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge10
    i32 0, label %if.end._soc_card_ret.exit_crit_edge11
  ]

if.end._soc_card_ret.exit_crit_edge11:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge10:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_set_bias_level_post, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge10, %if.end._soc_card_ret.exit_crit_edge11, %land.lhs.true._soc_card_ret.exit_crit_edge, %entry._soc_card_ret.exit_crit_edge
  %ret.09 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge10 ], [ %call, %if.end._soc_card_ret.exit_crit_edge11 ], [ %call, %do.end.i ], [ 0, %land.lhs.true._soc_card_ret.exit_crit_edge ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.09
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_soc_card_add_dai_link(ptr noundef %card, ptr noundef %dai_link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add_dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 21
  %0 = ptrtoint ptr %add_dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add_dai_link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry._soc_card_ret.exit_crit_edge, label %if.end

entry._soc_card_ret.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end:                                           ; preds = %entry
  %call = tail call i32 %1(ptr noundef %card, ptr noundef %dai_link) #5
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call, label %do.end.i [
    i32 -517, label %if.end._soc_card_ret.exit_crit_edge
    i32 -524, label %if.end._soc_card_ret.exit_crit_edge8
    i32 0, label %if.end._soc_card_ret.exit_crit_edge9
  ]

if.end._soc_card_ret.exit_crit_edge9:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge8:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

if.end._soc_card_ret.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %_soc_card_ret.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.snd_soc_card_add_dai_link, ptr noundef %6, i32 noundef %call) #8
  br label %_soc_card_ret.exit

_soc_card_ret.exit:                               ; preds = %do.end.i, %if.end._soc_card_ret.exit_crit_edge, %if.end._soc_card_ret.exit_crit_edge8, %if.end._soc_card_ret.exit_crit_edge9, %entry._soc_card_ret.exit_crit_edge
  %ret.07 = phi i32 [ %call, %if.end._soc_card_ret.exit_crit_edge ], [ %call, %if.end._soc_card_ret.exit_crit_edge8 ], [ %call, %if.end._soc_card_ret.exit_crit_edge9 ], [ %call, %do.end.i ], [ 0, %entry._soc_card_ret.exit_crit_edge ]
  ret i32 %ret.07
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_soc_card_remove_dai_link(ptr noundef %card, ptr noundef %dai_link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %remove_dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 22
  %0 = ptrtoint ptr %remove_dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remove_dai_link, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %1(ptr noundef %card, ptr noundef %dai_link) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_snd_soc_card_get_kcontrol, !1, !"__ksymtab_snd_soc_card_get_kcontrol", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-card.c", i32 43, i32 1}
!2 = !{ptr @snd_soc_card_jack_new.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../sound/soc/soc-card.c", i32 66, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @snd_soc_card_jack_new.__key.1, !6, !"__key", i1 false, i1 false}
!6 = !{!"../sound/soc/soc-card.c", i32 70, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.snd_soc_card_jack_new, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/soc-card.c", i32 79, i32 9}
!10 = !{ptr @__ksymtab_snd_soc_card_jack_new, !11, !"__ksymtab_snd_soc_card_jack_new", i1 false, i1 false}
!11 = !{!"../sound/soc/soc-card.c", i32 81, i32 1}
!12 = !{ptr @__func__.snd_soc_card_suspend_pre, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-card.c", i32 90, i32 9}
!14 = !{ptr @__func__.snd_soc_card_suspend_post, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-card.c", i32 100, i32 9}
!16 = !{ptr @__func__.snd_soc_card_resume_pre, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/soc-card.c", i32 110, i32 9}
!18 = !{ptr @__func__.snd_soc_card_resume_post, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/soc-card.c", i32 120, i32 9}
!20 = !{ptr @__func__.snd_soc_card_probe, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/soc-card.c", i32 129, i32 11}
!22 = !{ptr @__func__.snd_soc_card_late_probe, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/soc-card.c", i32 152, i32 11}
!24 = !{ptr @__func__.snd_soc_card_remove, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/soc-card.c", i32 180, i32 9}
!26 = !{ptr @__func__.snd_soc_card_set_bias_level, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/soc-card.c", i32 192, i32 9}
!28 = !{ptr @__func__.snd_soc_card_set_bias_level_post, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/soc-card.c", i32 204, i32 9}
!30 = !{ptr @__func__.snd_soc_card_add_dai_link, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/soc-card.c", i32 215, i32 9}
!32 = !{ptr @__ksymtab_snd_soc_card_add_dai_link, !33, !"__ksymtab_snd_soc_card_add_dai_link", i1 false, i1 false}
!33 = !{!"../sound/soc/soc-card.c", i32 217, i32 1}
!34 = !{ptr @__ksymtab_snd_soc_card_remove_dai_link, !35, !"__ksymtab_snd_soc_card_remove_dai_link", i1 false, i1 false}
!35 = !{!"../sound/soc/soc-card.c", i32 225, i32 1}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/soc-card.c", i32 21, i32 3}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @_soc_card_ret._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @_soc_card_ret._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
