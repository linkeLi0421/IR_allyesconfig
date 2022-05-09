; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/kobjects.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/kobjects.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spk_var_show\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_var_show\09\09\09\09"
module asm "\09.long\09__crc_spk_var_show\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_var_show:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_var_show\22\09\09\09\09\09"
module asm "__kstrtabns_spk_var_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_var_store\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_var_store\09\09\09\09"
module asm "\09.long\09__crc_spk_var_store\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_var_store:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_var_store\22\09\09\09\09\09"
module asm "__kstrtabns_spk_var_store:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.st_bits_data = type { ptr, ptr, i16 }
%struct.st_var_header = type { ptr, i32, i32, ptr, ptr }
%struct.var_t = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.st_spk_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.spk_highlight_color_track, i32 }
%struct.spk_highlight_color_track = type { [8 x i32], [8 x [160 x i16]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], i32 }
%struct.punc_var_t = type { i32, i16 }
%struct.msg_group_t = type { ptr, i32, i32 }

@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\\x%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Bad parameter  %s, type %i\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_spk_var_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_var_show = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_var_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_var_show to i32), ptr @__kstrtab_spk_var_show, ptr @__kstrtabns_spk_var_show }, section "___ksymtab_gpl+spk_var_show", align 4
@spk_var_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014overflow or parsing error has occurred\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spk_var_store\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/accessibility/speakup/kobjects.c\00", [55 x i8] zeroinitializer }, align 32
@spk_var_store._entry_ptr = internal global ptr @spk_var_store._entry, section ".printk_index", align 4
@spk_var_store._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014value for %s out of range, expect %d to %d\0A\00", [50 x i8] zeroinitializer }, align 32
@spk_var_store._entry_ptr.10 = internal global ptr @spk_var_store._entry.8, section ".printk_index", align 4
@synth = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@spk_var_store._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014value too long for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@spk_var_store._entry_ptr.15 = internal global ptr @spk_var_store._entry.13, section ".printk_index", align 4
@spk_var_store._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s unknown type %d\0A\00", [42 x i8] zeroinitializer }, align 32
@spk_var_store._entry_ptr.18 = internal global ptr @spk_var_store._entry.16, section ".printk_index", align 4
@spk_var_store._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s reset to default value\0A\00", [35 x i8] zeroinitializer }, align 32
@spk_var_store._entry_ptr.21 = internal global ptr @spk_var_store._entry.19, section ".printk_index", align 4
@__kstrtab_spk_var_store = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_var_store = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_var_store = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_var_store to i32), ptr @__kstrtab_spk_var_store, ptr @__kstrtabns_spk_var_store }, section "___ksymtab_gpl+spk_var_store", align 4
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"accessibility\00", [18 x i8] zeroinitializer }, align 32
@accessibility_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"speakup\00", [24 x i8] zeroinitializer }, align 32
@speakup_kobj = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@main_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @main_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@i18n_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.84, ptr null, ptr null, ptr @i18n_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@spk_reset_default_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.24, ptr @.str.7, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spk_reset_default_value\00", [40 x i8] zeroinitializer }, align 32
@spk_reset_default_value._entry_ptr = internal global ptr @spk_reset_default_value._entry, section ".printk_index", align 4
@main_attrs = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @keymap_attribute, ptr @silent_attribute, ptr @synth_attribute, ptr @synth_direct_attribute, ptr @version_attribute, ptr @delimiters_attribute, ptr @ex_num_attribute, ptr @punc_all_attribute, ptr @punc_most_attribute, ptr @punc_some_attribute, ptr @repeats_attribute, ptr @attrib_bleep_attribute, ptr @bell_pos_attribute, ptr @bleep_time_attribute, ptr @bleeps_attribute, ptr @cursor_time_attribute, ptr @key_echo_attribute, ptr @no_interrupt_attribute, ptr @punc_level_attribute, ptr @reading_punc_attribute, ptr @say_control_attribute, ptr @say_word_ctl_attribute, ptr @spell_delay_attribute, ptr null], [32 x i8] zeroinitializer }, align 32
@keymap_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @keymap_show, ptr @keymap_store }, [36 x i8] zeroinitializer }, align 32
@silent_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.41, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @silent_store }, [36 x i8] zeroinitializer }, align 32
@synth_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @synth_show, ptr @synth_store }, [36 x i8] zeroinitializer }, align 32
@synth_direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.52, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @synth_direct_store }, [36 x i8] zeroinitializer }, align 32
@version_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@delimiters_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @punc_show, ptr @punc_store }, [36 x i8] zeroinitializer }, align 32
@ex_num_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @punc_show, ptr @punc_store }, [36 x i8] zeroinitializer }, align 32
@punc_all_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @punc_show, ptr @punc_store }, [36 x i8] zeroinitializer }, align 32
@punc_most_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @punc_show, ptr @punc_store }, [36 x i8] zeroinitializer }, align 32
@punc_some_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @punc_show, ptr @punc_store }, [36 x i8] zeroinitializer }, align 32
@repeats_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @punc_show, ptr @punc_store }, [36 x i8] zeroinitializer }, align 32
@attrib_bleep_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@bell_pos_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@bleep_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@bleeps_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@cursor_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@key_echo_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@no_interrupt_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punc_level_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@reading_punc_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@say_control_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@say_word_ctl_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@spell_delay_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keymap\00", [25 x i8] zeroinitializer }, align 32
@spk_key_buf = external dso_local global [600 x i8], align 1
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d, %d, %d,\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d,\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0, %d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dDrR\00", [27 x i8] zeroinitializer }, align 32
@spk_key_defaults = external dso_local constant [0 x i8], align 1
@keymap_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016keymap set to default values\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keymap_store\00", [19 x i8] zeroinitializer }, align 32
@keymap_store._entry_ptr = internal global ptr @keymap_store._entry, section ".printk_index", align 4
@keymap_store._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.7, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014i %d %d %d %d\0A\00", [47 x i8] zeroinitializer }, align 32
@keymap_store._entry_ptr.34 = internal global ptr @keymap_store._entry.32, section ".printk_index", align 4
@keymap_store._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.7, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014end %d %d %d %d\0A\00", [45 x i8] zeroinitializer }, align 32
@keymap_store._entry_ptr.37 = internal global ptr @keymap_store._entry.35, section ".printk_index", align 4
@keymap_store._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.7, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\014set key failed\0A\00", [46 x i8] zeroinitializer }, align 32
@keymap_store._entry_ptr.40 = internal global ptr @keymap_store._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"silent\00", [25 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@silent_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.7, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014silent value '%c' not in range (0,7)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"silent_store\00", [19 x i8] zeroinitializer }, align 32
@silent_store._entry_ptr = internal global ptr @silent_store._entry, section ".printk_index", align 4
@speakup_console = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"synth\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@synth_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.7, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s already in use\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"synth_store\00", [20 x i8] zeroinitializer }, align 32
@synth_store._entry_ptr = internal global ptr @synth_store._entry, section ".printk_index", align 4
@synth_store._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.7, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014failed to init synth %s\0A\00", [37 x i8] zeroinitializer }, align 32
@synth_store._entry_ptr.51 = internal global ptr @synth_store._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"synth_direct\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Speakup version %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.1.6\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s synthesizer driver version %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delimiters\00", [21 x i8] zeroinitializer }, align 32
@punc_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.7, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014p_header is null, attr->attr.name is %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"punc_show\00", [22 x i8] zeroinitializer }, align 32
@punc_show._entry_ptr = internal global ptr @punc_show._entry, section ".printk_index", align 4
@punc_show._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.7, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014var is null, p_header->var_id is %i\0A\00", [57 x i8] zeroinitializer }, align 32
@punc_show._entry_ptr.63 = internal global ptr @punc_show._entry.61, section ".printk_index", align 4
@spk_punc_info = external dso_local local_unnamed_addr constant [0 x %struct.st_bits_data], align 4
@spk_chartab = external dso_local local_unnamed_addr global [0 x i16], align 2
@punc_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.64, ptr @.str.7, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"punc_store\00", [21 x i8] zeroinitializer }, align 32
@punc_store._entry_ptr = internal global ptr @punc_store._entry, section ".printk_index", align 4
@punc_store._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.64, ptr @.str.7, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@punc_store._entry_ptr.66 = internal global ptr @punc_store._entry.65, section ".printk_index", align 4
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ex_num\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"punc_all\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"punc_most\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"punc_some\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"repeats\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"attrib_bleep\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bell_pos\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bleep_time\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bleeps\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cursor_time\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key_echo\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_interrupt\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"punc_level\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reading_punc\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"say_control\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"say_word_ctl\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spell_delay\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i18n\00", [27 x i8] zeroinitializer }, align 32
@i18n_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @announcements_attribute, ptr @characters_attribute, ptr @chartab_attribute, ptr @ctl_keys_attribute, ptr @colors_attribute, ptr @formatted_attribute, ptr @function_names_attribute, ptr @key_names_attribute, ptr @states_attribute, ptr null], [56 x i8] zeroinitializer }, align 32
@announcements_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@characters_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chars_chartab_show, ptr @chars_chartab_store }, [36 x i8] zeroinitializer }, align 32
@chartab_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chars_chartab_show, ptr @chars_chartab_store }, [36 x i8] zeroinitializer }, align 32
@ctl_keys_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@colors_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@formatted_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@function_names_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@key_names_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@states_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"announcements\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d\09%s\0A\00", [25 x i8] zeroinitializer }, align 32
@report_msg_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.7, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016i18n messages from group %s reset to defaults\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"report_msg_status\00", [46 x i8] zeroinitializer }, align 32
@report_msg_status._entry_ptr = internal global ptr @report_msg_status._entry, section ".printk_index", align 4
@.str.89 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c" updated %d of %d i18n messages from group %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" with %d reject%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@report_msg_status._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.7, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@report_msg_status._entry_ptr.95 = internal global ptr @report_msg_status._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"characters\00", [21 x i8] zeroinitializer }, align 32
@spk_characters = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"B_CTL\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WDLM\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A_PUNC\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PUNC\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NUM\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A_CAP\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ALPHA\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"B_CAPSYM\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"B_SYM\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@spk_default_chars = external dso_local local_unnamed_addr global [0 x ptr], align 4
@report_char_chartab_status.object_type = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.107, ptr @.str.108], [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"character class entries\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"character descriptions\00", [41 x i8] zeroinitializer }, align 32
@report_char_chartab_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.7, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s reset to defaults\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"report_char_chartab_status\00", [37 x i8] zeroinitializer }, align 32
@report_char_chartab_status._entry_ptr = internal global ptr @report_char_chartab_status._entry, section ".printk_index", align 4
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" updated %d of %d %s\0A\00", [42 x i8] zeroinitializer }, align 32
@report_char_chartab_status._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.110, ptr @.str.7, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@report_char_chartab_status._entry_ptr.113 = internal global ptr @report_char_chartab_status._entry.112, section ".printk_index", align 4
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chartab\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctl_keys\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"colors\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"formatted\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"function_names\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"key_names\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"states\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.122 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 43, i64 45, i64 100, i64 114]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967211]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 8, i64 100, i64 114]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 32]
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 567, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 569, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 579, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 590, i32 21 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 655, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 658, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 671, i32 28 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 673, i32 28 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 688, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 692, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 699, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1017, i32 46 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"accessibility_kobj\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1001, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1023, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant [13 x i8] c"speakup_kobj\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 1002, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"main_attr_group\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 992, i32 37 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"i18n_attr_group\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 996, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 613, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"main_attrs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 946, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"keymap_attribute\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 869, i32 30 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"silent_attribute\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 871, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"synth_attribute\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 873, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant [23 x i8] c"synth_direct_attribute\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 875, i32 30 }
@___asan_gen_.222 = private unnamed_addr constant [18 x i8] c"version_attribute\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 877, i32 30 }
@___asan_gen_.225 = private unnamed_addr constant [21 x i8] c"delimiters_attribute\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 880, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"ex_num_attribute\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 882, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant [19 x i8] c"punc_all_attribute\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 884, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"punc_most_attribute\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 886, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"punc_some_attribute\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 888, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"repeats_attribute\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 890, i32 30 }
@___asan_gen_.243 = private unnamed_addr constant [23 x i8] c"attrib_bleep_attribute\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 893, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant [19 x i8] c"bell_pos_attribute\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 895, i32 30 }
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"bleep_time_attribute\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 897, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"bleeps_attribute\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 899, i32 30 }
@___asan_gen_.255 = private unnamed_addr constant [22 x i8] c"cursor_time_attribute\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 901, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"key_echo_attribute\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 903, i32 30 }
@___asan_gen_.261 = private unnamed_addr constant [23 x i8] c"no_interrupt_attribute\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 905, i32 30 }
@___asan_gen_.264 = private unnamed_addr constant [21 x i8] c"punc_level_attribute\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 907, i32 30 }
@___asan_gen_.267 = private unnamed_addr constant [23 x i8] c"reading_punc_attribute\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 909, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant [22 x i8] c"say_control_attribute\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 911, i32 30 }
@___asan_gen_.273 = private unnamed_addr constant [23 x i8] c"say_word_ctl_attribute\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 913, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant [22 x i8] c"spell_delay_attribute\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 915, i32 30 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 870, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 245, i32 20 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 253, i32 22 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 257, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 281, i32 13 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 283, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 301, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 315, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 321, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 872, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 348, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 874, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 377, i32 21 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 377, i32 29 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 401, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 403, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 876, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 432, i32 16 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 878, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 449, i32 20 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 449, i32 44 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 451, i32 21 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 881, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 472, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 479, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 514, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 521, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 883, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 885, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 887, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 889, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 891, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 894, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 896, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 898, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 900, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 902, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 904, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 906, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 908, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 910, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 912, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 914, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 916, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 998, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant [11 x i8] c"i18n_attrs\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 973, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant [24 x i8] c"announcements_attribute\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 921, i32 30 }
@___asan_gen_.462 = private unnamed_addr constant [21 x i8] c"characters_attribute\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 923, i32 30 }
@___asan_gen_.465 = private unnamed_addr constant [18 x i8] c"chartab_attribute\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 926, i32 30 }
@___asan_gen_.468 = private unnamed_addr constant [19 x i8] c"ctl_keys_attribute\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 929, i32 30 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"colors_attribute\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 931, i32 30 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c"formatted_attribute\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 933, i32 30 }
@___asan_gen_.477 = private unnamed_addr constant [25 x i8] c"function_names_attribute\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 935, i32 30 }
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c"key_names_attribute\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 937, i32 30 }
@___asan_gen_.483 = private unnamed_addr constant [17 x i8] c"states_attribute\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 939, i32 30 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 922, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 721, i32 45 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 737, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 741, i32 11 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 745, i32 6 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 746, i32 31 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 746, i32 37 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 747, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 924, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 49, i32 10 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 51, i32 10 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 53, i32 10 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 55, i32 10 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 57, i32 10 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 59, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 61, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 63, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 65, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 67, i32 10 }
@___asan_gen_.552 = private unnamed_addr constant [12 x i8] c"object_type\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 85, i32 21 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 86, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 87, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 93, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 96, i32 11 }
@___asan_gen_.573 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 102, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 927, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 930, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 932, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 934, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 936, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 938, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.595 = private constant [44 x i8] c"../drivers/accessibility/speakup/kobjects.c\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.595, i32 940, i32 2 }
@llvm.compiler.used = appending global [179 x ptr] [ptr @__ksymtab_spk_var_show, ptr @__ksymtab_spk_var_store, ptr @keymap_store._entry, ptr @keymap_store._entry.32, ptr @keymap_store._entry.35, ptr @keymap_store._entry.38, ptr @keymap_store._entry_ptr, ptr @keymap_store._entry_ptr.34, ptr @keymap_store._entry_ptr.37, ptr @keymap_store._entry_ptr.40, ptr @punc_show._entry, ptr @punc_show._entry.61, ptr @punc_show._entry_ptr, ptr @punc_show._entry_ptr.63, ptr @punc_store._entry, ptr @punc_store._entry.65, ptr @punc_store._entry_ptr, ptr @punc_store._entry_ptr.66, ptr @report_char_chartab_status._entry, ptr @report_char_chartab_status._entry.112, ptr @report_char_chartab_status._entry_ptr, ptr @report_char_chartab_status._entry_ptr.113, ptr @report_msg_status._entry, ptr @report_msg_status._entry.93, ptr @report_msg_status._entry_ptr, ptr @report_msg_status._entry_ptr.95, ptr @silent_store._entry, ptr @silent_store._entry_ptr, ptr @spk_reset_default_value._entry, ptr @spk_reset_default_value._entry_ptr, ptr @spk_var_store._entry, ptr @spk_var_store._entry.13, ptr @spk_var_store._entry.16, ptr @spk_var_store._entry.19, ptr @spk_var_store._entry.8, ptr @spk_var_store._entry_ptr, ptr @spk_var_store._entry_ptr.10, ptr @spk_var_store._entry_ptr.15, ptr @spk_var_store._entry_ptr.18, ptr @spk_var_store._entry_ptr.21, ptr @synth_store._entry, ptr @synth_store._entry.49, ptr @synth_store._entry_ptr, ptr @synth_store._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @accessibility_kobj, ptr @.str.23, ptr @speakup_kobj, ptr @main_attr_group, ptr @i18n_attr_group, ptr @.str.24, ptr @main_attrs, ptr @keymap_attribute, ptr @silent_attribute, ptr @synth_attribute, ptr @synth_direct_attribute, ptr @version_attribute, ptr @delimiters_attribute, ptr @ex_num_attribute, ptr @punc_all_attribute, ptr @punc_most_attribute, ptr @punc_some_attribute, ptr @repeats_attribute, ptr @attrib_bleep_attribute, ptr @bell_pos_attribute, ptr @bleep_time_attribute, ptr @bleeps_attribute, ptr @cursor_time_attribute, ptr @key_echo_attribute, ptr @no_interrupt_attribute, ptr @punc_level_attribute, ptr @reading_punc_attribute, ptr @say_control_attribute, ptr @say_word_ctl_attribute, ptr @spell_delay_attribute, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @i18n_attrs, ptr @announcements_attribute, ptr @characters_attribute, ptr @chartab_attribute, ptr @ctl_keys_attribute, ptr @colors_attribute, ptr @formatted_attribute, ptr @function_names_attribute, ptr @key_names_attribute, ptr @states_attribute, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @report_char_chartab_status.object_type, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_var_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_var_store._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_var_store._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_var_store._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_var_store._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accessibility_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i18n_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_reset_default_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_attrs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silent_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delimiters_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ex_num_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_all_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_most_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_some_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repeats_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attrib_bleep_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bell_pos_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bleep_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bleeps_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_echo_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_interrupt_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_level_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reading_punc_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @say_control_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @say_word_ctl_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spell_delay_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap_store._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap_store._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keymap_store._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silent_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_store._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_show._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punc_store._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i18n_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @announcements_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @characters_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chartab_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_keys_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @colors_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formatted_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @function_names_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_names_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @states_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_msg_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_msg_status._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_char_chartab_status.object_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_char_chartab_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @report_char_chartab_status._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_var_show(ptr nocapture readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call ptr @spk_var_header_by_name(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %data = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %var_type = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %var_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 0, label %do.body2.sw.bb_crit_edge
    i32 1, label %do.body2.sw.bb_crit_edge70
    i32 2, label %sw.bb12
  ]

do.body2.sw.bb_crit_edge70:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

do.body2.sw.bb_crit_edge:                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %do.body2.sw.bb_crit_edge, %do.body2.sw.bb_crit_edge70
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.var_t, ptr %3, i32 0, i32 1, i32 0, i32 7
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef %8)
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.1, i32 3)
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.body2
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %if.else31, label %if.then14

if.then14:                                        ; preds = %sw.bb12
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 34, ptr %buf, align 1
  %p_val = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %p_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_val, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not67 = icmp eq i8 %14, 0
  br i1 %tobool15.not67, label %if.then14.for.end_crit_edge, label %if.then14.for.body_crit_edge

if.then14.for.body_crit_edge:                     ; preds = %if.then14
  br label %for.body

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then14.for.body_crit_edge
  %15 = phi i8 [ %20, %for.inc.for.body_crit_edge ], [ %14, %if.then14.for.body_crit_edge ]
  %cp.069 = phi ptr [ %incdec.ptr28, %for.inc.for.body_crit_edge ], [ %12, %if.then14.for.body_crit_edge ]
  %cp1.068 = phi ptr [ %cp1.1, %for.inc.for.body_crit_edge ], [ %incdec.ptr, %if.then14.for.body_crit_edge ]
  %16 = add i8 %15, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %16)
  %17 = icmp ult i8 %16, 94
  br i1 %17, label %if.then22, label %if.else24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr23 = getelementptr i8, ptr %cp1.068, i32 1
  %18 = ptrtoint ptr %cp1.068 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %15, ptr %cp1.068, align 1
  br label %for.inc

if.else24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv16 = zext i8 %15 to i32
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %cp1.068, ptr noundef nonnull @.str.2, i32 noundef %conv16)
  %add.ptr = getelementptr i8, ptr %cp1.068, i32 %call26
  br label %for.inc

for.inc:                                          ; preds = %if.else24, %if.then22
  %cp1.1 = phi ptr [ %incdec.ptr23, %if.then22 ], [ %add.ptr, %if.else24 ]
  %incdec.ptr28 = getelementptr i8, ptr %cp.069, i32 1
  %19 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr28, align 1
  %tobool15.not = icmp eq i8 %20, 0
  br i1 %tobool15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then14.for.end_crit_edge
  %cp1.0.lcssa = phi ptr [ %incdec.ptr, %if.then14.for.end_crit_edge ], [ %cp1.1, %for.inc.for.end_crit_edge ]
  %incdec.ptr29 = getelementptr i8, ptr %cp1.0.lcssa, i32 1
  %21 = ptrtoint ptr %cp1.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 34, ptr %cp1.0.lcssa, align 1
  %incdec.ptr30 = getelementptr i8, ptr %cp1.0.lcssa, i32 2
  %22 = ptrtoint ptr %incdec.ptr29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %incdec.ptr29, align 1
  %23 = ptrtoint ptr %incdec.ptr30 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %incdec.ptr30, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr30 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %sw.epilog

if.else31:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 572656128, ptr %buf, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, ptr noundef %26, i32 noundef %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else31, %for.end, %if.else, %if.then8
  %rv.0 = phi i32 [ %call36, %sw.default ], [ %sub.ptr.sub, %for.end ], [ 3, %if.else31 ], [ %call9, %if.then8 ], [ 2, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_var_header_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_var_store(ptr nocapture readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !321
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call = tail call ptr @spk_var_header_by_name(ptr noundef %2) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = tail call i32 @string_unescape(ptr noundef %buf, ptr noundef %buf, i32 noundef 0, i32 noundef 15) #11
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %var_type = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %var_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %6, label %do.end111 [
    i32 0, label %if.end4.sw.bb_crit_edge
    i32 1, label %if.end4.sw.bb_crit_edge191
    i32 2, label %sw.bb71
  ]

if.end4.sw.bb_crit_edge191:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge191
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %9, label %if.else30 [
    i8 100, label %sw.bb.if.end32_crit_edge
    i8 114, label %sw.bb.if.end32_crit_edge192
    i8 0, label %sw.bb.if.end32_crit_edge193
    i8 43, label %sw.bb.if.then29_crit_edge
    i8 45, label %sw.bb.if.then29_crit_edge194
  ]

sw.bb.if.then29_crit_edge194:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

sw.bb.if.then29_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

sw.bb.if.end32_crit_edge193:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.bb.if.end32_crit_edge192:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.bb.if.end32_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %sw.bb.if.then29_crit_edge, %sw.bb.if.then29_crit_edge194
  br label %if.end32

if.else30:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then29, %sw.bb.if.end32_crit_edge, %sw.bb.if.end32_crit_edge192, %sw.bb.if.end32_crit_edge193
  %len.0 = phi i32 [ 2, %if.then29 ], [ 1, %if.else30 ], [ 0, %sw.bb.if.end32_crit_edge ], [ 0, %sw.bb.if.end32_crit_edge192 ], [ 0, %sw.bb.if.end32_crit_edge193 ]
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp eq i32 %call.i, 0
  br i1 %cmp34, label %if.end44, label %if.end44.thread

if.end44.thread:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  br label %if.end56

if.end44:                                         ; preds = %if.end32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %call37 = call i32 @spk_set_num_var(i32 noundef %12, ptr noundef nonnull %call, i32 noundef %len.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -34, i32 %call37)
  %cmp45 = icmp eq i32 %call37, -34
  br i1 %cmp45, label %if.then47, label %if.end44.if.end56_crit_edge

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  %low = getelementptr inbounds %struct.var_t, ptr %14, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %low, align 4
  %high = getelementptr inbounds %struct.var_t, ptr %14, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %high to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %high, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %16, i32 noundef %18, i32 noundef %20) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then47, %if.end44.if.end56_crit_edge, %if.end44.thread
  %ret.0186 = phi i32 [ 0, %if.end44.thread ], [ -34, %if.then47 ], [ %call37, %if.end44.if.end56_crit_edge ]
  %var_id = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %var_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %var_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %22)
  %cmp57 = icmp eq i32 %22, 33
  br i1 %cmp57, label %land.lhs.true, label %if.end56.sw.epilog_crit_edge

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %23 = load ptr, ptr @synth, align 4
  %tobool59.not = icmp eq ptr %23, null
  br i1 %tobool59.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true60

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true60:                                  ; preds = %land.lhs.true
  %24 = zext i32 %ret.0186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %ret.0186, label %land.lhs.true60.sw.epilog.thread_crit_edge [
    i32 0, label %land.lhs.true60.if.then66_crit_edge
    i32 -85, label %land.lhs.true60.if.then66_crit_edge195
  ]

land.lhs.true60.if.then66_crit_edge195:           ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

land.lhs.true60.if.then66_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66

land.lhs.true60.sw.epilog.thread_crit_edge:       ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread

if.then66:                                        ; preds = %land.lhs.true60.if.then66_crit_edge, %land.lhs.true60.if.then66_crit_edge195
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %value69 = getelementptr inbounds %struct.var_t, ptr %26, i32 0, i32 1, i32 0, i32 7
  %27 = ptrtoint ptr %value69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value69, align 4
  %29 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %value, align 4
  %default_pitch = getelementptr inbounds %struct.spk_synth, ptr %23, i32 0, i32 18
  %30 = ptrtoint ptr %default_pitch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %default_pitch, align 4
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %if.then66.spk_reset_default_value.exit_crit_edge, label %if.then.i

if.then66.spk_reset_default_value.exit_crit_edge: ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #13
  br label %spk_reset_default_value.exit

if.then.i:                                        ; preds = %if.then66
  %call.i171 = call ptr @spk_var_header_by_name(ptr noundef nonnull @.str.11) #11
  %tobool2.not.i = icmp eq ptr %call.i171, null
  br i1 %tobool2.not.i, label %if.then.i.spk_reset_default_value.exit_crit_edge, label %if.then3.i

if.then.i.spk_reset_default_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spk_reset_default_value.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr i32, ptr %31, i32 %28
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %call4.i = call i32 @spk_set_num_var(i32 noundef %33, ptr noundef nonnull %call.i171, i32 noundef 4) #11
  %call5.i = call i32 @spk_set_num_var(i32 noundef 0, ptr noundef nonnull %call.i171, i32 noundef 0) #11
  %34 = ptrtoint ptr %call.i171 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i171, align 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %35) #14
  br label %spk_reset_default_value.exit

spk_reset_default_value.exit:                     ; preds = %if.then3.i, %if.then.i.spk_reset_default_value.exit_crit_edge, %if.then66.spk_reset_default_value.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %36 = load ptr, ptr @synth, align 4
  %default_vol = getelementptr inbounds %struct.spk_synth, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %default_vol to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %default_vol, align 4
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value, align 4
  %tobool.not.i172 = icmp eq ptr %36, null
  %tobool1.not.i173 = icmp eq ptr %38, null
  %or.cond.i174 = or i1 %tobool.not.i172, %tobool1.not.i173
  br i1 %or.cond.i174, label %spk_reset_default_value.exit.sw.epilog_crit_edge, label %if.then.i177

spk_reset_default_value.exit.sw.epilog_crit_edge: ; preds = %spk_reset_default_value.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i177:                                     ; preds = %spk_reset_default_value.exit
  %call.i175 = call ptr @spk_var_header_by_name(ptr noundef nonnull @.str.12) #11
  %tobool2.not.i176 = icmp eq ptr %call.i175, null
  br i1 %tobool2.not.i176, label %if.then.i177.sw.epilog_crit_edge, label %if.then3.i182

if.then.i177.sw.epilog_crit_edge:                 ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then3.i182:                                    ; preds = %if.then.i177
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i178 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i178, align 4
  %call4.i179 = call i32 @spk_set_num_var(i32 noundef %42, ptr noundef nonnull %call.i175, i32 noundef 4) #11
  %call5.i180 = call i32 @spk_set_num_var(i32 noundef 0, ptr noundef nonnull %call.i175, i32 noundef 0) #11
  %43 = ptrtoint ptr %call.i175 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i175, align 4
  %call6.i181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %44) #14
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end4
  %call72 = tail call i32 @strlen(ptr noundef %buf) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp sgt i32 %call72, 0
  br i1 %cmp73, label %if.end80, label %sw.bb71.if.end96_crit_edge

sw.bb71.if.end96_crit_edge:                       ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.end80:                                         ; preds = %sw.bb71
  %sub = add nsw i32 %call72, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %46)
  %cmp77 = icmp eq i8 %46, 10
  %spec.select = select i1 %cmp77, i32 %sub, i32 %call72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp81 = icmp ugt i32 %spec.select, 1
  br i1 %cmp81, label %land.lhs.true83, label %if.end80.if.end96_crit_edge

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

land.lhs.true83:                                  ; preds = %if.end80
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %48)
  %cmp86 = icmp eq i8 %48, 34
  br i1 %cmp86, label %land.lhs.true88, label %land.lhs.true83.if.end96_crit_edge

land.lhs.true83.if.end96_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

land.lhs.true88:                                  ; preds = %land.lhs.true83
  %sub89 = add nsw i32 %spec.select, -1
  %arrayidx90 = getelementptr i8, ptr %buf, i32 %sub89
  %49 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %50)
  %cmp92 = icmp eq i8 %50, 34
  br i1 %cmp92, label %if.then94, label %land.lhs.true88.if.end96_crit_edge

land.lhs.true88.if.end96_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then94:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %buf, i32 1
  %sub95 = add nsw i32 %spec.select, -2
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %land.lhs.true88.if.end96_crit_edge, %land.lhs.true83.if.end96_crit_edge, %if.end80.if.end96_crit_edge, %sw.bb71.if.end96_crit_edge
  %cp.0 = phi ptr [ %incdec.ptr, %if.then94 ], [ %buf, %land.lhs.true88.if.end96_crit_edge ], [ %buf, %land.lhs.true83.if.end96_crit_edge ], [ %buf, %if.end80.if.end96_crit_edge ], [ %buf, %sw.bb71.if.end96_crit_edge ]
  %len.2 = phi i32 [ %sub95, %if.then94 ], [ %spec.select, %land.lhs.true88.if.end96_crit_edge ], [ %spec.select, %land.lhs.true83.if.end96_crit_edge ], [ %spec.select, %if.end80.if.end96_crit_edge ], [ %call72, %sw.bb71.if.end96_crit_edge ]
  %arrayidx97 = getelementptr i8, ptr %cp.0, i32 %len.2
  %51 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx97, align 1
  %call98 = tail call i32 @spk_set_string_var(ptr noundef %cp.0, ptr noundef nonnull %call, i32 noundef %len.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %call98)
  %cmp99 = icmp eq i32 %call98, -7
  br i1 %cmp99, label %do.end104, label %if.end96.sw.epilog_crit_edge

if.end96.sw.epilog_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end104:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %53) #14
  br label %sw.epilog.thread

do.end111:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %55, i32 noundef %6) #14
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end111, %do.end104, %land.lhs.true60.sw.epilog.thread_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call8) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end96.sw.epilog_crit_edge, %if.then3.i182, %if.then.i177.sw.epilog_crit_edge, %spk_reset_default_value.exit.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %if.end56.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %call98, %if.end96.sw.epilog_crit_edge ], [ %ret.0186, %land.lhs.true.sw.epilog_crit_edge ], [ %ret.0186, %if.end56.sw.epilog_crit_edge ], [ %ret.0186, %spk_reset_default_value.exit.sw.epilog_crit_edge ], [ %ret.0186, %if.then.i177.sw.epilog_crit_edge ], [ %ret.0186, %if.then3.i182 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -85, i32 %ret.1)
  %cmp116 = icmp eq i32 %ret.1, -85
  br i1 %cmp116, label %do.end121, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end121:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call, align 4
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %57) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end121, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %count, %do.end121 ], [ %count, %sw.epilog.cleanup_crit_edge ], [ %count, %sw.epilog.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_set_num_var(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_set_string_var(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @speakup_kobj_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.22, ptr noundef null) #11
  store ptr %call, ptr @accessibility_kobj, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.23, ptr noundef nonnull %call) #11
  store ptr %call2, ptr @speakup_kobj, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_acc_crit_edge, label %if.end5

if.end.err_acc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_acc

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call2, ptr noundef nonnull @main_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_speakup_crit_edge

if.end5.err_speakup_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_speakup

if.end9:                                          ; preds = %if.end5
  %0 = load ptr, ptr @speakup_kobj, align 4
  %call10 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @i18n_attr_group) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %err_group

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

err_group:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @speakup_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @main_attr_group) #11
  br label %err_speakup

err_speakup:                                      ; preds = %err_group, %if.end5.err_speakup_crit_edge
  %retval1.0 = phi i32 [ %call6, %if.end5.err_speakup_crit_edge ], [ %call10, %err_group ]
  %2 = load ptr, ptr @speakup_kobj, align 4
  tail call void @kobject_put(ptr noundef %2) #11
  br label %err_acc

err_acc:                                          ; preds = %err_speakup, %if.end.err_acc_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %err_speakup ], [ -12, %if.end.err_acc_crit_edge ]
  %3 = load ptr, ptr @accessibility_kobj, align 4
  tail call void @kobject_put(ptr noundef %3) #11
  br label %out

out:                                              ; preds = %err_acc, %if.end9.out_crit_edge, %entry.out_crit_edge
  %retval1.2 = phi i32 [ %retval1.1, %err_acc ], [ 0, %if.end9.out_crit_edge ], [ -12, %entry.out_crit_edge ]
  ret i32 %retval1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @speakup_kobj_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @speakup_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @i18n_attr_group) #11
  %1 = load ptr, ptr @speakup_kobj, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @main_attr_group) #11
  %2 = load ptr, ptr @speakup_kobj, align 4
  tail call void @kobject_put(ptr noundef %2) #11
  %3 = load ptr, ptr @accessibility_kobj, align 4
  tail call void @kobject_put(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_unescape(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keymap_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([600 x i8], ptr @spk_key_buf, i32 0, i32 64) to i32))
  %0 = load i8, ptr getelementptr inbounds ([600 x i8], ptr @spk_key_buf, i32 0, i32 64), align 1
  %conv5 = zext i8 %0 to i32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([600 x i8], ptr @spk_key_buf, i32 0, i32 65) to i32))
  %1 = load i8, ptr getelementptr inbounds ([600 x i8], ptr @spk_key_buf, i32 0, i32 65), align 1
  %conv6 = zext i8 %1 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef 119, i32 noundef %conv5, i32 noundef %conv6)
  %add.ptr = getelementptr i8, ptr %buf, i32 %call7
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc22.for.cond11.preheader_crit_edge, %entry
  %cp.049 = phi ptr [ %add.ptr, %entry ], [ %incdec.ptr21, %for.inc22.for.cond11.preheader_crit_edge ]
  %cp1.048 = phi ptr [ getelementptr inbounds ([600 x i8], ptr @spk_key_buf, i32 0, i32 66), %entry ], [ %incdec.ptr, %for.inc22.for.cond11.preheader_crit_edge ]
  %n.047 = phi i32 [ 0, %entry ], [ %inc23, %for.inc22.for.cond11.preheader_crit_edge ]
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.cond11.preheader
  %cp.146 = phi ptr [ %cp.049, %for.cond11.preheader ], [ %incdec.ptr21, %for.body14.for.body14_crit_edge ]
  %cp1.145 = phi ptr [ %cp1.048, %for.cond11.preheader ], [ %incdec.ptr, %for.body14.for.body14_crit_edge ]
  %i.044 = phi i32 [ 0, %for.cond11.preheader ], [ %inc, %for.body14.for.body14_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %cp1.145, i32 1
  %2 = ptrtoint ptr %cp1.145 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cp1.145, align 1
  %conv15 = zext i8 %3 to i32
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %cp.146, ptr noundef nonnull @.str.27, i32 noundef %conv15)
  %add.ptr17 = getelementptr i8, ptr %cp.146, i32 %call16
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044, i32 %conv6)
  %cmp18 = icmp ult i32 %i.044, %conv6
  %conv20 = select i1 %cmp18, i8 32, i8 10
  %incdec.ptr21 = getelementptr i8, ptr %add.ptr17, i32 1
  %4 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv20, ptr %add.ptr17, align 1
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond = icmp eq i32 %i.044, %conv6
  br i1 %exitcond, label %for.inc22, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.inc22:                                        ; preds = %for.body14
  %inc23 = add nuw nsw i32 %n.047, 1
  %exitcond50 = icmp eq i32 %n.047, %conv5
  br i1 %exitcond50, label %for.end24, label %for.inc22.for.cond11.preheader_crit_edge

for.inc22.for.cond11.preheader_crit_edge:         ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond11.preheader

for.end24:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr21, ptr noundef nonnull @.str.28, i32 noundef 119)
  %add.ptr26 = getelementptr i8, ptr %incdec.ptr21, i32 %call25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr26 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keymap_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %add = add i32 %count, 1
  %call5 = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %add, i32 noundef 2592) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call5, align 1
  %conv6 = zext i8 %1 to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.29, i32 %conv6, i32 5) #15
  %tobool8.not = icmp eq ptr %memchr, null
  br i1 %tobool8.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 @spk_set_key_info(ptr noundef nonnull @spk_key_defaults, ptr noundef nonnull @spk_key_buf) #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #14
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  %sub = add i32 %count, -1
  %arrayidx = getelementptr i8, ptr %call5, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp18 = icmp eq i8 %3, 10
  br i1 %cmp18, label %if.then20, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %call26 = tail call ptr @spk_s2uchar(ptr noundef nonnull %call5, ptr noundef nonnull %call5) #11
  %incdec.ptr = getelementptr i8, ptr %call5, i32 1
  %call26.1 = tail call ptr @spk_s2uchar(ptr noundef %call26, ptr noundef %incdec.ptr) #11
  %incdec.ptr.1 = getelementptr i8, ptr %call5, i32 2
  %call26.2 = tail call ptr @spk_s2uchar(ptr noundef %call26.1, ptr noundef %incdec.ptr.1) #11
  %arrayidx27 = getelementptr i8, ptr %call5, i32 1
  %5 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %6 to i32
  %add29 = add nuw nsw i32 %conv28, 1
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1, align 1
  %conv31 = zext i8 %8 to i32
  %add32 = add nuw nsw i32 %conv31, 1
  %mul = mul nuw nsw i32 %add32, %add29
  %add33 = add nuw nsw i32 %mul, 2
  %9 = ptrtoint ptr %call5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %10)
  %cmp36.not = icmp ne i8 %10, 119
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp40 = icmp ugt i8 %8, 10
  %or.cond = select i1 %cmp36.not, i1 true, i1 %cmp40
  call void @__sanitizer_cov_trace_const_cmp4(i32 529, i32 %mul)
  %cmp45 = icmp ugt i32 %mul, 529
  %or.cond148 = select i1 %or.cond, i1 true, i1 %cmp45
  br i1 %or.cond148, label %do.end50, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end23
  %incdec.ptr.2 = getelementptr i8, ptr %call5, i32 3
  br label %while.cond

do.end50:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %conv53 = zext i8 %10 to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %add33, i32 noundef %conv53, i32 noundef %conv28, i32 noundef %conv31) #14
  br label %cleanup.sink.split

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %cp1.1 = phi ptr [ %incdec.ptr63, %while.body.while.cond_crit_edge ], [ %incdec.ptr.2, %while.cond.preheader ]
  %cp.1 = phi ptr [ %call62, %while.body.while.cond_crit_edge ], [ %call26.2, %while.cond.preheader ]
  %i.1 = phi i32 [ %dec, %while.body.while.cond_crit_edge ], [ %add33, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp60 = icmp sgt i32 %i.1, 0
  br i1 %cmp60, label %while.body, label %while.cond.if.then79_crit_edge

while.cond.if.then79_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %i.1, -1
  %call62 = tail call ptr @spk_s2uchar(ptr noundef %cp.1, ptr noundef %cp1.1) #11
  %incdec.ptr63 = getelementptr i8, ptr %cp1.1, i32 1
  %11 = ptrtoint ptr %call62 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call62, align 1
  %tobool64.not = icmp eq i8 %12, 0
  br i1 %tobool64.not, label %while.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp67.not = icmp eq i32 %dec, 0
  br i1 %cmp67.not, label %lor.lhs.false69, label %while.end.if.then79_crit_edge

while.end.if.then79_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

lor.lhs.false69:                                  ; preds = %while.end
  %13 = ptrtoint ptr %cp1.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cp1.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %14)
  %cmp72.not = icmp eq i8 %14, 119
  br i1 %cmp72.not, label %lor.lhs.false74, label %lor.lhs.false69.if.then79_crit_edge

lor.lhs.false69.if.then79_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

lor.lhs.false74:                                  ; preds = %lor.lhs.false69
  %arrayidx75 = getelementptr i8, ptr %cp1.1, i32 -1
  %15 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp77.not = icmp eq i8 %16, 0
  br i1 %cmp77.not, label %if.else, label %lor.lhs.false74.if.then79_crit_edge

lor.lhs.false74.if.then79_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false74.if.then79_crit_edge, %lor.lhs.false69.if.then79_crit_edge, %while.end.if.then79_crit_edge, %while.cond.if.then79_crit_edge
  %dec159 = phi i32 [ 0, %lor.lhs.false74.if.then79_crit_edge ], [ 0, %lor.lhs.false69.if.then79_crit_edge ], [ %dec, %while.end.if.then79_crit_edge ], [ -1, %while.cond.if.then79_crit_edge ]
  %cp1.2151 = phi ptr [ %incdec.ptr63, %lor.lhs.false74.if.then79_crit_edge ], [ %incdec.ptr63, %lor.lhs.false69.if.then79_crit_edge ], [ %incdec.ptr63, %while.end.if.then79_crit_edge ], [ %cp1.1, %while.cond.if.then79_crit_edge ]
  %arrayidx84 = getelementptr i8, ptr %cp1.2151, i32 -3
  %17 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %18 to i32
  %arrayidx86 = getelementptr i8, ptr %cp1.2151, i32 -2
  %19 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %20 to i32
  %arrayidx88 = getelementptr i8, ptr %cp1.2151, i32 -1
  %21 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %22 to i32
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %dec159, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv89) #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false74
  %call91 = tail call i32 @spk_set_key_info(ptr noundef nonnull %call5, ptr noundef nonnull @spk_key_buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.else.cleanup.sink.split_crit_edge, label %if.then93

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call94 = tail call i32 @spk_set_key_info(ptr noundef nonnull @spk_key_defaults, ptr noundef nonnull @spk_key_buf) #11
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then93, %if.else.cleanup.sink.split_crit_edge, %if.then79, %do.end50, %if.then9
  %retval.0.ph = phi i32 [ -22, %do.end50 ], [ %count, %if.then9 ], [ -22, %if.then79 ], [ -22, %if.then93 ], [ %count, %if.else.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call5) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_set_key_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_s2uchar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @silent_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strlen(ptr noundef %buf) #15
  %3 = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %if.end6, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end6:                                          ; preds = %entry
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %6)
  %cmp3 = icmp eq i8 %6, 10
  %narrow = select i1 %cmp3, i8 48, i8 %6
  %phi.cast = zext i8 %narrow to i32
  %7 = add i8 %narrow, -56
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %7)
  %8 = icmp ult i8 %7, -8
  br i1 %8, label %if.end6.do.end_crit_edge, label %do.body18

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %entry.do.end_crit_edge
  %ch.078 = phi i32 [ %phi.cast, %if.end6.do.end_crit_edge ], [ 0, %entry.do.end_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %ch.078) #14
  br label %cleanup

do.body18:                                        ; preds = %if.end6
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %and = and i32 %phi.cast, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body18.if.end30_crit_edge, label %if.then29

do.body18.if.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_do_flush() #11
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %do.body18.if.end30_crit_edge
  %shut.0 = phi i8 [ 1, %if.then29 ], [ 0, %do.body18.if.end30_crit_edge ]
  %and32 = shl i8 %narrow, 4
  %9 = and i8 %and32, 64
  %10 = or i8 %shut.0, %9
  %and39 = and i32 %phi.cast, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else47, label %if.then41

if.then41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %12 to i32
  %arrayidx43 = getelementptr [0 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx43, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shut_up, align 1
  %or4572 = or i8 %16, %10
  store i8 %or4572, ptr %shut_up, align 1
  br label %if.end56

if.else47:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i8 %10, -1
  %vc_num49 = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %vc_num49 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vc_num49, align 4
  %idxprom50 = zext i16 %18 to i32
  %arrayidx51 = getelementptr [0 x ptr], ptr @speakup_console, i32 0, i32 %idxprom50
  %19 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx51, align 4
  %shut_up52 = getelementptr inbounds %struct.st_spk_t, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %shut_up52 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shut_up52, align 1
  %and54 = and i8 %22, %neg
  store i8 %and54, ptr %shut_up52, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.else47, %if.then41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call23) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_do_flush() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %0 = load ptr, ptr @synth, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.spk_synth, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.45, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %rv.0 = phi i32 [ %call1, %if.else ], [ %call, %if.then ]
  ret i32 %rv.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %new_synth_name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %new_synth_name) #11
  %0 = call ptr @memset(ptr %new_synth_name, i32 255, i32 10)
  %call = tail call i32 @strlen(ptr noundef %buf) #15
  %1 = add i32 %call, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %1)
  %2 = icmp ult i32 %1, -8
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr %new_synth_name, ptr %buf, i32 %call)
  %sub = add nsw i32 %call, -1
  %arrayidx = getelementptr [10 x i8], ptr %new_synth_name, i32 0, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %5)
  %cmp2 = icmp eq i8 %5, 10
  %spec.select = select i1 %cmp2, i32 %sub, i32 %call
  %arrayidx6 = getelementptr [10 x i8], ptr %new_synth_name, i32 0, i32 %spec.select
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx6, align 1
  %call8 = call ptr @spk_strlwr(ptr noundef nonnull %new_synth_name) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %7 = load ptr, ptr @synth, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %name = getelementptr inbounds %struct.spk_synth, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call10 = call i32 @strcmp(ptr noundef nonnull %new_synth_name, ptr noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call16 = call i32 @synth_init(ptr noundef nonnull %new_synth_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.47, %land.lhs.true.cleanup.sink.split_crit_edge ], [ @.str.50, %if.else.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %count, %land.lhs.true.cleanup.sink.split_crit_edge ], [ -19, %if.else.cleanup.sink.split_crit_edge ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.47.sink, ptr noundef nonnull %new_synth_name) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %new_synth_name) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_strlwr(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_direct_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp) #11
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %1 = load ptr, ptr @synth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef %buf) #15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp729 = icmp sgt i32 %call, 0
  br i1 %cmp729, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %len.031 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %call, %if.end.while.body_crit_edge ]
  %ptr.030 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %buf, %if.end.while.body_crit_edge ]
  %2 = call i32 @llvm.umin.i32(i32 %len.031, i32 250)
  %call12 = call ptr @strncpy(ptr noundef nonnull %tmp, ptr noundef %ptr.030, i32 noundef %2)
  %arrayidx = getelementptr [256 x i8], ptr %tmp, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %call.i.i = call i32 @string_unescape(ptr noundef nonnull %tmp, ptr noundef nonnull %tmp, i32 noundef 0, i32 noundef 15) #11
  call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.53, ptr noundef nonnull %tmp) #11
  %add.ptr = getelementptr i8, ptr %ptr.030, i32 %2
  %sub = sub nsw i32 %len.031, %2
  %cmp7 = icmp sgt i32 %sub, 0
  br i1 %cmp7, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %while.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56)
  %add.ptr = getelementptr i8, ptr %buf, i32 %call
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %0 = load ptr, ptr @synth, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.spk_synth, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %version = getelementptr inbounds %struct.spk_synth, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %version, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.57, ptr noundef %2, ptr noundef %4)
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %call1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cp.0 = phi ptr [ %add.ptr2, %if.then ], [ %add.ptr, %entry.if.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @punc_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call ptr @spk_var_header_by_name(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %var_id = getelementptr inbounds %struct.st_var_header, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %var_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var_id, align 4
  %call5 = tail call ptr @spk_get_punc_var(i32 noundef %5) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end10, label %do.body16

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %var_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %var_id, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %7) #14
  br label %cleanup

do.body16:                                        ; preds = %if.end
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %value = getelementptr inbounds %struct.punc_var_t, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %value, align 4
  %idxprom = sext i16 %9 to i32
  %mask24 = getelementptr [0 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %mask24 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mask24, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body16
  %i.050 = phi i32 [ 33, %do.body16 ], [ %inc, %for.inc.for.body_crit_edge ]
  %cp.049 = phi ptr [ %buf, %do.body16 ], [ %cp.1, %for.inc.for.body_crit_edge ]
  %arrayidx27 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %i.050
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx27, align 2
  %and53 = and i16 %13, %11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and53)
  %tobool30.not = icmp eq i16 %and53, 0
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.end32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv33 = trunc i32 %i.050 to i8
  %incdec.ptr = getelementptr i8, ptr %cp.049, i32 1
  %14 = ptrtoint ptr %cp.049 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv33, ptr %cp.049, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %for.body.for.inc_crit_edge
  %cp.1 = phi ptr [ %incdec.ptr, %if.end32 ], [ %cp.049, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call19) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end10, %do.end
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end ], [ -22, %do.end10 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @punc_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %punc_buf = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %punc_buf) #11
  %0 = call ptr @memset(ptr %punc_buf, i32 255, i32 100)
  %call = tail call i32 @strlen(ptr noundef %buf) #15
  %1 = add i32 %call, -100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -99, i32 %1)
  %2 = icmp ult i32 %1, -99
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call3 = tail call ptr @spk_var_header_by_name(ptr noundef %4) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %6) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %var_id = getelementptr inbounds %struct.st_var_header, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %var_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %var_id, align 4
  %call9 = tail call ptr @spk_get_punc_var(i32 noundef %8) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %var_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %var_id, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %10) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %11 = call ptr @memcpy(ptr %punc_buf, ptr %buf, i32 %call)
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end18
  %x.0 = phi i32 [ %call, %if.end18 ], [ %sub, %land.rhs.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0)
  %tobool19.not = icmp eq i32 %x.0, 0
  br i1 %tobool19.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %sub = add i32 %x.0, -1
  %arrayidx = getelementptr [100 x i8], ptr %punc_buf, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %cmp20 = icmp eq i8 %13, 10
  br i1 %cmp20, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %arrayidx22 = getelementptr [100 x i8], ptr %punc_buf, i32 0, i32 %x.0
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx22, align 1
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %15 = ptrtoint ptr %punc_buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %punc_buf, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %16, label %if.else [
    i8 100, label %while.end.if.then43_crit_edge
    i8 114, label %while.end.if.then43_crit_edge67
  ]

while.end.if.then43_crit_edge67:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

while.end.if.then43_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then43:                                        ; preds = %while.end.if.then43_crit_edge, %while.end.if.then43_crit_edge67
  %value = getelementptr inbounds %struct.punc_var_t, ptr %call9, i32 0, i32 1
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %value, align 4
  %conv44 = sext i16 %19 to i32
  %call45 = tail call i32 @spk_set_mask_bits(ptr noundef null, i32 noundef %conv44, i32 noundef 3) #11
  br label %if.end50

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %value47 = getelementptr inbounds %struct.punc_var_t, ptr %call9, i32 0, i32 1
  %20 = ptrtoint ptr %value47 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %value47, align 4
  %conv48 = sext i16 %21 to i32
  %call49 = call i32 @spk_set_mask_bits(ptr noundef nonnull %punc_buf, i32 noundef %conv48, i32 noundef 3) #11
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then43
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call29) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end50 ], [ -22, %do.end14 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %punc_buf) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_get_punc_var(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_set_mask_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @message_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call ptr @spk_find_msg_group(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.body27, !prof !322

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 846, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

do.body27:                                        ; preds = %entry
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %start = getelementptr inbounds %struct.msg_group_t, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.msg_group_t, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not14.i = icmp ugt i32 %3, %5
  br i1 %cmp.not14.i, label %do.body27.message_show_helper.exit_crit_edge, label %do.body27.if.end.i_crit_edge

do.body27.if.end.i_crit_edge:                     ; preds = %do.body27
  br label %if.end.i

do.body27.message_show_helper.exit_crit_edge:     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %message_show_helper.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %do.body27.if.end.i_crit_edge
  %index.018.i = phi i32 [ %inc3.i, %if.end.i.if.end.i_crit_edge ], [ 0, %do.body27.if.end.i_crit_edge ]
  %cursor.017.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ %3, %do.body27.if.end.i_crit_edge ]
  %buf_pointer.016.i = phi ptr [ %add.ptr.i, %if.end.i.if.end.i_crit_edge ], [ %buf, %do.body27.if.end.i_crit_edge ]
  %bufsize.015.i = phi i32 [ %sub.i, %if.end.i.if.end.i_crit_edge ], [ 4096, %do.body27.if.end.i_crit_edge ]
  %call.i = tail call ptr @spk_msg_get(i32 noundef %cursor.017.i) #11
  %call2.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf_pointer.016.i, i32 noundef %bufsize.015.i, ptr noundef nonnull @.str.86, i32 noundef %index.018.i, ptr noundef %call.i) #11
  %add.ptr.i = getelementptr i8, ptr %buf_pointer.016.i, i32 %call2.i
  %sub.i = sub i32 %bufsize.015.i, %call2.i
  %inc.i = add i32 %cursor.017.i, 1
  %inc3.i = add i32 %index.018.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %5)
  %cmp.not.i = icmp ugt i32 %inc.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %cmp1.i = icmp ult i32 %sub.i, 2
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp1.i
  br i1 %or.cond.i, label %if.end.i.message_show_helper.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.message_show_helper.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %message_show_helper.exit

message_show_helper.exit:                         ; preds = %if.end.i.message_show_helper.exit_crit_edge, %do.body27.message_show_helper.exit_crit_edge
  %buf_pointer.0.lcssa.i = phi ptr [ %buf, %do.body27.message_show_helper.exit_crit_edge ], [ %add.ptr.i, %if.end.i.message_show_helper.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %buf_pointer.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call30) #11
  br label %cleanup

cleanup:                                          ; preds = %message_show_helper.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %sub.ptr.sub.i, %message_show_helper.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @message_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %buf.i.i = alloca [160 x i8], align 1
  %temp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call ptr @spk_find_msg_group(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !322

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 860, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %count
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #11
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %temp.i, align 4
  %start.i = getelementptr inbounds %struct.msg_group_t, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start.i, align 4
  %end2.i = getelementptr inbounds %struct.msg_group_t, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %end2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end2.i, align 4
  %cmp136149.i = icmp ugt ptr %add.ptr.i, %buf
  br i1 %cmp136149.i, label %while.cond3.preheader.lr.ph.preheader.i, label %if.else.i.thread.i

if.else.i.thread.i:                               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %buf.i.i) #11
  br label %message_store_helper.exit

while.cond3.preheader.lr.ph.preheader.i:          ; preds = %if.end24
  %buf170.i = ptrtoint ptr %buf to i32
  %7 = add i32 %buf170.i, %count
  br label %while.cond3.preheader.lr.ph.i

while.cond3.preheader.lr.ph.i:                    ; preds = %if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge, %while.cond3.preheader.lr.ph.preheader.i
  %rejected.0.ph153.i = phi i32 [ %rejected.0139.i, %if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge ], [ 0, %while.cond3.preheader.lr.ph.preheader.i ]
  %used.0.ph152.i = phi i32 [ %inc62.i, %if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge ], [ 0, %while.cond3.preheader.lr.ph.preheader.i ]
  %received.0.ph151.i = phi i32 [ %inc.i, %if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge ], [ 0, %while.cond3.preheader.lr.ph.preheader.i ]
  %cp.0.ph150.i = phi ptr [ %add.ptr63.i, %if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge ], [ %buf, %while.cond3.preheader.lr.ph.preheader.i ]
  br label %while.cond3.preheader.i

while.cond3.preheader.i:                          ; preds = %while.cond.backedge.i.while.cond3.preheader.i_crit_edge, %while.cond3.preheader.lr.ph.i
  %rejected.0139.i = phi i32 [ %rejected.0.ph153.i, %while.cond3.preheader.lr.ph.i ], [ %rejected.0.be.i, %while.cond.backedge.i.while.cond3.preheader.i_crit_edge ]
  %received.0138.i = phi i32 [ %received.0.ph151.i, %while.cond3.preheader.lr.ph.i ], [ %inc.i, %while.cond.backedge.i.while.cond3.preheader.i_crit_edge ]
  %cp.0137.i = phi ptr [ %cp.0.ph150.i, %while.cond3.preheader.lr.ph.i ], [ %cp.0.be.i, %while.cond.backedge.i.while.cond3.preheader.i_crit_edge ]
  %cmp4130.i = icmp ult ptr %cp.0137.i, %add.ptr.i
  br i1 %cmp4130.i, label %land.rhs.preheader.i, label %while.cond3.preheader.i.while.end.i_crit_edge

while.cond3.preheader.i.while.end.i_crit_edge:    ; preds = %while.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

land.rhs.preheader.i:                             ; preds = %while.cond3.preheader.i
  %cp.0137171.i = ptrtoint ptr %cp.0137.i to i32
  %uglygep.i = getelementptr i8, ptr %cp.0137.i, i32 %7
  %8 = sub i32 0, %cp.0137171.i
  %uglygep172.i = getelementptr i8, ptr %uglygep.i, i32 %8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body10.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %cp.1131.i = phi ptr [ %incdec.ptr.i, %while.body10.i.land.rhs.i_crit_edge ], [ %cp.0137.i, %land.rhs.preheader.i ]
  %9 = ptrtoint ptr %cp.1131.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cp.1131.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %10, label %land.rhs.i.while.end.i_crit_edge [
    i8 32, label %land.rhs.i.while.body10.i_crit_edge
    i8 9, label %land.rhs.i.while.body10.i_crit_edge107
  ]

land.rhs.i.while.body10.i_crit_edge107:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body10.i

land.rhs.i.while.body10.i_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body10.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body10.i:                                   ; preds = %land.rhs.i.while.body10.i_crit_edge, %land.rhs.i.while.body10.i_crit_edge107
  %incdec.ptr.i = getelementptr i8, ptr %cp.1131.i, i32 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %uglygep172.i
  br i1 %exitcond.not.i, label %while.body10.i.while.end.i_crit_edge, label %while.body10.i.land.rhs.i_crit_edge

while.body10.i.land.rhs.i_crit_edge:              ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.body10.i.while.end.i_crit_edge:             ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body10.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %while.cond3.preheader.i.while.end.i_crit_edge
  %cp.1.lcssa.i = phi ptr [ %cp.0137.i, %while.cond3.preheader.i.while.end.i_crit_edge ], [ %uglygep172.i, %while.body10.i.while.end.i_crit_edge ], [ %cp.1131.i, %land.rhs.i.while.end.i_crit_edge ]
  %cmp11.i = icmp eq ptr %cp.1.lcssa.i, %add.ptr.i
  br i1 %cmp11.i, label %while.end.i.if.else.i.i_crit_edge, label %if.end.i

while.end.i.if.else.i.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end.i:                                         ; preds = %while.end.i
  %12 = ptrtoint ptr %cp.1.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cp.1.lcssa.i, align 1
  %conv13.i = zext i8 %13 to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull @.str.29, i32 %conv13.i, i32 5) #16
  %tobool.not.i = icmp eq ptr %memchr.i, null
  br i1 %tobool.not.i, label %if.end15.i, label %if.end.i.do.end.i.i_crit_edge

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end15.i:                                       ; preds = %if.end.i
  %inc.i = add i32 %received.0138.i, 1
  %call16.i = call ptr @strchr(ptr noundef %cp.1.lcssa.i, i32 noundef 10) #11
  %call16173.i = ptrtoint ptr %call16.i to i32
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc19.i = add i32 %rejected.0139.i, 1
  br label %if.else.i.i

if.end20.i:                                       ; preds = %if.end15.i
  %14 = add nsw i32 %conv13.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %14)
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %if.end20.i.while.cond.backedge.i_crit_edge, label %if.end27.i

if.end20.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %while.end44.i.while.cond.backedge.i_crit_edge, %if.end20.i.while.cond.backedge.i_crit_edge
  %rejected.0.be.i = add i32 %rejected.0139.i, 1
  %cp.0.be.i = getelementptr i8, ptr %call16.i, i32 1
  %cmp.i = icmp ult ptr %cp.0.be.i, %add.ptr.i
  br i1 %cmp.i, label %while.cond.backedge.i.while.cond3.preheader.i_crit_edge, label %while.cond.backedge.i.if.else.i.i_crit_edge

while.cond.backedge.i.if.else.i.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

while.cond.backedge.i.while.cond3.preheader.i_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader.i

if.end27.i:                                       ; preds = %if.end20.i
  %call28.i = call i32 @simple_strtoul(ptr noundef %cp.1.lcssa.i, ptr noundef nonnull %temp.i, i32 noundef 10) #11
  %16 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %temp.i, align 4
  %cmp30133.i = icmp ult ptr %17, %call16.i
  br i1 %cmp30133.i, label %land.rhs32.preheader.i, label %if.end27.i.while.end44.i_crit_edge

if.end27.i.while.end44.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end44.i

land.rhs32.preheader.i:                           ; preds = %if.end27.i
  %18 = ptrtoint ptr %17 to i32
  %19 = sub i32 %call16173.i, %18
  %uglygep174.i = getelementptr i8, ptr %17, i32 %19
  br label %land.rhs32.i

land.rhs32.i:                                     ; preds = %while.body42.i.land.rhs32.i_crit_edge, %land.rhs32.preheader.i
  %20 = phi ptr [ %incdec.ptr43.i, %while.body42.i.land.rhs32.i_crit_edge ], [ %17, %land.rhs32.preheader.i ]
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %22, label %land.rhs32.i.while.end44.i_crit_edge [
    i8 32, label %land.rhs32.i.while.body42.i_crit_edge
    i8 9, label %land.rhs32.i.while.body42.i_crit_edge108
  ]

land.rhs32.i.while.body42.i_crit_edge108:         ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body42.i

land.rhs32.i.while.body42.i_crit_edge:            ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body42.i

land.rhs32.i.while.end44.i_crit_edge:             ; preds = %land.rhs32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end44.i

while.body42.i:                                   ; preds = %land.rhs32.i.while.body42.i_crit_edge, %land.rhs32.i.while.body42.i_crit_edge108
  %incdec.ptr43.i = getelementptr i8, ptr %20, i32 1
  %24 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %incdec.ptr43.i, ptr %temp.i, align 4
  %exitcond175.not.i = icmp eq ptr %incdec.ptr43.i, %uglygep174.i
  br i1 %exitcond175.not.i, label %while.body42.i.while.end44.i_crit_edge, label %while.body42.i.land.rhs32.i_crit_edge

while.body42.i.land.rhs32.i_crit_edge:            ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs32.i

while.body42.i.while.end44.i_crit_edge:           ; preds = %while.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end44.i

while.end44.i:                                    ; preds = %while.body42.i.while.end44.i_crit_edge, %land.rhs32.i.while.end44.i_crit_edge, %if.end27.i.while.end44.i_crit_edge
  %.lcssa.i = phi ptr [ %17, %if.end27.i.while.end44.i_crit_edge ], [ %uglygep174.i, %while.body42.i.while.end44.i_crit_edge ], [ %20, %land.rhs32.i.while.end44.i_crit_edge ]
  %add.i = add i32 %call28.i, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp45.i = icmp ult i32 %add.i, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %6)
  %cmp47.i = icmp ugt i32 %add.i, %6
  %or.cond.i = select i1 %cmp45.i, i1 true, i1 %cmp47.i
  br i1 %or.cond.i, label %while.end44.i.while.cond.backedge.i_crit_edge, label %if.end52.i

while.end44.i.while.cond.backedge.i_crit_edge:    ; preds = %while.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge.i

if.end52.i:                                       ; preds = %while.end44.i
  %call16173.i.le = ptrtoint ptr %call16.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %.lcssa.i to i32
  %sub.ptr.sub.i = sub i32 %call16173.i.le, %sub.ptr.rhs.cast.i
  %call53.i = call i32 @spk_msg_set(i32 noundef %add.i, ptr noundef %.lcssa.i, i32 noundef %sub.ptr.sub.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.then56.i, label %if.end61.i

if.then56.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call53.i)
  %cmp57.i = icmp eq i32 %call53.i, -12
  br i1 %cmp57.i, label %if.then56.i.do.end.i.i_crit_edge, label %if.then56.i.if.else.i.i_crit_edge

if.then56.i.if.else.i.i_crit_edge:                ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then56.i.do.end.i.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.end61.i:                                       ; preds = %if.end52.i
  %inc62.i = add i32 %used.0.ph152.i, 1
  %add.ptr63.i = getelementptr i8, ptr %call16.i, i32 1
  %cmp136.i = icmp ult ptr %add.ptr63.i, %add.ptr.i
  br i1 %cmp136.i, label %if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge, label %if.end61.i.if.else.i.i_crit_edge

if.end61.i.if.else.i.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.end61.i.while.cond3.preheader.lr.ph.i_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3.preheader.lr.ph.i

do.end.i.i:                                       ; preds = %if.then56.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %retval1.0.i = phi i32 [ -12, %if.then56.i.do.end.i.i_crit_edge ], [ %count, %if.end.i.do.end.i.i_crit_edge ]
  call void @spk_reset_msg_group(ptr noundef nonnull %call) #11
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %buf.i.i) #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %26) #14
  br label %message_store_helper.exit

if.else.i.i:                                      ; preds = %if.end61.i.if.else.i.i_crit_edge, %if.then56.i.if.else.i.i_crit_edge, %while.cond.backedge.i.if.else.i.i_crit_edge, %if.then18.i, %while.end.i.if.else.i.i_crit_edge
  %used.0.ph129.i = phi i32 [ %used.0.ph152.i, %if.then18.i ], [ %used.0.ph152.i, %if.then56.i.if.else.i.i_crit_edge ], [ %used.0.ph152.i, %while.end.i.if.else.i.i_crit_edge ], [ %used.0.ph152.i, %while.cond.backedge.i.if.else.i.i_crit_edge ], [ %inc62.i, %if.end61.i.if.else.i.i_crit_edge ]
  %retval1.0.ph.i = phi i32 [ %count, %if.then18.i ], [ %call53.i, %if.then56.i.if.else.i.i_crit_edge ], [ %count, %while.end.i.if.else.i.i_crit_edge ], [ %count, %while.cond.backedge.i.if.else.i.i_crit_edge ], [ %count, %if.end61.i.if.else.i.i_crit_edge ]
  %received.1.ph.i = phi i32 [ %inc.i, %if.then18.i ], [ %inc.i, %if.then56.i.if.else.i.i_crit_edge ], [ %inc.i, %while.cond.backedge.i.if.else.i.i_crit_edge ], [ %received.0138.i, %while.end.i.if.else.i.i_crit_edge ], [ %inc.i, %if.end61.i.if.else.i.i_crit_edge ]
  %rejected.1.ph.i = phi i32 [ %inc19.i, %if.then18.i ], [ %rejected.0139.i, %if.then56.i.if.else.i.i_crit_edge ], [ %rejected.0.be.i, %while.cond.backedge.i.if.else.i.i_crit_edge ], [ %rejected.0139.i, %while.end.i.if.else.i.i_crit_edge ], [ %rejected.0139.i, %if.end61.i.if.else.i.i_crit_edge ]
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %buf.i.i) #11
  %29 = call ptr @memset(ptr %buf.i.i, i32 255, i32 160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.1.ph.i)
  %tobool1.not.i.i = icmp eq i32 %received.1.ph.i, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i.message_store_helper.exit_crit_edge, label %if.then2.i.i

if.else.i.i.message_store_helper.exit_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %message_store_helper.exit

if.then2.i.i:                                     ; preds = %if.else.i.i
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i.i, i32 noundef 160, ptr noundef nonnull @.str.89, i32 noundef %used.0.ph129.i, i32 noundef %received.1.ph.i, ptr noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rejected.1.ph.i)
  %tobool4.not.i.i = icmp eq i32 %rejected.1.ph.i, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.do.end12.i.i_crit_edge, label %if.then5.i.i

if.then2.i.i.do.end12.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %call3.i.i, -1
  %add.ptr.i.i = getelementptr i8, ptr %buf.i.i, i32 %sub.i.i
  %sub8.i.i = sub i32 161, %call3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rejected.1.ph.i)
  %cmp.i.i = icmp sgt i32 %rejected.1.ph.i, 1
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.91, ptr @.str.92
  %call9.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.i, i32 noundef %sub8.i.i, ptr noundef nonnull @.str.90, i32 noundef %rejected.1.ph.i, ptr noundef nonnull %cond.i.i) #11
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then5.i.i, %if.then2.i.i.do.end12.i.i_crit_edge
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull %buf.i.i) #14
  br label %message_store_helper.exit

message_store_helper.exit:                        ; preds = %do.end12.i.i, %if.else.i.i.message_store_helper.exit_crit_edge, %do.end.i.i, %if.else.i.thread.i
  %retval1.0105116.i = phi i32 [ %retval1.0.i, %do.end.i.i ], [ %retval1.0.ph.i, %if.else.i.i.message_store_helper.exit_crit_edge ], [ %retval1.0.ph.i, %do.end12.i.i ], [ %count, %if.else.i.thread.i ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %buf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #11
  br label %cleanup

cleanup:                                          ; preds = %message_store_helper.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval1.0105116.i, %message_store_helper.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_find_msg_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_msg_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_msg_set(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_reset_msg_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chars_chartab_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf, align 1
  br label %if.end

if.end:                                           ; preds = %if.end104.if.end_crit_edge, %entry
  %i.0131 = phi i32 [ 0, %entry ], [ %inc, %if.end104.if.end_crit_edge ]
  %bufsize.0129 = phi i32 [ 4096, %entry ], [ %sub, %if.end104.if.end_crit_edge ]
  %buf_pointer.0127 = phi ptr [ %buf, %entry ], [ %add.ptr, %if.end104.if.end_crit_edge ]
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.96, ptr noundef %2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [0 x ptr], ptr @spk_characters, i32 0, i32 %i.0131
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf_pointer.0127, i32 noundef %bufsize.0129, ptr noundef nonnull @.str.86, i32 noundef %i.0131, ptr noundef %4) #11
  br label %if.end104

if.else:                                          ; preds = %if.end
  %arrayidx16 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %i.0131
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %6 to i32
  %and = and i32 %conv17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18.not = icmp eq i32 %and, 0
  br i1 %cmp18.not, label %if.else21, label %if.else.if.end102_crit_edge

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else21:                                        ; preds = %if.else
  %and26 = and i32 %conv17, 129
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 129
  br i1 %cmp27, label %if.else21.if.end102_crit_edge, label %if.else30

if.else21.if.end102_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else30:                                        ; preds = %if.else21
  %and35 = and i32 %conv17, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 65
  br i1 %cmp36, label %if.else30.if.end102_crit_edge, label %if.else39

if.else30.if.end102_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else39:                                        ; preds = %if.else30
  %and44 = and i32 %conv17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45.not = icmp eq i32 %and44, 0
  br i1 %cmp45.not, label %if.else48, label %if.else39.if.end102_crit_edge

if.else39.if.end102_crit_edge:                    ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else48:                                        ; preds = %if.else39
  %and53 = and i32 %conv17, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 9
  br i1 %cmp54, label %if.else48.if.end102_crit_edge, label %if.else57

if.else48.if.end102_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else57:                                        ; preds = %if.else48
  %and62 = and i32 %conv17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and62)
  %cmp63 = icmp eq i32 %and62, 7
  br i1 %cmp63, label %if.else57.if.end102_crit_edge, label %if.else66

if.else57.if.end102_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else66:                                        ; preds = %if.else57
  %and71 = and i32 %conv17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and71)
  %cmp72 = icmp eq i32 %and71, 3
  br i1 %cmp72, label %if.else66.if.end102_crit_edge, label %if.else75

if.else66.if.end102_crit_edge:                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else75:                                        ; preds = %if.else66
  %and80 = and i32 %conv17, 2052
  call void @__sanitizer_cov_trace_const_cmp4(i32 2052, i32 %and80)
  %cmp81 = icmp eq i32 %and80, 2052
  br i1 %cmp81, label %if.else75.if.end102_crit_edge, label %if.else84

if.else75.if.end102_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.else84:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #13
  %and89 = and i32 %conv17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %cmp90.not = icmp eq i32 %and89, 0
  %.str.106..str.105 = select i1 %cmp90.not, ptr @.str.106, ptr @.str.105
  br label %if.end102

if.end102:                                        ; preds = %if.else84, %if.else75.if.end102_crit_edge, %if.else66.if.end102_crit_edge, %if.else57.if.end102_crit_edge, %if.else48.if.end102_crit_edge, %if.else39.if.end102_crit_edge, %if.else30.if.end102_crit_edge, %if.else21.if.end102_crit_edge, %if.else.if.end102_crit_edge
  %cp.0 = phi ptr [ @.str.97, %if.else.if.end102_crit_edge ], [ @.str.98, %if.else21.if.end102_crit_edge ], [ @.str.99, %if.else30.if.end102_crit_edge ], [ @.str.100, %if.else39.if.end102_crit_edge ], [ @.str.101, %if.else48.if.end102_crit_edge ], [ @.str.102, %if.else57.if.end102_crit_edge ], [ @.str.103, %if.else66.if.end102_crit_edge ], [ @.str.104, %if.else75.if.end102_crit_edge ], [ %.str.106..str.105, %if.else84 ]
  %call103 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf_pointer.0127, i32 noundef %bufsize.0129, ptr noundef nonnull @.str.86, i32 noundef %i.0131, ptr noundef nonnull %cp.0) #11
  br label %if.end104

if.end104:                                        ; preds = %if.end102, %if.then13
  %len.0 = phi i32 [ %call14, %if.then13 ], [ %call103, %if.end102 ]
  %sub = sub i32 %bufsize.0129, %len.0
  %add.ptr = getelementptr i8, ptr %buf_pointer.0127, i32 %len.0
  %inc = add nuw nsw i32 %i.0131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %i.0131)
  %cmp5 = icmp ugt i32 %i.0131, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp7 = icmp ult i32 %sub, 2
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp7
  br i1 %or.cond, label %for.end, label %if.end104.if.end_crit_edge

if.end104.if.end_crit_edge:                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.end:                                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #11
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chars_chartab_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %buf.i = alloca [80 x i8], align 1
  %keyword = alloca [73 x i8], align 1
  %temp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %count
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %keyword) #11
  %0 = call ptr @memset(ptr %keyword, i32 255, i32 73)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #11
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %temp, align 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(11) @.str.96) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %cmp8211 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp8211, label %while.cond10.preheader.preheader, label %entry.if.end121_crit_edge

entry.if.end121_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

while.cond10.preheader.preheader:                 ; preds = %entry
  %buf237 = ptrtoint ptr %buf to i32
  %4 = add i32 %buf237, %count
  br label %while.cond10.preheader

while.cond10.preheader:                           ; preds = %while.cond.backedge.while.cond10.preheader_crit_edge, %while.cond10.preheader.preheader
  %cp.0218 = phi ptr [ %cp.0.be, %while.cond.backedge.while.cond10.preheader_crit_edge ], [ %buf, %while.cond10.preheader.preheader ]
  %rejected.0216 = phi i32 [ %rejected.0.be, %while.cond.backedge.while.cond10.preheader_crit_edge ], [ 0, %while.cond10.preheader.preheader ]
  %used.0214 = phi i32 [ %used.0.be, %while.cond.backedge.while.cond10.preheader_crit_edge ], [ 0, %while.cond10.preheader.preheader ]
  %received.0213 = phi i32 [ %inc, %while.cond.backedge.while.cond10.preheader_crit_edge ], [ 0, %while.cond10.preheader.preheader ]
  %desc.0212 = phi ptr [ %desc.0.be, %while.cond.backedge.while.cond10.preheader_crit_edge ], [ null, %while.cond10.preheader.preheader ]
  %cmp11203 = icmp ult ptr %cp.0218, %add.ptr
  br i1 %cmp11203, label %land.rhs.preheader, label %while.cond10.preheader.while.end_crit_edge

while.cond10.preheader.while.end_crit_edge:       ; preds = %while.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.preheader:                               ; preds = %while.cond10.preheader
  %cp.0218238 = ptrtoint ptr %cp.0218 to i32
  %uglygep = getelementptr i8, ptr %cp.0218, i32 %4
  %5 = sub i32 0, %cp.0218238
  %uglygep239 = getelementptr i8, ptr %uglygep, i32 %5
  br label %land.rhs

land.rhs:                                         ; preds = %while.body19.land.rhs_crit_edge, %land.rhs.preheader
  %cp.1204 = phi ptr [ %incdec.ptr, %while.body19.land.rhs_crit_edge ], [ %cp.0218, %land.rhs.preheader ]
  %6 = ptrtoint ptr %cp.1204 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cp.1204, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %7, label %land.rhs.while.end_crit_edge [
    i8 32, label %land.rhs.while.body19_crit_edge
    i8 9, label %land.rhs.while.body19_crit_edge292
  ]

land.rhs.while.body19_crit_edge292:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body19

land.rhs.while.body19_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body19

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body19:                                     ; preds = %land.rhs.while.body19_crit_edge, %land.rhs.while.body19_crit_edge292
  %incdec.ptr = getelementptr i8, ptr %cp.1204, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr, %uglygep239
  br i1 %exitcond.not, label %while.body19.while.end_crit_edge, label %while.body19.land.rhs_crit_edge

while.body19.land.rhs_crit_edge:                  ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body19.while.end_crit_edge:                 ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body19.while.end_crit_edge, %land.rhs.while.end_crit_edge, %while.cond10.preheader.while.end_crit_edge
  %cp.1.lcssa = phi ptr [ %cp.0218, %while.cond10.preheader.while.end_crit_edge ], [ %cp.1204, %land.rhs.while.end_crit_edge ], [ %uglygep239, %while.body19.while.end_crit_edge ]
  %cmp20 = icmp eq ptr %cp.1.lcssa, %add.ptr
  br i1 %cmp20, label %while.end.if.end121_crit_edge, label %if.end

while.end.if.end121_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.end:                                           ; preds = %while.end
  %9 = ptrtoint ptr %cp.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cp.1.lcssa, align 1
  %conv22 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp23 = icmp eq i8 %10, 10
  br i1 %cmp23, label %if.end.if.then116_crit_edge, label %lor.lhs.false

if.end.if.then116_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

lor.lhs.false:                                    ; preds = %if.end
  %memchr = call ptr @memchr(ptr noundef nonnull @.str.29, i32 %conv22, i32 5) #15
  %tobool27.not = icmp eq ptr %memchr, null
  br i1 %tobool27.not, label %if.end29, label %lor.lhs.false.if.then116_crit_edge

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then116

if.end29:                                         ; preds = %lor.lhs.false
  %inc = add i32 %received.0213, 1
  %call30 = call ptr @strchr(ptr noundef %cp.1.lcssa, i32 noundef 10)
  %call30240 = ptrtoint ptr %call30 to i32
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %inc33 = add i32 %rejected.0216, 1
  br label %if.end121

if.end34:                                         ; preds = %if.end29
  %11 = add nsw i32 %conv22, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %11)
  %12 = icmp ult i32 %11, -10
  br i1 %12, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %inc39 = add i32 %rejected.0216, 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then107, %if.end102.while.cond.backedge_crit_edge, %if.then99, %if.end91, %if.then67, %if.then45, %if.then38
  %desc.0.be = phi ptr [ %desc.0212, %if.then45 ], [ %desc.0212, %if.then67 ], [ %desc.1, %if.then99 ], [ %desc.0212, %if.then38 ], [ %desc.1, %if.end102.while.cond.backedge_crit_edge ], [ %desc.1, %if.then107 ], [ %desc.1, %if.end91 ]
  %used.0.be = phi i32 [ %used.0214, %if.then45 ], [ %used.0214, %if.then67 ], [ %used.0214, %if.then99 ], [ %used.0214, %if.then38 ], [ %used.0214, %if.end102.while.cond.backedge_crit_edge ], [ %inc110, %if.then107 ], [ %inc93, %if.end91 ]
  %rejected.0.be = phi i32 [ %inc46, %if.then45 ], [ %inc68, %if.then67 ], [ %inc100, %if.then99 ], [ %inc39, %if.then38 ], [ %rejected.0216, %if.end102.while.cond.backedge_crit_edge ], [ %rejected.0216, %if.then107 ], [ %rejected.0216, %if.end91 ]
  %cp.0.be = getelementptr i8, ptr %call30, i32 1
  %cmp8 = icmp ult ptr %cp.0.be, %add.ptr
  br i1 %cmp8, label %while.cond.backedge.while.cond10.preheader_crit_edge, label %while.cond.backedge.if.end121_crit_edge

while.cond.backedge.if.end121_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

while.cond.backedge.while.cond10.preheader_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond10.preheader

if.end41:                                         ; preds = %if.end34
  %call42 = call i32 @simple_strtoul(ptr noundef %cp.1.lcssa, ptr noundef nonnull %temp, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call42)
  %cmp43 = icmp ugt i32 %call42, 255
  br i1 %cmp43, label %if.then45, label %while.cond49.preheader

while.cond49.preheader:                           ; preds = %if.end41
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %temp, align 4
  %15 = ptrtoint ptr %14 to i32
  %cmp50206 = icmp ult ptr %14, %call30
  br i1 %cmp50206, label %land.rhs52.preheader, label %while.cond49.preheader.while.end64_crit_edge

while.cond49.preheader.while.end64_crit_edge:     ; preds = %while.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end64

land.rhs52.preheader:                             ; preds = %while.cond49.preheader
  %16 = sub i32 %call30240, %15
  %uglygep241 = getelementptr i8, ptr %14, i32 %16
  br label %land.rhs52

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %inc46 = add i32 %rejected.0216, 1
  br label %while.cond.backedge

land.rhs52:                                       ; preds = %while.body62.land.rhs52_crit_edge, %land.rhs52.preheader
  %17 = phi ptr [ %incdec.ptr63, %while.body62.land.rhs52_crit_edge ], [ %14, %land.rhs52.preheader ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %19, label %land.rhs52.while.end64.loopexit_crit_edge [
    i8 32, label %land.rhs52.while.body62_crit_edge
    i8 9, label %land.rhs52.while.body62_crit_edge293
  ]

land.rhs52.while.body62_crit_edge293:             ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body62

land.rhs52.while.body62_crit_edge:                ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body62

land.rhs52.while.end64.loopexit_crit_edge:        ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end64.loopexit

while.body62:                                     ; preds = %land.rhs52.while.body62_crit_edge, %land.rhs52.while.body62_crit_edge293
  %incdec.ptr63 = getelementptr i8, ptr %17, i32 1
  %21 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %incdec.ptr63, ptr %temp, align 4
  %exitcond242.not = icmp eq ptr %incdec.ptr63, %uglygep241
  br i1 %exitcond242.not, label %while.body62.while.end64.loopexit_crit_edge, label %while.body62.land.rhs52_crit_edge

while.body62.land.rhs52_crit_edge:                ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs52

while.body62.while.end64.loopexit_crit_edge:      ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end64.loopexit

while.end64.loopexit:                             ; preds = %while.body62.while.end64.loopexit_crit_edge, %land.rhs52.while.end64.loopexit_crit_edge
  %.lcssa.ph = phi ptr [ %uglygep241, %while.body62.while.end64.loopexit_crit_edge ], [ %17, %land.rhs52.while.end64.loopexit_crit_edge ]
  %.pre = ptrtoint ptr %.lcssa.ph to i32
  br label %while.end64

while.end64:                                      ; preds = %while.end64.loopexit, %while.cond49.preheader.while.end64_crit_edge
  %sub.ptr.rhs.cast.pre-phi = phi i32 [ %.pre, %while.end64.loopexit ], [ %15, %while.cond49.preheader.while.end64_crit_edge ]
  %.lcssa = phi ptr [ %.lcssa.ph, %while.end64.loopexit ], [ %14, %while.cond49.preheader.while.end64_crit_edge ]
  %sub.ptr.sub = sub i32 %call30240, %sub.ptr.rhs.cast.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %sub.ptr.sub)
  %cmp65 = icmp ugt i32 %sub.ptr.sub, 72
  br i1 %cmp65, label %if.then67, label %if.end70

if.then67:                                        ; preds = %while.end64
  call void @__sanitizer_cov_trace_pc() #13
  %inc68 = add i32 %rejected.0216, 1
  br label %while.cond.backedge

if.end70:                                         ; preds = %while.end64
  br i1 %tobool.not, label %if.end8.i, label %if.end70.if.end77_crit_edge

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end8.i:                                        ; preds = %if.end70
  %add = add nuw nsw i32 %sub.ptr.sub, 1
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #17
  %tobool74.not = icmp eq ptr %call9.i, null
  br i1 %tobool74.not, label %if.end8.i.if.then118_crit_edge, label %if.end8.i.if.end77_crit_edge

if.end8.i.if.end77_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end8.i.if.then118_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

if.end77:                                         ; preds = %if.end8.i.if.end77_crit_edge, %if.end70.if.end77_crit_edge
  %outptr.0 = phi ptr [ %call9.i, %if.end8.i.if.end77_crit_edge ], [ %keyword, %if.end70.if.end77_crit_edge ]
  %desc.1 = phi ptr [ %call9.i, %if.end8.i.if.end77_crit_edge ], [ %desc.0212, %if.end70.if.end77_crit_edge ]
  %cmp78209.not = icmp eq ptr %call30, %.lcssa
  br i1 %cmp78209.not, label %if.end77.for.end_crit_edge, label %for.body.preheader

if.end77.for.end_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end77
  %umax = call i32 @llvm.umax.i32(i32 %sub.ptr.sub, i32 1)
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %temp, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0210 = phi i32 [ %inc81, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8, ptr %23, i32 %i.0210
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %arrayidx80 = getelementptr i8, ptr %outptr.0, i32 %i.0210
  %26 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx80, align 1
  %inc81 = add nuw i32 %i.0210, 1
  %exitcond243.not = icmp eq i32 %inc81, %umax
  br i1 %exitcond243.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end77.for.end_crit_edge
  %arrayidx82 = getelementptr i8, ptr %outptr.0, i32 %sub.ptr.sub
  %27 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx82, align 1
  br i1 %tobool.not, label %if.then84, label %if.else94

if.then84:                                        ; preds = %for.end
  %arrayidx85 = getelementptr [0 x ptr], ptr @spk_characters, i32 0, i32 %call42
  %28 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx85, align 4
  %arrayidx86 = getelementptr [0 x ptr], ptr @spk_default_chars, i32 0, i32 %call42
  %30 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx86, align 4
  %cmp87.not = icmp eq ptr %29, %31
  br i1 %cmp87.not, label %if.then84.if.end91_crit_edge, label %if.then89

if.then84.if.end91_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then89:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %29) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.then84.if.end91_crit_edge
  %32 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %desc.1, ptr %arrayidx85, align 4
  %inc93 = add i32 %used.0214, 1
  br label %while.cond.backedge

if.else94:                                        ; preds = %for.end
  %call96 = call i32 @spk_chartab_get_value(ptr noundef nonnull %keyword) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #13
  %inc100 = add i32 %rejected.0216, 1
  br label %while.cond.backedge

if.end102:                                        ; preds = %if.else94
  %arrayidx103 = getelementptr [0 x i16], ptr @spk_chartab, i32 0, i32 %call42
  %33 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx103, align 2
  %conv104 = zext i16 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call96, i32 %conv104)
  %cmp105.not = icmp eq i32 %call96, %conv104
  br i1 %cmp105.not, label %if.end102.while.cond.backedge_crit_edge, label %if.then107

if.end102.while.cond.backedge_crit_edge:          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then107:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %conv108 = trunc i32 %call96 to i16
  %35 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv108, ptr %arrayidx103, align 2
  %inc110 = add i32 %used.0214, 1
  br label %while.cond.backedge

if.then116:                                       ; preds = %lor.lhs.false.if.then116_crit_edge, %if.end.if.then116_crit_edge
  br i1 %tobool.not, label %if.then116.if.then118_crit_edge, label %if.else119

if.then116.if.then118_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then118

if.then118:                                       ; preds = %if.then116.if.then118_crit_edge, %if.end8.i.if.then118_crit_edge
  %received.1187 = phi i32 [ %received.0213, %if.then116.if.then118_crit_edge ], [ %inc, %if.end8.i.if.then118_crit_edge ]
  %retval1.0186 = phi i32 [ %count, %if.then116.if.then118_crit_edge ], [ -12, %if.end8.i.if.then118_crit_edge ]
  call void @spk_reset_default_chars() #11
  br label %if.end121

if.else119:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  call void @spk_reset_default_chartab() #11
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.then118, %while.cond.backedge.if.end121_crit_edge, %if.then32, %while.end.if.end121_crit_edge, %entry.if.end121_crit_edge
  %used.0197 = phi i32 [ %used.0214, %if.then32 ], [ %used.0214, %if.then118 ], [ %used.0214, %if.else119 ], [ 0, %entry.if.end121_crit_edge ], [ %used.0214, %while.end.if.end121_crit_edge ], [ %used.0.be, %while.cond.backedge.if.end121_crit_edge ]
  %tobool.not.i = phi i1 [ true, %if.then32 ], [ false, %if.then118 ], [ false, %if.else119 ], [ true, %entry.if.end121_crit_edge ], [ true, %while.cond.backedge.if.end121_crit_edge ], [ true, %while.end.if.end121_crit_edge ]
  %rejected.1180 = phi i32 [ %inc33, %if.then32 ], [ %rejected.0216, %if.then118 ], [ %rejected.0216, %if.else119 ], [ 0, %entry.if.end121_crit_edge ], [ %rejected.0216, %while.end.if.end121_crit_edge ], [ %rejected.0.be, %while.cond.backedge.if.end121_crit_edge ]
  %received.1179 = phi i32 [ %inc, %if.then32 ], [ %received.1187, %if.then118 ], [ %received.0213, %if.else119 ], [ 0, %entry.if.end121_crit_edge ], [ %received.0213, %while.end.if.end121_crit_edge ], [ %inc, %while.cond.backedge.if.end121_crit_edge ]
  %retval1.0178 = phi i32 [ %count, %if.then32 ], [ %retval1.0186, %if.then118 ], [ %count, %if.else119 ], [ %count, %entry.if.end121_crit_edge ], [ %count, %while.cond.backedge.if.end121_crit_edge ], [ %count, %while.end.if.end121_crit_edge ]
  %lnot.ext = zext i1 %tobool.not to i32
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call5) #11
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf.i) #11
  %36 = call ptr @memset(ptr %buf.i, i32 255, i32 80)
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [2 x ptr], ptr @report_char_chartab_status.object_type, i32 0, i32 %lnot.ext
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %38) #14
  br label %report_char_chartab_status.exit

if.else.i:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %received.1179)
  %tobool1.not.i = icmp eq i32 %received.1179, 0
  br i1 %tobool1.not.i, label %if.else.i.report_char_chartab_status.exit_crit_edge, label %if.then2.i

if.else.i.report_char_chartab_status.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %report_char_chartab_status.exit

if.then2.i:                                       ; preds = %if.else.i
  %arrayidx3.i = getelementptr [2 x ptr], ptr @report_char_chartab_status.object_type, i32 0, i32 %lnot.ext
  %39 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx3.i, align 4
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 80, ptr noundef nonnull @.str.111, i32 noundef %used.0197, i32 noundef %received.1179, ptr noundef %40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rejected.1180)
  %tobool5.not.i = icmp eq i32 %rejected.1180, 0
  br i1 %tobool5.not.i, label %if.then2.i.do.end13.i_crit_edge, label %if.then6.i

if.then2.i.do.end13.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %call4.i, -1
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %sub.i
  %sub9.i = sub i32 81, %call4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rejected.1180)
  %cmp.i = icmp sgt i32 %rejected.1180, 1
  %cond.i = select i1 %cmp.i, ptr @.str.91, ptr @.str.92
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub9.i, ptr noundef nonnull @.str.90, i32 noundef %rejected.1180, ptr noundef nonnull %cond.i) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then6.i, %if.then2.i.do.end13.i_crit_edge
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull %buf.i) #14
  br label %report_char_chartab_status.exit

report_char_chartab_status.exit:                  ; preds = %do.end13.i, %if.else.i.report_char_chartab_status.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #11
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %keyword) #11
  ret i32 %retval1.0178
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_chartab_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_reset_default_chars() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_reset_default_chartab() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !231, !232, !234, !236, !238, !240, !242, !243, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !277, !278, !279, !281, !283, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310}
!llvm.module.flags = !{!312, !313, !314, !315, !316, !317, !318, !319}
!llvm.ident = !{!320}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 567, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 569, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 579, i32 26}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 586, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 590, i32 21}
!10 = !{ptr @__ksymtab_spk_var_show, !11, !"__ksymtab_spk_var_show", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 597, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 655, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @spk_var_store._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @spk_var_store._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 658, i32 4}
!20 = !{ptr @spk_var_store._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @spk_var_store._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 671, i32 28}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 673, i32 28}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 688, i32 4}
!28 = !{ptr @spk_var_store._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @spk_var_store._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 692, i32 3}
!32 = !{ptr @spk_var_store._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @spk_var_store._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 699, i32 3}
!36 = !{ptr @spk_var_store._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @spk_var_store._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_spk_var_store, !39, !"__ksymtab_spk_var_store", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 702, i32 1}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 1017, i32 46}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 1023, i32 40}
!44 = !{ptr @accessibility_kobj, !45, !"accessibility_kobj", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 1001, i32 24}
!46 = !{ptr @speakup_kobj, !47, !"speakup_kobj", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 1002, i32 17}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 613, i32 4}
!50 = !{ptr @spk_reset_default_value._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @spk_reset_default_value._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @main_attr_group, !53, !"main_attr_group", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 992, i32 37}
!54 = !{ptr @main_attrs, !55, !"main_attrs", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 946, i32 26}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 870, i32 2}
!58 = !{ptr @keymap_attribute, !59, !"keymap_attribute", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 869, i32 30}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 245, i32 20}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 253, i32 22}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 257, i32 20}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 281, i32 13}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 283, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @keymap_store._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @keymap_store._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 301, i32 3}
!75 = !{ptr @keymap_store._entry.32, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @keymap_store._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 315, i32 3}
!79 = !{ptr @keymap_store._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @keymap_store._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 321, i32 4}
!83 = !{ptr @keymap_store._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @keymap_store._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 872, i32 2}
!87 = !{ptr @silent_attribute, !88, !"silent_attribute", i1 false, i1 false}
!88 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 871, i32 30}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 348, i32 3}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @silent_store._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @silent_store._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 874, i32 2}
!96 = !{ptr @synth_attribute, !97, !"synth_attribute", i1 false, i1 false}
!97 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 873, i32 30}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 377, i32 21}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 377, i32 29}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 401, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @synth_store._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @synth_store._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 403, i32 3}
!109 = !{ptr @synth_store._entry.49, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @synth_store._entry_ptr.51, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 876, i32 2}
!113 = !{ptr @synth_direct_attribute, !114, !"synth_direct_attribute", i1 false, i1 false}
!114 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 875, i32 30}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 432, i32 16}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 878, i32 2}
!119 = !{ptr @version_attribute, !120, !"version_attribute", i1 false, i1 false}
!120 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 877, i32 30}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 449, i32 20}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 449, i32 44}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 451, i32 21}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 881, i32 2}
!129 = !{ptr @delimiters_attribute, !130, !"delimiters_attribute", i1 false, i1 false}
!130 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 880, i32 30}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 472, i32 3}
!133 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @punc_show._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @punc_show._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 479, i32 3}
!138 = !{ptr @punc_show._entry.61, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @punc_show._entry_ptr.63, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 514, i32 3}
!142 = !{ptr @punc_store._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @punc_store._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @punc_store._entry.65, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 521, i32 3}
!146 = !{ptr @punc_store._entry_ptr.66, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 883, i32 2}
!149 = !{ptr @ex_num_attribute, !150, !"ex_num_attribute", i1 false, i1 false}
!150 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 882, i32 30}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 885, i32 2}
!153 = !{ptr @punc_all_attribute, !154, !"punc_all_attribute", i1 false, i1 false}
!154 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 884, i32 30}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 887, i32 2}
!157 = !{ptr @punc_most_attribute, !158, !"punc_most_attribute", i1 false, i1 false}
!158 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 886, i32 30}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 889, i32 2}
!161 = !{ptr @punc_some_attribute, !162, !"punc_some_attribute", i1 false, i1 false}
!162 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 888, i32 30}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 891, i32 2}
!165 = !{ptr @repeats_attribute, !166, !"repeats_attribute", i1 false, i1 false}
!166 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 890, i32 30}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 894, i32 2}
!169 = !{ptr @attrib_bleep_attribute, !170, !"attrib_bleep_attribute", i1 false, i1 false}
!170 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 893, i32 30}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 896, i32 2}
!173 = !{ptr @bell_pos_attribute, !174, !"bell_pos_attribute", i1 false, i1 false}
!174 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 895, i32 30}
!175 = !{ptr @.str.74, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 898, i32 2}
!177 = !{ptr @bleep_time_attribute, !178, !"bleep_time_attribute", i1 false, i1 false}
!178 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 897, i32 30}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 900, i32 2}
!181 = !{ptr @bleeps_attribute, !182, !"bleeps_attribute", i1 false, i1 false}
!182 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 899, i32 30}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 902, i32 2}
!185 = !{ptr @cursor_time_attribute, !186, !"cursor_time_attribute", i1 false, i1 false}
!186 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 901, i32 30}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 904, i32 2}
!189 = !{ptr @key_echo_attribute, !190, !"key_echo_attribute", i1 false, i1 false}
!190 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 903, i32 30}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 906, i32 2}
!193 = !{ptr @no_interrupt_attribute, !194, !"no_interrupt_attribute", i1 false, i1 false}
!194 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 905, i32 30}
!195 = !{ptr @.str.79, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 908, i32 2}
!197 = !{ptr @punc_level_attribute, !198, !"punc_level_attribute", i1 false, i1 false}
!198 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 907, i32 30}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 910, i32 2}
!201 = !{ptr @reading_punc_attribute, !202, !"reading_punc_attribute", i1 false, i1 false}
!202 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 909, i32 30}
!203 = !{ptr @.str.81, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 912, i32 2}
!205 = !{ptr @say_control_attribute, !206, !"say_control_attribute", i1 false, i1 false}
!206 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 911, i32 30}
!207 = !{ptr @.str.82, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 914, i32 2}
!209 = !{ptr @say_word_ctl_attribute, !210, !"say_word_ctl_attribute", i1 false, i1 false}
!210 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 913, i32 30}
!211 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 916, i32 2}
!213 = !{ptr @spell_delay_attribute, !214, !"spell_delay_attribute", i1 false, i1 false}
!214 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 915, i32 30}
!215 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 998, i32 10}
!217 = !{ptr @i18n_attr_group, !218, !"i18n_attr_group", i1 false, i1 false}
!218 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 996, i32 37}
!219 = !{ptr @i18n_attrs, !220, !"i18n_attrs", i1 false, i1 false}
!220 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 973, i32 26}
!221 = !{ptr @.str.85, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 922, i32 2}
!223 = !{ptr @announcements_attribute, !224, !"announcements_attribute", i1 false, i1 false}
!224 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 921, i32 30}
!225 = !{ptr @.str.86, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 721, i32 45}
!227 = !{ptr @.str.87, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 737, i32 3}
!229 = !{ptr @.str.88, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @report_msg_status._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @report_msg_status._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.89, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 741, i32 11}
!234 = !{ptr @.str.90, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 745, i32 6}
!236 = !{ptr @.str.91, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 746, i32 31}
!238 = !{ptr @.str.92, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 746, i32 37}
!240 = !{ptr @.str.94, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 747, i32 3}
!242 = !{ptr @report_msg_status._entry.93, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @report_msg_status._entry_ptr.95, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 924, i32 2}
!246 = !{ptr @characters_attribute, !247, !"characters_attribute", i1 false, i1 false}
!247 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 923, i32 30}
!248 = !{ptr @.str.97, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 49, i32 10}
!250 = !{ptr @.str.98, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 51, i32 10}
!252 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 53, i32 10}
!254 = !{ptr @.str.100, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 55, i32 10}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 57, i32 10}
!258 = !{ptr @.str.102, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 59, i32 10}
!260 = !{ptr @.str.103, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 61, i32 10}
!262 = !{ptr @.str.104, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 63, i32 10}
!264 = !{ptr @.str.105, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 65, i32 10}
!266 = !{ptr @.str.106, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 67, i32 10}
!268 = !{ptr @.str.107, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 86, i32 3}
!270 = !{ptr @.str.108, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 87, i32 3}
!272 = !{ptr @report_char_chartab_status.object_type, !273, !"object_type", i1 false, i1 false}
!273 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 85, i32 21}
!274 = !{ptr @.str.109, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 93, i32 3}
!276 = !{ptr @.str.110, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @report_char_chartab_status._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @report_char_chartab_status._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.111, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 96, i32 11}
!281 = !{ptr @report_char_chartab_status._entry.112, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 102, i32 3}
!283 = !{ptr @report_char_chartab_status._entry_ptr.113, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.114, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 927, i32 2}
!286 = !{ptr @chartab_attribute, !287, !"chartab_attribute", i1 false, i1 false}
!287 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 926, i32 30}
!288 = !{ptr @.str.115, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 930, i32 2}
!290 = !{ptr @ctl_keys_attribute, !291, !"ctl_keys_attribute", i1 false, i1 false}
!291 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 929, i32 30}
!292 = !{ptr @.str.116, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 932, i32 2}
!294 = !{ptr @colors_attribute, !295, !"colors_attribute", i1 false, i1 false}
!295 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 931, i32 30}
!296 = !{ptr @.str.117, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 934, i32 2}
!298 = !{ptr @formatted_attribute, !299, !"formatted_attribute", i1 false, i1 false}
!299 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 933, i32 30}
!300 = !{ptr @.str.118, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 936, i32 2}
!302 = !{ptr @function_names_attribute, !303, !"function_names_attribute", i1 false, i1 false}
!303 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 935, i32 30}
!304 = !{ptr @.str.119, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 938, i32 2}
!306 = !{ptr @key_names_attribute, !307, !"key_names_attribute", i1 false, i1 false}
!307 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 937, i32 30}
!308 = !{ptr @.str.120, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 940, i32 2}
!310 = !{ptr @states_attribute, !311, !"states_attribute", i1 false, i1 false}
!311 = !{!"../drivers/accessibility/speakup/kobjects.c", i32 939, i32 30}
!312 = !{i32 1, !"wchar_size", i32 2}
!313 = !{i32 1, !"min_enum_size", i32 4}
!314 = !{i32 8, !"branch-target-enforcement", i32 0}
!315 = !{i32 8, !"sign-return-address", i32 0}
!316 = !{i32 8, !"sign-return-address-all", i32 0}
!317 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!318 = !{i32 7, !"uwtable", i32 1}
!319 = !{i32 7, !"frame-pointer", i32 2}
!320 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!321 = !{!"auto-init"}
!322 = !{!"branch_weights", i32 1, i32 2000}
