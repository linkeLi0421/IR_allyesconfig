; ModuleID = '/llk/IR_all_yes/sound/core/sound.c_pt.bc'
source_filename = "../sound/core/sound.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_major\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_major\09\09\09\09"
module asm "\09.long\09__crc_snd_major\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_major:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_major\22\09\09\09\09\09"
module asm "__kstrtabns_snd_major:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ecards_limit\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ecards_limit\09\09\09\09"
module asm "\09.long\09__crc_snd_ecards_limit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ecards_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ecards_limit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ecards_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sound_debugfs_root\22, \22a\22\09"
module asm "\09.weak\09__crc_sound_debugfs_root\09\09\09\09"
module asm "\09.long\09__crc_sound_debugfs_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sound_debugfs_root:\09\09\09\09\09"
module asm "\09.asciz \09\22sound_debugfs_root\22\09\09\09\09\09"
module asm "__kstrtabns_sound_debugfs_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_request_card\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_request_card\09\09\09\09"
module asm "\09.long\09__crc_snd_request_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_request_card:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_request_card\22\09\09\09\09\09"
module asm "__kstrtabns_snd_request_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_lookup_minor_data\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_lookup_minor_data\09\09\09\09"
module asm "\09.long\09__crc_snd_lookup_minor_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_lookup_minor_data:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_lookup_minor_data\22\09\09\09\09\09"
module asm "__kstrtabns_snd_lookup_minor_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_register_device\09\09\09\09"
module asm "\09.long\09__crc_snd_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_snd_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_snd_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_minor = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.68, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.68 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@snd_major = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_snd_major = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_major = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_major = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_major to i32), ptr @__kstrtab_snd_major, ptr @__kstrtabns_snd_major }, section "___ksymtab+snd_major", align 4
@__UNIQUE_ID_author229 = internal constant [44 x i8] c"snd.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [73 x i8] c"snd.description=Advanced Linux Sound Architecture driver for soundcards.\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [24 x i8] c"snd.file=sound/core/snd\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [16 x i8] c"snd.license=GPL\00", section ".modinfo", align 1
@__param_str_major = internal constant [10 x i8] c"snd.major\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@major = internal global { i32, [28 x i8] } { i32 116, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype233 = internal constant [23 x i8] c"snd.parmtype=major:int\00", section ".modinfo", align 1
@__UNIQUE_ID_major234 = internal constant [41 x i8] c"snd.parm=major:Major # for sound driver.\00", section ".modinfo", align 1
@__param_str_cards_limit = internal constant [16 x i8] c"snd.cards_limit\00", align 1
@cards_limit = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_cards_limit = internal constant %struct.kernel_param { ptr @__param_str_cards_limit, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @cards_limit } }, section "__param", align 4
@__UNIQUE_ID_cards_limittype235 = internal constant [29 x i8] c"snd.parmtype=cards_limit:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cards_limit236 = internal constant [56 x i8] c"snd.parm=cards_limit:Count of auto-loadable soundcards.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [27 x i8] c"snd.alias=char-major-116-*\00", section ".modinfo", align 1
@snd_ecards_limit = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_snd_ecards_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ecards_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ecards_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ecards_limit to i32), ptr @__kstrtab_snd_ecards_limit, ptr @__kstrtabns_snd_ecards_limit }, section "___ksymtab+snd_ecards_limit", align 4
@sound_debugfs_root = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_sound_debugfs_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_sound_debugfs_root = external dso_local constant [0 x i8], align 1
@__ksymtab_sound_debugfs_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sound_debugfs_root to i32), ptr @__kstrtab_sound_debugfs_root, ptr @__kstrtabns_sound_debugfs_root }, section "___ksymtab_gpl+sound_debugfs_root", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd-card-%i\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_snd_request_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_request_card = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_request_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_request_card to i32), ptr @__kstrtab_snd_request_card, ptr @__kstrtabns_snd_request_card }, section "___ksymtab+snd_request_card", align 4
@sound_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sound_mutex, i64 52), ptr getelementptr (i8, ptr @sound_mutex, i64 52) }, ptr @sound_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@snd_minors = internal global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@__kstrtab_snd_lookup_minor_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_lookup_minor_data = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_lookup_minor_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_lookup_minor_data to i32), ptr @__kstrtab_snd_lookup_minor_data, ptr @__kstrtabns_snd_lookup_minor_data }, section "___ksymtab+snd_lookup_minor_data", align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/core/sound.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_snd_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_register_device to i32), ptr @__kstrtab_snd_register_device, ptr @__kstrtabns_snd_register_device }, section "___ksymtab+snd_register_device", align 4
@__kstrtab_snd_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_unregister_device to i32), ptr @__kstrtab_snd_unregister_device, ptr @__kstrtabns_snd_unregister_device }, section "___ksymtab+snd_unregister_device", align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alsa\00", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd__238_426_alsa_sound_init4 = internal global ptr @alsa_sound_init, section ".initcall4.init", align 4
@__exitcall_alsa_sound_exit = internal global ptr @alsa_sound_exit, section ".exitcall.exit", align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sound_mutex\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%3i: [%2i-%2i]: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%3i: [%2i]   : %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%3i:        : %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hardware dependent\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"raw midi\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"digital audio playback\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"digital audio capture\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sequencer\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"compress\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@snd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @snd_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@alsa_sound_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ALSA core: unable to register native major device number %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alsa_sound_init\00", [16 x i8] zeroinitializer }, align 32
@alsa_sound_init._entry_ptr = internal global ptr @alsa_sound_init._entry, section ".printk_index", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sound\00", [26 x i8] zeroinitializer }, align 32
@alsa_sound_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.1, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016Advanced Linux Sound Architecture Driver Initialized.\0A\00", [39 x i8] zeroinitializer }, align 32
@alsa_sound_init._entry_ptr.23 = internal global ptr @alsa_sound_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd-seq\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd-timer\00", [22 x i8] zeroinitializer }, align 32
@switch.table.snd_minor_info_read = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@switch.table.snd_minor_info_read.26 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@switch.table.snd_minor_info_read.27 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 33]
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"snd_major\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 22, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 21, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"cards_limit\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 25, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"snd_ecards_limit\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 40, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"sound_debugfs_root\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 44, i32 16 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 66, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"sound_mutex\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [11 x i8] c"snd_minors\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 48, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 260, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 383, i32 52 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 423, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 49, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 365, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 369, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 373, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 333, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 335, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 337, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 339, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 341, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 343, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 345, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 347, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 349, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant [9 x i8] c"snd_fops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 173, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 400, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 409, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 412, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 75, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [22 x i8] c"../sound/core/sound.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 76, i32 33 }
@___asan_gen_.132 = private unnamed_addr constant [33 x i8] c"switch.table.snd_minor_info_read\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [36 x i8] c"switch.table.snd_minor_info_read.26\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [36 x i8] c"switch.table.snd_minor_info_read.27\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_cards_limit236, ptr @__UNIQUE_ID_cards_limittype235, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__UNIQUE_ID_major234, ptr @__UNIQUE_ID_majortype233, ptr @__exitcall_alsa_sound_exit, ptr @__initcall__kmod_snd__238_426_alsa_sound_init4, ptr @__ksymtab_snd_ecards_limit, ptr @__ksymtab_snd_lookup_minor_data, ptr @__ksymtab_snd_major, ptr @__ksymtab_snd_register_device, ptr @__ksymtab_snd_request_card, ptr @__ksymtab_snd_unregister_device, ptr @__ksymtab_sound_debugfs_root, ptr @__param_cards_limit, ptr @__param_major, ptr @alsa_sound_exit, ptr @alsa_sound_init._entry, ptr @alsa_sound_init._entry.21, ptr @alsa_sound_init._entry_ptr, ptr @alsa_sound_init._entry_ptr.23, ptr @snd_major, ptr @major, ptr @cards_limit, ptr @snd_ecards_limit, ptr @sound_debugfs_root, ptr @.str, ptr @sound_mutex, ptr @snd_minors, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @snd_fops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @switch.table.snd_minor_info_read, ptr @switch.table.snd_minor_info_read.26, ptr @switch.table.snd_minor_info_read.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cards_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ecards_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sound_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sound_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_minors to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_sound_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_sound_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_minor_info_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_minor_info_read.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_minor_info_read.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_request_card(i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_card_locked(i32 noundef %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %card)
  %cmp = icmp slt i32 %card, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @cards_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %card)
  %cmp1.not = icmp sgt i32 %0, %card
  br i1 %cmp1.not, label %if.end3, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, i32 noundef %card) #5
  br label %return

return:                                           ; preds = %if.end3, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_locked(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_lookup_minor_data(i32 noundef %minor, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %minor)
  %cmp = icmp ugt i32 %minor, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %minor
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %type)
  %cmp2 = icmp eq i32 %3, %type
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3:                                         ; preds = %land.lhs.true
  %private_data4 = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then3.if.end11_crit_edge, label %land.lhs.true6

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true6:                                   ; preds = %if.then3
  %card_ptr = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %card_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_ptr, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %land.lhs.true6.if.end11_crit_edge, label %if.then8

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 28
  %call = tail call ptr @get_device(ptr noundef %card_dev) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true6.if.end11_crit_edge, %if.then3.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %private_data.0 = phi ptr [ %5, %if.then8 ], [ %5, %land.lhs.true6.if.end11_crit_edge ], [ null, %if.then3.if.end11_crit_edge ], [ null, %land.lhs.true.if.end11_crit_edge ], [ null, %if.end.if.end11_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %private_data.0, %if.end11 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_register_device(i32 noundef %type, ptr noundef %card, i32 noundef %dev, ptr noundef %f_ops, ptr noundef %private_data, ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %device, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !113

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 28) #8
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %type, ptr %call7.i, align 8
  %tobool27.not = icmp eq ptr %card, null
  br i1 %tobool27.not, label %if.end25.cond.end_crit_edge, label %cond.true

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end25.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ -1, %if.end25.cond.end_crit_edge ]
  %card28 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %card28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %card28, align 4
  %device29 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %device29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dev, ptr %device29, align 8
  %f_ops30 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %f_ops30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %f_ops, ptr %f_ops30, align 4
  %private_data31 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %private_data31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %private_data, ptr %private_data31, align 8
  %card_ptr = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 6
  %8 = ptrtoint ptr %card_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %card, ptr %card_ptr, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_mutex, i32 noundef 0) #5
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %cond.end.for.body.i_crit_edge [
    i32 1, label %cond.end.if.end35_crit_edge
    i32 2, label %if.then2.i
  ]

cond.end.if.end35_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

cond.end.for.body.i_crit_edge:                    ; preds = %cond.end
  br label %for.body.i

if.then2.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.for.body.i_crit_edge
  %minor.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %cond.end.for.body.i_crit_edge ]
  %and.i = and i32 %minor.02.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 0
  %10 = and i32 %minor.02.i, 2147483615
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %11 = icmp eq i32 %10, 1
  %12 = or i1 %11, %cmp5.i
  br i1 %12, label %for.body.i.for.inc.i_crit_edge, label %if.end11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %minor.02.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end11.i.if.end35_crit_edge, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end11.i.if.end35_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %minor.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.if.then42_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then42_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.end35:                                         ; preds = %if.end11.i.if.end35_crit_edge, %if.then2.i, %cond.end.if.end35_crit_edge
  %retval.0.i.ph = phi i32 [ %type, %cond.end.if.end35_crit_edge ], [ 33, %if.then2.i ], [ %minor.02.i, %if.end11.i.if.end35_crit_edge ]
  %dev36 = getelementptr inbounds %struct.snd_minor, ptr %call7.i, i32 0, i32 5
  %15 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %device, ptr %dev36, align 4
  %16 = load i32, ptr @major, align 4
  %shl = shl i32 %16, 20
  %or = or i32 %shl, %retval.0.i.ph
  %devt = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 29
  %17 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %devt, align 8
  %call37 = tail call i32 @device_add(ptr noundef nonnull %device) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.if.then42_crit_edge, label %error

if.end35.if.then42_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

error:                                            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %retval.0.i.ph
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %cleanup

if.then42:                                        ; preds = %if.end35.if.then42_crit_edge, %for.inc.i.if.then42_crit_edge
  %err.0.ph = phi i32 [ %call37, %if.end35.if.then42_crit_edge ], [ -16, %for.inc.i.if.then42_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %error, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end23.cleanup_crit_edge ], [ %err.0.ph, %if.then42 ], [ %call37, %error ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_unregister_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_mutex, i32 noundef 0) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %minor.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %minor.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dev1 = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %cmp2 = icmp eq ptr %3, %dev
  br i1 %cmp2, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %minor.017, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %5

for.end:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  tail call void @device_del(ptr noundef %dev) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %minor.017)
  %cmp4 = icmp ugt i32 %minor.017, 255
  br i1 %cmp4, label %for.end._crit_edge, label %for.end._crit_edge36

for.end._crit_edge36:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %6

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %5

5:                                                ; preds = %for.end._crit_edge, %for.end.thread
  br label %6

6:                                                ; preds = %5, %for.end._crit_edge36
  %7 = phi i32 [ -2, %5 ], [ 0, %for.end._crit_edge36 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_minor_info_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @snd_minor_info_read, ptr %c, align 4
  %call2 = tail call i32 @snd_info_register(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_minor_info_read(ptr nocapture noundef readnone %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_mutex, i32 noundef 0) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %minor.056 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %minor.056
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %card = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp2 = icmp sgt i32 %3, -1
  br i1 %cmp2, label %if.then3, label %if.else14

if.then3:                                         ; preds = %if.end
  %device = getelementptr inbounds %struct.snd_minor, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp4 = icmp sgt i32 %5, -1
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %10 = icmp ult i32 %9, 8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  br i1 %10, label %switch.lookup, label %if.then5.snd_device_type_name.exit_crit_edge

if.then5.snd_device_type_name.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_device_type_name.exit

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.snd_minor_info_read, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %snd_device_type_name.exit

snd_device_type_name.exit:                        ; preds = %switch.lookup, %if.then5.snd_device_type_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %if.then5.snd_device_type_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %minor.056, i32 noundef %3, i32 noundef %5, ptr noundef nonnull %retval.0.i) #5
  br label %for.inc

if.else:                                          ; preds = %if.then3
  br i1 %10, label %switch.lookup58, label %if.else.snd_device_type_name.exit45_crit_edge

if.else.snd_device_type_name.exit45_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_device_type_name.exit45

switch.lookup58:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep59 = getelementptr inbounds [8 x ptr], ptr @switch.table.snd_minor_info_read.26, i32 0, i32 %9
  %12 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load60 = load ptr, ptr %switch.gep59, align 4
  br label %snd_device_type_name.exit45

snd_device_type_name.exit45:                      ; preds = %switch.lookup58, %if.else.snd_device_type_name.exit45_crit_edge
  %retval.0.i44 = phi ptr [ %switch.load60, %switch.lookup58 ], [ @.str.17, %if.else.snd_device_type_name.exit45_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %minor.056, i32 noundef %3, ptr noundef nonnull %retval.0.i44) #5
  br label %for.inc

if.else14:                                        ; preds = %if.end
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %17 = icmp ult i32 %16, 8
  br i1 %17, label %switch.lookup61, label %if.else14.snd_device_type_name.exit55_crit_edge

if.else14.snd_device_type_name.exit55_crit_edge:  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_device_type_name.exit55

switch.lookup61:                                  ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep62 = getelementptr inbounds [8 x ptr], ptr @switch.table.snd_minor_info_read.27, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep62 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load63 = load ptr, ptr %switch.gep62, align 4
  br label %snd_device_type_name.exit55

snd_device_type_name.exit55:                      ; preds = %switch.lookup61, %if.else14.snd_device_type_name.exit55_crit_edge
  %retval.0.i54 = phi ptr [ %switch.load63, %switch.lookup61 ], [ @.str.17, %if.else14.snd_device_type_name.exit55_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %minor.056, ptr noundef nonnull %retval.0.i54) #5
  br label %for.inc

for.inc:                                          ; preds = %snd_device_type_name.exit55, %snd_device_type_name.exit45, %snd_device_type_name.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %minor.056, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_sound_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @sound_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #5
  %call = tail call i32 @snd_info_done() #5
  %1 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %1, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_done() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_sound_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  store i32 %0, ptr @snd_major, align 4
  %1 = load i32, ptr @cards_limit, align 4
  store i32 %1, ptr @snd_ecards_limit, align 4
  %call.i = tail call i32 @__register_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_fops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = load i32, ptr @major, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %2) #9
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_info_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load i32, ptr @major, align 4
  tail call void @__unregister_chrdev(i32 noundef %3, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #5
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.20, ptr noundef null) #5
  store ptr %call5, ptr @sound_debugfs_root, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -12, %if.then3 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr [256 x ptr], ptr @snd_minors, i32 0, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  %and.i64 = and i32 %1, 31
  %4 = zext i32 %and.i64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %and.i64, label %if.then2.autoload_device.exit_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then4.i
  ]

if.then2.autoload_device.exit_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %autoload_device.exit

if.then.i:                                        ; preds = %if.then2
  %shr.i = lshr i32 %and.i, 5
  %call.i = tail call ptr @snd_card_ref(i32 noundef %shr.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  %call.i.i = tail call i32 @snd_card_locked(i32 noundef %shr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %lor.lhs.false.i.i, label %if.then1.i.autoload_device.exit_crit_edge

if.then1.i.autoload_device.exit_crit_edge:        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %autoload_device.exit

lor.lhs.false.i.i:                                ; preds = %if.then1.i
  %5 = load i32, ptr @cards_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr.i)
  %cmp1.not.i.i = icmp sgt i32 %5, %shr.i
  br i1 %cmp1.not.i.i, label %if.end3.i.i, label %lor.lhs.false.i.i.autoload_device.exit_crit_edge

lor.lhs.false.i.i.autoload_device.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %autoload_device.exit

if.end3.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, i32 noundef %shr.i) #5
  br label %autoload_device.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %card_dev.i.i = getelementptr inbounds %struct.snd_card, ptr %call.i, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i.i) #5
  br label %autoload_device.exit

if.then4.i:                                       ; preds = %if.then2
  %6 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %and.i, label %if.then4.i.autoload_device.exit_crit_edge [
    i32 1, label %if.then4.i.sw.epilog.i.i_crit_edge
    i32 33, label %sw.bb1.i.i
  ]

if.then4.i.sw.epilog.i.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

if.then4.i.autoload_device.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %autoload_device.exit

sw.bb1.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.then4.i.sw.epilog.i.i_crit_edge
  %str.0.i.i = phi ptr [ @.str.25, %sw.bb1.i.i ], [ @.str.24, %if.then4.i.sw.epilog.i.i_crit_edge ]
  %call.i13.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %str.0.i.i) #5
  br label %autoload_device.exit

autoload_device.exit:                             ; preds = %sw.epilog.i.i, %if.then4.i.autoload_device.exit_crit_edge, %if.else.i, %if.end3.i.i, %lor.lhs.false.i.i.autoload_device.exit_crit_edge, %if.then1.i.autoload_device.exit_crit_edge, %if.then2.autoload_device.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @sound_mutex, i32 noundef 0) #5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then4, label %autoload_device.exit.if.end6_crit_edge

autoload_device.exit.if.end6_crit_edge:           ; preds = %autoload_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %autoload_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %cleanup

if.end6:                                          ; preds = %autoload_device.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %mptr.0 = phi ptr [ %8, %autoload_device.exit.if.end6_crit_edge ], [ %3, %if.end.if.end6_crit_edge ]
  %f_ops = getelementptr inbounds %struct.snd_minor, ptr %mptr.0, i32 0, i32 3
  %9 = ptrtoint ptr %f_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_ops, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end6.cond.end.thread_crit_edge, label %land.lhs.true

if.end6.cond.end.thread_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread

land.lhs.true:                                    ; preds = %if.end6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call9 = tail call zeroext i1 @try_module_get(ptr noundef %12) #5
  br i1 %call9, label %cond.end, label %land.lhs.true.cond.end.thread_crit_edge

land.lhs.true.cond.end.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %land.lhs.true.cond.end.thread_crit_edge, %if.end6.cond.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  br label %cleanup

cond.end:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %f_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_ops, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sound_mutex) #5
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %cond.end.cleanup_crit_edge, label %do.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %cond.end
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %15 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_op, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %do.body.do.body20_crit_edge, label %if.then16

do.body.do.body20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body20

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void @module_put(ptr noundef %18) #5
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.body.do.body20_crit_edge
  %19 = ptrtoint ptr %f_op to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %f_op, align 4
  %open = getelementptr inbounds %struct.file_operations, ptr %14, i32 0, i32 14
  %20 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %open, align 4
  %tobool39.not = icmp eq ptr %21, null
  br i1 %tobool39.not, label %do.body20.cleanup_crit_edge, label %if.then40

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call i32 %21(ptr noundef %inode, ptr noundef %file) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %do.body20.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %cond.end.thread, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then4 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %cond.end.cleanup_crit_edge ], [ %call43, %if.then40 ], [ 0, %do.body20.cleanup_crit_edge ], [ -19, %cond.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__ksymtab_snd_major, !1, !"__ksymtab_snd_major", i1 false, i1 false}
!1 = !{!"../sound/core/sound.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author229, !3, !"__UNIQUE_ID_author229", i1 false, i1 false}
!3 = !{!"../sound/core/sound.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_description230, !5, !"__UNIQUE_ID_description230", i1 false, i1 false}
!5 = !{!"../sound/core/sound.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_file231, !7, !"__UNIQUE_ID_file231", i1 false, i1 false}
!7 = !{!"../sound/core/sound.c", i32 29, i32 1}
!8 = !{ptr @__UNIQUE_ID_license232, !7, !"__UNIQUE_ID_license232", i1 false, i1 false}
!9 = !{ptr @__param_major, !10, !"__param_major", i1 false, i1 false}
!10 = !{!"../sound/core/sound.c", i32 30, i32 1}
!11 = !{ptr @__UNIQUE_ID_majortype233, !10, !"__UNIQUE_ID_majortype233", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_major234, !13, !"__UNIQUE_ID_major234", i1 false, i1 false}
!13 = !{!"../sound/core/sound.c", i32 31, i32 1}
!14 = !{ptr @__param_cards_limit, !15, !"__param_cards_limit", i1 false, i1 false}
!15 = !{!"../sound/core/sound.c", i32 32, i32 1}
!16 = !{ptr @__UNIQUE_ID_cards_limittype235, !15, !"__UNIQUE_ID_cards_limittype235", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_cards_limit236, !18, !"__UNIQUE_ID_cards_limit236", i1 false, i1 false}
!18 = !{!"../sound/core/sound.c", i32 33, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias237, !20, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!20 = !{!"../sound/core/sound.c", i32 34, i32 1}
!21 = !{ptr @__ksymtab_snd_ecards_limit, !22, !"__ksymtab_snd_ecards_limit", i1 false, i1 false}
!22 = !{!"../sound/core/sound.c", i32 41, i32 1}
!23 = !{ptr @__ksymtab_sound_debugfs_root, !24, !"__ksymtab_sound_debugfs_root", i1 false, i1 false}
!24 = !{!"../sound/core/sound.c", i32 45, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/core/sound.c", i32 66, i32 2}
!27 = !{ptr @__ksymtab_snd_request_card, !28, !"__ksymtab_snd_request_card", i1 false, i1 false}
!28 = !{!"../sound/core/sound.c", i32 68, i32 1}
!29 = !{ptr @__ksymtab_snd_lookup_minor_data, !30, !"__ksymtab_snd_lookup_minor_data", i1 false, i1 false}
!30 = !{!"../sound/core/sound.c", i32 117, i32 1}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/core/sound.c", i32 260, i32 6}
!33 = !{ptr @__ksymtab_snd_register_device, !34, !"__ksymtab_snd_register_device", i1 false, i1 false}
!34 = !{!"../sound/core/sound.c", i32 292, i32 1}
!35 = !{ptr @__ksymtab_snd_unregister_device, !36, !"__ksymtab_snd_unregister_device", i1 false, i1 false}
!36 = !{!"../sound/core/sound.c", i32 323, i32 1}
!37 = !{ptr @.str.2, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/core/sound.c", i32 383, i32 52}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/core/sound.c", i32 423, i32 27}
!41 = !{ptr @__initcall__kmod_snd__238_426_alsa_sound_init4, !42, !"__initcall__kmod_snd__238_426_alsa_sound_init4", i1 false, i1 false}
!42 = !{!"../sound/core/sound.c", i32 426, i32 1}
!43 = !{ptr @__exitcall_alsa_sound_exit, !44, !"__exitcall_alsa_sound_exit", i1 false, i1 false}
!44 = !{!"../sound/core/sound.c", i32 427, i32 1}
!45 = !{ptr @snd_major, !46, !"snd_major", i1 false, i1 false}
!46 = !{!"../sound/core/sound.c", i32 22, i32 5}
!47 = !{ptr @snd_ecards_limit, !48, !"snd_ecards_limit", i1 false, i1 false}
!48 = !{!"../sound/core/sound.c", i32 40, i32 5}
!49 = !{ptr @sound_debugfs_root, !50, !"sound_debugfs_root", i1 false, i1 false}
!50 = !{!"../sound/core/sound.c", i32 44, i32 16}
!51 = !{ptr @snd_minors, !52, !"snd_minors", i1 false, i1 false}
!52 = !{!"../sound/core/sound.c", i32 48, i32 26}
!53 = !{ptr @__param_str_major, !10, !"__param_str_major", i1 false, i1 false}
!54 = !{ptr @major, !55, !"major", i1 false, i1 false}
!55 = !{!"../sound/core/sound.c", i32 21, i32 12}
!56 = !{ptr @__param_str_cards_limit, !15, !"__param_str_cards_limit", i1 false, i1 false}
!57 = !{ptr @cards_limit, !58, !"cards_limit", i1 false, i1 false}
!58 = !{!"../sound/core/sound.c", i32 25, i32 12}
!59 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/core/sound.c", i32 49, i32 8}
!61 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sound_mutex, !60, !"sound_mutex", i1 false, i1 false}
!63 = !{ptr @.str.6, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/core/sound.c", i32 365, i32 5}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/core/sound.c", i32 369, i32 5}
!67 = !{ptr @.str.8, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/core/sound.c", i32 373, i32 4}
!69 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/core/sound.c", i32 333, i32 10}
!71 = !{ptr @.str.10, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/core/sound.c", i32 335, i32 10}
!73 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/core/sound.c", i32 337, i32 10}
!75 = !{ptr @.str.12, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/core/sound.c", i32 339, i32 10}
!77 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/core/sound.c", i32 341, i32 10}
!79 = !{ptr @.str.14, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/core/sound.c", i32 343, i32 10}
!81 = !{ptr @.str.15, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/core/sound.c", i32 345, i32 10}
!83 = !{ptr @.str.16, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/core/sound.c", i32 347, i32 10}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/core/sound.c", i32 349, i32 10}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/core/sound.c", i32 400, i32 3}
!89 = !{ptr @.str.19, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @alsa_sound_init._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @alsa_sound_init._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/core/sound.c", i32 409, i32 42}
!94 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/core/sound.c", i32 412, i32 2}
!96 = !{ptr @alsa_sound_init._entry.21, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @alsa_sound_init._entry_ptr.23, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @snd_fops, !99, !"snd_fops", i1 false, i1 false}
!99 = !{!"../sound/core/sound.c", i32 173, i32 37}
!100 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/core/sound.c", i32 75, i32 36}
!102 = !{ptr @.str.25, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/core/sound.c", i32 76, i32 33}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"branch_weights", i32 1, i32 2000}
