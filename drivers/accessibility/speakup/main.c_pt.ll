; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/main.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.st_bits_data = type { ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bleep = type { i16, i32, i32 }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.var_t = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.st_spk_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.spk_highlight_color_track, i32 }
%struct.spk_highlight_color_track = type { [8 x i32], [8 x [160 x i16]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], i32 }
%struct.keyboard_notifier_param = type { ptr, i32, i32, i32, i32 }
%struct.st_var_header = type { ptr, i32, i32, ptr, ptr }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.vt_notifier_param = type { ptr, i32 }

@__UNIQUE_ID_author232 = internal constant [49 x i8] c"speakup.author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [45 x i8] c"speakup.author=Daniel Drake <dsd@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [43 x i8] c"speakup.description=Speakup console speech\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [51 x i8] c"speakup.file=drivers/accessibility/speakup/speakup\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [20 x i8] c"speakup.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version237 = internal constant [22 x i8] c"speakup.version=3.1.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"speakup\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.1.6\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_synth = internal constant [14 x i8] c"speakup.synth\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@synth_name = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_synth = internal constant %struct.kernel_param { ptr @__param_str_synth, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @synth_name } }, section "__param", align 4
@__UNIQUE_ID_synthtype238 = internal constant [29 x i8] c"speakup.parmtype=synth:charp\00", section ".modinfo", align 1
@__param_str_quiet = internal constant [14 x i8] c"speakup.quiet\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@spk_quiet_boot = external dso_local global i8, align 1
@__param_quiet = internal constant %struct.kernel_param { ptr @__param_str_quiet, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @spk_quiet_boot } }, section "__param", align 4
@__UNIQUE_ID_quiettype239 = internal constant [28 x i8] c"speakup.parmtype=quiet:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_synth240 = internal constant [58 x i8] c"speakup.parm=synth:Synth to start if speakup is built in.\00", section ".modinfo", align 1
@__UNIQUE_ID_quiet241 = internal constant [66 x i8] c"speakup.parm=quiet:Do not announce when the synthesizer is found.\00", section ".modinfo", align 1
@spk_bleep_time = dso_local global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@spk_str_caps_start = dso_local global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@spk_str_caps_stop = dso_local global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@spk_str_pause = dso_local global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"some\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"/$%&@\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"most\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"$%&#()=+*/@^<>|\\\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"!\22#$%&'()*+,-./:;<=>?@[\\]^_`{|}~\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delimiters\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"repeats\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"()\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"extended numeric\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"symbols\00", [24 x i8] zeroinitializer }, align 32
@spk_punc_info = dso_local constant { [9 x %struct.st_bits_data], [52 x i8] } { [9 x %struct.st_bits_data] [%struct.st_bits_data { ptr @.str.3, ptr @.str.4, i16 0 }, %struct.st_bits_data { ptr @.str.5, ptr @.str.6, i16 16 }, %struct.st_bits_data { ptr @.str.7, ptr @.str.8, i16 32 }, %struct.st_bits_data { ptr @.str.9, ptr @.str.10, i16 64 }, %struct.st_bits_data { ptr @.str.11, ptr @.str.4, i16 128 }, %struct.st_bits_data { ptr @.str.12, ptr @.str.13, i16 512 }, %struct.st_bits_data { ptr @.str.14, ptr @.str.4, i16 256 }, %struct.st_bits_data { ptr @.str.15, ptr @.str.4, i16 2048 }, %struct.st_bits_data zeroinitializer], [52 x i8] zeroinitializer }, align 32
@spk_key_defaults = dso_local constant { [446 x i8], [98 x i8] } { [446 x i8] c"w>\06\00\10\14\11 0\00\02\00N\00\00\00\00\03\00O\00\00\00\00\04\00L\00\00\00\00\05\00M\00\00\00\00\06\00J\00\00\00\00\07\00K\00\00\00\00\09\00\05.\00\00\00\0A\00\04\00\00\00\00\0B\00\00\01\00\00\00\0C\00\1B\00!\00\00\13\00/\00\00\00\00\15\00\1D\11\00\00\00\16\00\0F\00\00\00\00\17\00\0E\00\00\00\1C\18\00\10\00\00\00\00\19\00\1E\12\00\00\00\1C\00\03\1A\00\00\00#\00\1F\00\00\00\00$\00\0C\00\00\00\00%\00\0B\00\00\00\16&\00\0D\00\00\00\00'\00 \07\00\00\00(\00\17\00\00\00\00,\00,\00\00\00\001\00\18\00\00\00\002\00\09\13\06\00\003\00\08\00\00\00$4\00\0A\14\00\00\005\00\19\00\00\00\007.\01\00\00\00\00:\80\80\00\00\00\00;\00-\00\00\00\00<\00(\00\00\00\00=\00)\00\00\00\00>\00*\00\00\00\00?\00\22\00\00\00\00@\00#\00\00\00\00A\00%\00\00\00\00B\00&\00\00\00\00C\00B\00'\00\00D\00C\00\00\00\00G\0F\13\00\00\00\00H\0E\1D\00\00\1C\00I\10\11\00\00\00\00J\1B!\00\00\00\00K\0C\1F\00\00\00\00L\0B\15\00\00\16\00M\0D \00\00\00\00N\17+\00\00\00\00O\09\14\00\00\00\00P\08\1E\00\00$\00Q\0A\12\00\00\00\00R\80\80\00\00\00\00S\18\19\00\00\00\00W\00D\00\00\00\00X\00E\00\00\00\00`\03\1A\00\00\00\00b\04\05\00\00\00\00c\02\00\00\00\00\00h\00\06\00\00\00\00m\00\07\00\00\00\00}\80\80\00\00\00\00\00w", [98 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^a\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^b\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^c\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^d\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^e\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^f\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^g\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^h\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^i\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^j\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^k\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^l\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^m\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^n\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^o\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^p\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^q\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^r\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^s\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^t\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^u\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^v\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^w\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^x\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^y\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"^z\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bang!\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"quote\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"number\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dollar\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"percent\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"and\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tick\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"left paren\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"right paren\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"star\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"plus\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"comma\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dash\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dot\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slash\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zero\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"one\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"two\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"three\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"four\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"five\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"six\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"seven\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"eight\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nine\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"colon\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"semmy\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"less\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"equals\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"greater\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"question\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"at\00", [29 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EIGH\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"H\00", [30 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"J\00", [30 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"K\00", [30 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"O\00", [30 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Q\00", [30 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"V\00", [30 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"X\00", [30 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Y\00", [30 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ZED\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"left bracket\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backslash\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"right bracket\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"caret\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"line\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"accent\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"b\00", [30 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"c\00", [30 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"d\00", [30 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"e\00", [30 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"f\00", [30 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"g\00", [30 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"h\00", [30 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"j\00", [30 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"k\00", [30 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"l\00", [30 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"m\00", [30 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"o\00", [30 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"p\00", [30 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"q\00", [30 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"r\00", [30 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"t\00", [30 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"u\00", [30 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"v\00", [30 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"w\00", [30 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"x\00", [30 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"y\00", [30 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"zed\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"left brace\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bar\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"right brace\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tihlduh\00", [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"del\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nbsp\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inverted bang\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cents\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pounds\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"currency\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yen\00", [28 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"broken bar\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"section\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"diaeresis\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"copyright\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"female ordinal\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"double left angle\00", [46 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"not\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"soft hyphen\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"registered\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"macron\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"degrees\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"plus or minus\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"super two\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"super three\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"acute accent\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"micro\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pilcrow\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"middle dot\00", [21 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cedilla\00", [24 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"super one\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"male ordinal\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"double right angle\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"one quarter\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"one half\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"three quarters\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inverted question\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"A GRAVE\00", [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"A ACUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A CIRCUMFLEX\00", [19 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"A TILDE\00", [24 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"A OOMLAUT\00", [22 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"A RING\00", [25 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AE\00", [29 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"C CIDELLA\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"E GRAVE\00", [24 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"E ACUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"E CIRCUMFLEX\00", [19 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"E OOMLAUT\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I GRAVE\00", [24 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I ACUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I CIRCUMFLEX\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"I OOMLAUT\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ETH\00", [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"N TILDE\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O GRAVE\00", [24 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O ACUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"O CIRCUMFLEX\00", [19 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"O TILDE\00", [24 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"O OOMLAUT\00", [22 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"multiplied by\00", [18 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"O STROKE\00", [23 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U GRAVE\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"U ACUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"U CIRCUMFLEX\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"U OOMLAUT\00", [22 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Y ACUTE\00", [24 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"THORN\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sharp s\00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a grave\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a acute\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a circumflex\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a tilde\00", [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a oomlaut\00", [22 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a ring\00", [25 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ae\00", [29 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"c cidella\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"e grave\00", [24 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"e acute\00", [24 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"e circumflex\00", [19 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"e oomlaut\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i grave\00", [24 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i acute\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i circumflex\00", [19 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i oomlaut\00", [22 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eth\00", [28 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"n tilde\00", [24 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"o grave\00", [24 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"o acute\00", [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"o circumflex\00", [19 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"o tilde\00", [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"o oomlaut\00", [22 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"divided by\00", [21 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"o stroke\00", [23 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u grave\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u acute\00", [24 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"u circumflex\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"u oomlaut\00", [22 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"y acute\00", [24 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"thorn\00", [26 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"y oomlaut\00", [22 x i8] zeroinitializer }, align 32
@spk_default_chars = dso_local global { [256 x ptr], [256 x i8] } { [256 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.43, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235], [256 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spk_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@spk_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.236, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @spk_mutex, i64 52), ptr getelementptr (i8, ptr @spk_mutex, i64 52) }, ptr @spk_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.237, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spk_mutex\00", [22 x i8] zeroinitializer }, align 32
@spk_set_key_info.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.238, ptr @.str.239, ptr @.str.240, i8 1, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.238 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spk_set_key_info\00", [47 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/accessibility/speakup/main.c\00", [59 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"version found %d should be %d\0A\00", [33 x i8] zeroinitializer }, align 32
@spk_set_key_info.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.238, ptr @.str.239, ptr @.str.241, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"too many key_infos (%d over %u)\0A\00", [63 x i8] zeroinitializer }, align 32
@spk_our_keys = dso_local global { [160 x ptr], [160 x i8] } zeroinitializer, align 32
@spk_shift_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@spk_set_key_info.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.238, ptr @.str.239, ptr @.str.242, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(%d) not valid shift state (max_allowed = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@spk_set_key_info.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.238, ptr @.str.239, ptr @.str.243, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.243 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(%d), not valid key, (max_allowed = %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@spk_characters = dso_local global { [256 x ptr], [256 x i8] } zeroinitializer, align 32
@spk_chartab = dso_local global { [256 x i16], [128 x i8] } zeroinitializer, align 32
@default_chartab = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1025, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 129, i16 65, i16 64, i16 64, i16 64, i16 64, i16 64, i16 65, i16 64, i16 64, i16 64, i16 64, i16 65, i16 65, i16 65, i16 64, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 9, i16 65, i16 64, i16 64, i16 64, i16 64, i16 65, i16 64, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 64, i16 64, i16 64, i16 64, i16 64, i16 64, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 64, i16 64, i16 64, i16 64, i16 0, i16 2052, i16 2052, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2052, i16 2052, i16 2052, i16 2048, i16 2052, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2052, i16 2052, i16 2048, i16 2048, i16 2048, i16 2048, i16 129, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2052, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 2048, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 2048, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 2048, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3], [128 x i8] zeroinitializer }, align 32
@keyboard_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @keyboard_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vt_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @vt_notifier_call, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cursor_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @cursor_done, i32 0, %struct.lockdep_map { ptr @.str.298, [2 x ptr] zeroinitializer, ptr @.str.298, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@speakup_task = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@speakup_console = dso_local global { [63 x ptr], [36 x i8] } zeroinitializer, align 32
@__initcall__kmod_speakup__246_2456_speakup_init6 = internal global ptr @speakup_init, section ".initcall6.init", align 4
@__exitcall_speakup_exit = internal global ptr @speakup_exit, section ".exitcall.exit", align 4
@spk_special_handler = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@spk_pitch_shift = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@synth_flags = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@spk_attrib_bleep = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_bleeps = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_no_intr = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_spell_delay = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_key_echo = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_say_word_ctl = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_say_ctrl = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_bell_pos = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_punc_mask = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@spk_punc_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_reading_punc = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@spk_paused = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@spk_key_buf = dso_local global { [600 x i8], [136 x i8] } zeroinitializer, align 32
@spk_unprocessed_sound = dso_local global { %struct.bleep, [20 x i8] } zeroinitializer, align 32
@keyboard_notifier_call.keycode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@in_keyboard_notifier = internal global { i1, [31 x i8] } zeroinitializer, align 32
@synth = external dso_local local_unnamed_addr global ptr, align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@tty = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@spk_keydown = internal global { i32, [28 x i8] } zeroinitializer, align 32
@spk_lastkey = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cursor_track = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@key_speakup = internal global { i8, [31 x i8] } zeroinitializer, align 32
@spk_key_locked = internal global { i1, [31 x i8] } zeroinitializer, align 32
@last_keycode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@last_spk_jiffy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@spk_close_press = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.244 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"0123456789+-*/\0D,.?()\00", [43 x i8] zeroinitializer }, align 32
@prev_cursor_track = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@this_speakup_key = internal global { i8, [31 x i8] } zeroinitializer, align 32
@spkup_handler = internal constant { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @do_nothing, ptr @speakup_goto, ptr @speech_kill, ptr @speakup_shut_up, ptr @speakup_cut, ptr @speakup_paste, ptr @say_first_char, ptr @say_last_char, ptr @say_char, ptr @say_prev_char, ptr @say_next_char, ptr @say_word, ptr @say_prev_word, ptr @say_next_word, ptr @say_line, ptr @say_prev_line, ptr @say_next_line, ptr @top_edge, ptr @bottom_edge, ptr @left_edge, ptr @right_edge, ptr @spell_word, ptr @spell_word, ptr @say_screen, ptr @say_position, ptr @say_attributes, ptr @speakup_off, ptr @speakup_parked, ptr @say_line, ptr @say_from_top, ptr @say_to_bottom, ptr @say_from_left, ptr @say_to_right, ptr @say_char_num, ptr @speakup_bits, ptr @speakup_bits, ptr @say_phonetic_char, ptr @speakup_bits, ptr @speakup_bits, ptr @speakup_bits, ptr @speakup_win_set, ptr @speakup_win_clear, ptr @speakup_win_enable, ptr @speakup_win_say, ptr @speakup_lock, ptr @speakup_help, ptr @toggle_cursoring, ptr @read_all_doc, ptr null], [60 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@handle_goto.goto_buf = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@handle_goto.num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.246 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s\0A\00", [27 x i8] zeroinitializer }, align 32
@spkup_write.rep_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@spkup_write.ch = internal global { i16, [30 x i8] } zeroinitializer, align 32
@spkup_write.old_ch = internal global { i16, [30 x i8] } zeroinitializer, align 32
@spkup_write.char_type = internal global { i16, [30 x i8] } zeroinitializer, align 32
@spkup_write.last_type = internal global { i16, [30 x i8] } zeroinitializer, align 32
@sentmarks = internal global { [2 x [10 x ptr]], [48 x i8] } zeroinitializer, align 32
@bn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@currsentence = internal global { i32, [28 x i8] } zeroinitializer, align 32
@numsentences = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.247 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@speak_char._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.239, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: cp == NULL!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"speak_char\00", [21 x i8] zeroinitializer }, align 32
@speak_char._entry_ptr = internal global ptr @speak_char._entry, section ".printk_index", align 4
@.str.251 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" %s%s \00", [25 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %s \00", [27 x i8] zeroinitializer }, align 32
@speakup_cut.err_buf = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set selection failed\00", [43 x i8] zeroinitializer }, align 32
@mark_cut_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@spk_xs = external dso_local local_unnamed_addr global i16, align 2
@spk_ys = external dso_local local_unnamed_addr global i16, align 2
@spk_sel_cons = external dso_local local_unnamed_addr global ptr, align 4
@spk_xe = external dso_local local_unnamed_addr global i16, align 2
@spk_ye = external dso_local local_unnamed_addr global i16, align 2
@speakup_cut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.255, ptr @.str.239, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\014%sEFAULT\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"speakup_cut\00", [20 x i8] zeroinitializer }, align 32
@speakup_cut._entry_ptr = internal global ptr @speakup_cut._entry, section ".printk_index", align 4
@speakup_cut._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.255, ptr @.str.239, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\014%sEINVAL\0A\00", [20 x i8] zeroinitializer }, align 32
@speakup_cut._entry_ptr.258 = internal global ptr @speakup_cut._entry.256, section ".printk_index", align 4
@speakup_cut._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.255, ptr @.str.239, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\014%sENOMEM\0A\00", [20 x i8] zeroinitializer }, align 32
@speakup_cut._entry_ptr.261 = internal global ptr @speakup_cut._entry.259, section ".printk_index", align 4
@buf = internal global { [256 x i16], [128 x i8] } zeroinitializer, align 32
@.str.262 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d, \00", [27 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%zd, \00", [26 x i8] zeroinitializer }, align 32
@spk_punc_masks = external dso_local local_unnamed_addr global [0 x i16], align 2
@spell_word.delay_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.4, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267], [44 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c". .\00", [28 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c". . .\00", [26 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@phonetic = internal constant { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293], [56 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alfa\00", [27 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bravo\00", [26 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"charlie\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delta\00", [26 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"echo\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"foxtrot\00", [24 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"golf\00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hotel\00", [26 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"india\00", [26 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"juliett\00", [24 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"keelo\00", [26 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"leema\00", [26 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mike\00", [27 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"november\00", [23 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oscar\00", [26 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"papa\00", [27 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"keh beck\00", [23 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"romeo\00", [26 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sierra\00", [25 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tango\00", [26 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uniform\00", [24 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"victer\00", [25 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"whiskey\00", [24 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"x ray\00", [26 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"yankee\00", [25 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"zulu\00", [27 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pb_edit = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.295 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@currbuf = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sentbuf = internal global { [2 x [256 x i16]], [256 x i8] } zeroinitializer, align 32
@sentbufend = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@cursor_con = internal global { i32, [28 x i8] } zeroinitializer, align 32
@read_all_key = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.296 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %d \00", [27 x i8] zeroinitializer }, align 32
@bleep.vals = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 350, i16 370, i16 392, i16 414, i16 440, i16 466, i16 491, i16 523, i16 554, i16 587, i16 619, i16 659], [40 x i8] zeroinitializer }, align 32
@is_cursor = internal global { i8, [31 x i8] } zeroinitializer, align 32
@.str.297 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.298 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/accessibility/speakup/main.c:1162\00", [54 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@spk_vars = internal global { [13 x %struct.var_t], [96 x i8] } { [13 x %struct.var_t] [%struct.var_t { i32 18, %union.anon.75 zeroinitializer }, %struct.var_t { i32 23, %union.anon.75 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 4, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 26, %union.anon.75 { %struct.num_var_t { ptr null, i32 1, i32 0, i32 3, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 27, %union.anon.75 { %struct.num_var_t { ptr null, i32 3, i32 0, i32 3, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 16, %union.anon.75 { %struct.num_var_t { ptr null, i32 30, i32 1, i32 200, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 24, %union.anon.75 { %struct.num_var_t { ptr null, i32 1, i32 0, i32 4, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 25, %union.anon.75 { %struct.num_var_t { ptr null, i32 1, i32 0, i32 4, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 17, %union.anon.75 { %struct.num_var_t { ptr null, i32 120, i32 50, i32 600, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 19, %union.anon.75 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 20, %union.anon.75 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 21, %union.anon.75 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 22, %union.anon.75 { %struct.num_var_t { ptr null, i32 1, i32 0, i32 2, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.75 zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@synth_time_vars = external dso_local global [0 x %struct.var_t], align 4
@speakup_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.300, ptr @.str.239, i32 2417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016speakup %s: initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speakup_init\00", [19 x i8] zeroinitializer }, align 32
@speakup_init._entry_ptr = internal global ptr @speakup_init._entry, section ".printk_index", align 4
@speakup_init._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.300, ptr @.str.239, i32 2418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016synth name on entry is: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@speakup_init._entry_ptr.303 = internal global ptr @speakup_init._entry.301, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.304 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 24, i64 25]
@__sancov_gen_cov_switch_values.305 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.306 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 95]
@__sancov_gen_cov_switch_values.307 = internal global [7 x i64] [i64 5, i64 8, i64 240, i64 242, i64 246, i64 247, i64 251]
@__sancov_gen_cov_switch_values.308 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.309 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.310 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.311 = internal global [5 x i64] [i64 3, i64 32, i64 4294967274, i64 4294967282, i64 4294967284]
@__sancov_gen_cov_switch_values.312 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32]
@__sancov_gen_cov_switch_values.313 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32]
@__sancov_gen_cov_switch_values.314 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@__sancov_gen_cov_switch_values.315 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32]
@__sancov_gen_cov_switch_values.316 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32]
@__sancov_gen_cov_switch_values.317 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32]
@__sancov_gen_cov_switch_values.318 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.319 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.320 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.321 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.322 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4294967295]
@__sancov_gen_cov_switch_values.323 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 49, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [11 x i8] c"synth_name\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 51, i32 7 }
@___asan_gen_.336 = private unnamed_addr constant [15 x i8] c"spk_bleep_time\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 62, i32 35 }
@___asan_gen_.339 = private unnamed_addr constant [19 x i8] c"spk_str_caps_start\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 68, i32 6 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"spk_str_caps_stop\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 69, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant [14 x i8] c"spk_str_pause\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 70, i32 6 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 73, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 73, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 74, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 74, i32 11 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 75, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 75, i32 11 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 76, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 76, i32 10 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 77, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 78, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 78, i32 14 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 79, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 80, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [14 x i8] c"spk_punc_info\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 72, i32 27 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"spk_key_defaults\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 89, i32 14 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 9 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 17 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 23 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 29 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 35 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 41 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 47 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 125, i32 53 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 9 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 15 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 21 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 27 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 33 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 39 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 45 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 126, i32 51 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 9 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 15 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 21 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 27 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 33 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 39 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 45 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 127, i32 51 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 128, i32 9 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 128, i32 15 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 128, i32 21 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 128, i32 27 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 9 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 18 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 36 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 46 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 56 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 130, i32 67 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 131, i32 6 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 132, i32 9 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 132, i32 23 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 132, i32 38 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 132, i32 46 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 132, i32 54 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 132, i32 63 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 133, i32 6 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 134, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 9 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 17 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 24 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 31 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 40 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 48 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 56 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 135, i32 63 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 136, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 136, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 9 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 18 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 27 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 35 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 45 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 56 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 137, i32 68 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 9 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 17 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 22 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 27 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 32 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 37 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 138, i32 42 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 9 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 19 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 24 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 29 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 34 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 39 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 139, i32 44 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 9 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 14 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 19 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 24 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 29 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 34 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 39 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 44 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 140, i32 49 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 141, i32 9 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 141, i32 14 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 141, i32 21 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 141, i32 37 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 141, i32 50 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 142, i32 6 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 143, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 9 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 19 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 24 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 29 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 34 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 39 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 44 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 144, i32 49 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 9 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 14 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 19 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 24 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 29 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 34 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 39 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 145, i32 44 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 9 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 14 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 19 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 24 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 29 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 34 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 39 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 146, i32 44 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 9 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 14 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 19 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 26 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 40 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 47 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 147, i32 62 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 148, i32 9 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 155, i32 9 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 155, i32 17 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 156, i32 9 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 156, i32 18 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 156, i32 28 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 156, i32 40 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 156, i32 47 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 156, i32 61 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 157, i32 9 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 157, i32 22 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 157, i32 35 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 157, i32 53 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 158, i32 9 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 158, i32 16 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 158, i32 31 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 158, i32 45 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 159, i32 9 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 159, i32 20 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 159, i32 37 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 159, i32 50 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 160, i32 9 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 160, i32 25 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 160, i32 34 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 160, i32 45 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 161, i32 9 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 161, i32 20 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 161, i32 33 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 161, i32 49 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 162, i32 9 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 162, i32 24 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 162, i32 36 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 163, i32 6 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 164, i32 9 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 164, i32 20 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 164, i32 31 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 164, i32 47 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 164, i32 58 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 165, i32 6 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 166, i32 9 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 166, i32 15 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 166, i32 28 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 166, i32 39 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 166, i32 50 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 167, i32 6 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 168, i32 9 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 168, i32 20 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 168, i32 31 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 168, i32 47 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 168, i32 60 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 169, i32 6 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 170, i32 9 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 170, i32 20 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 170, i32 31 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 170, i32 47 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 170, i32 58 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 171, i32 9 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 171, i32 26 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 171, i32 38 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 171, i32 49 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 172, i32 6 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 173, i32 9 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 173, i32 22 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 173, i32 33 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 173, i32 42 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 173, i32 53 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 174, i32 9 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 174, i32 20 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 174, i32 36 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 174, i32 47 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 174, i32 60 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 175, i32 9 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 175, i32 15 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 175, i32 28 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 175, i32 39 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 176, i32 9 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 176, i32 25 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 176, i32 38 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 176, i32 49 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 177, i32 6 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 178, i32 9 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 178, i32 22 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 178, i32 29 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 178, i32 40 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 178, i32 51 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 179, i32 6 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 180, i32 9 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 180, i32 20 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 180, i32 33 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 180, i32 47 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 180, i32 59 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 181, i32 6 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 182, i32 11 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 182, i32 27 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 182, i32 40 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 182, i32 51 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 182, i32 60 }
@___asan_gen_.1053 = private unnamed_addr constant [18 x i8] c"spk_default_chars\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 124, i32 7 }
@___asan_gen_.1059 = private unnamed_addr constant [10 x i8] c"spk_mutex\00", align 1
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 241, i32 1 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1228, i32 3 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1236, i32 3 }
@___asan_gen_.1077 = private unnamed_addr constant [13 x i8] c"spk_our_keys\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 87, i32 9 }
@___asan_gen_.1080 = private unnamed_addr constant [16 x i8] c"spk_shift_table\00", align 1
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 86, i32 16 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1252, i32 4 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1261, i32 4 }
@___asan_gen_.1089 = private unnamed_addr constant [15 x i8] c"spk_characters\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 122, i32 7 }
@___asan_gen_.1092 = private unnamed_addr constant [12 x i8] c"spk_chartab\00", align 1
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 189, i32 9 }
@___asan_gen_.1095 = private unnamed_addr constant [16 x i8] c"default_chartab\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 191, i32 16 }
@___asan_gen_.1098 = private unnamed_addr constant [24 x i8] c"keyboard_notifier_block\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 246, i32 30 }
@___asan_gen_.1101 = private unnamed_addr constant [18 x i8] c"vt_notifier_block\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 253, i32 30 }
@___asan_gen_.1104 = private unnamed_addr constant [13 x i8] c"cursor_timer\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant [13 x i8] c"speakup_task\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 231, i32 21 }
@___asan_gen_.1110 = private unnamed_addr constant [16 x i8] c"speakup_console\00", align 1
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 239, i32 18 }
@___asan_gen_.1113 = private unnamed_addr constant [20 x i8] c"spk_special_handler\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 58, i32 14 }
@___asan_gen_.1116 = private unnamed_addr constant [16 x i8] c"spk_pitch_shift\00", align 1
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 60, i32 7 }
@___asan_gen_.1119 = private unnamed_addr constant [12 x i8] c"synth_flags\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 60, i32 24 }
@___asan_gen_.1122 = private unnamed_addr constant [17 x i8] c"spk_attrib_bleep\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 62, i32 5 }
@___asan_gen_.1125 = private unnamed_addr constant [11 x i8] c"spk_bleeps\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 62, i32 23 }
@___asan_gen_.1128 = private unnamed_addr constant [12 x i8] c"spk_no_intr\00", align 1
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 63, i32 5 }
@___asan_gen_.1131 = private unnamed_addr constant [16 x i8] c"spk_spell_delay\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 63, i32 18 }
@___asan_gen_.1134 = private unnamed_addr constant [13 x i8] c"spk_key_echo\00", align 1
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 64, i32 5 }
@___asan_gen_.1137 = private unnamed_addr constant [17 x i8] c"spk_say_word_ctl\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 64, i32 19 }
@___asan_gen_.1140 = private unnamed_addr constant [13 x i8] c"spk_say_ctrl\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 65, i32 5 }
@___asan_gen_.1143 = private unnamed_addr constant [13 x i8] c"spk_bell_pos\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 65, i32 19 }
@___asan_gen_.1146 = private unnamed_addr constant [14 x i8] c"spk_punc_mask\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 66, i32 7 }
@___asan_gen_.1149 = private unnamed_addr constant [15 x i8] c"spk_punc_level\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 67, i32 5 }
@___asan_gen_.1152 = private unnamed_addr constant [17 x i8] c"spk_reading_punc\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 67, i32 21 }
@___asan_gen_.1155 = private unnamed_addr constant [11 x i8] c"spk_paused\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 71, i32 6 }
@___asan_gen_.1158 = private unnamed_addr constant [12 x i8] c"spk_key_buf\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 88, i32 8 }
@___asan_gen_.1161 = private unnamed_addr constant [22 x i8] c"spk_unprocessed_sound\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 232, i32 14 }
@___asan_gen_.1164 = private unnamed_addr constant [8 x i8] c"keycode\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2219, i32 13 }
@___asan_gen_.1167 = private unnamed_addr constant [21 x i8] c"in_keyboard_notifier\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 106, i32 27 }
@___asan_gen_.1171 = private unnamed_addr constant [12 x i8] c"spk_keydown\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 233, i32 12 }
@___asan_gen_.1174 = private unnamed_addr constant [12 x i8] c"spk_lastkey\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 234, i32 12 }
@___asan_gen_.1177 = private unnamed_addr constant [13 x i8] c"cursor_track\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 104, i32 26 }
@___asan_gen_.1180 = private unnamed_addr constant [12 x i8] c"key_speakup\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2041, i32 15 }
@___asan_gen_.1183 = private unnamed_addr constant [15 x i8] c"spk_key_locked\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant [13 x i8] c"last_keycode\00", align 1
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 236, i32 15 }
@___asan_gen_.1187 = private unnamed_addr constant [15 x i8] c"last_spk_jiffy\00", align 1
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 237, i32 15 }
@___asan_gen_.1190 = private unnamed_addr constant [16 x i8] c"spk_close_press\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2091, i32 32 }
@___asan_gen_.1194 = private unnamed_addr constant [18 x i8] c"prev_cursor_track\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 104, i32 44 }
@___asan_gen_.1197 = private unnamed_addr constant [17 x i8] c"this_speakup_key\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 236, i32 29 }
@___asan_gen_.1200 = private unnamed_addr constant [14 x i8] c"spkup_handler\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2055, i32 19 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2024, i32 16 }
@___asan_gen_.1206 = private unnamed_addr constant [9 x i8] c"goto_buf\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1938, i32 16 }
@___asan_gen_.1209 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1939, i32 13 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1976, i32 17 }
@___asan_gen_.1215 = private unnamed_addr constant [10 x i8] c"rep_count\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1080, i32 13 }
@___asan_gen_.1218 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1081, i32 13 }
@___asan_gen_.1221 = private unnamed_addr constant [7 x i8] c"old_ch\00", align 1
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1081, i32 24 }
@___asan_gen_.1224 = private unnamed_addr constant [10 x i8] c"char_type\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1082, i32 17 }
@___asan_gen_.1227 = private unnamed_addr constant [10 x i8] c"last_type\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1082, i32 28 }
@___asan_gen_.1230 = private unnamed_addr constant [10 x i8] c"sentmarks\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 861, i32 13 }
@___asan_gen_.1233 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 863, i32 12 }
@___asan_gen_.1236 = private unnamed_addr constant [13 x i8] c"currsentence\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 858, i32 12 }
@___asan_gen_.1239 = private unnamed_addr constant [13 x i8] c"numsentences\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 859, i32 12 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1103, i32 18 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 429, i32 17 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 439, i32 3 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 444, i32 16 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 449, i32 17 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 451, i32 17 }
@___asan_gen_.1266 = private unnamed_addr constant [8 x i8] c"err_buf\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 343, i32 20 }
@___asan_gen_.1269 = private unnamed_addr constant [14 x i8] c"mark_cut_flag\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 365, i32 3 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 368, i32 3 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 371, i32 3 }
@___asan_gen_.1291 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 61, i32 12 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1017, i32 15 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 783, i32 16 }
@___asan_gen_.1300 = private unnamed_addr constant [10 x i8] c"delay_str\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 702, i32 21 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 702, i32 41 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 702, i32 46 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 702, i32 51 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 702, i32 58 }
@___asan_gen_.1315 = private unnamed_addr constant [9 x i8] c"phonetic\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 110, i32 14 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 10 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 19 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 30 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 39 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 47 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 58 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 111, i32 66 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 2 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 11 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 22 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 31 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 40 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 48 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 112, i32 60 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 113, i32 6 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 2 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 14 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 23 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 33 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 42 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 53 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 114, i32 63 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 115, i32 2 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 115, i32 11 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 115, i32 21 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1042, i32 15 }
@___asan_gen_.1399 = private unnamed_addr constant [8 x i8] c"pb_edit\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1316, i32 35 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 505, i32 17 }
@___asan_gen_.1405 = private unnamed_addr constant [8 x i8] c"currbuf\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 862, i32 12 }
@___asan_gen_.1408 = private unnamed_addr constant [8 x i8] c"sentbuf\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 864, i32 12 }
@___asan_gen_.1411 = private unnamed_addr constant [11 x i8] c"sentbufend\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 860, i32 13 }
@___asan_gen_.1414 = private unnamed_addr constant [11 x i8] c"cursor_con\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1380, i32 12 }
@___asan_gen_.1417 = private unnamed_addr constant [13 x i8] c"read_all_key\00", align 1
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1384, i32 30 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1859, i32 49 }
@___asan_gen_.1423 = private unnamed_addr constant [5 x i8] c"vals\00", align 1
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 274, i32 21 }
@___asan_gen_.1426 = private unnamed_addr constant [10 x i8] c"is_cursor\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1378, i32 15 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1827, i32 16 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1162, i32 8 }
@___asan_gen_.1435 = private unnamed_addr constant [9 x i8] c"spk_vars\00", align 1
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 1271, i32 21 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2417, i32 2 }
@___asan_gen_.1447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1451 = private constant [40 x i8] c"../drivers/accessibility/speakup/main.c\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1451, i32 2418, i32 2 }
@llvm.compiler.used = appending global [401 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_quiet241, ptr @__UNIQUE_ID_quiettype239, ptr @__UNIQUE_ID_synth240, ptr @__UNIQUE_ID_synthtype238, ptr @__UNIQUE_ID_version237, ptr @__exitcall_speakup_exit, ptr @__initcall__kmod_speakup__246_2456_speakup_init6, ptr @__modver_attr, ptr @__param_quiet, ptr @__param_synth, ptr @speak_char._entry, ptr @speak_char._entry_ptr, ptr @speakup_cut._entry, ptr @speakup_cut._entry.256, ptr @speakup_cut._entry.259, ptr @speakup_cut._entry_ptr, ptr @speakup_cut._entry_ptr.258, ptr @speakup_cut._entry_ptr.261, ptr @speakup_exit, ptr @speakup_init._entry, ptr @speakup_init._entry.301, ptr @speakup_init._entry_ptr, ptr @speakup_init._entry_ptr.303, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @synth_name, ptr @spk_bleep_time, ptr @spk_str_caps_start, ptr @spk_str_caps_stop, ptr @spk_str_pause, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @spk_punc_info, ptr @spk_key_defaults, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @spk_default_chars, ptr @.str.236, ptr @spk_mutex, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @spk_our_keys, ptr @spk_shift_table, ptr @.str.242, ptr @.str.243, ptr @spk_characters, ptr @spk_chartab, ptr @default_chartab, ptr @keyboard_notifier_block, ptr @vt_notifier_block, ptr @cursor_timer, ptr @speakup_task, ptr @speakup_console, ptr @spk_special_handler, ptr @spk_pitch_shift, ptr @synth_flags, ptr @spk_attrib_bleep, ptr @spk_bleeps, ptr @spk_no_intr, ptr @spk_spell_delay, ptr @spk_key_echo, ptr @spk_say_word_ctl, ptr @spk_say_ctrl, ptr @spk_bell_pos, ptr @spk_punc_mask, ptr @spk_punc_level, ptr @spk_reading_punc, ptr @spk_paused, ptr @spk_key_buf, ptr @spk_unprocessed_sound, ptr @keyboard_notifier_call.keycode, ptr @in_keyboard_notifier, ptr @tty, ptr @spk_keydown, ptr @spk_lastkey, ptr @cursor_track, ptr @key_speakup, ptr @spk_key_locked, ptr @last_keycode, ptr @last_spk_jiffy, ptr @spk_close_press, ptr @.str.244, ptr @prev_cursor_track, ptr @this_speakup_key, ptr @spkup_handler, ptr @.str.245, ptr @handle_goto.goto_buf, ptr @handle_goto.num, ptr @.str.246, ptr @spkup_write.rep_count, ptr @spkup_write.ch, ptr @spkup_write.old_ch, ptr @spkup_write.char_type, ptr @spkup_write.last_type, ptr @sentmarks, ptr @bn, ptr @currsentence, ptr @numsentences, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @speakup_cut.err_buf, ptr @mark_cut_flag, ptr @.str.254, ptr @.str.255, ptr @.str.257, ptr @.str.260, ptr @buf, ptr @.str.262, ptr @.str.263, ptr @spell_word.delay_str, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @phonetic, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @pb_edit, ptr @.str.295, ptr @currbuf, ptr @sentbuf, ptr @sentbufend, ptr @cursor_con, ptr @read_all_key, ptr @.str.296, ptr @bleep.vals, ptr @is_cursor, ptr @.str.297, ptr @.str.298, ptr @spk_vars, ptr @.str.299, ptr @.str.300, ptr @.str.302], section "llvm.metadata"
@0 = internal global [379 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_bleep_time to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_str_caps_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_str_caps_stop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_str_pause to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_punc_info to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_key_defaults to i32), i32 446, i32 544, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_default_chars to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_our_keys to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_shift_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_characters to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_chartab to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_chartab to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyboard_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_console to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_special_handler to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_pitch_shift to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_flags to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_attrib_bleep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_bleeps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_no_intr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_spell_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_key_echo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_say_word_ctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_say_ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_bell_pos to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_punc_mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_punc_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_reading_punc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_paused to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_key_buf to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_unprocessed_sound to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyboard_notifier_call.keycode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_keyboard_notifier to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_keydown to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_lastkey to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_track to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_speakup to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_key_locked to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_keycode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_spk_jiffy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_close_press to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prev_cursor_track to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @this_speakup_key to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkup_handler to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_goto.goto_buf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_goto.num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkup_write.rep_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkup_write.ch to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkup_write.old_ch to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkup_write.char_type to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkup_write.last_type to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sentmarks to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @currsentence to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numsentences to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speak_char._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_cut.err_buf to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_cut_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_cut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_cut._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_cut._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spell_word.delay_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonetic to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pb_edit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @currbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sentbuf to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sentbufend to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cursor_con to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_all_key to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bleep.vals to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_cursor to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_vars to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_init._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_set_key_info(ptr nocapture noundef readonly %key_info, ptr noundef %k_buffer) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %incdec.ptr = getelementptr i8, ptr %key_info, i32 1
  %0 = ptrtoint ptr %key_info to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_info, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %1)
  %cmp.not = icmp eq i8 %1, 119
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spk_set_key_info.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spk_set_key_info, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !798

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spk_set_key_info.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.240, i32 noundef %conv, i32 noundef 119) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %incdec.ptr, align 1
  %arrayidx = getelementptr i8, ptr %key_info, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv7, 1
  %conv8 = zext i8 %3 to i32
  %add9 = add nuw nsw i32 %conv8, 1
  %mul = mul nuw nsw i32 %add, %add9
  %add11 = add nuw nsw i32 %mul, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 531, i32 %mul)
  %cmp12 = icmp ugt i32 %mul, 531
  br i1 %cmp12, label %do.body15, label %if.end33

do.body15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spk_set_key_info.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spk_set_key_info, %if.then27)) #11
          to label %cleanup [label %if.then27], !srcloc !798

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spk_set_key_info.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.241, i32 noundef %add11, i32 noundef 600) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end6
  %6 = call ptr @memset(ptr %k_buffer, i32 0, i32 64)
  %7 = call ptr @memset(ptr getelementptr inbounds ([160 x ptr], ptr @spk_our_keys, i32 0, i32 1), i32 0, i32 636)
  store ptr %k_buffer, ptr @spk_shift_table, align 4
  store ptr %k_buffer, ptr @spk_our_keys, align 4
  %add.ptr = getelementptr i8, ptr %k_buffer, i32 64
  %add34 = add nuw nsw i32 %mul, 3
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %incdec.ptr, i32 %add34)
  %add.ptr35 = getelementptr i8, ptr %k_buffer, i32 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp36.not136 = icmp eq i8 %5, 0
  br i1 %cmp36.not136, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.0138 = phi i32 [ %inc, %if.end60.for.body_crit_edge ], [ 1, %if.end33.for.body_crit_edge ]
  %cp1.0137 = phi ptr [ %incdec.ptr38, %if.end60.for.body_crit_edge ], [ %add.ptr35, %if.end33.for.body_crit_edge ]
  %9 = ptrtoint ptr %cp1.0137 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cp1.0137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %10)
  %cmp40 = icmp ugt i8 %10, 63
  br i1 %cmp40, label %do.body43, label %if.end60

do.body43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spk_set_key_info.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spk_set_key_info, %if.then55)) #11
          to label %cleanup [label %if.then55], !srcloc !798

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %conv39.le = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spk_set_key_info.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.242, i32 noundef %conv39.le, i32 noundef 64) #11
  br label %cleanup

if.end60:                                         ; preds = %for.body
  %conv39 = zext i8 %10 to i32
  %incdec.ptr38 = getelementptr i8, ptr %cp1.0137, i32 1
  %conv61 = trunc i32 %i.0138 to i8
  %arrayidx62 = getelementptr i8, ptr %k_buffer, i32 %conv39
  %11 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv61, ptr %arrayidx62, align 1
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond = icmp eq i32 %i.0138, %conv7
  br i1 %exitcond, label %if.end60.for.end_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end60.for.end_crit_edge, %if.end33.for.end_crit_edge
  %cp1.0.lcssa = phi ptr [ %add.ptr35, %if.end33.for.end_crit_edge ], [ %incdec.ptr38, %if.end60.for.end_crit_edge ]
  %incdec.ptr63 = getelementptr i8, ptr %cp1.0.lcssa, i32 1
  %12 = ptrtoint ptr %incdec.ptr63 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %incdec.ptr63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool64.not140 = icmp eq i8 %13, 0
  br i1 %tobool64.not140, label %for.end.cleanup_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %if.end86.while.body_crit_edge, %for.end.while.body_crit_edge
  %14 = phi i8 [ %17, %if.end86.while.body_crit_edge ], [ %13, %for.end.while.body_crit_edge ]
  %cp1.1141 = phi ptr [ %add.ptr90, %if.end86.while.body_crit_edge ], [ %incdec.ptr63, %for.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %14)
  %cmp66 = icmp ugt i8 %14, -97
  br i1 %cmp66, label %do.body69, label %if.end86

do.body69:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spk_set_key_info.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spk_set_key_info, %if.then81)) #11
          to label %cleanup [label %if.then81], !srcloc !798

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #13
  %conv65.le = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spk_set_key_info.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.243, i32 noundef %conv65.le, i32 noundef 160) #11
  br label %cleanup

if.end86:                                         ; preds = %while.body
  %conv65 = zext i8 %14 to i32
  %arrayidx88 = getelementptr [160 x ptr], ptr @spk_our_keys, i32 0, i32 %conv65
  %15 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cp1.1141, ptr %arrayidx88, align 4
  %add.ptr90 = getelementptr i8, ptr %cp1.1141, i32 %add
  %16 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr90, align 1
  %tobool64.not = icmp eq i8 %17, 0
  br i1 %tobool64.not, label %if.end86.cleanup_crit_edge, label %if.end86.while.body_crit_edge

if.end86.while.body_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end86.cleanup_crit_edge, %if.then81, %do.body69, %for.end.cleanup_crit_edge, %if.then55, %do.body43, %if.then27, %do.body15, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then27 ], [ -22, %if.then55 ], [ -22, %if.then81 ], [ -22, %do.body ], [ -22, %do.body15 ], [ -22, %do.body43 ], [ -22, %do.body69 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spk_reset_default_chars() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [256 x ptr], ptr @spk_characters, i32 0, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx2 = getelementptr [256 x ptr], ptr @spk_default_chars, i32 0, i32 %i.010
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %cmp3.not = icmp eq ptr %1, %3
  br i1 %cmp3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr @spk_characters, ptr @spk_default_chars, i32 1024)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spk_reset_default_chartab() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @spk_chartab, ptr @default_chartab, i32 512)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @speakup_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_keyboard_notifier(ptr noundef nonnull @keyboard_notifier_block) #11
  %call1 = tail call i32 @unregister_vt_notifier(ptr noundef nonnull @vt_notifier_block) #11
  tail call void @speakup_unregister_devsynth() #11
  tail call void @speakup_cancel_selection() #11
  tail call void @speakup_cancel_paste() #11
  %call2 = tail call i32 @del_timer_sync(ptr noundef nonnull @cursor_timer) #11
  %0 = load ptr, ptr @speakup_task, align 4
  %call3 = tail call i32 @kthread_stop(ptr noundef %0) #11
  store ptr null, ptr @speakup_task, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @spk_mutex, i32 noundef 0) #11
  tail call void @synth_release() #11
  tail call void @mutex_unlock(ptr noundef nonnull @spk_mutex) #11
  tail call void @spk_ttyio_unregister_ldisc() #11
  tail call void @speakup_kobj_exit() #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.030 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %i.030
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %2) #11
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @speakup_remove_virtual_keyboard() #11
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end
  %i.131 = phi i32 [ 0, %for.end ], [ %inc8, %for.body6.for.body6_crit_edge ]
  tail call void @speakup_unregister_var(i32 noundef %i.131) #11
  %inc8 = add nuw nsw i32 %i.131, 1
  %exitcond33.not = icmp eq i32 %inc8, 43
  br i1 %exitcond33.not, label %for.body6.for.body12_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.body6.for.body12_crit_edge:                   ; preds = %for.body6
  br label %for.body12

for.body12:                                       ; preds = %for.inc17.for.body12_crit_edge, %for.body6.for.body12_crit_edge
  %i.232 = phi i32 [ %inc18, %for.inc17.for.body12_crit_edge ], [ 0, %for.body6.for.body12_crit_edge ]
  %arrayidx13 = getelementptr [256 x ptr], ptr @spk_characters, i32 0, i32 %i.232
  %3 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr [256 x ptr], ptr @spk_default_chars, i32 0, i32 %i.232
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx14, align 4
  %cmp15.not = icmp eq ptr %4, %6
  br i1 %cmp15.not, label %for.body12.for.inc17_crit_edge, label %if.then

for.body12.for.inc17_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17

if.then:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %4) #11
  br label %for.inc17

for.inc17:                                        ; preds = %if.then, %for.body12.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %i.232, 1
  %exitcond34.not = icmp eq i32 %inc18, 256
  br i1 %exitcond34.not, label %for.end19, label %for.inc17.for.body12_crit_edge

for.inc17.for.body12_crit_edge:                   ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

for.end19:                                        ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_free_user_msgs() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_keyboard_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_vt_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_unregister_devsynth() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_cancel_selection() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_cancel_paste() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_release() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_ttyio_unregister_ldisc() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_kobj_exit() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_remove_virtual_keyboard() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_unregister_var(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_free_user_msgs() local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @speakup_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  tail call void @spk_initialize_msgs() #11
  tail call void @spk_reset_default_chars()
  %3 = call ptr @memcpy(ptr @spk_chartab, ptr @default_chartab, i32 512)
  %4 = load ptr, ptr @synth_name, align 4
  %call = tail call ptr @spk_strlwr(ptr noundef %4) #11
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vc_cols, align 4
  store i32 %6, ptr getelementptr inbounds ([13 x %struct.var_t], ptr @spk_vars, i32 0, i32 0, i32 1, i32 0, i32 3), align 4
  %7 = load i32, ptr @spk_vars, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %7)
  %cmp.not131 = icmp eq i32 %7, 43
  br i1 %cmp.not131, label %entry.for.cond1.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth_time_vars to i32))
  %8 = load i32, ptr @synth_time_vars, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %8)
  %cmp5133 = icmp ult i32 %8, 43
  br i1 %cmp5133, label %for.cond1.preheader.for.body6_crit_edge, label %for.cond1.preheader.for.body14.preheader_crit_edge

for.cond1.preheader.for.body14.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.preheader

for.cond1.preheader.for.body6_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body6

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %var.0132 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ @spk_vars, %entry.for.body_crit_edge ]
  tail call void @speakup_register_var(ptr noundef %var.0132) #11
  %incdec.ptr = getelementptr %struct.var_t, ptr %var.0132, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %10, 43
  br i1 %cmp.not, label %for.body.for.cond1.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond1.preheader.for.body6_crit_edge
  %var.1134 = phi ptr [ %incdec.ptr8, %for.body6.for.body6_crit_edge ], [ @synth_time_vars, %for.cond1.preheader.for.body6_crit_edge ]
  tail call void @speakup_register_var(ptr noundef %var.1134) #11
  %incdec.ptr8 = getelementptr %struct.var_t, ptr %var.1134, i32 1
  %11 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr8, align 4
  %cmp5 = icmp ult i32 %12, 43
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.body14.preheader_crit_edge

for.body6.for.body14.preheader_crit_edge:         ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14.preheader

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body6

for.body14.preheader:                             ; preds = %for.body6.for.body14.preheader_crit_edge, %for.cond1.preheader.for.body14.preheader_crit_edge
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.0135 = phi i32 [ %inc, %for.body14.for.body14_crit_edge ], [ 1, %for.body14.preheader ]
  %call15 = tail call i32 @spk_set_mask_bits(ptr noundef null, i32 noundef %i.0135, i32 noundef 2) #11
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond = icmp eq i32 %inc, 8
  br i1 %exitcond, label %for.end17, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.end17:                                        ; preds = %for.body14
  %call18 = tail call i32 @spk_set_key_info(ptr noundef nonnull @spk_key_defaults, ptr noundef nonnull @spk_key_buf)
  %call19 = tail call i32 @speakup_add_virtual_keyboard() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool.not = icmp eq i32 %call19, 0
  br i1 %tobool.not, label %for.end17.for.body23_crit_edge, label %for.end17.error_virtkeyboard_crit_edge

for.end17.error_virtkeyboard_crit_edge:           ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_virtkeyboard

for.end17.for.body23_crit_edge:                   ; preds = %for.end17
  br label %for.body23

for.body23:                                       ; preds = %for.inc35.for.body23_crit_edge, %for.end17.for.body23_crit_edge
  %i.1136 = phi i32 [ %inc36, %for.inc35.for.body23_crit_edge ], [ 0, %for.end17.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %i.1136
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx24, align 4
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %for.body23.for.inc35_crit_edge, label %if.then27

for.body23.for.inc35_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35

if.then27:                                        ; preds = %for.body23
  %call30 = tail call fastcc i32 @speakup_allocate(ptr noundef nonnull %14, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then27.for.inc35_crit_edge, label %if.then27.error_kobjects_crit_edge

if.then27.error_kobjects_crit_edge:               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_kobjects

if.then27.for.inc35_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc35

for.inc35:                                        ; preds = %if.then27.for.inc35_crit_edge, %for.body23.for.inc35_crit_edge
  %inc36 = add nuw nsw i32 %i.1136, 1
  %exitcond140.not = icmp eq i32 %inc36, 63
  br i1 %exitcond140.not, label %for.end37, label %for.inc35.for.body23_crit_edge

for.inc35.for.body23_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.end37:                                        ; preds = %for.inc35
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @spk_quiet_boot to i32))
  %15 = load i8, ptr @spk_quiet_boot, align 1, !range !799
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool38.not = icmp eq i8 %15, 0
  br i1 %tobool38.not, label %for.end37.if.end43_crit_edge, label %if.then39

for.end37.if.end43_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then39:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 3
  %16 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %17 to i32
  %arrayidx40 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx40, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shut_up, align 1
  %22 = or i8 %21, 1
  store i8 %22, ptr %shut_up, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %for.end37.if.end43_crit_edge
  %call44 = tail call i32 @speakup_kobj_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.error_kobjects_crit_edge

if.end43.error_kobjects_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_kobjects

if.end47:                                         ; preds = %if.end43
  tail call void @spk_ttyio_register_ldisc() #11
  %23 = load ptr, ptr @synth_name, align 4
  %call48 = tail call i32 @synth_init(ptr noundef %23) #11
  tail call void @speakup_register_devsynth() #11
  %call49 = tail call i32 @register_keyboard_notifier(ptr noundef nonnull @keyboard_notifier_block) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.error_kbdnotifier_crit_edge

if.end47.error_kbdnotifier_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_kbdnotifier

if.end52:                                         ; preds = %if.end47
  %call53 = tail call i32 @register_vt_notifier(ptr noundef nonnull @vt_notifier_block) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.error_vtnotifier_crit_edge

if.end52.error_vtnotifier_crit_edge:              ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_vtnotifier

if.end56:                                         ; preds = %if.end52
  %call57 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @speakup_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.1) #11
  store ptr %call57, ptr @speakup_task, align 4
  %cmp.i = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call57 to i32
  %call69 = tail call i32 @unregister_vt_notifier(ptr noundef nonnull @vt_notifier_block) #11
  br label %error_vtnotifier

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @set_user_nice(ptr noundef %call57, i32 noundef 10) #11
  %25 = load ptr, ptr @speakup_task, align 4
  %call62 = tail call i32 @wake_up_process(ptr noundef %25) #11
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.2) #14
  %26 = load ptr, ptr @synth_name, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef %26) #14
  br label %out

error_vtnotifier:                                 ; preds = %if.then59, %if.end52.error_vtnotifier_crit_edge
  %err.0 = phi i32 [ %call53, %if.end52.error_vtnotifier_crit_edge ], [ %24, %if.then59 ]
  %call70 = tail call i32 @unregister_keyboard_notifier(ptr noundef nonnull @keyboard_notifier_block) #11
  %call71 = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  br label %error_kbdnotifier

error_kbdnotifier:                                ; preds = %error_vtnotifier, %if.end47.error_kbdnotifier_crit_edge
  %err.1 = phi i32 [ %call49, %if.end47.error_kbdnotifier_crit_edge ], [ %err.0, %error_vtnotifier ]
  tail call void @speakup_unregister_devsynth() #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @spk_mutex, i32 noundef 0) #11
  tail call void @synth_release() #11
  tail call void @mutex_unlock(ptr noundef nonnull @spk_mutex) #11
  tail call void @speakup_kobj_exit() #11
  br label %error_kobjects

error_kobjects:                                   ; preds = %error_kbdnotifier, %if.end43.error_kobjects_crit_edge, %if.then27.error_kobjects_crit_edge
  %err.2 = phi i32 [ %call44, %if.end43.error_kobjects_crit_edge ], [ %err.1, %error_kbdnotifier ], [ %call30, %if.then27.error_kobjects_crit_edge ]
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %error_kobjects
  %i.2137 = phi i32 [ 0, %error_kobjects ], [ %inc78, %for.body75.for.body75_crit_edge ]
  %arrayidx76 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %i.2137
  %27 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx76, align 4
  tail call void @kfree(ptr noundef %28) #11
  %inc78 = add nuw nsw i32 %i.2137, 1
  %exitcond141.not = icmp eq i32 %inc78, 63
  br i1 %exitcond141.not, label %for.end79, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body75

for.end79:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @speakup_remove_virtual_keyboard() #11
  br label %error_virtkeyboard

error_virtkeyboard:                               ; preds = %for.end79, %for.end17.error_virtkeyboard_crit_edge
  %err.3 = phi i32 [ %call19, %for.end17.error_virtkeyboard_crit_edge ], [ %err.2, %for.end79 ]
  br label %for.body83

for.body83:                                       ; preds = %for.body83.for.body83_crit_edge, %error_virtkeyboard
  %i.3138 = phi i32 [ 0, %error_virtkeyboard ], [ %inc85, %for.body83.for.body83_crit_edge ]
  tail call void @speakup_unregister_var(i32 noundef %i.3138) #11
  %inc85 = add nuw nsw i32 %i.3138, 1
  %exitcond142.not = icmp eq i32 %inc85, 43
  br i1 %exitcond142.not, label %for.body83.for.body90_crit_edge, label %for.body83.for.body83_crit_edge

for.body83.for.body83_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83

for.body83.for.body90_crit_edge:                  ; preds = %for.body83
  br label %for.body90

for.body90:                                       ; preds = %for.inc98.for.body90_crit_edge, %for.body83.for.body90_crit_edge
  %i.4139 = phi i32 [ %inc99, %for.inc98.for.body90_crit_edge ], [ 0, %for.body83.for.body90_crit_edge ]
  %arrayidx91 = getelementptr [256 x ptr], ptr @spk_characters, i32 0, i32 %i.4139
  %29 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx91, align 4
  %arrayidx92 = getelementptr [256 x ptr], ptr @spk_default_chars, i32 0, i32 %i.4139
  %31 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx92, align 4
  %cmp93.not = icmp eq ptr %30, %32
  br i1 %cmp93.not, label %for.body90.for.inc98_crit_edge, label %if.then95

for.body90.for.inc98_crit_edge:                   ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc98

if.then95:                                        ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %30) #11
  br label %for.inc98

for.inc98:                                        ; preds = %if.then95, %for.body90.for.inc98_crit_edge
  %inc99 = add nuw nsw i32 %i.4139, 1
  %exitcond143.not = icmp eq i32 %inc99, 256
  br i1 %exitcond143.not, label %for.end100, label %for.inc98.for.body90_crit_edge

for.inc98.for.body90_crit_edge:                   ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body90

for.end100:                                       ; preds = %for.inc98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_free_user_msgs() #11
  br label %out

out:                                              ; preds = %for.end100, %if.end61
  %err.4 = phi i32 [ %err.3, %for.end100 ], [ 0, %if.end61 ]
  ret i32 %err.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keyboard_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readonly %_param) #1 align 64 {
entry:
  %num_buf.i.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_param, align 4
  %down = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 1
  %2 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  store i1 true, ptr @in_keyboard_notifier, align 4
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @speakup_fake_key_pressed() #11
  br i1 %call, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  %6 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %if.end4.out_crit_edge [
    i32 1, label %sw.bb
    i32 5, label %sw.bb21
    i32 4, label %sw.bb5
  ]

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  store i32 %8, ptr @keyboard_notifier_call.keycode, align 4
  br label %out

sw.bb5:                                           ; preds = %if.end4
  %shift = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 2
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %11 = load i32, ptr @keyboard_notifier_call.keycode, align 4
  %value6 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 4
  %12 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value6, align 4
  %conv3.i = trunc i32 %13 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %14 = load ptr, ptr @synth, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %sw.bb5.if.else_crit_edge, label %do.body4.i

sw.bb5.if.else_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.body4.i:                                       ; preds = %sw.bb5
  %15 = lshr i32 %13, 8
  %conv1.i = trunc i32 %15 to i8
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %tty.i = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %tty.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty.i, align 4
  store ptr %17, ptr @tty, align 4
  %18 = and i32 %13, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %18)
  %cmp10.i = icmp eq i32 %18, 61440
  %sub.i = add i8 %conv1.i, 16
  %type.0.i = select i1 %cmp10.i, i8 %sub.i, i8 %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type.0.i)
  %cmp17.i = icmp eq i8 %type.0.i, 3
  br i1 %cmp17.i, label %land.lhs.true.i, label %do.body4.i.if.end31.i_crit_edge

do.body4.i.if.end31.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %do.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %19 = load i32, ptr @fg_console, align 4
  %call19.i = tail call i32 @vt_get_leds(i32 noundef %19, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %if.then21.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then21.i:                                      ; preds = %land.lhs.true.i
  br i1 %tobool.not, label %speakup_key.exit.thread74, label %if.end121.thread.i

speakup_key.exit.thread74:                        ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @spk_keydown, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call6.i) #11
  br label %if.else

if.end121.thread.i:                               ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv3.mask.i = and i32 %13, 255
  %arrayidx.i = getelementptr i8, ptr @.str.244, i32 %conv3.mask.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv25.i = zext i8 %21 to i16
  store i16 %conv25.i, ptr @spk_lastkey, align 2
  %22 = load i32, ptr @spk_keydown, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr @spk_keydown, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vc_num.i, align 4
  %idxprom26.i = zext i16 %24 to i32
  %arrayidx27.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom26.i
  %25 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx27.i, align 4
  %parked.i = getelementptr inbounds %struct.st_spk_t, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %parked.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %parked.i, align 4
  %29 = and i8 %28, -2
  store i8 %29, ptr %parked.i, align 4
  br label %lor.lhs.false123.i

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %do.body4.i.if.end31.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %11)
  %cmp32.i = icmp sgt i32 %11, 159
  br i1 %cmp32.i, label %if.end31.i.no_map.i_crit_edge, label %if.end35.i

if.end31.i.no_map.i_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.i

if.end35.i:                                       ; preds = %if.end31.i
  %arrayidx36.i = getelementptr [160 x ptr], ptr @spk_our_keys, i32 0, i32 %11
  %30 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx36.i, align 4
  %tobool37.not.i = icmp eq ptr %31, null
  br i1 %tobool37.not.i, label %if.end35.i.no_map.i_crit_edge, label %if.end39.i

if.end35.i.no_map.i_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.i

if.end39.i:                                       ; preds = %if.end35.i
  %32 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp40.i = icmp ne i32 %32, 4
  %33 = or i1 %tobool.not, %cmp40.i
  br i1 %33, label %if.end39.i.if.end46.i_crit_edge, label %if.then44.i

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end39.i
  %34 = zext i8 %conv3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.304)
  switch i8 %conv3.i, label %sw.default.i [
    i8 0, label %if.then44.i.if.end46.i_crit_edge
    i8 3, label %if.then44.i.if.end46.i_crit_edge77
    i8 1, label %if.then44.i.if.end46.i_crit_edge78
    i8 2, label %if.then44.i.if.end46.i_crit_edge79
    i8 24, label %if.then44.i.if.end46.i_crit_edge80
    i8 25, label %if.then44.i.if.end46.i_crit_edge81
  ]

if.then44.i.if.end46.i_crit_edge81:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i.if.end46.i_crit_edge80:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i.if.end46.i_crit_edge79:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i.if.end46.i_crit_edge78:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i.if.end46.i_crit_edge77:               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i.if.end46.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

sw.default.i:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @stop_read_all(ptr noundef %1) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %sw.default.i, %if.then44.i.if.end46.i_crit_edge, %if.then44.i.if.end46.i_crit_edge77, %if.then44.i.if.end46.i_crit_edge78, %if.then44.i.if.end46.i_crit_edge79, %if.then44.i.if.end46.i_crit_edge80, %if.then44.i.if.end46.i_crit_edge81, %if.end39.i.if.end46.i_crit_edge
  %35 = load i8, ptr @key_speakup, align 1
  %36 = trunc i32 %10 to i8
  %37 = and i8 %36, 15
  %conv49.i = add i8 %35, %37
  %38 = load ptr, ptr @spk_shift_table, align 4
  %idxprom50.i = zext i8 %conv49.i to i32
  %arrayidx51.i = getelementptr i8, ptr %38, i32 %idxprom50.i
  %39 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool52.not.i = icmp eq i8 %40, 0
  br i1 %tobool52.not.i, label %if.end46.i.no_map.i_crit_edge, label %if.then53.i

if.end46.i.no_map.i_crit_edge:                    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.i

if.then53.i:                                      ; preds = %if.end46.i
  %idxprom54.i = zext i8 %40 to i32
  %arrayidx55.i = getelementptr i8, ptr %31, i32 %idxprom54.i
  %41 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx55.i, align 1
  %43 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.305)
  switch i8 %42, label %if.end83.i [
    i8 0, label %if.then53.i.no_map.i_crit_edge
    i8 -128, label %if.then61.i
  ]

if.then53.i.no_map.i_crit_edge:                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.i

if.then61.i:                                      ; preds = %if.then53.i
  %.b.i = load i1, ptr @spk_key_locked, align 1
  br i1 %.b.i, label %if.then61.i.if.end66.i_crit_edge, label %if.then63.i

if.then61.i.if.end66.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66.i

if.then63.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv65.i = select i1 %tobool.not, i8 0, i8 16
  store i8 %conv65.i, ptr @key_speakup, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then63.i, %if.then61.i.if.end66.i_crit_edge
  br i1 %tobool.not, label %if.end66.i.speakup_key.exit.thread71_crit_edge, label %lor.lhs.false.i

if.end66.i.speakup_key.exit.thread71_crit_edge:   ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_key.exit.thread71

lor.lhs.false.i:                                  ; preds = %if.end66.i
  %vc_num68.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %vc_num68.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vc_num68.i, align 4
  %idxprom69.i = zext i16 %45 to i32
  %arrayidx70.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom69.i
  %46 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx70.i, align 4
  %shut_up.i = getelementptr inbounds %struct.st_spk_t, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %shut_up.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %shut_up.i, align 1
  %50 = and i8 %49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool73.not.i = icmp eq i8 %50, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %lor.lhs.false.i.speakup_key.exit.thread71_crit_edge

lor.lhs.false.i.speakup_key.exit.thread71_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_key.exit.thread71

if.end75.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %and81.i = and i8 %49, -2
  %51 = ptrtoint ptr %shut_up.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %and81.i, ptr %shut_up.i, align 1
  tail call void @spk_do_flush() #11
  br label %speakup_key.exit.thread71

if.end83.i:                                       ; preds = %if.then53.i
  br i1 %tobool.not, label %if.end83.i.speakup_key.exit.thread71_crit_edge, label %if.end86.i

if.end83.i.speakup_key.exit.thread71_crit_edge:   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_key.exit.thread71

if.end86.i:                                       ; preds = %if.end83.i
  %52 = load i8, ptr @last_keycode, align 1
  %conv87.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv87.i)
  %cmp88.i = icmp eq i32 %11, %conv87.i
  br i1 %cmp88.i, label %land.lhs.true90.i, label %if.end86.i.no_map.thread.i_crit_edge

if.end86.i.no_map.thread.i_crit_edge:             ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.thread.i

land.lhs.true90.i:                                ; preds = %if.end86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %54 = load i32, ptr @last_spk_jiffy, align 4
  %add92.neg.i = add i32 %53, -50
  %sub93.i = sub i32 %add92.neg.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub93.i)
  %cmp94.i = icmp slt i32 %sub93.i, 0
  br i1 %cmp94.i, label %if.then96.i, label %land.lhs.true90.i.no_map.thread.i_crit_edge

land.lhs.true90.i.no_map.thread.i_crit_edge:      ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.thread.i

if.then96.i:                                      ; preds = %land.lhs.true90.i
  store i1 true, ptr @spk_close_press, align 1
  %add98.i = add nuw nsw i32 %idxprom50.i, 32
  %arrayidx99.i = getelementptr i8, ptr %38, i32 %add98.i
  %55 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx99.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool101.not.i = icmp eq i8 %56, 0
  br i1 %tobool101.not.i, label %if.then96.i.no_map.thread.i_crit_edge, label %land.lhs.true102.i

if.then96.i.no_map.thread.i_crit_edge:            ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_map.thread.i

land.lhs.true102.i:                               ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv100.i = zext i8 %56 to i32
  %arrayidx104.i = getelementptr i8, ptr %31, i32 %conv100.i
  %57 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool106.not.i = icmp eq i8 %58, 0
  %spec.select.i = select i1 %tobool106.not.i, i8 %42, i8 %58
  br label %no_map.thread.i

no_map.thread.i:                                  ; preds = %land.lhs.true102.i, %if.then96.i.no_map.thread.i_crit_edge, %land.lhs.true90.i.no_map.thread.i_crit_edge, %if.end86.i.no_map.thread.i_crit_edge
  %new_key.0.i = phi i8 [ %42, %if.then96.i.no_map.thread.i_crit_edge ], [ %42, %land.lhs.true90.i.no_map.thread.i_crit_edge ], [ %42, %if.end86.i.no_map.thread.i_crit_edge ], [ %spec.select.i, %land.lhs.true102.i ]
  %conv112.i = trunc i32 %11 to i8
  store i8 %conv112.i, ptr @last_keycode, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  store i32 %59, ptr @last_spk_jiffy, align 4
  br label %land.lhs.true118.i

no_map.i:                                         ; preds = %if.then53.i.no_map.i_crit_edge, %if.end46.i.no_map.i_crit_edge, %if.end35.i.no_map.i_crit_edge, %if.end31.i.no_map.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %type.0.i)
  %cmp116.i = icmp eq i8 %type.0.i, 15
  br i1 %cmp116.i, label %no_map.i.land.lhs.true118.i_crit_edge, label %no_map.i.if.end121.i_crit_edge

no_map.i.if.end121.i_crit_edge:                   ; preds = %no_map.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i

no_map.i.land.lhs.true118.i_crit_edge:            ; preds = %no_map.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true118.i

land.lhs.true118.i:                               ; preds = %no_map.i.land.lhs.true118.i_crit_edge, %no_map.thread.i
  %ret.0267.i = phi i32 [ 1, %no_map.thread.i ], [ 0, %no_map.i.land.lhs.true118.i_crit_edge ]
  %new_key.1265.i = phi i8 [ %new_key.0.i, %no_map.thread.i ], [ 0, %no_map.i.land.lhs.true118.i_crit_edge ]
  %value.0264.i = phi i8 [ %new_key.0.i, %no_map.thread.i ], [ %conv3.i, %no_map.i.land.lhs.true118.i_crit_edge ]
  %60 = load ptr, ptr @spk_special_handler, align 4
  %tobool119.not.i = icmp eq ptr %60, null
  br i1 %tobool119.not.i, label %if.then120.i, label %land.lhs.true118.i.if.end121.i_crit_edge

land.lhs.true118.i.if.end121.i_crit_edge:         ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121.i

if.then120.i:                                     ; preds = %land.lhs.true118.i
  %vc_num.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %vc_num.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vc_num.i.i, align 4
  %idxprom.i.i = zext i16 %62 to i32
  %arrayidx.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %shut_up.i.i = getelementptr inbounds %struct.st_spk_t, ptr %64, i32 0, i32 17
  %65 = ptrtoint ptr %shut_up.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %shut_up.i.i, align 1
  %67 = and i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i = icmp eq i8 %67, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %new_key.1265.i)
  %cmp.not.i.i = icmp eq i8 %new_key.1265.i, 2
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then120.i.do_spkup.exit.i_crit_edge

if.then120.i.do_spkup.exit.i_crit_edge:           ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_spkup.exit.i

if.end.i.i:                                       ; preds = %if.then120.i
  store i32 0, ptr @spk_keydown, align 4
  store i16 0, ptr @spk_lastkey, align 2
  %68 = and i8 %66, -2
  %69 = ptrtoint ptr %shut_up.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %shut_up.i.i, align 1
  store i8 %new_key.1265.i, ptr @this_speakup_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %new_key.1265.i)
  %cmp11.i.i = icmp ult i8 %new_key.1265.i, 48
  br i1 %cmp11.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv10.i.i = zext i8 %new_key.1265.i to i32
  %arrayidx15.i.i = getelementptr [49 x ptr], ptr @spkup_handler, i32 0, i32 %conv10.i.i
  tail call void @spk_do_flush() #11
  %70 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx15.i.i, align 4
  tail call void %71(ptr noundef %1) #11
  br label %do_spkup.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %num_buf.i.i.i) #11
  %72 = and i8 %new_key.1265.i, 1
  %73 = xor i8 %72, 3
  %74 = zext i8 %73 to i32
  %75 = zext i8 %new_key.1265.i to i16
  %div.lhs.trunc.i.i.i = add nsw i16 %75, -64
  %div43.i.i.i = sdiv i16 %div.lhs.trunc.i.i.i, 2
  %narrow.i.i.i = add nsw i16 %div43.i.i.i, 23
  %add.i34.i.i = zext i16 %narrow.i.i.i to i32
  %76 = call ptr @memset(ptr %num_buf.i.i.i, i32 255, i32 32)
  %call.i.i.i = tail call ptr @spk_get_var_header(i32 noundef %add.i34.i.i) #11
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.if.then22.i.i_crit_edge, label %if.end.i.i.i

if.else.i.i.if.then22.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  %var_type.i.i.i = getelementptr inbounds %struct.st_var_header, ptr %call.i.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %var_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %var_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.not.i.i.i = icmp eq i32 %78, 0
  br i1 %cmp.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.if.then22.i.i_crit_edge

if.end.i.i.i.if.then22.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.st_var_header, ptr %call.i.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i.i.i, align 4
  %call5.i.i.i = tail call i32 @spk_set_num_var(i32 noundef 1, ptr noundef nonnull %call.i.i.i, i32 noundef %74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %cmp6.not.i.i.i, label %if.end9.i.i.i, label %if.end4.i.i.i.if.then22.i.i_crit_edge

if.end4.i.i.i.if.then22.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22.i.i

if.end9.i.i.i:                                    ; preds = %if.end4.i.i.i
  %.b.i.i.i = load i1, ptr @spk_close_press, align 1
  br i1 %.b.i.i.i, label %if.end9.i.i.i.inc_dec_var.exit.i.i_crit_edge, label %if.then11.i.i.i

if.end9.i.i.i.inc_dec_var.exit.i.i_crit_edge:     ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inc_dec_var.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.end9.i.i.i
  %81 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.then11.i.i.i
  %cp.0.i.i.i = phi ptr [ %num_buf.i.i.i, %if.then11.i.i.i ], [ %cp.1.i.i.i, %for.inc.i.i.i ]
  %pn.0.i.i.i = phi ptr [ %82, %if.then11.i.i.i ], [ %incdec.ptr18.i.i.i, %for.inc.i.i.i ]
  %83 = ptrtoint ptr %pn.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pn.0.i.i.i, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.306)
  switch i8 %84, label %if.else.i.i.i [
    i8 0, label %for.cond.i.i.i.inc_dec_var.exit.i.i_crit_edge
    i8 95, label %for.cond.i.i.i.for.inc.i.i.i_crit_edge
  ]

for.cond.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

for.cond.i.i.i.inc_dec_var.exit.i.i_crit_edge:    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %inc_dec_var.exit.i.i

if.else.i.i.i:                                    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.i.i.i = getelementptr i8, ptr %cp.0.i.i.i, i32 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else.i.i.i, %for.cond.i.i.i.for.inc.i.i.i_crit_edge
  %storemerge.i.i.i = phi i8 [ %84, %if.else.i.i.i ], [ 32, %for.cond.i.i.i.for.inc.i.i.i_crit_edge ]
  %cp.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else.i.i.i ], [ %cp.0.i.i.i, %for.cond.i.i.i.for.inc.i.i.i_crit_edge ]
  %86 = ptrtoint ptr %cp.0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %storemerge.i.i.i, ptr %cp.0.i.i.i, align 1
  %incdec.ptr18.i.i.i = getelementptr i8, ptr %pn.0.i.i.i, i32 1
  br label %for.cond.i.i.i

inc_dec_var.exit.i.i:                             ; preds = %for.cond.i.i.i.inc_dec_var.exit.i.i_crit_edge, %if.end9.i.i.i.inc_dec_var.exit.i.i_crit_edge
  %cp.2.i.i.i = phi ptr [ %num_buf.i.i.i, %if.end9.i.i.i.inc_dec_var.exit.i.i_crit_edge ], [ %cp.0.i.i.i, %for.cond.i.i.i.inc_dec_var.exit.i.i_crit_edge ]
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %cp.2.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %num_buf.i.i.i to i32
  %sub.ptr.sub.neg.i.i.i = add i32 %sub.ptr.rhs.cast.i.i.i, 32
  %sub21.i.i.i = sub i32 %sub.ptr.sub.neg.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %value22.i.i.i = getelementptr inbounds %struct.var_t, ptr %80, i32 0, i32 1, i32 0, i32 7
  %87 = ptrtoint ptr %value22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %value22.i.i.i, align 4
  %call23.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cp.2.i.i.i, i32 noundef %sub21.i.i.i, ptr noundef nonnull @.str.296, i32 noundef %88) #11
  call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef nonnull %num_buf.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %num_buf.i.i.i) #11
  br label %do_spkup.exit.i

if.then22.i.i:                                    ; preds = %if.end4.i.i.i.if.then22.i.i_crit_edge, %if.end.i.i.i.if.then22.i.i_crit_edge, %if.else.i.i.if.then22.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %num_buf.i.i.i) #11
  %89 = load i32, ptr @spk_bleep_time, align 4
  store i16 587, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %89) #11
  store i32 %call2.i.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %do_spkup.exit.i

do_spkup.exit.i:                                  ; preds = %if.then22.i.i, %inc_dec_var.exit.i.i, %if.then17.i.i, %if.then120.i.do_spkup.exit.i_crit_edge
  store i1 false, ptr @spk_close_press, align 1
  br label %speakup_key.exit.thread71

if.end121.i:                                      ; preds = %land.lhs.true118.i.if.end121.i_crit_edge, %no_map.i.if.end121.i_crit_edge
  %ret.0266.i = phi i32 [ %ret.0267.i, %land.lhs.true118.i.if.end121.i_crit_edge ], [ 0, %no_map.i.if.end121.i_crit_edge ]
  %value.0263.i = phi i8 [ %value.0264.i, %land.lhs.true118.i.if.end121.i_crit_edge ], [ %conv3.i, %no_map.i.if.end121.i_crit_edge ]
  %type.1261.i = phi i8 [ 15, %land.lhs.true118.i.if.end121.i_crit_edge ], [ %type.0.i, %no_map.i.if.end121.i_crit_edge ]
  br i1 %tobool.not, label %if.end121.i.speakup_key.exit_crit_edge, label %if.end121.i.lor.lhs.false123.i_crit_edge

if.end121.i.lor.lhs.false123.i_crit_edge:         ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false123.i

if.end121.i.speakup_key.exit_crit_edge:           ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_key.exit

lor.lhs.false123.i:                               ; preds = %if.end121.i.lor.lhs.false123.i_crit_edge, %if.end121.thread.i
  %type.1261280.i = phi i8 [ 3, %if.end121.thread.i ], [ %type.1261.i, %if.end121.i.lor.lhs.false123.i_crit_edge ]
  %value.0263279.i = phi i8 [ %21, %if.end121.thread.i ], [ %value.0263.i, %if.end121.i.lor.lhs.false123.i_crit_edge ]
  %ret.0266278.i = phi i32 [ 0, %if.end121.thread.i ], [ %ret.0266.i, %if.end121.i.lor.lhs.false123.i_crit_edge ]
  %vc_num124.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %vc_num124.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vc_num124.i, align 4
  %idxprom125.i = zext i16 %91 to i32
  %arrayidx126.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom125.i
  %92 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx126.i, align 4
  %shut_up127.i = getelementptr inbounds %struct.st_spk_t, ptr %93, i32 0, i32 17
  %94 = ptrtoint ptr %shut_up127.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %shut_up127.i, align 1
  %96 = and i8 %95, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool130.not.i = icmp ne i8 %96, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %type.1261280.i)
  %cmp133.i = icmp eq i8 %type.1261280.i, 7
  %or.cond252.i = or i1 %cmp133.i, %tobool130.not.i
  br i1 %or.cond252.i, label %lor.lhs.false123.i.speakup_key.exit_crit_edge, label %if.end136.i

lor.lhs.false123.i.speakup_key.exit_crit_edge:    ; preds = %lor.lhs.false123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_key.exit

if.end136.i:                                      ; preds = %lor.lhs.false123.i
  %and142.i = and i8 %95, -2
  %97 = ptrtoint ptr %shut_up127.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %and142.i, ptr %shut_up127.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %value.0263279.i)
  %switch.selectcmp.i = icmp ugt i8 %value.0263279.i, 3
  %98 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp158.not.i = icmp ne i32 %98, 4
  %brmerge.i = or i1 %switch.selectcmp.i, %cmp158.not.i
  br i1 %brmerge.i, label %if.then162.i, label %if.end136.i.if.end166.i_crit_edge

if.end136.i.if.end166.i_crit_edge:                ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166.i

if.then162.i:                                     ; preds = %if.end136.i
  %99 = load i32, ptr @spk_no_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool163.not.i = icmp eq i32 %99, 0
  br i1 %tobool163.not.i, label %if.then164.i, label %if.then162.i.if.end166.i_crit_edge

if.then162.i.if.end166.i_crit_edge:               ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166.i

if.then164.i:                                     ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_do_flush() #11
  br label %if.end166.i

if.end166.i:                                      ; preds = %if.then164.i, %if.then162.i.if.end166.i_crit_edge, %if.end136.i.if.end166.i_crit_edge
  %100 = load ptr, ptr @spk_special_handler, align 4
  %tobool167.not.i = icmp eq ptr %100, null
  br i1 %tobool167.not.i, label %if.end195.i, label %if.then168.i

if.then168.i:                                     ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %type.1261280.i)
  %cmp170.i = icmp eq i8 %type.1261280.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %value.0263279.i)
  %cmp174.i = icmp eq i8 %value.0263279.i, 1
  %or.cond253.i = select i1 %cmp170.i, i1 %cmp174.i, i1 false
  br i1 %or.cond253.i, label %if.then168.i.if.end188.i_crit_edge, label %if.else.i

if.then168.i.if.end188.i_crit_edge:               ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188.i

if.else.i:                                        ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %type.1261280.i)
  %cmp178.i = icmp eq i8 %type.1261280.i, 11
  br i1 %cmp178.i, label %if.else.i.if.end188.i_crit_edge, label %if.else181.i

if.else.i.if.end188.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188.i

if.else181.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %value.0263279.i)
  %cmp183.i = icmp eq i8 %value.0263279.i, 127
  %spec.store.select.i = select i1 %cmp183.i, i8 8, i8 %value.0263279.i
  br label %if.end188.i

if.end188.i:                                      ; preds = %if.else181.i, %if.else.i.if.end188.i_crit_edge, %if.then168.i.if.end188.i_crit_edge
  %type.2.i = phi i8 [ %type.1261280.i, %if.else181.i ], [ 0, %if.then168.i.if.end188.i_crit_edge ], [ 0, %if.else.i.if.end188.i_crit_edge ]
  %value.1.i = phi i8 [ %spec.store.select.i, %if.else181.i ], [ 10, %if.then168.i.if.end188.i_crit_edge ], [ %value.0263279.i, %if.else.i.if.end188.i_crit_edge ]
  %conv189.i = trunc i32 %11 to i16
  %call190.i = tail call i32 %100(ptr noundef %1, i8 noundef zeroext %type.2.i, i8 noundef zeroext %value.1.i, i16 noundef zeroext %conv189.i) #11
  store i1 false, ptr @spk_close_press, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190.i)
  %cmp191.i = icmp slt i32 %call190.i, 0
  br i1 %cmp191.i, label %if.then193.i, label %if.end188.i.speakup_key.exit_crit_edge

if.end188.i.speakup_key.exit_crit_edge:           ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_key.exit

if.then193.i:                                     ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = load i32, ptr @spk_bleep_time, align 4
  store i16 587, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %101) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %speakup_key.exit.thread71

if.end195.i:                                      ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr @last_keycode, align 1
  br label %speakup_key.exit

speakup_key.exit.thread71:                        ; preds = %if.then193.i, %do_spkup.exit.i, %if.end83.i.speakup_key.exit.thread71_crit_edge, %if.end75.i, %lor.lhs.false.i.speakup_key.exit.thread71_crit_edge, %if.end66.i.speakup_key.exit.thread71_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call6.i) #11
  br label %out

speakup_key.exit:                                 ; preds = %if.end195.i, %if.end188.i.speakup_key.exit_crit_edge, %lor.lhs.false123.i.speakup_key.exit_crit_edge, %if.end121.i.speakup_key.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0266.i, %if.end121.i.speakup_key.exit_crit_edge ], [ %ret.0266278.i, %lor.lhs.false123.i.speakup_key.exit_crit_edge ], [ %call190.i, %if.end188.i.speakup_key.exit_crit_edge ], [ %ret.0266278.i, %if.end195.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call6.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool9.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool9.not, label %speakup_key.exit.if.else_crit_edge, label %speakup_key.exit.out_crit_edge

speakup_key.exit.out_crit_edge:                   ; preds = %speakup_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

speakup_key.exit.if.else_crit_edge:               ; preds = %speakup_key.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %speakup_key.exit.if.else_crit_edge, %speakup_key.exit.thread74, %sw.bb5.if.else_crit_edge
  %102 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %value6, align 4
  %shr.mask = and i32 %103, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %shr.mask)
  %cmp12 = icmp eq i32 %shr.mask, 1536
  br i1 %cmp12, label %if.then14, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %conv16 = trunc i32 %103 to i8
  %conv17 = zext i1 %tobool.not to i8
  %call18 = tail call fastcc i32 @pre_handle_cursor(ptr noundef %1, i8 noundef zeroext %conv16, i8 noundef zeroext %conv17)
  br label %out

sw.bb21:                                          ; preds = %if.end4
  %value22 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %_param, i32 0, i32 4
  %104 = ptrtoint ptr %value22 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %value22, align 4
  %shr23 = lshr i32 %105, 8
  %conv27 = trunc i32 %105 to i8
  %106 = trunc i32 %shr23 to i8
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.307)
  switch i8 %106, label %sw.bb21.out_crit_edge [
    i8 -9, label %sw.bb29
    i8 -16, label %sw.bb21.sw.bb31_crit_edge
    i8 -5, label %sw.bb21.sw.bb31_crit_edge82
    i8 -10, label %sw.bb33
    i8 -14, label %sw.bb35
  ]

sw.bb21.sw.bb31_crit_edge82:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31

sw.bb21.sw.bb31_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb31

sw.bb21.out_crit_edge:                            ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

sw.bb29:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %conv30 = zext i1 %tobool.not to i8
  tail call fastcc void @do_handle_shift(ptr noundef %1, i8 noundef zeroext %conv27, i8 noundef zeroext %conv30)
  br label %out

sw.bb31:                                          ; preds = %sw.bb21.sw.bb31_crit_edge, %sw.bb21.sw.bb31_crit_edge82
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  br i1 %tobool.not, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  store i16 0, ptr @spk_lastkey, align 2
  store i32 0, ptr @spk_keydown, align 4
  br label %do_handle_latin.exit

if.end.i:                                         ; preds = %sw.bb31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %108 = load ptr, ptr @synth, align 4
  %tobool5.not.i = icmp eq ptr %108, null
  br i1 %tobool5.not.i, label %if.end.i.do_handle_latin.exit_crit_edge, label %lor.lhs.false.i65

if.end.i.do_handle_latin.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_handle_latin.exit

lor.lhs.false.i65:                                ; preds = %if.end.i
  %vc_num.i61 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %109 = ptrtoint ptr %vc_num.i61 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vc_num.i61, align 4
  %idxprom.i62 = zext i16 %110 to i32
  %arrayidx.i63 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i62
  %111 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i63, align 4
  %shut_up.i64 = getelementptr inbounds %struct.st_spk_t, ptr %112, i32 0, i32 17
  %113 = ptrtoint ptr %shut_up.i64 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %shut_up.i64, align 1
  %115 = and i8 %114, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool7.not.i = icmp eq i8 %115, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %lor.lhs.false.i65.do_handle_latin.exit_crit_edge

lor.lhs.false.i65.do_handle_latin.exit_crit_edge: ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_handle_latin.exit

if.end9.i:                                        ; preds = %lor.lhs.false.i65
  %and15.i = and i8 %114, -2
  %116 = ptrtoint ptr %shut_up.i64 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %and15.i, ptr %shut_up.i64, align 1
  %117 = trunc i32 %105 to i16
  %conv17.i = and i16 %117, 255
  store i16 %conv17.i, ptr @spk_lastkey, align 2
  %118 = load i32, ptr @spk_keydown, align 4
  %inc.i66 = add i32 %118, 1
  store i32 %inc.i66, ptr @spk_keydown, align 4
  %119 = ptrtoint ptr %vc_num.i61 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vc_num.i61, align 4
  %idxprom19.i = zext i16 %120 to i32
  %arrayidx20.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom19.i
  %121 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx20.i, align 4
  %parked.i67 = getelementptr inbounds %struct.st_spk_t, ptr %122, i32 0, i32 16
  %123 = ptrtoint ptr %parked.i67 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %parked.i67, align 4
  %125 = and i8 %124, -2
  store i8 %125, ptr %parked.i67, align 4
  %126 = load i32, ptr @spk_key_echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %126)
  %cmp24.i = icmp eq i32 %126, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %conv27)
  %cmp27.i = icmp ugt i8 %conv27, 31
  %or.cond.i68 = and i1 %cmp27.i, %cmp24.i
  br i1 %or.cond.i68, label %if.then29.i, label %if.end9.i.do_handle_latin.exit_crit_edge

if.end9.i.do_handle_latin.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_handle_latin.exit

if.then29.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @speak_char(i16 noundef zeroext %conv17.i) #11
  br label %do_handle_latin.exit

do_handle_latin.exit:                             ; preds = %if.then29.i, %if.end9.i.do_handle_latin.exit_crit_edge, %lor.lhs.false.i65.do_handle_latin.exit_crit_edge, %if.end.i.do_handle_latin.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2.i) #11
  br label %out

sw.bb33:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %conv34 = zext i1 %tobool.not to i8
  tail call fastcc void @do_handle_cursor(ptr noundef %1, i8 noundef zeroext %conv27, i8 noundef zeroext %conv34)
  br label %out

sw.bb35:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %conv36 = zext i1 %tobool.not to i8
  tail call fastcc void @do_handle_spec(ptr noundef %1, i8 noundef zeroext %conv27, i8 noundef zeroext %conv36)
  br label %out

out:                                              ; preds = %sw.bb35, %sw.bb33, %do_handle_latin.exit, %sw.bb29, %sw.bb21.out_crit_edge, %if.then14, %if.else.out_crit_edge, %speakup_key.exit.out_crit_edge, %speakup_key.exit.thread71, %sw.bb, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 1, %entry.out_crit_edge ], [ 1, %if.end.out_crit_edge ], [ 1, %if.end4.out_crit_edge ], [ %call18, %if.then14 ], [ 1, %if.else.out_crit_edge ], [ 1, %sw.bb ], [ 32769, %speakup_key.exit.out_crit_edge ], [ 1, %sw.bb21.out_crit_edge ], [ 1, %sw.bb35 ], [ 1, %sw.bb33 ], [ 1, %do_handle_latin.exit ], [ 1, %sw.bb29 ], [ 32769, %speakup_key.exit.thread71 ]
  store i1 false, ptr @in_keyboard_notifier, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @speakup_fake_key_pressed() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pre_handle_cursor(ptr nocapture noundef readonly %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %0 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp5 = icmp eq i32 %0, 4
  br i1 %cmp5, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %parked, align 4
  %7 = and i8 %6, -2
  store i8 %7, ptr %parked, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %8 = load ptr, ptr @synth, align 4
  %tobool.not = icmp ne ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool10.not = icmp eq i8 %up_flag, 0
  %or.cond = and i1 %tobool10.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false11, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.then
  %9 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vc_num, align 4
  %idxprom13 = zext i16 %10 to i32
  %arrayidx14 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom13
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx14, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shut_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.end, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  %15 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vc_num, align 4
  %idxprom20 = zext i16 %16 to i32
  %arrayidx21 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom20
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx21, align 4
  %shut_up22 = getelementptr inbounds %struct.st_spk_t, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %shut_up22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shut_up22, align 1
  %21 = and i8 %20, -2
  store i8 %21, ptr %shut_up22, align 1
  tail call void @spk_do_flush() #11
  %conv26 = zext i8 %value to i32
  %add = add nuw nsw i32 %conv26, 1
  %22 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vc_num, align 4
  %conv.i = zext i16 %23 to i32
  store i32 %conv.i, ptr @cursor_con, align 4
  store i32 %add, ptr @read_all_key, align 4
  %call.i = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %value.i = getelementptr inbounds %struct.var_t, ptr %call.i, i32 0, i32 1, i32 0, i32 7
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #11
  %add.i = add i32 %call2.i.i, %24
  %call2.i = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false11.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32769, %if.end ], [ 32769, %lor.lhs.false11.cleanup_crit_edge ], [ 32769, %if.then.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_handle_shift(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %0 = load ptr, ptr @synth, align 4
  %tobool.not = icmp ne ptr %0, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool1.not = icmp eq i8 %up_flag, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shut_up, align 1
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.body5, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %8 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp10 = icmp eq i32 %8, 4
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.body5
  %9 = zext i8 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.308)
  switch i8 %value, label %if.then12.if.end38_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb22
  ]

if.then12.if.end38_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

sw.bb:                                            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  %10 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vc_num, align 4
  %idxprom16 = zext i16 %11 to i32
  %arrayidx17 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom16
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  %shut_up18 = getelementptr inbounds %struct.st_spk_t, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %shut_up18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shut_up18, align 1
  %16 = and i8 %15, -2
  store i8 %16, ptr %shut_up18, align 1
  tail call void @spk_do_flush() #11
  tail call void @read_all_doc(ptr noundef %vc)
  br label %if.end38

sw.bb22:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  %17 = load i32, ptr @prev_cursor_track, align 4
  store i32 %17, ptr @cursor_track, align 4
  %18 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vc_num, align 4
  %idxprom25 = zext i16 %19 to i32
  %arrayidx26 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom25
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26, align 4
  %shut_up27 = getelementptr inbounds %struct.st_spk_t, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %shut_up27 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shut_up27, align 1
  %24 = and i8 %23, -2
  store i8 %24, ptr %shut_up27, align 1
  tail call void @spk_do_flush() #11
  br label %if.end38

if.else:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vc_num, align 4
  %idxprom32 = zext i16 %26 to i32
  %arrayidx33 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom32
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx33, align 4
  %shut_up34 = getelementptr inbounds %struct.st_spk_t, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %shut_up34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %shut_up34, align 1
  %31 = and i8 %30, -2
  store i8 %31, ptr %shut_up34, align 1
  tail call void @spk_do_flush() #11
  br label %if.end38

if.end38:                                         ; preds = %if.else, %sw.bb22, %sw.bb, %if.then12.if.end38_crit_edge
  %32 = load i32, ptr @spk_say_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool39.not = icmp ne i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %value)
  %cmp41 = icmp ult i8 %value, 9
  %or.cond53 = and i1 %cmp41, %tobool39.not
  br i1 %or.cond53, label %if.then43, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %conv40 = zext i8 %value to i32
  %add = add nuw nsw i32 %conv40, 52
  %call45 = tail call ptr @spk_msg_get(i32 noundef %add) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef %call45) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end38.if.end46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_handle_cursor(ptr nocapture noundef readonly %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = and i8 %5, -2
  store i8 %6, ptr %parked, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %7 = load ptr, ptr @synth, align 4
  %tobool.not = icmp ne ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool8.not = icmp eq i8 %up_flag, 0
  %or.cond = and i1 %tobool8.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false9, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %entry
  %8 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %9 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shut_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false9
  %14 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %lor.lhs.false15.cleanup_crit_edge, label %if.end

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false15
  %15 = ptrtoint ptr %shut_up to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %shut_up, align 1
  %16 = load i32, ptr @spk_no_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %if.end.if.end27_crit_edge, label %if.then26

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_do_flush() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  %add = add i8 %value, 1
  store i8 %add, ptr @is_cursor, align 1
  %y = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %y, align 4
  %19 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vc_num, align 4
  %idxprom34 = zext i16 %20 to i32
  %arrayidx35 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom34
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx35, align 4
  %cy = getelementptr inbounds %struct.st_spk_t, ptr %22, i32 0, i32 18, i32 6
  %23 = ptrtoint ptr %cy to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %cy, align 4
  %24 = load i16, ptr %vc_num, align 4
  %conv37 = zext i16 %24 to i32
  store i32 %conv37, ptr @cursor_con, align 4
  %25 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp38 = icmp eq i32 %25, 2
  br i1 %cmp38, label %if.then40, label %if.end27.if.end41_crit_edge

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then40:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv37
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.st_spk_t, ptr %27, i32 0, i32 18, i32 2, i32 0
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx3.i, align 4
  %29 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.1.i = getelementptr %struct.st_spk_t, ptr %29, i32 0, i32 18, i32 2, i32 1
  %30 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx3.1.i, align 4
  %31 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.2.i = getelementptr %struct.st_spk_t, ptr %31, i32 0, i32 18, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx3.2.i, align 4
  %33 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.3.i = getelementptr %struct.st_spk_t, ptr %33, i32 0, i32 18, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx3.3.i, align 4
  %35 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.4.i = getelementptr %struct.st_spk_t, ptr %35, i32 0, i32 18, i32 2, i32 4
  %36 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %arrayidx3.4.i, align 4
  %37 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.5.i = getelementptr %struct.st_spk_t, ptr %37, i32 0, i32 18, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx3.5.i, align 4
  %39 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.6.i = getelementptr %struct.st_spk_t, ptr %39, i32 0, i32 18, i32 2, i32 6
  %40 = ptrtoint ptr %arrayidx3.6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx3.6.i, align 4
  %41 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.7.i = getelementptr %struct.st_spk_t, ptr %41, i32 0, i32 18, i32 2, i32 7
  %42 = ptrtoint ptr %arrayidx3.7.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx3.7.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end27.if.end41_crit_edge
  %call42 = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %value43 = getelementptr inbounds %struct.var_t, ptr %call42, i32 0, i32 1, i32 0, i32 7
  %44 = ptrtoint ptr %value43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value43, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %45) #11
  %add45 = add i32 %call2.i, %43
  %call46 = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add45) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_handle_spec(ptr nocapture noundef readonly %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %0 = load ptr, ptr @synth, align 4
  %tobool.not = icmp ne ptr %0, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool1.not = icmp eq i8 %up_flag, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %lor.lhs.false2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shut_up, align 1
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.body5, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %8 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %9 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %shut_up13 = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %shut_up13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shut_up13, align 1
  %14 = and i8 %13, -2
  store i8 %14, ptr %shut_up13, align 1
  %15 = load i32, ptr @spk_no_intr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %do.body5.if.end19_crit_edge, label %if.then18

do.body5.if.end19_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_do_flush() #11
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.body5.if.end19_crit_edge
  %16 = zext i8 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.309)
  switch i8 %value, label %sw.default [
    i8 7, label %sw.bb
    i8 8, label %sw.bb23
    i8 9, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call ptr @spk_msg_get(i32 noundef 140) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %17 = load i32, ptr @fg_console, align 4
  %call22 = tail call i32 @vt_get_leds(i32 noundef %17, i32 noundef 2) #11
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call ptr @spk_msg_get(i32 noundef 151) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %18 = load i32, ptr @fg_console, align 4
  %call25 = tail call i32 @vt_get_leds(i32 noundef %18, i32 noundef 1) #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end19
  %call27 = tail call ptr @spk_msg_get(i32 noundef 152) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %19 = load i32, ptr @fg_console, align 4
  %call28 = tail call i32 @vt_get_leds(i32 noundef %19, i32 noundef 0) #11
  %20 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vc_num, align 4
  %idxprom30 = zext i16 %21 to i32
  %arrayidx31 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom30
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %sw.bb26.sw.epilog_crit_edge, label %if.then33

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then33:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #13
  %tty_stopped = getelementptr inbounds %struct.st_spk_t, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %tty_stopped to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call28, ptr %tty_stopped, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vc_num, align 4
  %idxprom39 = zext i16 %26 to i32
  %arrayidx40 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom39
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx40, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %parked, align 4
  %31 = and i8 %30, -2
  store i8 %31, ptr %parked, align 4
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %if.then33, %sw.bb26.sw.epilog_crit_edge, %sw.bb23, %sw.bb
  %on_off.0 = phi i32 [ %call28, %if.then33 ], [ %call28, %sw.bb26.sw.epilog_crit_edge ], [ %call25, %sw.bb23 ], [ %call22, %sw.bb ]
  %label.0 = phi ptr [ %call27, %if.then33 ], [ %call27, %sw.bb26.sw.epilog_crit_edge ], [ %call24, %sw.bb23 ], [ %call21, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %on_off.0)
  %cmp44 = icmp slt i32 %on_off.0, 2
  br i1 %cmp44, label %if.then46, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nsw i32 %on_off.0, 13
  %call47 = tail call ptr @spk_msg_get(i32 noundef %add) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.297, ptr noundef %label.0, ptr noundef %call47) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then46, %sw.epilog.cleanup.sink.split_crit_edge, %sw.default
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vt_get_leds(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop_read_all(ptr nocapture noundef readonly %vc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  %0 = load i32, ptr @prev_cursor_track, align 4
  store i32 %0, ptr @cursor_track, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shut_up, align 1
  %7 = and i8 %6, -2
  store i8 %7, ptr %shut_up, align 1
  tail call void @spk_do_flush() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_do_flush() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @do_nothing(ptr nocapture noundef %vc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_goto(ptr nocapture noundef readnone %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @spk_special_handler, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @spk_msg_get(i32 noundef 27) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @spk_msg_get(i32 noundef 29) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call1) #11
  store ptr @handle_goto, ptr @spk_special_handler, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speech_kill(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %0 = load ptr, ptr @synth, align 4
  %is_alive = getelementptr inbounds %struct.spk_synth, ptr %0, i32 0, i32 26
  %1 = ptrtoint ptr %is_alive to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %is_alive, align 4
  %call = tail call i32 %2(ptr noundef %0) #11
  %trunc = trunc i32 %call to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.310)
  switch i8 %trunc, label %lor.lhs.false [
    i8 0, label %entry.cleanup_crit_edge
    i8 2, label %entry.if.then7_crit_edge
  ]

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %4 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shut_up, align 1
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %entry.if.then7_crit_edge
  %vc_num8 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %11 = ptrtoint ptr %vc_num8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vc_num8, align 4
  %idxprom9 = zext i16 %12 to i32
  %arrayidx10 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %shut_up11 = getelementptr inbounds %struct.st_spk_t, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %shut_up11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shut_up11, align 1
  %17 = and i8 %16, -65
  store i8 %17, ptr %shut_up11, align 1
  %call15 = tail call ptr @spk_msg_get(i32 noundef 1) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call15) #11
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call ptr @spk_msg_get(i32 noundef 2) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call16) #11
  %18 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vc_num, align 4
  %idxprom18 = zext i16 %19 to i32
  %arrayidx19 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx19, align 4
  %shut_up20 = getelementptr inbounds %struct.st_spk_t, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %shut_up20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shut_up20, align 1
  %24 = or i8 %23, 64
  store i8 %24, ptr %shut_up20, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_shut_up(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shut_up, align 1
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end:                                           ; preds = %entry
  %or = or i8 %5, 1
  %7 = ptrtoint ptr %shut_up to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %shut_up, align 1
  %8 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vc_num, align 4
  %idxprom8 = zext i16 %9 to i32
  %arrayidx9 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %parked, align 4
  %14 = and i8 %13, -2
  store i8 %14, ptr %parked, align 4
  %state.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %17 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %17 to i32
  %arrayidx.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %cursor_x.i = getelementptr inbounds %struct.st_spk_t, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %cursor_x.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %cursor_x.i, align 4
  %21 = load i16, ptr %vc_num, align 4
  %idxprom2.i = zext i16 %21 to i32
  %arrayidx3.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2.i
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %16, ptr %23, align 4
  %y.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y.i, align 4
  %27 = load i16, ptr %vc_num, align 4
  %idxprom6.i = zext i16 %27 to i32
  %arrayidx7.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6.i
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7.i, align 4
  %cursor_y.i = getelementptr inbounds %struct.st_spk_t, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cursor_y.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %cursor_y.i, align 4
  %31 = load i16, ptr %vc_num, align 4
  %idxprom9.i = zext i16 %31 to i32
  %arrayidx10.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9.i
  %32 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx10.i, align 4
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %reading_y.i, align 4
  %vc_pos.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %35 = ptrtoint ptr %vc_pos.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vc_pos.i, align 4
  %37 = load i16, ptr %vc_num, align 4
  %idxprom12.i = zext i16 %37 to i32
  %arrayidx13.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12.i
  %38 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx13.i, align 4
  %cursor_pos.i = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %cursor_pos.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %cursor_pos.i, align 4
  %41 = load i16, ptr %vc_num, align 4
  %idxprom15.i = zext i16 %41 to i32
  %arrayidx16.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15.i
  %42 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx16.i, align 4
  %reading_pos.i = getelementptr inbounds %struct.st_spk_t, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %reading_pos.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %36, ptr %reading_pos.i, align 4
  %45 = load i16, ptr %vc_num, align 4
  %idxprom18.i = zext i16 %45 to i32
  %arrayidx19.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18.i
  %46 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx19.i, align 4
  %reading_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %47, i32 0, i32 14
  %48 = ptrtoint ptr %reading_attr.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reading_attr.i, align 2
  %old_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %47, i32 0, i32 15
  %50 = ptrtoint ptr %old_attr.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %old_attr.i, align 1
  %51 = load i16, ptr %vc_num, align 4
  %idxprom24.i = zext i16 %51 to i32
  %arrayidx25.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom24.i
  %52 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx25.i, align 4
  %reading_pos26.i = getelementptr inbounds %struct.st_spk_t, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %reading_pos26.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reading_pos26.i, align 4
  %vc_origin.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %56 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vc_origin.i.i, align 4
  %sub.ptr.sub.i.i = sub i32 %55, %57
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 1
  %call.i.i = tail call ptr @screen_pos(ptr noundef %vc, i32 noundef %sub.ptr.div.i.i, i1 noundef zeroext true) #11
  %58 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %call.i.i, align 2
  %vc_hi_font_mask.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %60 = ptrtoint ptr %vc_hi_font_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vc_hi_font_mask.i.i, align 4
  %neg.i.i = xor i16 %61, -1
  %and.i.i = and i16 %59, %neg.i.i
  %62 = lshr i16 %and.i.i, 8
  %conv2.i.i = trunc i16 %62 to i8
  %63 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vc_num, align 4
  %idxprom28.i = zext i16 %64 to i32
  %arrayidx29.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom28.i
  %65 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx29.i, align 4
  %reading_attr30.i = getelementptr inbounds %struct.st_spk_t, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %reading_attr30.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv2.i.i, ptr %reading_attr30.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %68 = load ptr, ptr @synth, align 4
  %tobool13.not = icmp eq ptr %68, null
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @spk_do_flush() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_cut(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @mark_cut_flag, align 1
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mark_cut_flag, align 1
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %conv = trunc i32 %5 to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr @spk_xs to i32))
  store i16 %conv, ptr @spk_xs, align 2
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reading_y, align 4
  %conv4 = trunc i32 %7 to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr @spk_ys to i32))
  store i16 %conv4, ptr @spk_ys, align 2
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @spk_sel_cons to i32))
  store ptr %vc, ptr @spk_sel_cons, align 4
  %call = tail call ptr @spk_msg_get(i32 noundef 7) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vc_num5 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %8 = ptrtoint ptr %vc_num5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vc_num5, align 4
  %idxprom6 = zext i16 %9 to i32
  %arrayidx7 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %conv9 = trunc i32 %13 to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr @spk_xe to i32))
  store i16 %conv9, ptr @spk_xe, align 2
  %reading_y13 = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %reading_y13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reading_y13, align 4
  %conv14 = trunc i32 %15 to i16
  call void @__asan_store2_noabort(i32 ptrtoint (ptr @spk_ye to i32))
  store i16 %conv14, ptr @spk_ye, align 2
  store i1 false, ptr @mark_cut_flag, align 1
  %call15 = tail call ptr @spk_msg_get(i32 noundef 8) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call15) #11
  %16 = load ptr, ptr @tty, align 4
  %call16 = tail call i32 @speakup_set_selection(ptr noundef %16) #11
  %17 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %call16, label %if.end.cleanup_crit_edge [
    i32 -12, label %do.end27
    i32 -14, label %do.end
    i32 -22, label %do.end21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef nonnull @speakup_cut.err_buf) #14
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, ptr noundef nonnull @speakup_cut.err_buf) #14
  br label %cleanup

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, ptr noundef nonnull @speakup_cut.err_buf) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %do.end21, %do.end, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_paste(ptr nocapture noundef readnone %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @mark_cut_flag, align 1
  br i1 %.b, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 false, ptr @mark_cut_flag, align 1
  %call = tail call ptr @spk_msg_get(i32 noundef 9) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @spk_msg_get(i32 noundef 10) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call1) #11
  %0 = load ptr, ptr @tty, align 4
  %call2 = tail call i32 @speakup_paste_selection(ptr noundef %0) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_first_char(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_line(ptr noundef %vc)
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp438 = icmp sgt i32 %call, 0
  br i1 %cmp438, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call ptr @spk_msg_get(i32 noundef 0) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call3) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx6 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.039
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %8)
  %cmp8.not = icmp eq i16 %8, 32
  br i1 %cmp8.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.039, %for.body.for.end_crit_edge ], [ %call, %for.inc.for.end_crit_edge ]
  %arrayidx12 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.0.lcssa
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx12, align 2
  %11 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vc_num, align 4
  %idxprom14 = zext i16 %12 to i32
  %arrayidx15 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom14
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx15, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %sub.neg = sub i32 %i.0.lcssa, %16
  %mul.neg = shl i32 %sub.neg, 1
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reading_pos, align 4
  %sub19 = add i32 %mul.neg, %18
  store i32 %sub19, ptr %reading_pos, align 4
  %19 = load i16, ptr %vc_num, align 4
  %idxprom21 = zext i16 %19 to i32
  %arrayidx22 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom21
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0.lcssa, ptr %21, align 4
  %inc24 = add nuw i32 %i.0.lcssa, 1
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.262, i32 noundef %inc24) #11
  tail call fastcc void @speak_char(i16 noundef zeroext %10)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_last_char(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_line(ptr noundef %vc)
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call ptr @spk_msg_get(i32 noundef 0) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %call, -1
  %arrayidx4 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %dec
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx4, align 2
  %9 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vc_num, align 4
  %idxprom6 = zext i16 %10 to i32
  %arrayidx7 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx7, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %sub.neg = sub i32 %dec, %14
  %mul.neg = shl i32 %sub.neg, 1
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reading_pos, align 4
  %sub11 = add i32 %mul.neg, %16
  store i32 %sub11, ptr %reading_pos, align 4
  %17 = load i16, ptr %vc_num, align 4
  %idxprom13 = zext i16 %17 to i32
  %arrayidx14 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom13
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %19, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.262, i32 noundef %call) #11
  tail call fastcc void @speak_char(i16 noundef zeroext %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_char(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reading_attr, align 2
  %old_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %old_attr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %old_attr, align 1
  %7 = load i16, ptr %vc_num, align 4
  %idxprom5 = zext i16 %7 to i32
  %arrayidx6 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom5
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reading_pos, align 4
  %tobool.not.i = icmp eq ptr %vc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.get_char.exit_crit_edge, label %if.then.i

entry.get_char.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %reading_attr10 = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 14
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %12 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %11, %13
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call.i, align 2
  %and.i = and i16 %15, 255
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %16 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %17, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %neg.i = xor i16 %17, -1
  %18 = or i16 %and.i, 256
  %and11.i = select i1 %tobool6.not.i, i16 -256, i16 %neg.i
  %w.0.off8.v.v.i = and i16 %and11.i, %15
  %w.0.off8.v.i = lshr i16 %w.0.off8.v.v.i, 8
  %w.0.off8.i = trunc i16 %w.0.off8.v.i to i8
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i, i16 %18
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %reading_attr10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %w.0.off8.i, ptr %reading_attr10, align 1
  br label %get_char.exit

get_char.exit:                                    ; preds = %if.then.i, %entry.get_char.exit_crit_edge
  %ch.0.i = phi i16 [ %call16.i, %if.then.i ], [ 32, %entry.get_char.exit_crit_edge ]
  %20 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vc_num, align 4
  %idxprom12 = zext i16 %21 to i32
  %arrayidx13 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13, align 4
  %reading_attr14 = getelementptr inbounds %struct.st_spk_t, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %reading_attr14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reading_attr14, align 2
  %old_attr18 = getelementptr inbounds %struct.st_spk_t, ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %old_attr18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %old_attr18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp.not = icmp eq i8 %25, %27
  br i1 %cmp.not, label %get_char.exit.if.end30_crit_edge, label %if.then

get_char.exit.if.end30_crit_edge:                 ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then:                                          ; preds = %get_char.exit
  %28 = load i32, ptr @spk_attrib_bleep, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then21

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %23, i32 0, i32 2
  %29 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reading_y, align 4
  %conv25 = trunc i32 %30 to i16
  %31 = load i32, ptr @spk_bleep_time, align 4
  %conv25.frozen = freeze i16 %conv25
  %div11.i = udiv i16 %conv25.frozen, 12
  %32 = mul i16 %div11.i, 12
  %rem10.i.decomposed = sub i16 %conv25.frozen, %32
  %rem.zext.i = zext i16 %rem10.i.decomposed to i32
  %arrayidx.i = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv25)
  %cmp.i = icmp ugt i16 %conv25, 11
  %div.zext.i = zext i16 %div11.i to i32
  %conv49.i = zext i16 %34 to i32
  %mul.i = shl i32 %conv49.i, %div.zext.i
  %conv5.i = trunc i32 %mul.i to i16
  %freq.0.i = select i1 %cmp.i, i16 %conv5.i, i16 %34
  store i16 %freq.0.i, ptr @spk_unprocessed_sound, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %31) #11
  store i32 %call2.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.then.if.end_crit_edge
  %35 = load i32, ptr @spk_attrib_bleep, align 4
  %and26 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end30_crit_edge, label %if.then28

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @say_attributes(ptr noundef %vc)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end.if.end30_crit_edge, %get_char.exit.if.end30_crit_edge
  tail call fastcc void @speak_char(i16 noundef zeroext %ch.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_prev_char(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, ptr @spk_bleeps, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reading_y.i, align 4
  %conv.i = trunc i32 %14 to i16
  %15 = load i32, ptr @spk_bleep_time, align 4
  %conv.i.frozen = freeze i16 %conv.i
  %div11.i.i = udiv i16 %conv.i.frozen, 12
  %16 = mul i16 %div11.i.i, 12
  %rem10.i.i.decomposed = sub i16 %conv.i.frozen, %16
  %rem.zext.i.i = zext i16 %rem10.i.i.decomposed to i32
  %arrayidx.i.i = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %conv.i, 11
  %div.zext.i.i = zext i16 %div11.i.i to i32
  %conv49.i.i = zext i16 %18 to i32
  %mul.i.i = shl i32 %conv49.i.i, %div.zext.i.i
  %conv5.i.i = trunc i32 %mul.i.i to i16
  %freq.0.i.i = select i1 %cmp.i.i, i16 %conv5.i.i, i16 %18
  store i16 %freq.0.i.i, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %19 = load i32, ptr @spk_bleeps, align 4
  %and1.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.then4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @spk_msg_get(i32 noundef 35) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %11, -1
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %9, align 4
  %21 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %22 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx12, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reading_pos, align 4
  %sub = add i32 %26, -2
  store i32 %sub, ptr %reading_pos, align 4
  tail call void @say_char(ptr noundef %vc)
  br label %return

return:                                           ; preds = %if.end, %if.then4.i, %if.end.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_next_char(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %12 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_cols, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp = icmp eq i32 %11, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, ptr @spk_bleeps, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reading_y.i, align 4
  %conv.i = trunc i32 %16 to i16
  %17 = load i32, ptr @spk_bleep_time, align 4
  %conv.i.frozen = freeze i16 %conv.i
  %div11.i.i = udiv i16 %conv.i.frozen, 12
  %18 = mul i16 %div11.i.i, 12
  %rem10.i.i.decomposed = sub i16 %conv.i.frozen, %18
  %rem.zext.i.i = zext i16 %rem10.i.i.decomposed to i32
  %arrayidx.i.i = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %conv.i, 11
  %div.zext.i.i = zext i16 %div11.i.i to i32
  %conv49.i.i = zext i16 %20 to i32
  %mul.i.i = shl i32 %conv49.i.i, %div.zext.i.i
  %conv5.i.i = trunc i32 %mul.i.i to i16
  %freq.0.i.i = select i1 %cmp.i.i, i16 %conv5.i.i, i16 %20
  store i16 %freq.0.i.i, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %21 = load i32, ptr @spk_bleeps, align 4
  %and1.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.then4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @spk_msg_get(i32 noundef 36) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %11, 1
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc, ptr %9, align 4
  %23 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %24 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reading_pos, align 4
  %add = add i32 %28, 2
  store i32 %add, ptr %reading_pos, align 4
  tail call void @say_char(ptr noundef %vc)
  br label %return

return:                                           ; preds = %if.end, %if.then4.i, %if.end.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_word(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_word(ptr noundef %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i16, ptr @spk_punc_mask, align 2
  store i16 64, ptr @spk_punc_mask, align 2
  %inc = add i32 %call, 1
  %arrayidx = getelementptr [256 x i16], ptr @buf, i32 0, i32 %call
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 32, ptr %arrayidx, align 2
  tail call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc)
  store i16 %0, ptr @spk_punc_mask, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_prev_word(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %entry
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reading_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %14 = load i32, ptr @spk_bleeps, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then11.if.end.i_crit_edge, label %if.then.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %15 = load i32, ptr @spk_bleep_time, align 4
  store i16 350, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then11.if.end.i_crit_edge
  %16 = load i32, ptr @spk_bleeps, align 4
  %and1.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @spk_msg_get(i32 noundef 33) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %13, -1
  %17 = ptrtoint ptr %reading_y to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dec, ptr %reading_y, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %18 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vc_cols, align 4
  %20 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vc_num, align 4
  %idxprom17 = zext i16 %21 to i32
  %arrayidx18 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom17
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx18, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %23, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  %edge_said.0 = phi i32 [ 5, %if.end ], [ 0, %entry.if.end20_crit_edge ]
  %vc_cols50 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %tobool.not.i156 = icmp eq ptr %vc, null
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  br label %while.cond

while.cond:                                       ; preds = %if.end87.while.cond_crit_edge, %if.end20
  %edge_said.1 = phi i32 [ %edge_said.0, %if.end20 ], [ %edge_said.2, %if.end87.while.cond_crit_edge ]
  %state.0 = phi i16 [ 0, %if.end20 ], [ %state.1, %if.end87.while.cond_crit_edge ]
  %25 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vc_num, align 4
  %idxprom22 = zext i16 %26 to i32
  %arrayidx23 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom22
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx23, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp25 = icmp eq i32 %30, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %while.cond
  %reading_y31 = getelementptr inbounds %struct.st_spk_t, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %reading_y31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reading_y31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp32 = icmp eq i32 %32, 0
  br i1 %cmp32, label %if.then27.while.end.thread_crit_edge, label %if.end35

if.then27.while.end.thread_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

if.end35:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %edge_said.1)
  %cmp36.not = icmp eq i32 %edge_said.1, 5
  %spec.store.select = select i1 %cmp36.not, i32 5, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %state.0)
  %cmp41.not = icmp eq i16 %state.0, 0
  br i1 %cmp41.not, label %if.end44, label %if.end35.while.end_crit_edge

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %dec49 = add i32 %32, -1
  %33 = ptrtoint ptr %reading_y31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %dec49, ptr %reading_y31, align 4
  %34 = ptrtoint ptr %vc_cols50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc_cols50, align 4
  %sub = add i32 %35, -1
  %36 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vc_num, align 4
  %idxprom52 = zext i16 %37 to i32
  %arrayidx53 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom52
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx53, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub, ptr %39, align 4
  br label %if.end60

if.else:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %dec59 = add i32 %30, -1
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dec59, ptr %28, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.end44
  %edge_said.2 = phi i32 [ %spec.store.select, %if.end44 ], [ %edge_said.1, %if.else ]
  %42 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vc_num, align 4
  %idxprom62 = zext i16 %43 to i32
  %arrayidx63 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom62
  %44 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx63, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reading_pos, align 4
  %sub64 = add i32 %47, -2
  store i32 %sub64, ptr %reading_pos, align 4
  %48 = load i16, ptr %vc_num, align 4
  %idxprom66 = zext i16 %48 to i32
  %arrayidx67 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom66
  %49 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx67, align 4
  %reading_pos68 = getelementptr inbounds %struct.st_spk_t, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %reading_pos68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reading_pos68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool1.not.i = icmp eq i32 %52, 0
  %or.cond.i = or i1 %tobool.not.i156, %tobool1.not.i
  br i1 %or.cond.i, label %if.end60.if.end87_crit_edge, label %get_char.exit

if.end60.if.end87_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

get_char.exit:                                    ; preds = %if.end60
  %53 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %52, %54
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i157 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %55 = ptrtoint ptr %call.i157 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %call.i157, align 2
  %and.i158 = and i16 %56, 255
  %57 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %58, %56
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %59 = or i16 %and.i158, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i158, i16 %59
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  %60 = zext i16 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.312)
  switch i16 %call16.i, label %if.else76 [
    i16 32, label %get_char.exit.if.end87_crit_edge
    i16 0, label %get_char.exit.if.end87_crit_edge207
  ]

get_char.exit.if.end87_crit_edge207:              ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

get_char.exit.if.end87_crit_edge:                 ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.else76:                                        ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %call16.i)
  %cmp78 = icmp ult i16 %call16.i, 256
  br i1 %cmp78, label %land.lhs.true, label %if.else76.if.else85_crit_edge

if.else76.if.else85_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else85

land.lhs.true:                                    ; preds = %if.else76
  %idxprom81 = zext i16 %call16.i to i32
  %arrayidx82 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom81
  %61 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx82, align 2
  %63 = and i16 %62, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not = icmp eq i16 %63, 0
  br i1 %tobool.not, label %land.lhs.true.if.else85_crit_edge, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

land.lhs.true.if.else85_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else85

if.else85:                                        ; preds = %land.lhs.true.if.else85_crit_edge, %if.else76.if.else85_crit_edge
  br label %if.end87

if.end87:                                         ; preds = %if.else85, %land.lhs.true.if.end87_crit_edge, %get_char.exit.if.end87_crit_edge, %get_char.exit.if.end87_crit_edge207, %if.end60.if.end87_crit_edge
  %state.1 = phi i16 [ 2, %if.else85 ], [ 0, %get_char.exit.if.end87_crit_edge ], [ 0, %get_char.exit.if.end87_crit_edge207 ], [ 1, %land.lhs.true.if.end87_crit_edge ], [ 0, %if.end60.if.end87_crit_edge ]
  %cmp90 = icmp ult i16 %state.1, %state.0
  br i1 %cmp90, label %if.then92, label %if.end87.while.cond_crit_edge

if.end87.while.cond_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vc_num, align 4
  %idxprom94 = zext i16 %65 to i32
  %arrayidx95 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom94
  %66 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx95, align 4
  %reading_pos96 = getelementptr inbounds %struct.st_spk_t, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %reading_pos96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reading_pos96, align 4
  %add = add i32 %69, 2
  store i32 %add, ptr %reading_pos96, align 4
  %70 = load i16, ptr %vc_num, align 4
  %idxprom98 = zext i16 %70 to i32
  %arrayidx99 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom98
  %71 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx99, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %72, align 4
  br label %while.end

while.end:                                        ; preds = %if.then92, %if.end35.while.end_crit_edge
  %edge_said.3 = phi i32 [ %edge_said.2, %if.then92 ], [ %spec.store.select, %if.end35.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %edge_said.3)
  %cmp109 = icmp eq i32 %edge_said.3, 5
  %spec.select206 = select i1 %cmp109, i32 3, i32 %edge_said.3
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end, %if.then27.while.end.thread_crit_edge
  %edge_said.3202 = phi i32 [ %edge_said.3, %while.end ], [ 1, %if.then27.while.end.thread_crit_edge ]
  %75 = phi i32 [ %spec.select206, %while.end ], [ 1, %if.then27.while.end.thread_crit_edge ]
  %76 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %76)
  %idxprom103198.pn.in = load i16, ptr %vc_num, align 4
  %idxprom103198.pn = zext i16 %idxprom103198.pn.in to i32
  %.in = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom103198.pn
  %77 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %.in, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %cmp106203.in = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp106203.in)
  %cmp106203 = icmp eq i32 %cmp106203.in, 0
  %edge_said.4 = select i1 %cmp106203, i32 %75, i32 %edge_said.3202
  %80 = add i32 %edge_said.4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %81 = icmp ult i32 %80, 4
  br i1 %81, label %if.then118, label %while.end.thread.if.end119_crit_edge

while.end.thread.if.end119_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then118:                                       ; preds = %while.end.thread
  %82 = load i32, ptr @spk_bleeps, align 4
  %and.i160 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160)
  %tobool.not.i161 = icmp eq i32 %and.i160, 0
  br i1 %tobool.not.i161, label %if.then118.if.end.i189_crit_edge, label %if.then.i177

if.then118.if.end.i189_crit_edge:                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i189

if.then.i177:                                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  %reading_y.i165 = getelementptr inbounds %struct.st_spk_t, ptr %78, i32 0, i32 2
  %83 = ptrtoint ptr %reading_y.i165 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reading_y.i165, align 4
  %conv.i166 = trunc i32 %84 to i16
  %85 = load i32, ptr @spk_bleep_time, align 4
  %conv.i166.frozen = freeze i16 %conv.i166
  %div11.i.i171 = udiv i16 %conv.i166.frozen, 12
  %86 = mul i16 %div11.i.i171, 12
  %rem10.i.i167.decomposed = sub i16 %conv.i166.frozen, %86
  %rem.zext.i.i168 = zext i16 %rem10.i.i167.decomposed to i32
  %arrayidx.i.i169 = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i.i168
  %87 = ptrtoint ptr %arrayidx.i.i169 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i.i169, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i166)
  %cmp.i.i170 = icmp ugt i16 %conv.i166, 11
  %div.zext.i.i172 = zext i16 %div11.i.i171 to i32
  %conv49.i.i173 = zext i16 %88 to i32
  %mul.i.i174 = shl i32 %conv49.i.i173, %div.zext.i.i172
  %conv5.i.i175 = trunc i32 %mul.i.i174 to i16
  %freq.0.i.i176 = select i1 %cmp.i.i170, i16 %conv5.i.i175, i16 %88
  store i16 %freq.0.i.i176, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i183 = tail call i32 @__msecs_to_jiffies(i32 noundef %85) #11
  store i32 %call2.i.i.i183, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i189

if.end.i189:                                      ; preds = %if.then.i177, %if.then118.if.end.i189_crit_edge
  %89 = load i32, ptr @spk_bleeps, align 4
  %and1.i187 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i187)
  %tobool2.not.i188 = icmp eq i32 %and1.i187, 0
  br i1 %tobool2.not.i188, label %if.end.i189.if.end119_crit_edge, label %if.then4.i191

if.end.i189.if.end119_crit_edge:                  ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then4.i191:                                    ; preds = %if.end.i189
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add nuw nsw i32 %edge_said.4, 32
  %call.i190 = tail call ptr @spk_msg_get(i32 noundef %sub.i) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i190) #11
  br label %if.end119

if.end119:                                        ; preds = %if.then4.i191, %if.end.i189.if.end119_crit_edge, %while.end.thread.if.end119_crit_edge
  %call.i193 = tail call fastcc i32 @get_word(ptr noundef %vc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp.i = icmp eq i32 %call.i193, 0
  br i1 %cmp.i, label %if.end119.cleanup_crit_edge, label %if.end.i195

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i195:                                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  %90 = load i16, ptr @spk_punc_mask, align 2
  store i16 64, ptr @spk_punc_mask, align 2
  %inc.i = add i32 %call.i193, 1
  %arrayidx.i194 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %call.i193
  %91 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 32, ptr %arrayidx.i194, align 2
  tail call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc.i) #11
  store i16 %90, ptr @spk_punc_mask, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i195, %if.end119.cleanup_crit_edge, %if.then4.i, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_next_word(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %12 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_cols, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp = icmp eq i32 %11, %sub
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reading_y, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %16 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_rows, align 4
  %sub9 = add i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub9)
  %cmp10 = icmp eq i32 %15, %sub9
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, ptr @spk_bleeps, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %15 to i16
  %19 = load i32, ptr @spk_bleep_time, align 4
  %conv.i.frozen = freeze i16 %conv.i
  %div11.i.i = udiv i16 %conv.i.frozen, 12
  %20 = mul i16 %div11.i.i, 12
  %rem10.i.i.decomposed = sub i16 %conv.i.frozen, %20
  %rem.zext.i.i = zext i16 %rem10.i.i.decomposed to i32
  %arrayidx.i.i = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %conv.i, 11
  %div.zext.i.i = zext i16 %div11.i.i to i32
  %conv49.i.i = zext i16 %22 to i32
  %mul.i.i = shl i32 %conv49.i.i, %div.zext.i.i
  %conv5.i.i = trunc i32 %mul.i.i to i16
  %freq.0.i.i = select i1 %cmp.i.i, i16 %conv5.i.i, i16 %22
  store i16 %freq.0.i.i, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %23 = load i32, ptr @spk_bleeps, align 4
  %and1.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @spk_msg_get(i32 noundef 34) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i109 = icmp eq ptr %vc, null
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %vc_rows53 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end73, %if.end
  %edge_said.0 = phi i32 [ 0, %if.end ], [ %edge_said.1, %if.end73 ]
  %last_state.0 = phi i16 [ 2, %if.end ], [ %state.1, %if.end73 ]
  %24 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vc_num, align 4
  %idxprom13 = zext i16 %25 to i32
  %arrayidx14 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom13
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reading_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.i = icmp eq i32 %29, 0
  %or.cond.i = or i1 %tobool.not.i109, %tobool1.not.i
  br i1 %or.cond.i, label %while.cond.if.end39_crit_edge, label %get_char.exit

while.cond.if.end39_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

get_char.exit:                                    ; preds = %while.cond
  %30 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %29, %31
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i110 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %32 = ptrtoint ptr %call.i110 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %call.i110, align 2
  %and.i111 = and i16 %33, 255
  %34 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %35, %33
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %36 = or i16 %and.i111, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i111, i16 %36
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  %37 = zext i16 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.313)
  switch i16 %call16.i, label %if.else [
    i16 32, label %get_char.exit.if.end39_crit_edge
    i16 0, label %get_char.exit.if.end39_crit_edge162
  ]

get_char.exit.if.end39_crit_edge162:              ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

get_char.exit.if.end39_crit_edge:                 ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.else:                                          ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %call16.i)
  %cmp23 = icmp ult i16 %call16.i, 256
  br i1 %cmp23, label %land.lhs.true25, label %if.else.if.else31_crit_edge

if.else.if.else31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else
  %idxprom27 = zext i16 %call16.i to i32
  %arrayidx28 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom27
  %38 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx28, align 2
  %40 = and i16 %39, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not = icmp eq i16 %40, 0
  br i1 %tobool.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end33_crit_edge

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else.if.else31_crit_edge
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %land.lhs.true25.if.end33_crit_edge
  %state.0 = phi i16 [ 2, %if.else31 ], [ 1, %land.lhs.true25.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %state.0, i16 %last_state.0)
  %cmp36 = icmp ugt i16 %state.0, %last_state.0
  br i1 %cmp36, label %while.end, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %if.end33.if.end39_crit_edge, %get_char.exit.if.end39_crit_edge, %get_char.exit.if.end39_crit_edge162, %while.cond.if.end39_crit_edge
  %state.0152 = phi i16 [ %state.0, %if.end33.if.end39_crit_edge ], [ 0, %get_char.exit.if.end39_crit_edge ], [ 0, %get_char.exit.if.end39_crit_edge162 ], [ 0, %while.cond.if.end39_crit_edge ]
  %41 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vc_num, align 4
  %idxprom41 = zext i16 %42 to i32
  %arrayidx42 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom41
  %43 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx42, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vc_cols, align 4
  %sub45 = add i32 %48, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sub45)
  %cmp46.not = icmp ult i32 %46, %sub45
  br i1 %cmp46.not, label %if.else67, label %if.then48

if.then48:                                        ; preds = %if.end39
  %reading_y52 = getelementptr inbounds %struct.st_spk_t, ptr %44, i32 0, i32 2
  %49 = ptrtoint ptr %reading_y52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reading_y52, align 4
  %51 = ptrtoint ptr %vc_rows53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vc_rows53, align 4
  %sub54 = add i32 %52, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub54)
  %cmp55 = icmp eq i32 %50, %sub54
  br i1 %cmp55, label %if.then48.if.then80_crit_edge, label %if.end58

if.then48.if.then80_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then80

if.end58:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %50, 1
  %53 = ptrtoint ptr %reading_y52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc, ptr %reading_y52, align 4
  %54 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vc_num, align 4
  %idxprom64 = zext i16 %55 to i32
  %arrayidx65 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom64
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx65, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %57, align 4
  br label %if.end73

if.else67:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %inc72 = add nuw i32 %46, 1
  %59 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %inc72, ptr %44, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else67, %if.end58
  %edge_said.1 = phi i32 [ 4, %if.end58 ], [ %edge_said.0, %if.else67 ]
  %state.1 = phi i16 [ 0, %if.end58 ], [ %state.0152, %if.else67 ]
  %60 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vc_num, align 4
  %idxprom75 = zext i16 %61 to i32
  %arrayidx76 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom75
  %62 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx76, align 4
  %reading_pos77 = getelementptr inbounds %struct.st_spk_t, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %reading_pos77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reading_pos77, align 4
  %add = add i32 %65, 2
  store i32 %add, ptr %reading_pos77, align 4
  br label %while.cond

while.end:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %edge_said.0)
  %cmp78.not = icmp eq i32 %edge_said.0, 0
  br i1 %cmp78.not, label %while.end.if.end81_crit_edge, label %while.end.if.then80_crit_edge

while.end.if.then80_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then80

while.end.if.end81_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then80:                                        ; preds = %while.end.if.then80_crit_edge, %if.then48.if.then80_crit_edge
  %edge_said.2155 = phi i32 [ %edge_said.0, %while.end.if.then80_crit_edge ], [ 2, %if.then48.if.then80_crit_edge ]
  %66 = load i32, ptr @spk_bleeps, align 4
  %and.i113 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  br i1 %tobool.not.i114, label %if.then80.if.end.i142_crit_edge, label %if.then.i130

if.then80.if.end.i142_crit_edge:                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i142

if.then.i130:                                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vc_num, align 4
  %idxprom.i116 = zext i16 %68 to i32
  %arrayidx.i117 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i116
  %69 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i117, align 4
  %reading_y.i118 = getelementptr inbounds %struct.st_spk_t, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %reading_y.i118 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reading_y.i118, align 4
  %conv.i119 = trunc i32 %72 to i16
  %73 = load i32, ptr @spk_bleep_time, align 4
  %conv.i119.frozen = freeze i16 %conv.i119
  %div11.i.i124 = udiv i16 %conv.i119.frozen, 12
  %74 = mul i16 %div11.i.i124, 12
  %rem10.i.i120.decomposed = sub i16 %conv.i119.frozen, %74
  %rem.zext.i.i121 = zext i16 %rem10.i.i120.decomposed to i32
  %arrayidx.i.i122 = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i.i121
  %75 = ptrtoint ptr %arrayidx.i.i122 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx.i.i122, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i119)
  %cmp.i.i123 = icmp ugt i16 %conv.i119, 11
  %div.zext.i.i125 = zext i16 %div11.i.i124 to i32
  %conv49.i.i126 = zext i16 %76 to i32
  %mul.i.i127 = shl i32 %conv49.i.i126, %div.zext.i.i125
  %conv5.i.i128 = trunc i32 %mul.i.i127 to i16
  %freq.0.i.i129 = select i1 %cmp.i.i123, i16 %conv5.i.i128, i16 %76
  store i16 %freq.0.i.i129, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i136 = tail call i32 @__msecs_to_jiffies(i32 noundef %73) #11
  store i32 %call2.i.i.i136, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i142

if.end.i142:                                      ; preds = %if.then.i130, %if.then80.if.end.i142_crit_edge
  %77 = load i32, ptr @spk_bleeps, align 4
  %and1.i140 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i140)
  %tobool2.not.i141 = icmp eq i32 %and1.i140, 0
  br i1 %tobool2.not.i141, label %if.end.i142.if.end81_crit_edge, label %if.then4.i144

if.end.i142.if.end81_crit_edge:                   ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then4.i144:                                    ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %edge_said.2155, 32
  %call.i143 = tail call ptr @spk_msg_get(i32 noundef %sub.i) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i143) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then4.i144, %if.end.i142.if.end81_crit_edge, %while.end.if.end81_crit_edge
  %call.i146 = tail call fastcc i32 @get_word(ptr noundef %vc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp.i = icmp eq i32 %call.i146, 0
  br i1 %cmp.i, label %if.end81.cleanup_crit_edge, label %if.end.i148

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i148:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %78 = load i16, ptr @spk_punc_mask, align 2
  store i16 64, ptr @spk_punc_mask, align 2
  %inc.i = add i32 %call.i146, 1
  %arrayidx.i147 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %call.i146
  %79 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 32, ptr %arrayidx.i147, align 2
  tail call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc.i) #11
  store i16 %78, ptr @spk_punc_mask, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i148, %if.end81.cleanup_crit_edge, %if.then4.i, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_line(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @get_line(ptr noundef %vc)
  %0 = load i16, ptr @spk_punc_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call ptr @spk_msg_get(i32 noundef 0) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add i32 %call, 1
  %arrayidx = getelementptr [256 x i16], ptr @buf, i32 0, i32 %call
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 10, ptr %arrayidx, align 2
  %2 = load i8, ptr @this_speakup_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %2)
  %cmp2 = icmp eq i8 %2, 28
  br i1 %cmp2, label %if.end.while.cond_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %cp.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ @buf, %if.end.while.cond_crit_edge ]
  %3 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cp.0, align 2
  %cmp6 = icmp eq i16 %4, 32
  %incdec.ptr = getelementptr i16, ptr %cp.0, i32 1
  br i1 %cmp6, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast = ptrtoint ptr %cp.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @buf to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 1
  %add = add nsw i32 %sub.ptr.div, 1
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.263, i32 noundef %add) #11
  br label %if.end8

if.end8:                                          ; preds = %while.end, %if.end.if.end8_crit_edge
  %5 = load i32, ptr @spk_reading_punc, align 4
  %arrayidx9 = getelementptr [0 x i16], ptr @spk_punc_masks, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx9, align 2
  store i16 %7, ptr @spk_punc_mask, align 2
  tail call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc)
  store i16 %0, ptr @spk_punc_mask, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_prev_line(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reading_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, ptr @spk_bleeps, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %13 = load i32, ptr @spk_bleep_time, align 4
  store i16 350, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %14 = load i32, ptr @spk_bleeps, align 4
  %and1.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.then4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @spk_msg_get(i32 noundef 33) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %11, -1
  %15 = ptrtoint ptr %reading_y to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %reading_y, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %16 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_size_row, align 4
  %18 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %19 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx12, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reading_pos, align 4
  %sub = sub i32 %23, %17
  store i32 %sub, ptr %reading_pos, align 4
  tail call void @say_line(ptr noundef %vc)
  br label %return

return:                                           ; preds = %if.end, %if.then4.i, %if.end.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_next_line(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reading_y, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %12 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_rows, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp = icmp eq i32 %11, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i32, ptr @spk_bleeps, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %11 to i16
  %15 = load i32, ptr @spk_bleep_time, align 4
  %conv.i.frozen = freeze i16 %conv.i
  %div11.i.i = udiv i16 %conv.i.frozen, 12
  %16 = mul i16 %div11.i.i, 12
  %rem10.i.i.decomposed = sub i16 %conv.i.frozen, %16
  %rem.zext.i.i = zext i16 %rem10.i.i.decomposed to i32
  %arrayidx.i.i = getelementptr [12 x i16], ptr @bleep.vals, i32 0, i32 %rem.zext.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i)
  %cmp.i.i = icmp ugt i16 %conv.i, 11
  %div.zext.i.i = zext i16 %div11.i.i to i32
  %conv49.i.i = zext i16 %18 to i32
  %mul.i.i = shl i32 %conv49.i.i, %div.zext.i.i
  %conv5.i.i = trunc i32 %mul.i.i to i16
  %freq.0.i.i = select i1 %cmp.i.i, i16 %conv5.i.i, i16 %18
  store i16 %freq.0.i.i, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %15) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %19 = load i32, ptr @spk_bleeps, align 4
  %and1.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.return_crit_edge, label %if.then4.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @spk_msg_get(i32 noundef 34) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call.i) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %11, 1
  %20 = ptrtoint ptr %reading_y to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc, ptr %reading_y, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %21 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vc_size_row, align 4
  %23 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %24 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reading_pos, align 4
  %add = add i32 %28, %22
  store i32 %add, ptr %reading_pos, align 4
  tail call void @say_line(ptr noundef %vc)
  br label %return

return:                                           ; preds = %if.end, %if.then4.i, %if.end.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @top_edge(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %7 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc_origin, align 4
  %9 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %9 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %mul = shl i32 %13, 1
  %add = add i32 %mul, %8
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %reading_pos to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %reading_pos, align 4
  %15 = load i16, ptr %vc_num, align 4
  %idxprom9 = zext i16 %15 to i32
  %arrayidx10 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %reading_y to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %reading_y, align 4
  tail call void @say_line(ptr noundef %vc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bottom_edge(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %7 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc_rows, align 4
  %9 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %9 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reading_y, align 4
  %14 = xor i32 %13, -1
  %sub5 = add i32 %8, %14
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %15 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %sub5, %16
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reading_pos, align 4
  %add = add i32 %18, %mul
  store i32 %add, ptr %reading_pos, align 4
  %19 = load i32, ptr %vc_rows, align 4
  %sub10 = add i32 %19, -1
  %20 = load i16, ptr %vc_num, align 4
  %idxprom12 = zext i16 %20 to i32
  %arrayidx13 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx13, align 4
  %reading_y14 = getelementptr inbounds %struct.st_spk_t, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %reading_y14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub10, ptr %reading_y14, align 4
  tail call void @say_line(ptr noundef %vc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @left_edge(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %7 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %mul.neg = mul i32 %11, -2
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reading_pos, align 4
  %sub = add i32 %mul.neg, %13
  store i32 %sub, ptr %reading_pos, align 4
  %14 = load i16, ptr %vc_num, align 4
  %idxprom9 = zext i16 %14 to i32
  %arrayidx10 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx10, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %16, align 4
  tail call void @say_char(ptr noundef %vc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @right_edge(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %parked, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %7 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vc_cols, align 4
  %9 = load i16, ptr %vc_num, align 4
  %idxprom3 = zext i16 %9 to i32
  %arrayidx4 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom3
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = xor i32 %13, -1
  %sub5 = add i32 %8, %14
  %mul = shl i32 %sub5, 1
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reading_pos, align 4
  %add = add i32 %mul, %16
  store i32 %add, ptr %reading_pos, align 4
  %17 = load i32, ptr %vc_cols, align 4
  %sub10 = add i32 %17, -1
  %18 = load i16, ptr %vc_num, align 4
  %idxprom12 = zext i16 %18 to i32
  %arrayidx13 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx13, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub10, ptr %20, align 4
  tail call void @say_char(ptr noundef %vc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spell_word(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spk_get_var(i32 noundef 36) #11
  %call1 = tail call fastcc i32 @get_word(ptr noundef %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %0 = load i16, ptr @buf, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool2.not93 = icmp eq i16 %0, 0
  br i1 %tobool2.not93, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool24.not = icmp eq ptr %call, null
  %value = getelementptr inbounds %struct.var_t, ptr %call, i32 0, i32 1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %while.body.lr.ph
  %1 = phi i16 [ %0, %while.body.lr.ph ], [ %23, %if.end60.while.body_crit_edge ]
  %last_cap.095 = phi ptr [ @spk_str_caps_stop, %while.body.lr.ph ], [ %str_cap.192, %if.end60.while.body_crit_edge ]
  %cp.094 = phi ptr [ @buf, %while.body.lr.ph ], [ %incdec.ptr61, %if.end60.while.body_crit_edge ]
  %cmp.not = icmp eq ptr %cp.094, @buf
  br i1 %cmp.not, label %while.body.if.end4_crit_edge, label %if.then3

while.body.if.end4_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = load i32, ptr @spk_spell_delay, align 4
  %arrayidx = getelementptr [5 x ptr], ptr @spell_word.delay_str, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.253, ptr noundef %4) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.body.if.end4_crit_edge
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %1)
  %cmp5 = icmp ult i16 %1, 256
  br i1 %cmp5, label %land.lhs.true, label %if.end4.if.end16_crit_edge

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %arrayidx8 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx8, align 2
  %7 = and i16 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool10.not = icmp eq i16 %7, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end16_crit_edge, label %if.then11

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  %8 = load i8, ptr @spk_str_caps_stop, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %if.then11.if.then19_crit_edge, label %if.then13

if.then11.if.then19_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load i16, ptr @spk_pitch_shift, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr @spk_pitch_shift, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %str_cap.1 = phi ptr [ @spk_str_caps_start, %if.then13 ], [ @spk_str_caps_stop, %land.lhs.true.if.end16_crit_edge ], [ @spk_str_caps_stop, %if.end4.if.end16_crit_edge ]
  %cmp17.not = icmp eq ptr %str_cap.1, %last_cap.095
  br i1 %cmp17.not, label %if.end16.if.end20_crit_edge, label %if.end16.if.then19_crit_edge

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end16.if.then19_crit_edge, %if.then11.if.then19_crit_edge
  %str_cap.191 = phi ptr [ %str_cap.1, %if.end16.if.then19_crit_edge ], [ @spk_str_caps_start, %if.then11.if.then19_crit_edge ]
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef nonnull %str_cap.191) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %str_cap.192 = phi ptr [ %str_cap.191, %if.then19 ], [ %last_cap.095, %if.end16.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %1)
  %cmp22 = icmp ugt i16 %1, 255
  br i1 %cmp22, label %if.end20.if.then27_crit_edge, label %lor.lhs.false

if.end20.if.then27_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end20
  br i1 %tobool24.not, label %lor.lhs.false.if.else28_crit_edge, label %land.lhs.true25

lor.lhs.false.if.else28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not = icmp eq i32 %11, 0
  br i1 %tobool26.not, label %land.lhs.true25.if.else28_crit_edge, label %land.lhs.true25.if.then27_crit_edge

land.lhs.true25.if.then27_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

land.lhs.true25.if.else28_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28

if.then27:                                        ; preds = %land.lhs.true25.if.then27_crit_edge, %if.end20.if.then27_crit_edge
  tail call void @synth_putwc_s(i16 noundef zeroext %1) #11
  br label %if.end60

if.else28:                                        ; preds = %land.lhs.true25.if.else28_crit_edge, %lor.lhs.false.if.else28_crit_edge
  %12 = load i8, ptr @this_speakup_key, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %12)
  %cmp30 = icmp eq i8 %12, 21
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %1)
  %cmp34 = icmp ult i16 %1, 128
  %or.cond = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond, label %land.lhs.true36, label %if.else28.if.else50_crit_edge

if.else28.if.else50_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

land.lhs.true36:                                  ; preds = %if.else28
  %arrayidx39 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx39, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp42.not = icmp eq i8 %15, 0
  br i1 %cmp42.not, label %land.lhs.true36.if.else50_crit_edge, label %if.then44

land.lhs.true36.if.else50_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else50

if.then44:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  %and46 = and i16 %1, 31
  %dec = add nsw i16 %and46, -1
  %idxprom48 = zext i16 %dec to i32
  %arrayidx49 = getelementptr [26 x ptr], ptr @phonetic, i32 0, i32 %idxprom48
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx49, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef %17) #11
  br label %if.end60

if.else50:                                        ; preds = %land.lhs.true36.if.else50_crit_edge, %if.else28.if.else50_crit_edge
  %arrayidx52 = getelementptr [256 x ptr], ptr @spk_characters, i32 0, i32 %conv
  %18 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx52, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %21)
  %cmp54 = icmp eq i8 %21, 94
  br i1 %cmp54, label %if.then56, label %if.else50.if.end58_crit_edge

if.else50.if.end58_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then56:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call ptr @spk_msg_get(i32 noundef 41) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef %call57) #11
  %incdec.ptr = getelementptr i8, ptr %19, i32 1
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.else50.if.end58_crit_edge
  %cp1.0 = phi ptr [ %incdec.ptr, %if.then56 ], [ %19, %if.else50.if.end58_crit_edge ]
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef %cp1.0) #11
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.then44, %if.then27
  %incdec.ptr61 = getelementptr i16, ptr %cp.094, i32 1
  %22 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %incdec.ptr61, align 2
  %tobool2.not = icmp eq i16 %23, 0
  br i1 %tobool2.not, label %while.end, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end60
  %cmp62.not = icmp eq ptr %str_cap.192, @spk_str_caps_stop
  br i1 %cmp62.not, label %while.end.cleanup_crit_edge, label %if.then64

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then64:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef nonnull @spk_str_caps_stop) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %while.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_screen(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %0 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vc_rows, align 4
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %2 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vc_origin.i, align 4
  %vc_size_row6.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %4 = ptrtoint ptr %vc_size_row6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vc_size_row6.i, align 4
  %mul7.i = mul i32 %5, %1
  %add8.i = add i32 %mul7.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add8.i)
  %cmp927.i = icmp ult i32 %3, %add8.i
  br i1 %cmp927.i, label %entry.for.body.i_crit_edge, label %entry.say_screen_from_to.exit_crit_edge

entry.say_screen_from_to.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_screen_from_to.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %from.addr.028.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %vc_size_row6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_size_row6.i, align 4
  %add11.i = add i32 %7, %from.addr.028.i
  %call.i = tail call fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %from.addr.028.i, i32 noundef %add11.i, i32 noundef 1) #11
  %cmp9.i = icmp ult i32 %add11.i, %add8.i
  br i1 %cmp9.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.say_screen_from_to.exit_crit_edge

for.body.i.say_screen_from_to.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_screen_from_to.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

say_screen_from_to.exit:                          ; preds = %for.body.i.say_screen_from_to.exit_crit_edge, %entry.say_screen_from_to.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_position(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spk_msg_get(i32 noundef 43) #11
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reading_y, align 4
  %add = add i32 %5, 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add4 = add i32 %7, 1
  %add6 = add nuw nsw i32 %idxprom, 1
  tail call void (ptr, ...) @synth_printf(ptr noundef %call, i32 noundef %add, i32 noundef %add4, i32 noundef %add6) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.294) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_attributes(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reading_attr, align 2
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 15
  %6 = lshr i32 %conv, 4
  %add = add nuw nsw i32 %and, 61
  %call = tail call ptr @spk_msg_get(i32 noundef %add) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp slt i8 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call ptr @spk_msg_get(i32 noundef 12) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.253, ptr noundef %call7) #11
  %sub = add nsw i32 %6, -8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call ptr @spk_msg_get(i32 noundef 14) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.253, ptr noundef %call8) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bg.0 = phi i32 [ %sub, %if.then ], [ %6, %if.else ]
  %add9 = add nsw i32 %bg.0, 61
  %call10 = tail call ptr @spk_msg_get(i32 noundef %add9) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_off(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shut_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  %or.sink = xor i8 %5, -128
  %.sink = select i1 %tobool.not, i32 4, i32 3
  %6 = ptrtoint ptr %shut_up to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or.sink, ptr %shut_up, align 1
  %call14 = tail call ptr @spk_msg_get(i32 noundef %.sink) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call14) #11
  %state.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  %9 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vc_num, align 4
  %idxprom.i = zext i16 %10 to i32
  %arrayidx.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %cursor_x.i = getelementptr inbounds %struct.st_spk_t, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cursor_x.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %cursor_x.i, align 4
  %14 = load i16, ptr %vc_num, align 4
  %idxprom2.i = zext i16 %14 to i32
  %arrayidx3.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2.i
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %16, align 4
  %y.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y.i, align 4
  %20 = load i16, ptr %vc_num, align 4
  %idxprom6.i = zext i16 %20 to i32
  %arrayidx7.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6.i
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx7.i, align 4
  %cursor_y.i = getelementptr inbounds %struct.st_spk_t, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cursor_y.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %19, ptr %cursor_y.i, align 4
  %24 = load i16, ptr %vc_num, align 4
  %idxprom9.i = zext i16 %24 to i32
  %arrayidx10.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9.i
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx10.i, align 4
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %reading_y.i, align 4
  %vc_pos.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %28 = ptrtoint ptr %vc_pos.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_pos.i, align 4
  %30 = load i16, ptr %vc_num, align 4
  %idxprom12.i = zext i16 %30 to i32
  %arrayidx13.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12.i
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx13.i, align 4
  %cursor_pos.i = getelementptr inbounds %struct.st_spk_t, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %cursor_pos.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %cursor_pos.i, align 4
  %34 = load i16, ptr %vc_num, align 4
  %idxprom15.i = zext i16 %34 to i32
  %arrayidx16.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15.i
  %35 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx16.i, align 4
  %reading_pos.i = getelementptr inbounds %struct.st_spk_t, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %reading_pos.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %29, ptr %reading_pos.i, align 4
  %38 = load i16, ptr %vc_num, align 4
  %idxprom18.i = zext i16 %38 to i32
  %arrayidx19.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18.i
  %39 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19.i, align 4
  %reading_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %reading_attr.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reading_attr.i, align 2
  %old_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %40, i32 0, i32 15
  %43 = ptrtoint ptr %old_attr.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %old_attr.i, align 1
  %44 = load i16, ptr %vc_num, align 4
  %idxprom24.i = zext i16 %44 to i32
  %arrayidx25.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom24.i
  %45 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx25.i, align 4
  %reading_pos26.i = getelementptr inbounds %struct.st_spk_t, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %reading_pos26.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reading_pos26.i, align 4
  %vc_origin.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %49 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vc_origin.i.i, align 4
  %sub.ptr.sub.i.i = sub i32 %48, %50
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 1
  %call.i.i = tail call ptr @screen_pos(ptr noundef %vc, i32 noundef %sub.ptr.div.i.i, i1 noundef zeroext true) #11
  %51 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %call.i.i, align 2
  %vc_hi_font_mask.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %53 = ptrtoint ptr %vc_hi_font_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vc_hi_font_mask.i.i, align 4
  %neg.i.i = xor i16 %54, -1
  %and.i.i = and i16 %52, %neg.i.i
  %55 = lshr i16 %and.i.i, 8
  %conv2.i.i = trunc i16 %55 to i8
  %56 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vc_num, align 4
  %idxprom28.i = zext i16 %57 to i32
  %arrayidx29.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom28.i
  %58 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx29.i, align 4
  %reading_attr30.i = getelementptr inbounds %struct.st_spk_t, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %reading_attr30.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv2.i.i, ptr %reading_attr30.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_parked(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  %or = or i8 %5, -128
  %or.sink = select i1 %tobool.not, i8 %or, i8 0
  %.sink = select i1 %tobool.not, i32 5, i32 6
  %6 = ptrtoint ptr %parked to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or.sink, ptr %parked, align 4
  %call11 = tail call ptr @spk_msg_get(i32 noundef %.sink) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call11) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_from_top(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reading_y, align 4
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %6 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_origin.i, align 4
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %8 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_rows.i, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %5) #11
  %vc_size_row6.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %11 = ptrtoint ptr %vc_size_row6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vc_size_row6.i, align 4
  %mul7.i = mul i32 %10, %12
  %add8.i = add i32 %mul7.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add8.i)
  %cmp927.i = icmp ult i32 %7, %add8.i
  br i1 %cmp927.i, label %entry.for.body.i_crit_edge, label %entry.say_screen_from_to.exit_crit_edge

entry.say_screen_from_to.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_screen_from_to.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %from.addr.028.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ %7, %entry.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %vc_size_row6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_size_row6.i, align 4
  %add11.i = add i32 %14, %from.addr.028.i
  %call.i = tail call fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %from.addr.028.i, i32 noundef %add11.i, i32 noundef 1) #11
  %cmp9.i = icmp ult i32 %add11.i, %add8.i
  br i1 %cmp9.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.say_screen_from_to.exit_crit_edge

for.body.i.say_screen_from_to.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_screen_from_to.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

say_screen_from_to.exit:                          ; preds = %for.body.i.say_screen_from_to.exit_crit_edge, %entry.say_screen_from_to.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_to_bottom(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reading_y, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %6 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_rows, align 4
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %8 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_origin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vc_size_row.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %10 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vc_size_row.i, align 4
  %mul.i = mul i32 %11, %5
  %add.i = add i32 %mul.i, %9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %start.0.i = phi i32 [ %add.i, %if.then.i ], [ %9, %entry.if.end.i_crit_edge ]
  %vc_size_row6.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %12 = ptrtoint ptr %vc_size_row6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_size_row6.i, align 4
  %mul7.i = mul i32 %13, %7
  %add8.i = add i32 %mul7.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0.i, i32 %add8.i)
  %cmp927.i = icmp ult i32 %start.0.i, %add8.i
  br i1 %cmp927.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.say_screen_from_to.exit_crit_edge

if.end.i.say_screen_from_to.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_screen_from_to.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %from.addr.028.i = phi i32 [ %add11.i, %for.body.i.for.body.i_crit_edge ], [ %start.0.i, %if.end.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %vc_size_row6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vc_size_row6.i, align 4
  %add11.i = add i32 %15, %from.addr.028.i
  %call.i = tail call fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %from.addr.028.i, i32 noundef %add11.i, i32 noundef 1) #11
  %cmp9.i = icmp ult i32 %add11.i, %add8.i
  br i1 %cmp9.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.say_screen_from_to.exit_crit_edge

for.body.i.say_screen_from_to.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_screen_from_to.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

say_screen_from_to.exit:                          ; preds = %for.body.i.say_screen_from_to.exit_crit_edge, %if.end.i.say_screen_from_to.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_from_left(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %6 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_origin.i, align 4
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reading_y.i, align 4
  %vc_size_row.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %10 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vc_size_row.i, align 4
  %mul.i = mul i32 %11, %9
  %add.i = add i32 %mul.i, %7
  %mul1.i = shl i32 %5, 1
  %add2.i = add i32 %add.i, %mul1.i
  %call.i = tail call fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %add.i, i32 noundef %add2.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.say_line_from_to.exit_crit_edge

entry.say_line_from_to.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_line_from_to.exit

if.then.i:                                        ; preds = %entry
  %12 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp5.not.i = icmp eq i32 %12, 4
  br i1 %cmp5.not.i, label %if.then.i.say_line_from_to.exit_crit_edge, label %if.then6.i

if.then.i.say_line_from_to.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_line_from_to.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call ptr @spk_msg_get(i32 noundef 0) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call7.i) #11
  br label %say_line_from_to.exit

say_line_from_to.exit:                            ; preds = %if.then6.i, %if.then.i.say_line_from_to.exit_crit_edge, %entry.say_line_from_to.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_to_right(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %6 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_cols, align 4
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %8 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_origin.i, align 4
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reading_y.i, align 4
  %vc_size_row.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %12 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_size_row.i, align 4
  %mul.i = mul i32 %13, %11
  %add.i = add i32 %mul.i, %9
  %mul1.i = shl i32 %7, 1
  %add2.i = add i32 %add.i, %mul1.i
  %mul3.i = shl i32 %5, 1
  %add4.i = add i32 %add.i, %mul3.i
  %call.i = tail call fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %add4.i, i32 noundef %add2.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.say_line_from_to.exit_crit_edge

entry.say_line_from_to.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_line_from_to.exit

if.then.i:                                        ; preds = %entry
  %14 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp5.not.i = icmp eq i32 %14, 4
  br i1 %cmp5.not.i, label %if.then.i.say_line_from_to.exit_crit_edge, label %if.then6.i

if.then.i.say_line_from_to.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_line_from_to.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call ptr @spk_msg_get(i32 noundef 0) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call7.i) #11
  br label %say_line_from_to.exit

say_line_from_to.exit:                            ; preds = %if.then6.i, %if.then.i.say_line_from_to.exit_crit_edge, %entry.say_line_from_to.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_char_num(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reading_pos, align 4
  %tobool.not.i = icmp eq ptr %vc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.get_char.exit_crit_edge, label %if.then.i

entry.get_char.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %6 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %5, %7
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call.i, align 2
  %and.i = and i16 %9, 255
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %10 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %11, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %12 = or i16 %and.i, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i, i16 %12
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  %phi.cast = zext i16 %call16.i to i32
  br label %get_char.exit

get_char.exit:                                    ; preds = %if.then.i, %entry.get_char.exit_crit_edge
  %ch.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 32, %entry.get_char.exit_crit_edge ]
  %call1 = tail call ptr @spk_msg_get(i32 noundef 44) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef %call1, i32 noundef %ch.0.i, i32 noundef %ch.0.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_bits(ptr nocapture noundef readnone %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @this_speakup_key, align 1
  %1 = load ptr, ptr @spk_special_handler, align 4
  %tobool.not = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %0)
  %cmp = icmp ult i8 %0, 34
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %0)
  %cmp3 = icmp ugt i8 %0, 39
  %or.cond8 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @spk_msg_get(i32 noundef 27) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %0 to i32
  %sub = add nsw i32 %conv, -33
  %arrayidx = getelementptr [9 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 %sub
  store ptr %arrayidx, ptr @pb_edit, align 4
  %call5 = tail call ptr @spk_msg_get(i32 noundef 49) #11
  %2 = load ptr, ptr @pb_edit, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef %call5, ptr noundef %4) #11
  store ptr @edit_bits, ptr @spk_special_handler, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @say_phonetic_char(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reading_attr, align 2
  %old_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %old_attr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %old_attr, align 1
  %7 = load i16, ptr %vc_num, align 4
  %idxprom5 = zext i16 %7 to i32
  %arrayidx6 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom5
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reading_pos, align 4
  %tobool.not.i = icmp eq ptr %vc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.land.lhs.true_crit_edge, label %get_char.exit

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

get_char.exit:                                    ; preds = %entry
  %reading_attr10 = getelementptr inbounds %struct.st_spk_t, ptr %9, i32 0, i32 14
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %12 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %11, %13
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call.i, align 2
  %and.i = and i16 %15, 255
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %16 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %17, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %neg.i = xor i16 %17, -1
  %18 = or i16 %and.i, 256
  %and11.i = select i1 %tobool6.not.i, i16 -256, i16 %neg.i
  %w.0.off8.v.v.i = and i16 %and11.i, %15
  %w.0.off8.v.i = lshr i16 %w.0.off8.v.v.i, 8
  %w.0.off8.i = trunc i16 %w.0.off8.v.i to i8
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i, i16 %18
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %reading_attr10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %w.0.off8.i, ptr %reading_attr10, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %call16.i)
  %cmp = icmp ult i16 %call16.i, 128
  br i1 %cmp, label %get_char.exit.land.lhs.true_crit_edge, label %if.else

get_char.exit.land.lhs.true_crit_edge:            ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %get_char.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %ch.0.i47 = phi i16 [ %call16.i, %get_char.exit.land.lhs.true_crit_edge ], [ 32, %entry.land.lhs.true_crit_edge ]
  %conv13 = zext i16 %ch.0.i47 to i32
  %arrayidx14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv13
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp16.not = icmp eq i8 %22, 0
  br i1 %cmp16.not, label %land.lhs.true.land.lhs.true26_crit_edge, label %if.then

land.lhs.true.land.lhs.true26_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true26

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %23 = and i16 %ch.0.i47, 31
  %dec = add nsw i16 %23, -1
  %idxprom21 = zext i16 %dec to i32
  %arrayidx22 = getelementptr [26 x ptr], ptr @phonetic, i32 0, i32 %idxprom21
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx22, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %25) #11
  br label %if.end34

if.else:                                          ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %call16.i)
  %cmp24 = icmp ult i16 %call16.i, 256
  br i1 %cmp24, label %if.else.land.lhs.true26_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else.land.lhs.true26_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i16 %call16.i to i32
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.else.land.lhs.true26_crit_edge, %land.lhs.true.land.lhs.true26_crit_edge
  %idxprom28.pre-phi = phi i32 [ %.pre, %if.else.land.lhs.true26_crit_edge ], [ %conv13, %land.lhs.true.land.lhs.true26_crit_edge ]
  %ch.0.i4852 = phi i16 [ %call16.i, %if.else.land.lhs.true26_crit_edge ], [ %ch.0.i47, %land.lhs.true.land.lhs.true26_crit_edge ]
  %arrayidx29 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom28.pre-phi
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx29, align 2
  %28 = and i16 %27, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not = icmp eq i16 %28, 0
  br i1 %tobool.not, label %land.lhs.true26.if.end_crit_edge, label %if.then32

land.lhs.true26.if.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then32:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call ptr @spk_msg_get(i32 noundef 37) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.295, ptr noundef %call33) #11
  br label %if.end

if.end:                                           ; preds = %if.then32, %land.lhs.true26.if.end_crit_edge, %if.else.if.end_crit_edge
  %ch.0.i49 = phi i16 [ %ch.0.i4852, %if.then32 ], [ %ch.0.i4852, %land.lhs.true26.if.end_crit_edge ], [ %call16.i, %if.else.if.end_crit_edge ]
  tail call fastcc void @speak_char(i16 noundef zeroext %ch.0.i49)
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_win_set(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  %info = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info) #11
  %0 = call ptr @memset(ptr %info, i32 255, i32 40)
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %w_start = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %w_start to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %w_start, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp ugt i8 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @spk_msg_get(i32 noundef 22) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %w_left = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 10
  %9 = ptrtoint ptr %w_left to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %w_left, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp8 = icmp ult i32 %8, %10
  br i1 %cmp8, label %if.end.if.then18_crit_edge, label %lor.lhs.false

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reading_y, align 4
  %w_top = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 8
  %13 = ptrtoint ptr %w_top to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %w_top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp16 = icmp ult i32 %12, %14
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %if.end20

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %call19 = tail call ptr @spk_msg_get(i32 noundef 23) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call19) #11
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp34 = icmp eq i32 %8, %10
  %or.cond = select i1 %tobool.not, i1 %cmp34, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp45 = icmp eq i32 %12, %14
  %or.cond166 = select i1 %or.cond, i1 %cmp45, i1 false
  br i1 %or.cond166, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %w_left to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %w_left, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %16 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_cols, align 4
  %sub = add i32 %17, -1
  %18 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vc_num, align 4
  %idxprom53 = zext i16 %19 to i32
  %arrayidx54 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom53
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx54, align 4
  %w_right = getelementptr inbounds %struct.st_spk_t, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %w_right to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %w_right, align 4
  %23 = load i16, ptr %vc_num, align 4
  %idxprom56 = zext i16 %23 to i32
  %arrayidx57 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom56
  %24 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx57, align 4
  %reading_y58 = getelementptr inbounds %struct.st_spk_t, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %reading_y58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reading_y58, align 4
  %w_bottom = getelementptr inbounds %struct.st_spk_t, ptr %25, i32 0, i32 9
  %28 = ptrtoint ptr %w_bottom to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %w_bottom, align 4
  %call62 = tail call ptr @spk_msg_get(i32 noundef 47) #11
  %29 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vc_num, align 4
  %idxprom64 = zext i16 %30 to i32
  %arrayidx65 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom64
  %31 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx65, align 4
  %w_top66 = getelementptr inbounds %struct.st_spk_t, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %w_top66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %w_top66, align 4
  %add = add i32 %34, 1
  %call67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %info, i32 noundef 40, ptr noundef %call62, i32 noundef %add)
  br label %if.end129

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool72.not = icmp eq i8 %6, 0
  br i1 %tobool72.not, label %if.then73, label %if.else90

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %w_top to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %12, ptr %w_top, align 4
  %36 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vc_num, align 4
  %idxprom83 = zext i16 %37 to i32
  %arrayidx84 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom83
  %38 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx84, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %w_left89 = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 10
  %42 = ptrtoint ptr %w_left89 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %w_left89, align 4
  br label %if.end107

if.else90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %w_bottom98 = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 9
  %43 = ptrtoint ptr %w_bottom98 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %12, ptr %w_bottom98, align 4
  %44 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vc_num, align 4
  %idxprom100 = zext i16 %45 to i32
  %arrayidx101 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom100
  %46 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx101, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %w_right106 = getelementptr inbounds %struct.st_spk_t, ptr %47, i32 0, i32 11
  %50 = ptrtoint ptr %w_right106 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %w_right106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.else90, %if.then73
  %call109 = tail call ptr @spk_msg_get(i32 noundef 48) #11
  %51 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vc_num, align 4
  %idxprom111 = zext i16 %52 to i32
  %arrayidx112 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom111
  %53 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx112, align 4
  %w_start113 = getelementptr inbounds %struct.st_spk_t, ptr %54, i32 0, i32 12
  %55 = ptrtoint ptr %w_start113 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %w_start113, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool115.not = icmp eq i8 %56, 0
  %. = select i1 %tobool115.not, i32 39, i32 40
  %call117 = tail call ptr @spk_msg_get(i32 noundef %.) #11
  %57 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vc_num, align 4
  %idxprom119 = zext i16 %58 to i32
  %arrayidx120 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom119
  %59 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx120, align 4
  %reading_y121 = getelementptr inbounds %struct.st_spk_t, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %reading_y121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reading_y121, align 4
  %add122 = add i32 %62, 1
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  %add127 = add i32 %64, 1
  %call128 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %info, i32 noundef 40, ptr noundef %call109, ptr noundef %call117, i32 noundef %add122, i32 noundef %add127)
  br label %if.end129

if.end129:                                        ; preds = %if.end107, %if.then47
  call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef nonnull %info) #11
  %65 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vc_num, align 4
  %idxprom132 = zext i16 %66 to i32
  %arrayidx133 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom132
  %67 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx133, align 4
  %w_start134 = getelementptr inbounds %struct.st_spk_t, ptr %68, i32 0, i32 12
  %69 = ptrtoint ptr %w_start134 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %w_start134, align 4
  %inc = add i8 %70, 1
  store i8 %inc, ptr %w_start134, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end129, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_win_clear(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %w_top = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %w_top to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %w_top, align 4
  %5 = load i16, ptr %vc_num, align 4
  %idxprom2 = zext i16 %5 to i32
  %arrayidx3 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %w_bottom = getelementptr inbounds %struct.st_spk_t, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %w_bottom to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %w_bottom, align 4
  %9 = load i16, ptr %vc_num, align 4
  %idxprom5 = zext i16 %9 to i32
  %arrayidx6 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %w_left = getelementptr inbounds %struct.st_spk_t, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %w_left to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %w_left, align 4
  %13 = load i16, ptr %vc_num, align 4
  %idxprom8 = zext i16 %13 to i32
  %arrayidx9 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom8
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %w_right = getelementptr inbounds %struct.st_spk_t, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %w_right to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %w_right, align 4
  %17 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %17 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12, align 4
  %w_start = getelementptr inbounds %struct.st_spk_t, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %w_start to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %w_start, align 4
  %call = tail call ptr @spk_msg_get(i32 noundef 24) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_win_enable(ptr nocapture noundef readonly %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %w_start = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %w_start to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %w_start, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %entry.if.end14_crit_edge, label %if.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %w_enabled = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %w_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %w_enabled, align 1
  %8 = xor i8 %7, 1
  store i8 %8, ptr %w_enabled, align 1
  %9 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vc_num, align 4
  %idxprom8 = zext i16 %10 to i32
  %arrayidx9 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom8
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx9, align 4
  %w_enabled10 = getelementptr inbounds %struct.st_spk_t, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %w_enabled10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %w_enabled10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %. = select i1 %tobool.not, i32 26, i32 25
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  %.sink = phi i32 [ 15, %entry.if.end14_crit_edge ], [ %., %if.end ]
  %call = tail call ptr @spk_msg_get(i32 noundef %.sink) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_win_say(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %w_start = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %w_start to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %w_start, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @spk_msg_get(i32 noundef 15) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %6 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vc_origin, align 4
  %w_top = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %w_top to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %w_top, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %10 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %11, %9
  %add = add i32 %mul, %7
  %w_bottom = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %w_bottom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w_bottom, align 4
  %mul10 = mul i32 %13, %11
  %add11 = add i32 %mul10, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add11)
  %cmp12.not43 = icmp ugt i32 %add, %add11
  br i1 %cmp12.not43, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %start.044 = phi i32 [ %add26, %while.body.while.body_crit_edge ], [ %add, %if.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vc_num, align 4
  %idxprom15 = zext i16 %15 to i32
  %arrayidx16 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx16, align 4
  %w_left = getelementptr inbounds %struct.st_spk_t, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %w_left to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %w_left, align 4
  %mul17 = shl i32 %19, 1
  %add18 = add i32 %mul17, %start.044
  %w_right = getelementptr inbounds %struct.st_spk_t, ptr %17, i32 0, i32 11
  %20 = ptrtoint ptr %w_right to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %w_right, align 4
  %mul22 = shl i32 %21, 1
  %add23 = add i32 %mul22, %start.044
  %call24 = tail call fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %add18, i32 noundef %add23, i32 noundef 1)
  %22 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vc_size_row, align 4
  %add26 = add i32 %23, %start.044
  %cmp12.not = icmp ugt i32 %add26, %add11
  br i1 %cmp12.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @speakup_lock(ptr nocapture noundef readnone %vc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @spk_key_locked, align 1
  %. = select i1 %.b, i8 0, i8 16
  %0 = xor i1 %.b, true
  store i1 %0, ptr @spk_key_locked, align 1
  store i8 %., ptr @key_speakup, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speakup_help(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spk_handle_help(ptr noundef %vc, i8 noundef zeroext 15, i8 noundef zeroext 45, i16 noundef zeroext 0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toggle_cursoring(ptr nocapture noundef readnone %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @prev_cursor_track, align 4
  store i32 %1, ptr @cursor_track, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load i32, ptr @cursor_track, align 4
  %inc = add i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp1 = icmp ugt i32 %inc, 3
  %spec.store.select = select i1 %cmp1, i32 0, i32 %inc
  store i32 %spec.store.select, ptr @cursor_track, align 4
  %add = add nuw nsw i32 %spec.store.select, 16
  %call = tail call ptr @spk_msg_get(i32 noundef %add) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_all_doc(ptr noundef %vc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %conv = zext i16 %1 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %2 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp.not = icmp eq i32 %2, %conv
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %3 = load ptr, ptr @synth, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shut_up, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false2.if.end22_crit_edge

lor.lhs.false2.if.end22_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end:                                           ; preds = %lor.lhs.false2
  %call = tail call i32 @synth_supports_indexing() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end.if.end22_crit_edge, label %if.end8

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end8:                                          ; preds = %if.end
  %8 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp9.not = icmp eq i32 %8, 4
  br i1 %cmp9.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  store i32 %8, ptr @prev_cursor_track, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  store i32 4, ptr @cursor_track, align 4
  tail call void @spk_reset_index_count(i32 noundef 0) #11
  %call13 = tail call fastcc i32 @get_sentence_buf(ptr noundef %vc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %call17 = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  %.b = load i1, ptr @in_keyboard_notifier, align 4
  br i1 %.b, label %if.then16.if.end22.sink.split_crit_edge, label %if.then19

if.then16.if.end22.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.sink.split

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @speakup_fake_down_arrow() #11
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.end12
  %9 = load i32, ptr @currbuf, align 4
  store i32 %9, ptr @bn, align 4
  store i32 1, ptr @currsentence, align 4
  %arrayidx.i = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp slt i32 %11, 0
  br i1 %cmp1.i, label %if.else.say_sentence_num.exit_crit_edge, label %if.end3.i

if.else.say_sentence_num.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_sentence_num.exit

if.end3.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %9, i32 0
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr [2 x ptr], ptr @sentbufend, i32 0, i32 %9
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  tail call fastcc void @spkup_write(ptr noundef %13, i32 noundef %sub.ptr.div.i) #11
  br label %say_sentence_num.exit

say_sentence_num.exit:                            ; preds = %if.end3.i, %if.else.say_sentence_num.exit_crit_edge
  tail call void @synth_insert_next_index(i32 noundef 0) #11
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %say_sentence_num.exit, %if.then19, %if.then16.if.end22.sink.split_crit_edge
  %.sink = phi i32 [ 6, %say_sentence_num.exit ], [ 5, %if.then19 ], [ 5, %if.then16.if.end22.sink.split_crit_edge ]
  %16 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_num, align 4
  %conv.i = zext i16 %17 to i32
  store i32 %conv.i, ptr @cursor_con, align 4
  store i32 %.sink, ptr @read_all_key, align 4
  %call.i = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %value.i = getelementptr inbounds %struct.var_t, ptr %call.i, i32 0, i32 1, i32 0, i32 7
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #11
  %add.i = add i32 %call2.i.i, %18
  %call2.i40 = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.end.if.end22_crit_edge, %lor.lhs.false2.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_printf(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_msg_get(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @handle_goto(ptr noundef %vc, i8 noundef zeroext %type, i8 noundef zeroext %ch, i16 noundef zeroext %key) #1 align 64 {
entry:
  %cp = alloca ptr, align 4
  %wch = alloca i16, align 2
  %wch23 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp) #11
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cp, align 4, !annotation !800
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wch) #11
  %1 = ptrtoint ptr %wch to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %wch, align 2, !annotation !800
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %type)
  %cmp = icmp eq i8 %type, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ch)
  %cmp3 = icmp eq i8 %ch, 1
  %or.cond = and i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.do_goto_crit_edge, label %if.end

entry.do_goto_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_goto

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp6 = icmp eq i8 %type, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %ch)
  %cmp10 = icmp eq i8 %ch, 10
  %or.cond302 = and i1 %cmp6, %cmp10
  br i1 %or.cond302, label %if.end.do_goto_crit_edge, label %if.end13

if.end.do_goto_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_goto

if.end13:                                         ; preds = %if.end
  br i1 %cmp6, label %if.end18, label %if.end13.oops_crit_edge

if.end13.oops_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %oops

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %ch)
  %cmp20 = icmp eq i8 %ch, 8
  br i1 %cmp20, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wch23) #11
  %2 = load i32, ptr @handle_goto.num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24 = icmp eq i32 %2, 0
  br i1 %cmp24, label %if.then22.cleanup_crit_edge, label %if.end27

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %2, -1
  store i32 %dec, ptr @handle_goto.num, align 4
  %arrayidx = getelementptr [8 x i8], ptr @handle_goto.goto_buf, i32 0, i32 %dec
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv28 = zext i8 %4 to i16
  %5 = ptrtoint ptr %wch23 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv28, ptr %wch23, align 2
  store i8 0, ptr %arrayidx, align 1
  call fastcc void @spkup_write(ptr noundef nonnull %wch23, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then22.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end27 ], [ -1, %if.then22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wch23) #11
  br label %cleanup243

if.end30:                                         ; preds = %if.end18
  %6 = add i8 %ch, -122
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %6)
  %7 = icmp ult i8 %6, -79
  br i1 %7, label %if.end30.oops_crit_edge, label %if.end38

if.end30.oops_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %oops

if.end38:                                         ; preds = %if.end30
  %conv39 = zext i8 %ch to i16
  %8 = ptrtoint ptr %wch to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv39, ptr %wch, align 2
  %9 = load i32, ptr @handle_goto.num, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @handle_goto.num, align 4
  %arrayidx40 = getelementptr [8 x i8], ptr @handle_goto.goto_buf, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %ch, ptr %arrayidx40, align 1
  %arrayidx41 = getelementptr [8 x i8], ptr @handle_goto.goto_buf, i32 0, i32 %inc
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx41, align 1
  call fastcc void @spkup_write(ptr noundef nonnull %wch, i32 noundef 1)
  %12 = load i8, ptr @handle_goto.goto_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %12)
  %cmp43 = icmp ugt i8 %12, 47
  %cond = select i1 %cmp43, i32 3, i32 4
  %13 = zext i8 %ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.314)
  switch i8 %ch, label %if.end56 [
    i8 43, label %if.end38.land.lhs.true52_crit_edge
    i8 45, label %if.end38.land.lhs.true52_crit_edge313
  ]

if.end38.land.lhs.true52_crit_edge313:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true52

if.end38.land.lhs.true52_crit_edge:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %if.end38.land.lhs.true52_crit_edge, %if.end38.land.lhs.true52_crit_edge313
  %14 = load i32, ptr @handle_goto.num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp53 = icmp eq i32 %14, 1
  br i1 %cmp53, label %land.lhs.true52.cleanup243_crit_edge, label %land.lhs.true52.if.end68_crit_edge

land.lhs.true52.if.end68_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true52.cleanup243_crit_edge:             ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup243

if.end56:                                         ; preds = %if.end38
  %15 = add nsw i8 %ch, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %land.lhs.true64, label %if.end56.if.end68_crit_edge

if.end56.if.end68_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true64:                                  ; preds = %if.end56
  %17 = load i32, ptr @handle_goto.num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %cond)
  %cmp65 = icmp slt i32 %17, %cond
  br i1 %cmp65, label %land.lhs.true64.cleanup243_crit_edge, label %land.lhs.true64.if.end68_crit_edge

land.lhs.true64.if.end68_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true64.cleanup243_crit_edge:             ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup243

if.end68:                                         ; preds = %land.lhs.true64.if.end68_crit_edge, %if.end56.if.end68_crit_edge, %land.lhs.true52.if.end68_crit_edge
  %18 = load i32, ptr @handle_goto.num, align 4
  %sub = add nsw i32 %cond, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp69 = icmp slt i32 %18, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %cond)
  %cmp72 = icmp sgt i32 %18, %cond
  %or.cond305 = or i1 %cmp69, %cmp72
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %ch)
  %cmp77 = icmp ult i8 %ch, 120
  %or.cond306 = or i1 %cmp77, %or.cond305
  br i1 %or.cond306, label %if.end68.oops_crit_edge, label %if.end88

if.end68.oops_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %oops

oops:                                             ; preds = %if.end68.oops_crit_edge, %if.end30.oops_crit_edge, %if.end13.oops_crit_edge
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %19 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %20 to i32
  %arrayidx84 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx84, align 4
  %shut_up = getelementptr inbounds %struct.st_spk_t, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %shut_up to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shut_up, align 1
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %if.then86, label %oops.if.end87_crit_edge

oops.if.end87_crit_edge:                          ; preds = %oops
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then86:                                        ; preds = %oops
  call void @__sanitizer_cov_trace_pc() #13
  %call = call ptr @spk_msg_get(i32 noundef 28) #11
  call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.246, ptr noundef %call) #11
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %oops.if.end87_crit_edge
  store i32 0, ptr @handle_goto.num, align 4
  store i8 0, ptr @handle_goto.goto_buf, align 1
  store ptr null, ptr @spk_special_handler, align 4
  br label %cleanup243

if.end88:                                         ; preds = %if.end68
  %call89 = call i32 @simple_strtoul(ptr noundef nonnull @handle_goto.goto_buf, ptr noundef nonnull %cp, i32 noundef 10) #11
  %vc_num90 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %26 = ptrtoint ptr %vc_num90 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vc_num90, align 4
  %idxprom91 = zext i16 %27 to i32
  %arrayidx92 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom91
  %28 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx92, align 4
  %go_pos = getelementptr inbounds %struct.st_spk_t, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %go_pos to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call89, ptr %go_pos, align 4
  %31 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cp, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %34)
  %cmp94 = icmp eq i8 %34, 120
  %35 = load i8, ptr @handle_goto.goto_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %35)
  %cmp98 = icmp ult i8 %35, 48
  %36 = ptrtoint ptr %vc_num90 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vc_num90, align 4
  %idxprom102 = zext i16 %37 to i32
  %arrayidx103 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom102
  %38 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx103, align 4
  br i1 %cmp94, label %if.then96, label %if.else139

if.then96:                                        ; preds = %if.end88
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %go_pos107 = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 7
  %42 = ptrtoint ptr %go_pos107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %go_pos107, align 4
  %add = add i32 %43, %41
  store i32 %add, ptr %go_pos107, align 4
  br label %if.end121

if.else:                                          ; preds = %if.then96
  %go_pos111 = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 7
  %44 = ptrtoint ptr %go_pos111 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %go_pos111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp112.not = icmp eq i32 %45, 0
  br i1 %cmp112.not, label %if.else.if.end121_crit_edge, label %if.then114

if.else.if.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then114:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %dec119 = add i32 %45, -1
  %46 = ptrtoint ptr %go_pos111 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dec119, ptr %go_pos111, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then114, %if.else.if.end121_crit_edge, %if.then100
  %47 = ptrtoint ptr %vc_num90 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vc_num90, align 4
  %idxprom123 = zext i16 %48 to i32
  %arrayidx124 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom123
  %49 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx124, align 4
  %go_pos125 = getelementptr inbounds %struct.st_spk_t, ptr %50, i32 0, i32 7
  %51 = ptrtoint ptr %go_pos125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %go_pos125, align 4
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %53 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vc_cols, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp126.not = icmp ult i32 %52, %54
  br i1 %cmp126.not, label %if.end121.if.end185_crit_edge, label %if.end121.if.end185.sink.split_crit_edge

if.end121.if.end185.sink.split_crit_edge:         ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.sink.split

if.end121.if.end185_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

if.else139:                                       ; preds = %if.end88
  br i1 %cmp98, label %if.then143, label %if.else152

if.then143:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #13
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 2
  %55 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reading_y, align 4
  %go_pos150 = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 7
  %57 = ptrtoint ptr %go_pos150 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %go_pos150, align 4
  %add151 = add i32 %58, %56
  store i32 %add151, ptr %go_pos150, align 4
  br label %if.end166

if.else152:                                       ; preds = %if.else139
  %go_pos156 = getelementptr inbounds %struct.st_spk_t, ptr %39, i32 0, i32 7
  %59 = ptrtoint ptr %go_pos156 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %go_pos156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp157.not = icmp eq i32 %60, 0
  br i1 %cmp157.not, label %if.else152.if.end166_crit_edge, label %if.then159

if.else152.if.end166_crit_edge:                   ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

if.then159:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #13
  %dec164 = add i32 %60, -1
  %61 = ptrtoint ptr %go_pos156 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %dec164, ptr %go_pos156, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then159, %if.else152.if.end166_crit_edge, %if.then143
  %62 = ptrtoint ptr %vc_num90 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vc_num90, align 4
  %idxprom168 = zext i16 %63 to i32
  %arrayidx169 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom168
  %64 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx169, align 4
  %go_pos170 = getelementptr inbounds %struct.st_spk_t, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %go_pos170 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %go_pos170, align 4
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %68 = ptrtoint ptr %vc_rows to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vc_rows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp171.not = icmp ult i32 %67, %69
  br i1 %cmp171.not, label %if.end166.if.end185_crit_edge, label %if.end166.if.end185.sink.split_crit_edge

if.end166.if.end185.sink.split_crit_edge:         ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.sink.split

if.end166.if.end185_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185

if.end185.sink.split:                             ; preds = %if.end166.if.end185.sink.split_crit_edge, %if.end121.if.end185.sink.split_crit_edge
  %.sink312 = phi i32 [ %54, %if.end121.if.end185.sink.split_crit_edge ], [ %69, %if.end166.if.end185.sink.split_crit_edge ]
  %go_pos170.sink = phi ptr [ %go_pos125, %if.end121.if.end185.sink.split_crit_edge ], [ %go_pos170, %if.end166.if.end185.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 1, %if.end121.if.end185.sink.split_crit_edge ], [ 0, %if.end166.if.end185.sink.split_crit_edge ]
  %sub175 = add i32 %.sink312, -1
  %70 = ptrtoint ptr %go_pos170.sink to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub175, ptr %go_pos170.sink, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.end185.sink.split, %if.end166.if.end185_crit_edge, %if.end121.if.end185_crit_edge
  %.sink = phi i32 [ 1, %if.end121.if.end185_crit_edge ], [ 0, %if.end166.if.end185_crit_edge ], [ %.sink.ph, %if.end185.sink.split ]
  %71 = ptrtoint ptr %vc_num90 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vc_num90, align 4
  %idxprom182 = zext i16 %72 to i32
  %arrayidx183 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom182
  %73 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx183, align 4
  %go_x184 = getelementptr inbounds %struct.st_spk_t, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %go_x184 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink, ptr %go_x184, align 4
  store i32 0, ptr @handle_goto.num, align 4
  store i8 0, ptr @handle_goto.goto_buf, align 1
  br label %do_goto

do_goto:                                          ; preds = %if.end185, %if.end.do_goto_crit_edge, %entry.do_goto_crit_edge
  store ptr null, ptr @spk_special_handler, align 4
  %vc_num186 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %76 = ptrtoint ptr %vc_num186 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vc_num186, align 4
  %idxprom187 = zext i16 %77 to i32
  %arrayidx188 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom187
  %78 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx188, align 4
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %79, i32 0, i32 16
  %80 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %parked, align 4
  %82 = or i8 %81, 1
  store i8 %82, ptr %parked, align 4
  %83 = load i16, ptr %vc_num186, align 4
  %idxprom192 = zext i16 %83 to i32
  %arrayidx193 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom192
  %84 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx193, align 4
  %go_x194 = getelementptr inbounds %struct.st_spk_t, ptr %85, i32 0, i32 6
  %86 = ptrtoint ptr %go_x194 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %go_x194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool195.not = icmp eq i32 %87, 0
  br i1 %tobool195.not, label %if.else223, label %if.then196

if.then196:                                       ; preds = %do_goto
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %85, align 4
  %mul.neg = mul i32 %89, -2
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %85, i32 0, i32 4
  %90 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %reading_pos, align 4
  %sub204 = add i32 %mul.neg, %91
  store i32 %sub204, ptr %reading_pos, align 4
  %92 = ptrtoint ptr %vc_num186 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vc_num186, align 4
  %idxprom206 = zext i16 %93 to i32
  %arrayidx207 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom206
  %94 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx207, align 4
  %go_pos208 = getelementptr inbounds %struct.st_spk_t, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %go_pos208 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %go_pos208, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %95, align 4
  %99 = load i16, ptr %vc_num186, align 4
  %idxprom214 = zext i16 %99 to i32
  %arrayidx215 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom214
  %100 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx215, align 4
  %go_pos216 = getelementptr inbounds %struct.st_spk_t, ptr %101, i32 0, i32 7
  %102 = ptrtoint ptr %go_pos216 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %go_pos216, align 4
  %mul217 = shl i32 %103, 1
  %reading_pos221 = getelementptr inbounds %struct.st_spk_t, ptr %101, i32 0, i32 4
  %104 = ptrtoint ptr %reading_pos221 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reading_pos221, align 4
  %add222 = add i32 %105, %mul217
  store i32 %add222, ptr %reading_pos221, align 4
  %call.i = call fastcc i32 @get_word(ptr noundef %vc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then196.cleanup243_crit_edge, label %if.end.i

if.then196.cleanup243_crit_edge:                  ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup243

if.end.i:                                         ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #13
  %106 = load i16, ptr @spk_punc_mask, align 2
  store i16 64, ptr @spk_punc_mask, align 2
  %inc.i = add i32 %call.i, 1
  %arrayidx.i = getelementptr [256 x i16], ptr @buf, i32 0, i32 %call.i
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 32, ptr %arrayidx.i, align 2
  call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc.i) #11
  store i16 %106, ptr @spk_punc_mask, align 2
  br label %cleanup243

if.else223:                                       ; preds = %do_goto
  call void @__sanitizer_cov_trace_pc() #13
  %go_pos227 = getelementptr inbounds %struct.st_spk_t, ptr %85, i32 0, i32 7
  %108 = ptrtoint ptr %go_pos227 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %go_pos227, align 4
  %reading_y231 = getelementptr inbounds %struct.st_spk_t, ptr %85, i32 0, i32 2
  %110 = ptrtoint ptr %reading_y231 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %reading_y231, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %111 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vc_origin, align 4
  %113 = ptrtoint ptr %vc_num186 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %vc_num186, align 4
  %idxprom233 = zext i16 %114 to i32
  %arrayidx234 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom233
  %115 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx234, align 4
  %go_pos235 = getelementptr inbounds %struct.st_spk_t, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %go_pos235 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %go_pos235, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %119 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %vc_size_row, align 4
  %mul236 = mul i32 %120, %118
  %add237 = add i32 %mul236, %112
  %reading_pos241 = getelementptr inbounds %struct.st_spk_t, ptr %116, i32 0, i32 4
  %121 = ptrtoint ptr %reading_pos241 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %add237, ptr %reading_pos241, align 4
  call void @say_line(ptr noundef %vc)
  br label %cleanup243

cleanup243:                                       ; preds = %if.else223, %if.end.i, %if.then196.cleanup243_crit_edge, %if.end87, %land.lhs.true64.cleanup243_crit_edge, %land.lhs.true52.cleanup243_crit_edge, %cleanup
  %retval.1 = phi i32 [ 1, %if.end87 ], [ %retval.0, %cleanup ], [ 1, %land.lhs.true52.cleanup243_crit_edge ], [ 1, %land.lhs.true64.cleanup243_crit_edge ], [ 1, %if.else223 ], [ 1, %if.then196.cleanup243_crit_edge ], [ 1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wch) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spkup_write(ptr noundef readonly %in_buf, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @spk_keydown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not121 = icmp eq i32 %count, 0
  br i1 %tobool.not121, label %while.end.thread, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i16 0, ptr @spk_lastkey, align 2
  br label %if.end115

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %dec123.in = phi i32 [ %dec123, %while.cond.backedge.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %in_buf.addr.0122 = phi ptr [ %incdec.ptr, %while.cond.backedge.while.body_crit_edge ], [ %in_buf, %entry.while.body_crit_edge ]
  %dec123 = add i32 %dec123.in, -1
  %0 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %if.then, label %while.body.if.end6_crit_edge

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %while.body
  %1 = load i32, ptr @bn, align 4
  %2 = load i32, ptr @currsentence, align 4
  %arrayidx1 = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %1, i32 %2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %in_buf.addr.0122, %4
  br i1 %cmp2, label %land.lhs.true, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %arrayidx3 = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp4.not = icmp sgt i32 %2, %6
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %2, 1
  store i32 %inc, ptr @currsentence, align 4
  tail call void @synth_insert_next_index(i32 noundef %2) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.then.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %incdec.ptr = getelementptr i16, ptr %in_buf.addr.0122, i32 1
  %7 = ptrtoint ptr %in_buf.addr.0122 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %in_buf.addr.0122, align 2
  store i16 %8, ptr @spkup_write.ch, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %8)
  %cmp7 = icmp ult i16 %8, 256
  br i1 %cmp7, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %8 to i32
  %arrayidx10 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx10, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %storemerge = phi i16 [ %10, %if.then9 ], [ 3, %if.end6.if.end11_crit_edge ]
  store i16 %storemerge, ptr @spkup_write.char_type, align 2
  %11 = load i16, ptr @spkup_write.old_ch, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %11)
  %cmp14 = icmp eq i16 %8, %11
  %12 = and i16 %storemerge, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool18.not = icmp eq i16 %12, 0
  %or.cond = select i1 %cmp14, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.end11
  %13 = load i32, ptr @spkup_write.rep_count, align 4
  %inc20 = add i32 %13, 1
  store i32 %inc20, ptr @spkup_write.rep_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc20)
  %cmp21 = icmp sgt i32 %inc20, 2
  br i1 %cmp21, label %if.then19.while.cond.backedge_crit_edge, label %if.then19.if.end35_crit_edge

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then19.while.cond.backedge_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.else25:                                        ; preds = %if.end11
  %14 = load i16, ptr @spkup_write.last_type, align 2
  %15 = and i16 %14, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool28.not = icmp eq i16 %15, 0
  br i1 %tobool28.not, label %if.else25.if.end34_crit_edge, label %land.lhs.true29

if.else25.if.end34_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.else25
  %16 = load i32, ptr @spkup_write.rep_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp30 = icmp sgt i32 %16, 2
  br i1 %cmp30, label %if.then32, label %land.lhs.true29.if.end34_crit_edge

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.247) #11
  %call = tail call ptr @spk_msg_get(i32 noundef 45) #11
  %17 = load i32, ptr @spkup_write.rep_count, align 4
  %inc33 = add i32 %17, 1
  store i32 %inc33, ptr @spkup_write.rep_count, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef %call, i32 noundef %inc33) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.247) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true29.if.end34_crit_edge, %if.else25.if.end34_crit_edge
  store i32 0, ptr @spkup_write.rep_count, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then19.if.end35_crit_edge
  %18 = load i16, ptr @spkup_write.ch, align 2
  %19 = load i16, ptr @spk_lastkey, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %19)
  %cmp38 = icmp eq i16 %18, %19
  br i1 %cmp38, label %if.then40, label %if.else49

if.then40:                                        ; preds = %if.end35
  store i32 0, ptr @spkup_write.rep_count, align 4
  %20 = load i32, ptr @spk_key_echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp41 = icmp eq i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %18)
  %cmp45 = icmp ugt i16 %18, 31
  %or.cond119 = select i1 %cmp41, i1 %cmp45, i1 false
  br i1 %or.cond119, label %if.then47, label %if.then40.if.end101_crit_edge

if.then40.if.end101_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @speak_char(i16 noundef zeroext %18)
  br label %if.end101

if.else49:                                        ; preds = %if.end35
  %21 = load i16, ptr @spkup_write.char_type, align 2
  %conv50 = zext i16 %21 to i32
  %and51 = and i32 %conv50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else63, label %if.then53

if.then53:                                        ; preds = %if.else49
  %22 = load i16, ptr @synth_flags, align 2
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool56.not = icmp eq i16 %23, 0
  br i1 %tobool56.not, label %if.then53.if.end62_crit_edge, label %land.lhs.true57

if.then53.if.end62_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

land.lhs.true57:                                  ; preds = %if.then53
  %24 = load i16, ptr @spkup_write.last_type, align 2
  %25 = and i16 %24, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool60.not = icmp eq i16 %25, 0
  br i1 %tobool60.not, label %land.lhs.true57.if.end62_crit_edge, label %if.then61

land.lhs.true57.if.end62_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then61:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @synth_buffer_add(i16 noundef zeroext 32) #11
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %land.lhs.true57.if.end62_crit_edge, %if.then53.if.end62_crit_edge
  %26 = load i16, ptr @spkup_write.ch, align 2
  tail call void @synth_putwc_s(i16 noundef zeroext %26) #11
  br label %if.end101

if.else63:                                        ; preds = %if.else49
  %and65 = and i32 %conv50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @spkup_write.rep_count, align 4
  tail call void @synth_putwc_s(i16 noundef zeroext %18) #11
  br label %if.end101

if.else68:                                        ; preds = %if.else63
  %27 = load i16, ptr @spk_punc_mask, align 2
  %and71125 = and i16 %27, %21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and71125)
  %tobool72.not = icmp eq i16 %and71125, 0
  br i1 %tobool72.not, label %if.else77, label %if.then73

if.then73:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @speak_char(i16 noundef zeroext %18)
  %28 = load i16, ptr @spkup_write.char_type, align 2
  %29 = and i16 %28, -65
  store i16 %29, ptr @spkup_write.char_type, align 2
  br label %if.end101

if.else77:                                        ; preds = %if.else68
  %and79 = and i32 %conv50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %30 = load i16, ptr @spkup_write.old_ch, align 2
  br i1 %tobool80.not, label %if.else89, label %if.then81

if.then81:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %30)
  %cmp84.not = icmp eq i16 %18, %30
  br i1 %cmp84.not, label %if.else87, label %if.then86

if.then86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @synth_putwc_s(i16 noundef zeroext %18) #11
  br label %if.end101

if.else87:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @spkup_write.rep_count, align 4
  br label %if.end101

if.else89:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %18)
  %cmp92.not = icmp eq i16 %30, %18
  br i1 %cmp92.not, label %if.else95, label %if.then94

if.then94:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @synth_buffer_add(i16 noundef zeroext 32) #11
  br label %if.end101

if.else95:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @spkup_write.rep_count, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.else95, %if.then94, %if.else87, %if.then86, %if.then73, %if.then67, %if.end62, %if.then47, %if.then40.if.end101_crit_edge
  %31 = load i16, ptr @spkup_write.ch, align 2
  store i16 %31, ptr @spkup_write.old_ch, align 2
  %32 = load i16, ptr @spkup_write.char_type, align 2
  store i16 %32, ptr @spkup_write.last_type, align 2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end101, %if.then19.while.cond.backedge_crit_edge
  %tobool.not = icmp eq i32 %dec123, 0
  br i1 %tobool.not, label %while.end, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.cond.backedge
  store i16 0, ptr @spk_lastkey, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp102 = icmp sgt i32 %count, 2
  br i1 %cmp102, label %land.lhs.true104, label %while.end.if.end115_crit_edge

while.end.if.end115_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

land.lhs.true104:                                 ; preds = %while.end
  %33 = load i32, ptr @spkup_write.rep_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp105 = icmp sgt i32 %33, 2
  br i1 %cmp105, label %if.then107, label %land.lhs.true104.if.end115_crit_edge

land.lhs.true104.if.end115_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then107:                                       ; preds = %land.lhs.true104
  %34 = load i16, ptr @spkup_write.last_type, align 2
  %35 = and i16 %34, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool110.not = icmp eq i16 %35, 0
  br i1 %tobool110.not, label %if.then107.if.end114_crit_edge, label %if.then111

if.then107.if.end114_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then111:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.247) #11
  %call112 = tail call ptr @spk_msg_get(i32 noundef 46) #11
  %36 = load i32, ptr @spkup_write.rep_count, align 4
  %inc113 = add i32 %36, 1
  store i32 %inc113, ptr @spkup_write.rep_count, align 4
  tail call void (ptr, ...) @synth_printf(ptr noundef %call112, i32 noundef %inc113) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.247) #11
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.then107.if.end114_crit_edge
  store i32 0, ptr @spkup_write.rep_count, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %land.lhs.true104.if.end115_crit_edge, %while.end.if.end115_crit_edge, %while.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_insert_next_index(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @speak_char(i16 noundef zeroext %ch) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spk_get_var(i32 noundef 36) #11
  %conv = zext i16 %ch to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %ch)
  %cmp = icmp ugt i16 %ch, 255
  br i1 %cmp, label %if.end22.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %lor.lhs.false.if.end23_crit_edge, label %land.lhs.true

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false
  %value = getelementptr inbounds %struct.var_t, ptr %call, i32 0, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true6

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool9.not = icmp eq i16 %4, 0
  br i1 %tobool9.not, label %land.lhs.true6.land.lhs.true14_crit_edge, label %if.then10

land.lhs.true6.land.lhs.true14_crit_edge:         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true14

if.then10:                                        ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load i16, ptr @spk_pitch_shift, align 2
  %inc = add i16 %5, 1
  store i16 %inc, ptr @spk_pitch_shift, align 2
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef nonnull @spk_str_caps_start) #11
  br label %land.lhs.true14

land.lhs.true14:                                  ; preds = %if.then10, %land.lhs.true6.land.lhs.true14_crit_edge
  tail call void @synth_putwc_s(i16 noundef zeroext %ch) #11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool20.not = icmp eq i16 %8, 0
  br i1 %tobool20.not, label %land.lhs.true14.cleanup_crit_edge, label %if.then21

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef nonnull @spk_str_caps_stop) #11
  br label %cleanup

if.end22.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @synth_putwc_s(i16 noundef zeroext %ch) #11
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %lor.lhs.false.if.end23_crit_edge
  %arrayidx25 = getelementptr [256 x ptr], ptr @spk_characters, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.250) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %arrayidx32 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %conv
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx32, align 2
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool35.not = icmp eq i16 %13, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %14 = load i16, ptr @spk_pitch_shift, align 2
  %inc37 = add i16 %14, 1
  store i16 %inc37, ptr @spk_pitch_shift, align 2
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.251, ptr noundef nonnull @spk_str_caps_start, ptr noundef nonnull %10, ptr noundef nonnull @spk_str_caps_stop) #11
  br label %cleanup

if.else:                                          ; preds = %if.end29
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %16)
  %cmp39 = icmp eq i8 %16, 94
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr i8, ptr %10, i32 1
  %call42 = tail call ptr @spk_msg_get(i32 noundef 41) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.252, ptr noundef %call42, ptr noundef %incdec.ptr) #11
  br label %cleanup

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.253, ptr noundef nonnull %10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else43, %if.then41, %if.then36, %do.end, %if.end22.critedge, %if.then21, %land.lhs.true14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_buffer_add(i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_putwc_s(i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_get_var(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @screen_pos(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @speakup_set_selection(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @speakup_paste_selection(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_line(ptr noundef %vc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reading_pos, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reading_attr, align 2
  %old_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %old_attr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %old_attr, align 1
  %11 = load i16, ptr %vc_num, align 4
  %idxprom11 = zext i16 %11 to i32
  %arrayidx12 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom11
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12, align 4
  %reading_pos13 = getelementptr inbounds %struct.st_spk_t, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %reading_pos13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reading_pos13, align 4
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %16 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %15, %17
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call.i, align 2
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %20 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vc_hi_font_mask.i, align 4
  %neg.i = xor i16 %21, -1
  %and.i = and i16 %19, %neg.i
  %22 = lshr i16 %and.i, 8
  %conv2.i = trunc i16 %22 to i8
  %23 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vc_num, align 4
  %idxprom15 = zext i16 %24 to i32
  %arrayidx16 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx16, align 4
  %reading_attr17 = getelementptr inbounds %struct.st_spk_t, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %reading_attr17 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i, ptr %reading_attr17, align 2
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %28 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp53.not = icmp eq i32 %29, 0
  br i1 %cmp53.not, label %entry.for.cond20.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond20.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mul.neg = mul i32 %7, -2
  %sub = add i32 %mul.neg, %5
  %tobool.not.i = icmp eq ptr %vc, null
  br label %for.body

for.cond20.preheader:                             ; preds = %get_char.exit.for.cond20.preheader_crit_edge, %entry.for.cond20.preheader_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.cond20.preheader_crit_edge ], [ %inc, %get_char.exit.for.cond20.preheader_crit_edge ]
  %30 = add i32 %i.0.lcssa, -1
  %smin = call i32 @llvm.smin.i32(i32 %30, i32 -1)
  %31 = add nsw i32 %smin, 1
  br label %for.cond20

for.body:                                         ; preds = %get_char.exit.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %get_char.exit.for.body_crit_edge ]
  %tmp.054 = phi i32 [ %sub, %for.body.lr.ph ], [ %add, %get_char.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.054)
  %tobool1.not.i = icmp eq i32 %tmp.054, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %for.body.get_char.exit_crit_edge, label %if.then.i

for.body.get_char.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i47 = sub i32 %tmp.054, %33
  %sub.ptr.div.i48 = ashr exact i32 %sub.ptr.sub.i47, 1
  %call.i49 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i48, i1 noundef zeroext true) #11
  %34 = ptrtoint ptr %call.i49 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %call.i49, align 2
  %and.i50 = and i16 %35, 255
  %36 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %37, %35
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %38 = or i16 %and.i50, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i50, i16 %38
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  br label %get_char.exit

get_char.exit:                                    ; preds = %if.then.i, %for.body.get_char.exit_crit_edge
  %ch.0.i = phi i16 [ %call16.i, %if.then.i ], [ 32, %for.body.get_char.exit_crit_edge ]
  %arrayidx19 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.056
  %39 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %ch.0.i, ptr %arrayidx19, align 2
  %add = add i32 %tmp.054, 2
  %inc = add nuw i32 %i.056, 1
  %40 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vc_cols, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %get_char.exit.for.body_crit_edge, label %get_char.exit.for.cond20.preheader_crit_edge

get_char.exit.for.cond20.preheader_crit_edge:     ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20.preheader

get_char.exit.for.body_crit_edge:                 ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond20:                                       ; preds = %for.body22.for.cond20_crit_edge, %for.cond20.preheader
  %i.1.in = phi i32 [ %i.1, %for.body22.for.cond20_crit_edge ], [ %i.0.lcssa, %for.cond20.preheader ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp21 = icmp sgt i32 %i.1, -1
  br i1 %cmp21, label %for.body22, label %for.cond20.for.end28_crit_edge

for.cond20.for.end28_crit_edge:                   ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.body22:                                       ; preds = %for.cond20
  %arrayidx23 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.1
  %42 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx23, align 2
  %cmp24.not = icmp eq i16 %43, 32
  br i1 %cmp24.not, label %for.body22.for.cond20_crit_edge, label %for.body22.for.end28_crit_edge

for.body22.for.end28_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.body22.for.cond20_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20

for.end28:                                        ; preds = %for.body22.for.end28_crit_edge, %for.cond20.for.end28_crit_edge
  %i.1.in.lcssa = phi i32 [ %i.1.in, %for.body22.for.end28_crit_edge ], [ %31, %for.cond20.for.end28_crit_edge ]
  ret i32 %i.1.in.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @inverse_translate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_word(ptr noundef %vc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %reading_pos = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %reading_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reading_pos, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reading_attr, align 2
  %old_attr = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %old_attr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %old_attr, align 1
  %11 = inttoptr i32 %7 to ptr
  %tobool.not.i = icmp eq ptr %vc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.get_char.exit_crit_edge, label %if.then.i

entry.get_char.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %12 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %7, %13
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %call.i, align 2
  %and.i = and i16 %15, 255
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %16 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %17, %15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %18 = or i16 %and.i, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i, i16 %18
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  br label %get_char.exit

get_char.exit:                                    ; preds = %if.then.i, %entry.get_char.exit_crit_edge
  %ch.0.i = phi i16 [ %call16.i, %if.then.i ], [ 32, %entry.get_char.exit_crit_edge ]
  %19 = load i32, ptr @spk_say_word_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp ne i32 %19, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %ch.0.i)
  %cmp = icmp eq i16 %ch.0.i, 32
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  store i16 0, ptr @buf, align 2
  %call11 = tail call ptr @spk_msg_get(i32 noundef 38) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call11) #11
  br label %cleanup

if.else:                                          ; preds = %get_char.exit
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %20 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vc_cols, align 4
  %sub = add i32 %21, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp12 = icmp ult i32 %5, %sub
  br i1 %cmp12, label %land.lhs.true14, label %if.else.if.else37_crit_edge

if.else.if.else37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

land.lhs.true14:                                  ; preds = %if.else
  %22 = zext i16 %ch.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.315)
  switch i16 %ch.0.i, label %lor.lhs.false21 [
    i16 32, label %land.lhs.true14.land.lhs.true31_crit_edge
    i16 0, label %land.lhs.true14.land.lhs.true31_crit_edge304
  ]

land.lhs.true14.land.lhs.true31_crit_edge304:     ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true31

land.lhs.true14.land.lhs.true31_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true31

lor.lhs.false21:                                  ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %ch.0.i)
  %cmp23 = icmp ult i16 %ch.0.i, 256
  br i1 %cmp23, label %land.lhs.true25, label %lor.lhs.false21.if.else37_crit_edge

lor.lhs.false21.if.else37_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

land.lhs.true25:                                  ; preds = %lor.lhs.false21
  %idxprom27 = zext i16 %ch.0.i to i32
  %arrayidx28 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom27
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx28, align 2
  %25 = and i16 %24, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool30.not = icmp eq i16 %25, 0
  br i1 %tobool30.not, label %land.lhs.true25.if.else37_crit_edge, label %land.lhs.true25.land.lhs.true31_crit_edge

land.lhs.true25.land.lhs.true31_crit_edge:        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true31

land.lhs.true25.if.else37_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

land.lhs.true31:                                  ; preds = %land.lhs.true25.land.lhs.true31_crit_edge, %land.lhs.true14.land.lhs.true31_crit_edge, %land.lhs.true14.land.lhs.true31_crit_edge304
  %add.ptr = getelementptr i16, ptr %11, i32 1
  %tobool1.not.i166 = icmp eq ptr %add.ptr, null
  %or.cond.i167 = or i1 %tobool.not.i, %tobool1.not.i166
  br i1 %or.cond.i167, label %land.lhs.true31.if.else37_crit_edge, label %get_char.exit186

land.lhs.true31.if.else37_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

get_char.exit186:                                 ; preds = %land.lhs.true31
  %vc_origin.i168 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %26 = ptrtoint ptr %vc_origin.i168 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vc_origin.i168, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i169 = sub i32 %sub.ptr.lhs.cast.i, %27
  %sub.ptr.div.i170 = ashr exact i32 %sub.ptr.sub.i169, 1
  %call.i171 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i170, i1 noundef zeroext true) #11
  %28 = ptrtoint ptr %call.i171 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call.i171, align 2
  %and.i172 = and i16 %29, 255
  %vc_hi_font_mask.i173 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %30 = ptrtoint ptr %vc_hi_font_mask.i173 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vc_hi_font_mask.i173, align 4
  %and532.i174 = and i16 %31, %29
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i174)
  %tobool6.not.i175 = icmp eq i16 %and532.i174, 0
  %32 = or i16 %and.i172, 256
  %c.0.i181 = select i1 %tobool6.not.i175, i16 %and.i172, i16 %32
  %conv15.i182 = zext i16 %c.0.i181 to i32
  %call16.i183 = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i182, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %call16.i183)
  %cmp34 = icmp ugt i16 %call16.i183, 32
  br i1 %cmp34, label %if.then36, label %get_char.exit186.if.else37_crit_edge

get_char.exit186.if.else37_crit_edge:             ; preds = %get_char.exit186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else37

if.then36:                                        ; preds = %get_char.exit186
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i32 %7, 2
  %inc = add nuw i32 %5, 1
  br label %if.end68

if.else37:                                        ; preds = %get_char.exit186.if.else37_crit_edge, %land.lhs.true31.if.else37_crit_edge, %land.lhs.true25.if.else37_crit_edge, %lor.lhs.false21.if.else37_crit_edge, %if.else.if.else37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38.not284 = icmp eq i32 %5, 0
  br i1 %cmp38.not284, label %if.else37.if.end68_crit_edge, label %while.body.lr.ph

if.else37.if.end68_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

while.body.lr.ph:                                 ; preds = %if.else37
  %vc_origin.i190 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %vc_hi_font_mask.i196 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %tmp_pos.0287 = phi i32 [ %7, %while.body.lr.ph ], [ %sub66, %if.end.while.body_crit_edge ]
  %tmpx.0285 = phi i32 [ %5, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %33 = inttoptr i32 %tmp_pos.0287 to ptr
  %add.ptr40 = getelementptr i16, ptr %33, i32 -1
  %tobool1.not.i188 = icmp eq ptr %add.ptr40, null
  %or.cond.i189 = or i1 %tobool.not.i, %tobool1.not.i188
  br i1 %or.cond.i189, label %while.body.land.lhs.true60_crit_edge, label %get_char.exit209

while.body.land.lhs.true60_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true60

get_char.exit209:                                 ; preds = %while.body
  %34 = ptrtoint ptr %vc_origin.i190 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vc_origin.i190, align 4
  %sub.ptr.lhs.cast.i191 = ptrtoint ptr %add.ptr40 to i32
  %sub.ptr.sub.i192 = sub i32 %sub.ptr.lhs.cast.i191, %35
  %sub.ptr.div.i193 = ashr exact i32 %sub.ptr.sub.i192, 1
  %call.i194 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i193, i1 noundef zeroext true) #11
  %36 = ptrtoint ptr %call.i194 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %call.i194, align 2
  %and.i195 = and i16 %37, 255
  %38 = ptrtoint ptr %vc_hi_font_mask.i196 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vc_hi_font_mask.i196, align 4
  %and532.i197 = and i16 %39, %37
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i197)
  %tobool6.not.i198 = icmp eq i16 %and532.i197, 0
  %40 = or i16 %and.i195, 256
  %c.0.i204 = select i1 %tobool6.not.i198, i16 %and.i195, i16 %40
  %conv15.i205 = zext i16 %c.0.i204 to i32
  %call16.i206 = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i205, i32 noundef 1) #11
  %41 = zext i16 %call16.i206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.316)
  switch i16 %call16.i206, label %lor.lhs.false49 [
    i16 32, label %get_char.exit209.land.lhs.true60_crit_edge
    i16 0, label %get_char.exit209.land.lhs.true60_crit_edge305
  ]

get_char.exit209.land.lhs.true60_crit_edge305:    ; preds = %get_char.exit209
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true60

get_char.exit209.land.lhs.true60_crit_edge:       ; preds = %get_char.exit209
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true60

lor.lhs.false49:                                  ; preds = %get_char.exit209
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %call16.i206)
  %cmp51 = icmp ult i16 %call16.i206, 256
  br i1 %cmp51, label %land.lhs.true53, label %lor.lhs.false49.if.end_crit_edge

lor.lhs.false49.if.end_crit_edge:                 ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true53:                                  ; preds = %lor.lhs.false49
  %idxprom55 = zext i16 %call16.i206 to i32
  %arrayidx56 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom55
  %42 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx56, align 2
  %44 = and i16 %43, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool59.not = icmp eq i16 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp_pos.0287)
  %tobool1.not.i211 = icmp eq i32 %tmp_pos.0287, 0
  %or.cond283 = select i1 %tobool59.not, i1 true, i1 %tobool1.not.i211
  br i1 %or.cond283, label %land.lhs.true53.if.end_crit_edge, label %land.lhs.true53.get_char.exit231_crit_edge

land.lhs.true53.get_char.exit231_crit_edge:       ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit231

land.lhs.true53.if.end_crit_edge:                 ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true60:                                  ; preds = %get_char.exit209.land.lhs.true60_crit_edge, %get_char.exit209.land.lhs.true60_crit_edge305, %while.body.land.lhs.true60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp_pos.0287)
  %tobool1.not.i211.old = icmp eq i32 %tmp_pos.0287, 0
  %or.cond.i212.old = or i1 %tobool.not.i, %tobool1.not.i211.old
  br i1 %or.cond.i212.old, label %land.lhs.true60.if.end_crit_edge, label %land.lhs.true60.get_char.exit231_crit_edge

land.lhs.true60.get_char.exit231_crit_edge:       ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit231

land.lhs.true60.if.end_crit_edge:                 ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_char.exit231:                                 ; preds = %land.lhs.true60.get_char.exit231_crit_edge, %land.lhs.true53.get_char.exit231_crit_edge
  %45 = ptrtoint ptr %vc_origin.i190 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vc_origin.i190, align 4
  %sub.ptr.sub.i214 = sub i32 %tmp_pos.0287, %46
  %sub.ptr.div.i215 = ashr exact i32 %sub.ptr.sub.i214, 1
  %call.i216 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i215, i1 noundef zeroext true) #11
  %47 = ptrtoint ptr %call.i216 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %call.i216, align 2
  %and.i217 = and i16 %48, 255
  %49 = ptrtoint ptr %vc_hi_font_mask.i196 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vc_hi_font_mask.i196, align 4
  %and532.i219 = and i16 %50, %48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i219)
  %tobool6.not.i220 = icmp eq i16 %and532.i219, 0
  %51 = or i16 %and.i217, 256
  %c.0.i226 = select i1 %tobool6.not.i220, i16 %and.i217, i16 %51
  %conv15.i227 = zext i16 %c.0.i226 to i32
  %call16.i228 = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i227, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %call16.i228)
  %cmp63 = icmp ugt i16 %call16.i228, 32
  br i1 %cmp63, label %get_char.exit231.if.end68_crit_edge, label %get_char.exit231.if.end_crit_edge

get_char.exit231.if.end_crit_edge:                ; preds = %get_char.exit231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

get_char.exit231.if.end68_crit_edge:              ; preds = %get_char.exit231
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end:                                           ; preds = %get_char.exit231.if.end_crit_edge, %land.lhs.true60.if.end_crit_edge, %land.lhs.true53.if.end_crit_edge, %lor.lhs.false49.if.end_crit_edge
  %sub66 = add i32 %tmp_pos.0287, -2
  %dec = add i32 %tmpx.0285, -1
  %cmp38.not = icmp eq i32 %dec, 0
  br i1 %cmp38.not, label %if.end.if.end68_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end68:                                         ; preds = %if.end.if.end68_crit_edge, %get_char.exit231.if.end68_crit_edge, %if.else37.if.end68_crit_edge, %if.then36
  %tmpx.1 = phi i32 [ %inc, %if.then36 ], [ 0, %if.else37.if.end68_crit_edge ], [ 0, %if.end.if.end68_crit_edge ], [ %tmpx.0285, %get_char.exit231.if.end68_crit_edge ]
  %tmp_pos.1 = phi i32 [ %add, %if.then36 ], [ %7, %if.else37.if.end68_crit_edge ], [ %sub66, %if.end.if.end68_crit_edge ], [ %tmp_pos.0287, %get_char.exit231.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp_pos.1)
  %tobool1.not.i233 = icmp eq i32 %tmp_pos.1, 0
  %or.cond.i234 = or i1 %tobool.not.i, %tobool1.not.i233
  br i1 %or.cond.i234, label %if.end68.get_char.exit253_crit_edge, label %if.then.i251

if.end68.get_char.exit253_crit_edge:              ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit253

if.then.i251:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %vc_num, align 4
  %idxprom70 = zext i16 %53 to i32
  %arrayidx71 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom70
  %54 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx71, align 4
  %reading_attr72 = getelementptr inbounds %struct.st_spk_t, ptr %55, i32 0, i32 14
  %vc_origin.i235 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %56 = ptrtoint ptr %vc_origin.i235 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vc_origin.i235, align 4
  %sub.ptr.sub.i236 = sub i32 %tmp_pos.1, %57
  %sub.ptr.div.i237 = ashr exact i32 %sub.ptr.sub.i236, 1
  %call.i238 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i237, i1 noundef zeroext true) #11
  %58 = ptrtoint ptr %call.i238 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %call.i238, align 2
  %and.i239 = and i16 %59, 255
  %vc_hi_font_mask.i240 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %60 = ptrtoint ptr %vc_hi_font_mask.i240 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vc_hi_font_mask.i240, align 4
  %and532.i241 = and i16 %61, %59
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i241)
  %tobool6.not.i242 = icmp eq i16 %and532.i241, 0
  %neg.i243 = xor i16 %61, -1
  %62 = or i16 %and.i239, 256
  %and11.i244 = select i1 %tobool6.not.i242, i16 -256, i16 %neg.i243
  %w.0.off8.v.v.i245 = and i16 %and11.i244, %59
  %w.0.off8.v.i246 = lshr i16 %w.0.off8.v.v.i245, 8
  %w.0.off8.i247 = trunc i16 %w.0.off8.v.i246 to i8
  %c.0.i248 = select i1 %tobool6.not.i242, i16 %and.i239, i16 %62
  %conv15.i249 = zext i16 %c.0.i248 to i32
  %call16.i250 = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i249, i32 noundef 1) #11
  %63 = ptrtoint ptr %reading_attr72 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %w.0.off8.i247, ptr %reading_attr72, align 1
  br label %get_char.exit253

get_char.exit253:                                 ; preds = %if.then.i251, %if.end68.get_char.exit253_crit_edge
  %ch.0.i252 = phi i16 [ %call16.i250, %if.then.i251 ], [ 32, %if.end68.get_char.exit253_crit_edge ]
  store i16 %ch.0.i252, ptr @buf, align 2
  %64 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vc_cols, align 4
  %sub78292 = add i32 %65, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpx.1, i32 %sub78292)
  %cmp79293 = icmp ult i32 %tmpx.1, %sub78292
  br i1 %cmp79293, label %while.body81.lr.ph, label %get_char.exit253.while.end115_crit_edge

get_char.exit253.while.end115_crit_edge:          ; preds = %get_char.exit253
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end115

while.body81.lr.ph:                               ; preds = %get_char.exit253
  %vc_origin.i257 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %vc_hi_font_mask.i262 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  br label %while.body81

while.body81:                                     ; preds = %if.end112.while.body81_crit_edge, %while.body81.lr.ph
  %tmp_pos.2297 = phi i32 [ %tmp_pos.1, %while.body81.lr.ph ], [ %add82, %if.end112.while.body81_crit_edge ]
  %tmpx.2296 = phi i32 [ %tmpx.1, %while.body81.lr.ph ], [ %inc83, %if.end112.while.body81_crit_edge ]
  %cnt.0294 = phi i32 [ 1, %while.body81.lr.ph ], [ %inc113, %if.end112.while.body81_crit_edge ]
  %add82 = add i32 %tmp_pos.2297, 2
  %inc83 = add nuw i32 %tmpx.2296, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add82)
  %tobool1.not.i255 = icmp eq i32 %add82, 0
  %or.cond.i256 = or i1 %tobool.not.i, %tobool1.not.i255
  br i1 %or.cond.i256, label %while.body81.while.end115_crit_edge, label %get_char.exit275

while.body81.while.end115_crit_edge:              ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end115

get_char.exit275:                                 ; preds = %while.body81
  %66 = ptrtoint ptr %vc_origin.i257 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vc_origin.i257, align 4
  %sub.ptr.sub.i258 = sub i32 %add82, %67
  %sub.ptr.div.i259 = ashr exact i32 %sub.ptr.sub.i258, 1
  %call.i260 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i259, i1 noundef zeroext true) #11
  %68 = ptrtoint ptr %call.i260 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %call.i260, align 2
  %and.i261 = and i16 %69, 255
  %70 = ptrtoint ptr %vc_hi_font_mask.i262 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vc_hi_font_mask.i262, align 4
  %and532.i263 = and i16 %71, %69
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i263)
  %tobool6.not.i264 = icmp eq i16 %and532.i263, 0
  %72 = or i16 %and.i261, 256
  %c.0.i270 = select i1 %tobool6.not.i264, i16 %and.i261, i16 %72
  %conv15.i271 = zext i16 %c.0.i270 to i32
  %call16.i272 = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i271, i32 noundef 1) #11
  %73 = zext i16 %call16.i272 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.317)
  switch i16 %call16.i272, label %lor.lhs.false92 [
    i16 32, label %get_char.exit275.while.end115_crit_edge
    i16 0, label %get_char.exit275.while.end115_crit_edge306
  ]

get_char.exit275.while.end115_crit_edge306:       ; preds = %get_char.exit275
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end115

get_char.exit275.while.end115_crit_edge:          ; preds = %get_char.exit275
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end115

lor.lhs.false92:                                  ; preds = %get_char.exit275
  %sub93 = add i32 %cnt.0294, -1
  %arrayidx94 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %sub93
  %74 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx94, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %75)
  %cmp96 = icmp ult i16 %75, 256
  br i1 %cmp96, label %land.lhs.true98, label %lor.lhs.false92.if.end112_crit_edge

lor.lhs.false92.if.end112_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true98:                                  ; preds = %lor.lhs.false92
  %idxprom102 = zext i16 %75 to i32
  %arrayidx103 = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom102
  %76 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx103, align 2
  %78 = and i16 %77, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool106.not = icmp ne i16 %78, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %call16.i272)
  %cmp109 = icmp ugt i16 %call16.i272, 32
  %or.cond164 = select i1 %tobool106.not, i1 %cmp109, i1 false
  br i1 %or.cond164, label %land.lhs.true98.while.end115_crit_edge, label %land.lhs.true98.if.end112_crit_edge

land.lhs.true98.if.end112_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true98.while.end115_crit_edge:           ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end115

if.end112:                                        ; preds = %land.lhs.true98.if.end112_crit_edge, %lor.lhs.false92.if.end112_crit_edge
  %inc113 = add i32 %cnt.0294, 1
  %arrayidx114 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %cnt.0294
  %79 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %call16.i272, ptr %arrayidx114, align 2
  %80 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vc_cols, align 4
  %sub78 = add i32 %81, -1
  %cmp79 = icmp ult i32 %inc83, %sub78
  br i1 %cmp79, label %if.end112.while.body81_crit_edge, label %if.end112.while.end115_crit_edge

if.end112.while.end115_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end115

if.end112.while.body81_crit_edge:                 ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body81

while.end115:                                     ; preds = %if.end112.while.end115_crit_edge, %land.lhs.true98.while.end115_crit_edge, %get_char.exit275.while.end115_crit_edge, %get_char.exit275.while.end115_crit_edge306, %while.body81.while.end115_crit_edge, %get_char.exit253.while.end115_crit_edge
  %cnt.0.lcssa = phi i32 [ 1, %get_char.exit253.while.end115_crit_edge ], [ %cnt.0294, %while.body81.while.end115_crit_edge ], [ %cnt.0294, %land.lhs.true98.while.end115_crit_edge ], [ %cnt.0294, %get_char.exit275.while.end115_crit_edge ], [ %cnt.0294, %get_char.exit275.while.end115_crit_edge306 ], [ %inc113, %if.end112.while.end115_crit_edge ]
  %arrayidx116 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %cnt.0.lcssa
  %82 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %arrayidx116, align 2
  br label %cleanup

cleanup:                                          ; preds = %while.end115, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cnt.0.lcssa, %while.end115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @say_from_to(ptr noundef %vc, i32 noundef %from, i32 noundef %to, i32 noundef %read_punc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @spk_punc_mask, align 2
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %1 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reading_attr, align 2
  %old_attr = getelementptr inbounds %struct.st_spk_t, ptr %4, i32 0, i32 15
  %7 = ptrtoint ptr %old_attr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %old_attr, align 1
  %vc_origin.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %8 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i = sub i32 %from, %9
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %call.i, align 2
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %12 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vc_hi_font_mask.i, align 4
  %neg.i = xor i16 %13, -1
  %and.i = and i16 %11, %neg.i
  %14 = lshr i16 %and.i, 8
  %conv2.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vc_num, align 4
  %idxprom5 = zext i16 %16 to i32
  %arrayidx6 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom5
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx6, align 4
  %reading_attr7 = getelementptr inbounds %struct.st_spk_t, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %reading_attr7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv2.i, ptr %reading_attr7, align 2
  %tobool.not.i = icmp eq ptr %vc, null
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %get_char.exit.while.cond_crit_edge, %entry
  %from.addr.0 = phi i32 [ %from, %entry ], [ %add, %get_char.exit.while.cond_crit_edge ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %get_char.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %from.addr.0, i32 %to)
  %cmp = icmp ult i32 %from.addr.0, %to
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from.addr.0)
  %tobool1.not.i = icmp eq i32 %from.addr.0, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %while.body.get_char.exit_crit_edge, label %if.then.i

while.body.get_char.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %vc_origin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vc_origin.i, align 4
  %sub.ptr.sub.i55 = sub i32 %from.addr.0, %21
  %sub.ptr.div.i56 = ashr exact i32 %sub.ptr.sub.i55, 1
  %call.i57 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i56, i1 noundef zeroext true) #11
  %22 = ptrtoint ptr %call.i57 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call.i57, align 2
  %and.i58 = and i16 %23, 255
  %24 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %25, %23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %26 = or i16 %and.i58, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i58, i16 %26
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  br label %get_char.exit

get_char.exit:                                    ; preds = %if.then.i, %while.body.get_char.exit_crit_edge
  %ch.0.i = phi i16 [ %call16.i, %if.then.i ], [ 32, %while.body.get_char.exit_crit_edge ]
  %inc = add nuw i32 %i.0, 1
  %arrayidx9 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.0
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %ch.0.i, ptr %arrayidx9, align 2
  %add = add i32 %from.addr.0, 2
  %28 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vc_size_row, align 4
  %cmp10.not = icmp ult i32 %inc, %29
  br i1 %cmp10.not, label %get_char.exit.while.cond_crit_edge, label %get_char.exit.while.end_crit_edge

get_char.exit.while.end_crit_edge:                ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

get_char.exit.while.cond_crit_edge:               ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %get_char.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %i.1 = phi i32 [ %inc, %get_char.exit.while.end_crit_edge ], [ %i.0, %while.cond.while.end_crit_edge ]
  %30 = add i32 %i.1, -1
  %smin = call i32 @llvm.smin.i32(i32 %30, i32 -1)
  %31 = add nsw i32 %smin, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %while.end
  %i.2.in = phi i32 [ %i.1, %while.end ], [ %i.2, %for.body.for.cond_crit_edge ]
  %i.2 = add i32 %i.2.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2)
  %cmp11 = icmp sgt i32 %i.2, -1
  br i1 %cmp11, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx12 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.2
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx12, align 2
  %cmp13.not = icmp eq i16 %33, 32
  br i1 %cmp13.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %i.2.in.lcssa = phi i32 [ %i.2.in, %for.body.for.end_crit_edge ], [ %31, %for.cond.for.end_crit_edge ]
  %arrayidx19 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %i.2.in.lcssa
  %34 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 32, ptr %arrayidx19, align 2
  %inc20 = add i32 %i.2.in.lcssa, 1
  %arrayidx21 = getelementptr [256 x i16], ptr @buf, i32 0, i32 %inc20
  %35 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %arrayidx21, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %i.2.in.lcssa)
  %cmp22 = icmp ugt i32 %i.2.in.lcssa, 2147483646
  br i1 %cmp22, label %for.end.cleanup_crit_edge, label %if.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read_punc)
  %tobool.not = icmp eq i32 %read_punc, 0
  br i1 %tobool.not, label %if.end31.critedge, label %if.then26

if.then26:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %36 = load i32, ptr @spk_reading_punc, align 4
  %mask = getelementptr [9 x %struct.st_bits_data], ptr @spk_punc_info, i32 0, i32 %36, i32 2
  %37 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mask, align 4
  store i16 %38, ptr @spk_punc_mask, align 2
  tail call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc20)
  store i16 %0, ptr @spk_punc_mask, align 2
  br label %cleanup

if.end31.critedge:                                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @spkup_write(ptr noundef nonnull @buf, i32 noundef %inc20)
  br label %cleanup

cleanup:                                          ; preds = %if.end31.critedge, %if.then26, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc20, %for.end.cleanup_crit_edge ], [ %i.2.in.lcssa, %if.end31.critedge ], [ %i.2.in.lcssa, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edit_bits(ptr nocapture noundef readnone %vc, i8 noundef zeroext %type, i8 noundef zeroext %ch, i16 noundef zeroext %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pb_edit, align 4
  %mask1 = getelementptr inbounds %struct.st_bits_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mask1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mask1, align 4
  %idxprom = zext i8 %ch to i32
  %arrayidx = getelementptr [256 x i16], ptr @spk_chartab, i32 0, i32 %idxprom
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp.not = icmp eq i8 %type, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv345 = zext i16 %4 to i32
  %and = and i32 %conv345, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %ch)
  %cmp6 = icmp ult i8 %ch, 32
  %or.cond = or i1 %cmp6, %tobool.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %ch)
  %cmp9 = icmp eq i8 %ch, 32
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @spk_msg_get(i32 noundef 21) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call) #11
  store ptr null, ptr @spk_special_handler, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %2)
  %cmp14 = icmp slt i16 %2, 64
  %and17 = and i32 %conv345, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond44 = select i1 %cmp14, i1 %tobool18.not, i1 false
  br i1 %or.cond44, label %if.end12.cleanup_crit_edge, label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %xor = xor i16 %4, %2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %xor, ptr %arrayidx, align 2
  %conv26 = zext i8 %ch to i16
  tail call fastcc void @speak_char(i16 noundef zeroext %conv26)
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %and3147 = and i16 %7, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and3147)
  %tobool32.not = icmp eq i16 %and3147, 0
  %. = select i1 %tobool32.not, i32 13, i32 14
  %call34 = tail call ptr @spk_msg_get(i32 noundef %.) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.246, ptr noundef %call34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end12.cleanup_crit_edge, %if.then11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then11 ], [ 1, %if.end20 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_handle_help(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_supports_indexing() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_reset_index_count(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_sentence_buf(ptr noundef %vc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @currbuf, align 4
  %inc = add i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp eq i32 %inc, 2
  %spec.store.select = select i1 %cmp, i32 0, i32 %inc
  store i32 %spec.store.select, ptr @currbuf, align 4
  %vc_origin = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %1 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vc_origin, align 4
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %3 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vc_num, align 4
  %idxprom = zext i16 %4 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %reading_y = getelementptr inbounds %struct.st_spk_t, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %reading_y to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reading_y, align 4
  %vc_size_row = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 6
  %9 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vc_size_row, align 4
  %mul = mul i32 %10, %8
  %add = add i32 %mul, %2
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %11 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vc_cols, align 4
  %mul9 = shl i32 %12, 1
  %add10 = add i32 %add, %mul9
  %arrayidx11 = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %spec.store.select
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr [2 x [256 x i16]], ptr @sentbuf, i32 0, i32 %spec.store.select
  %arrayidx14 = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %spec.store.select
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx12, ptr %arrayidx14, align 4
  %reading_attr = getelementptr inbounds %struct.st_spk_t, ptr %6, i32 0, i32 14
  %15 = ptrtoint ptr %reading_attr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reading_attr, align 2
  %old_attr = getelementptr inbounds %struct.st_spk_t, ptr %6, i32 0, i32 15
  %17 = ptrtoint ptr %old_attr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %old_attr, align 1
  %18 = load i32, ptr %vc_origin, align 4
  %sub.ptr.sub.i = sub i32 %add, %18
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  %call.i = tail call ptr @screen_pos(ptr noundef %vc, i32 noundef %sub.ptr.div.i, i1 noundef zeroext true) #11
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call.i, align 2
  %vc_hi_font_mask.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %21 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vc_hi_font_mask.i, align 4
  %neg.i = xor i16 %22, -1
  %and.i = and i16 %20, %neg.i
  %23 = lshr i16 %and.i, 8
  %conv2.i = trunc i16 %23 to i8
  %24 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vc_num, align 4
  %idxprom23 = zext i16 %25 to i32
  %arrayidx24 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom23
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx24, align 4
  %reading_attr25 = getelementptr inbounds %struct.st_spk_t, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %reading_attr25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv2.i, ptr %reading_attr25, align 2
  %tobool.not.i = icmp eq ptr %vc, null
  br label %while.cond

while.cond:                                       ; preds = %if.end54.while.cond_crit_edge, %entry
  %start.0 = phi i32 [ %add, %entry ], [ %add56, %if.end54.while.cond_crit_edge ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc55, %if.end54.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0, i32 %add10)
  %cmp26 = icmp ult i32 %start.0, %add10
  br i1 %cmp26, label %while.body, label %while.cond.for.cond.preheader_crit_edge

while.cond.for.cond.preheader_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.0)
  %tobool1.not.i = icmp eq i32 %start.0, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %while.body.get_char.exit_crit_edge, label %if.then.i

while.body.get_char.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_char.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %vc_origin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vc_origin, align 4
  %sub.ptr.sub.i2 = sub i32 %start.0, %30
  %sub.ptr.div.i3 = ashr exact i32 %sub.ptr.sub.i2, 1
  %call.i4 = tail call ptr @screen_pos(ptr noundef nonnull %vc, i32 noundef %sub.ptr.div.i3, i1 noundef zeroext true) #11
  %31 = ptrtoint ptr %call.i4 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %call.i4, align 2
  %and.i5 = and i16 %32, 255
  %33 = ptrtoint ptr %vc_hi_font_mask.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vc_hi_font_mask.i, align 4
  %and532.i = and i16 %34, %32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and532.i)
  %tobool6.not.i = icmp eq i16 %and532.i, 0
  %35 = or i16 %and.i5, 256
  %c.0.i = select i1 %tobool6.not.i, i16 %and.i5, i16 %35
  %conv15.i = zext i16 %c.0.i to i32
  %call16.i = tail call zeroext i16 @inverse_translate(ptr noundef nonnull %vc, i32 noundef %conv15.i, i32 noundef 1) #11
  br label %get_char.exit

get_char.exit:                                    ; preds = %if.then.i, %while.body.get_char.exit_crit_edge
  %ch.0.i = phi i16 [ %call16.i, %if.then.i ], [ 32, %while.body.get_char.exit_crit_edge ]
  %arrayidx29 = getelementptr [2 x [256 x i16]], ptr @sentbuf, i32 0, i32 %spec.store.select, i32 %i.0
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %ch.0.i, ptr %arrayidx29, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp30 = icmp sgt i32 %i.0, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %ch.0.i)
  %cmp34 = icmp eq i16 %ch.0.i, 32
  %or.cond = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond, label %land.lhs.true, label %get_char.exit.if.end54_crit_edge

get_char.exit.if.end54_crit_edge:                 ; preds = %get_char.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true:                                    ; preds = %get_char.exit
  %sub = add nsw i32 %i.0, -1
  %arrayidx37 = getelementptr [2 x [256 x i16]], ptr @sentbuf, i32 0, i32 %spec.store.select, i32 %sub
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %38)
  %cmp39 = icmp eq i16 %38, 46
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true41:                                  ; preds = %land.lhs.true
  %39 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %40)
  %cmp43 = icmp slt i32 %40, 9
  br i1 %cmp43, label %if.then45, label %land.lhs.true41.if.end54_crit_edge

land.lhs.true41.if.end54_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then45:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  %inc47 = add nsw i32 %40, 1
  %41 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc47, ptr %arrayidx11, align 4
  %arrayidx52 = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %spec.store.select, i32 %inc47
  %42 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx29, ptr %arrayidx52, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %land.lhs.true41.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %get_char.exit.if.end54_crit_edge
  %inc55 = add nuw i32 %i.0, 1
  %add56 = add i32 %start.0, 2
  %43 = ptrtoint ptr %vc_size_row to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vc_size_row, align 4
  %cmp58.not = icmp ult i32 %inc55, %44
  br i1 %cmp58.not, label %if.end54.while.cond_crit_edge, label %if.end54.for.cond.preheader_crit_edge

if.end54.for.cond.preheader_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.end54.while.cond_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

for.cond.preheader:                               ; preds = %if.end54.for.cond.preheader_crit_edge, %while.cond.for.cond.preheader_crit_edge
  %i.2.in.ph = phi i32 [ %i.0, %while.cond.for.cond.preheader_crit_edge ], [ %inc55, %if.end54.for.cond.preheader_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %i.2.in = phi i32 [ %i.2, %for.body.for.cond_crit_edge ], [ %i.2.in.ph, %for.cond.preheader ]
  %i.2 = add i32 %i.2.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2)
  %cmp62 = icmp sgt i32 %i.2, -1
  br i1 %cmp62, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx65 = getelementptr [2 x [256 x i16]], ptr @sentbuf, i32 0, i32 %spec.store.select, i32 %i.2
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx65, align 2
  %cmp67.not = icmp eq i16 %46, 32
  br i1 %cmp67.not, label %for.body.for.cond_crit_edge, label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %cmp72 = icmp eq i32 %i.2, 0
  br i1 %cmp72, label %for.end.cleanup_crit_edge, label %if.end75

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end75:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx78 = getelementptr [2 x [256 x i16]], ptr @sentbuf, i32 0, i32 %spec.store.select, i32 %i.2.in
  %47 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 32, ptr %arrayidx78, align 2
  %inc80 = add nuw i32 %i.2.in, 1
  %arrayidx81 = getelementptr [2 x [256 x i16]], ptr @sentbuf, i32 0, i32 %spec.store.select, i32 %inc80
  %48 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %arrayidx81, align 2
  %arrayidx84 = getelementptr [2 x ptr], ptr @sentbufend, i32 0, i32 %spec.store.select
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx81, ptr %arrayidx84, align 4
  %50 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %51, %if.end75 ], [ -1, %for.end.cleanup_crit_edge ], [ -1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_fake_down_arrow() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_get_var_header(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_set_num_var(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt_notifier_call(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readonly %_param) #1 align 64 {
entry:
  %d = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_param, align 4
  %2 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.318)
  switch i32 %code, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %vc_mode = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %vc_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @speakup_allocate(ptr noundef %1, i32 noundef 2592)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vc_num1.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %vc_num1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vc_num1.i, align 4
  %conv.i = zext i16 %6 to i32
  %arrayidx.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %c = getelementptr inbounds %struct.vt_notifier_param, ptr %_param, i32 0, i32 1
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp5 = icmp eq i32 %11, 8
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vc_num.i, align 4
  %idxprom.i = zext i16 %13 to i32
  %arrayidx.i19 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i19, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then7.sw.epilog_crit_edge, label %do.body1.i

if.then7.sw.epilog_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body1.i:                                       ; preds = %if.then7
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !801
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i, label %do.end14.i, label %do.end14.thread.i

do.end14.i:                                       ; preds = %do.body1.i
  tail call void @trace_hardirqs_off() #11
  %call17.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then28.i, label %do.end14.i.if.end53.i_crit_edge

do.end14.i.if.end53.i_crit_edge:                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

do.end14.thread.i:                                ; preds = %do.body1.i
  %call1789.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1789.i)
  %tobool18.not90.i = icmp eq i32 %call1789.i, 0
  br i1 %tobool18.not90.i, label %do.end14.thread.i.do.body30.i_crit_edge, label %do.end14.thread.i.if.end53.i_crit_edge

do.end14.thread.i.if.end53.i_crit_edge:           ; preds = %do.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

do.end14.thread.i.do.body30.i_crit_edge:          ; preds = %do.end14.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30.i

if.then28.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body30.i

do.body30.i:                                      ; preds = %if.then28.i, %do.end14.thread.i.do.body30.i_crit_edge
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !802
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool38.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool38.not.i, label %if.then42.i, label %do.body30.i.do.end45.i_crit_edge, !prof !803

do.body30.i.do.end45.i_crit_edge:                 ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end45.i

if.then42.i:                                      ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end45.i

do.end45.i:                                       ; preds = %if.then42.i, %do.body30.i.do.end45.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #11, !srcloc !804
  br label %sw.epilog

if.end53.i:                                       ; preds = %do.end14.thread.i.if.end53.i_crit_edge, %do.end14.i.if.end53.i_crit_edge
  %18 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vc_num.i, align 4
  %idxprom55.i = zext i16 %19 to i32
  %arrayidx56.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom55.i
  %20 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx56.i, align 4
  %parked.i = getelementptr inbounds %struct.st_spk_t, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %parked.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %parked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool57.not.i = icmp eq i8 %23, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end53.i.if.end59.i_crit_edge

if.end53.i.if.end59.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %state.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i.i, align 4
  %cursor_x.i.i = getelementptr inbounds %struct.st_spk_t, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %cursor_x.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cursor_x.i.i, align 4
  %27 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vc_num.i, align 4
  %idxprom2.i.i = zext i16 %28 to i32
  %arrayidx3.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2.i.i
  %29 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx3.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %25, ptr %30, align 4
  %y.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %y.i.i, align 4
  %34 = load i16, ptr %vc_num.i, align 4
  %idxprom6.i.i = zext i16 %34 to i32
  %arrayidx7.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6.i.i
  %35 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx7.i.i, align 4
  %cursor_y.i.i = getelementptr inbounds %struct.st_spk_t, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cursor_y.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %cursor_y.i.i, align 4
  %38 = load i16, ptr %vc_num.i, align 4
  %idxprom9.i.i = zext i16 %38 to i32
  %arrayidx10.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9.i.i
  %39 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx10.i.i, align 4
  %reading_y.i.i = getelementptr inbounds %struct.st_spk_t, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %reading_y.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %33, ptr %reading_y.i.i, align 4
  %vc_pos.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 26
  %42 = ptrtoint ptr %vc_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vc_pos.i.i, align 4
  %44 = load i16, ptr %vc_num.i, align 4
  %idxprom12.i.i = zext i16 %44 to i32
  %arrayidx13.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12.i.i
  %45 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx13.i.i, align 4
  %cursor_pos.i.i = getelementptr inbounds %struct.st_spk_t, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %cursor_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %cursor_pos.i.i, align 4
  %48 = load i16, ptr %vc_num.i, align 4
  %idxprom15.i.i = zext i16 %48 to i32
  %arrayidx16.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15.i.i
  %49 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx16.i.i, align 4
  %reading_pos.i.i = getelementptr inbounds %struct.st_spk_t, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %reading_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %43, ptr %reading_pos.i.i, align 4
  %52 = load i16, ptr %vc_num.i, align 4
  %idxprom18.i.i = zext i16 %52 to i32
  %arrayidx19.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18.i.i
  %53 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx19.i.i, align 4
  %reading_attr.i.i = getelementptr inbounds %struct.st_spk_t, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %reading_attr.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reading_attr.i.i, align 2
  %old_attr.i.i = getelementptr inbounds %struct.st_spk_t, ptr %54, i32 0, i32 15
  %57 = ptrtoint ptr %old_attr.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %old_attr.i.i, align 1
  %58 = load i16, ptr %vc_num.i, align 4
  %idxprom24.i.i = zext i16 %58 to i32
  %arrayidx25.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom24.i.i
  %59 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx25.i.i, align 4
  %reading_pos26.i.i = getelementptr inbounds %struct.st_spk_t, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %reading_pos26.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reading_pos26.i.i, align 4
  %vc_origin.i.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %vc_origin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vc_origin.i.i.i, align 4
  %sub.ptr.sub.i.i.i = sub i32 %62, %64
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 1
  %call.i.i.i = tail call ptr @screen_pos(ptr noundef %1, i32 noundef %sub.ptr.div.i.i.i, i1 noundef zeroext true) #11
  %65 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %call.i.i.i, align 2
  %vc_hi_font_mask.i.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 27
  %67 = ptrtoint ptr %vc_hi_font_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vc_hi_font_mask.i.i.i, align 4
  %neg.i.i.i = xor i16 %68, -1
  %and.i.i88.i = and i16 %66, %neg.i.i.i
  %69 = lshr i16 %and.i.i88.i, 8
  %conv2.i.i.i = trunc i16 %69 to i8
  %70 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vc_num.i, align 4
  %idxprom28.i.i = zext i16 %71 to i32
  %arrayidx29.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom28.i.i
  %72 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx29.i.i, align 4
  %reading_attr30.i.i = getelementptr inbounds %struct.st_spk_t, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %reading_attr30.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv2.i.i.i, ptr %reading_attr30.i.i, align 2
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %if.end53.i.if.end59.i_crit_edge
  %75 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vc_num.i, align 4
  %idxprom61.i = zext i16 %76 to i32
  %arrayidx62.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom61.i
  %77 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx62.i, align 4
  %shut_up.i = getelementptr inbounds %struct.st_spk_t, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %shut_up.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %shut_up.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool64.not.i = icmp eq i8 %80, 0
  br i1 %tobool64.not.i, label %lor.lhs.false.i, label %if.end59.i.if.then66.i_crit_edge

if.end59.i.if.then66.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66.i

lor.lhs.false.i:                                  ; preds = %if.end59.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %81 = load ptr, ptr @synth, align 4
  %tobool65.not.i = icmp eq ptr %81, null
  br i1 %tobool65.not.i, label %lor.lhs.false.i.if.then66.i_crit_edge, label %if.end67.i

lor.lhs.false.i.if.then66.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66.i

if.then66.i:                                      ; preds = %lor.lhs.false.i.if.then66.i_crit_edge, %if.end59.i.if.then66.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %16) #11
  br label %sw.epilog

if.end67.i:                                       ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %82 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %idxprom61.i)
  %cmp70.i = icmp eq i32 %82, %idxprom61.i
  br i1 %cmp70.i, label %land.lhs.true.i, label %if.end67.i.if.end77.i_crit_edge

if.end67.i.if.end77.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

land.lhs.true.i:                                  ; preds = %if.end67.i
  %83 = load i32, ptr @spk_keydown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool72.not.i = icmp eq i32 %83, 0
  br i1 %tobool72.not.i, label %land.lhs.true.i.if.end77.i_crit_edge, label %if.then73.i

land.lhs.true.i.if.end77.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

if.then73.i:                                      ; preds = %land.lhs.true.i
  store i32 0, ptr @spk_keydown, align 4
  %84 = load i8, ptr @is_cursor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool74.not.i = icmp eq i8 %84, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.then73.i.if.end77.i_crit_edge

if.then73.i.if.end77.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

if.then75.i:                                      ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @say_char(ptr noundef %1) #11
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %if.then73.i.if.end77.i_crit_edge, %land.lhs.true.i.if.end77.i_crit_edge, %if.end67.i.if.end77.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %16) #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d) #11
  %conv9 = trunc i32 %11 to i16
  %85 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv9, ptr %d, align 2
  %vc_num.i20 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %86 = ptrtoint ptr %vc_num.i20 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vc_num.i20, align 4
  %conv.i21 = zext i16 %87 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %88 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %conv.i21)
  %cmp.not.i = icmp eq i32 %88, %conv.i21
  br i1 %cmp.not.i, label %lor.lhs.false.i25, label %if.else.speakup_con_write.exit_crit_edge

if.else.speakup_con_write.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_con_write.exit

lor.lhs.false.i25:                                ; preds = %if.else
  %arrayidx.i22 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv.i21
  %89 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i22, align 4
  %shut_up.i23 = getelementptr inbounds %struct.st_spk_t, ptr %90, i32 0, i32 17
  %91 = ptrtoint ptr %shut_up.i23 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %shut_up.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i24 = icmp eq i8 %92, 0
  br i1 %tobool.not.i24, label %lor.lhs.false4.i, label %lor.lhs.false.i25.speakup_con_write.exit_crit_edge

lor.lhs.false.i25.speakup_con_write.exit_crit_edge: ; preds = %lor.lhs.false.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_con_write.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %93 = load ptr, ptr @synth, align 4
  %tobool5.not.i = icmp eq ptr %93, null
  br i1 %tobool5.not.i, label %lor.lhs.false4.i.speakup_con_write.exit_crit_edge, label %do.body6.i

lor.lhs.false4.i.speakup_con_write.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speakup_con_write.exit

do.body6.i:                                       ; preds = %lor.lhs.false4.i
  %94 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !801
  %and.i.i26 = and i32 %94, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26)
  %tobool17.not.i = icmp eq i32 %and.i.i26, 0
  br i1 %tobool17.not.i, label %do.end21.i, label %do.end21.thread.i

do.end21.i:                                       ; preds = %do.body6.i
  tail call void @trace_hardirqs_off() #11
  %call24.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then35.i, label %do.end21.i.if.end60.i_crit_edge

do.end21.i.if.end60.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

do.end21.thread.i:                                ; preds = %do.body6.i
  %call242.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242.i)
  %tobool25.not3.i = icmp eq i32 %call242.i, 0
  br i1 %tobool25.not3.i, label %do.end21.thread.i.do.body37.i_crit_edge, label %do.end21.thread.i.if.end60.i_crit_edge

do.end21.thread.i.if.end60.i_crit_edge:           ; preds = %do.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

do.end21.thread.i.do.body37.i_crit_edge:          ; preds = %do.end21.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37.i

if.then35.i:                                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body37.i

do.body37.i:                                      ; preds = %if.then35.i, %do.end21.thread.i.do.body37.i_crit_edge
  %95 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !802
  %and.i.i.i27 = and i32 %95, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i27)
  %tobool45.not.i = icmp eq i32 %and.i.i.i27, 0
  br i1 %tobool45.not.i, label %if.then49.i, label %do.body37.i.do.end52.i_crit_edge, !prof !803

do.body37.i.do.end52.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52.i

if.then49.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end52.i

do.end52.i:                                       ; preds = %if.then49.i, %do.body37.i.do.end52.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #11, !srcloc !804
  br label %speakup_con_write.exit

if.end60.i:                                       ; preds = %do.end21.thread.i.if.end60.i_crit_edge, %do.end21.i.if.end60.i_crit_edge
  %96 = load i32, ptr @spk_bell_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool61.not.i = icmp eq i32 %96, 0
  br i1 %tobool61.not.i, label %if.end60.i.if.end67.i30_crit_edge, label %land.lhs.true.i28

if.end60.i.if.end67.i30_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i30

land.lhs.true.i28:                                ; preds = %if.end60.i
  %97 = load i32, ptr @spk_keydown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool62.not.i = icmp eq i32 %97, 0
  br i1 %tobool62.not.i, label %land.lhs.true.i28.if.end67.i30_crit_edge, label %land.lhs.true63.i

land.lhs.true.i28.if.end67.i30_crit_edge:         ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i30

land.lhs.true63.i:                                ; preds = %land.lhs.true.i28
  %state.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %98 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i, align 4
  %sub.i = add i32 %96, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %sub.i)
  %cmp64.i = icmp eq i32 %99, %sub.i
  br i1 %cmp64.i, label %if.then66.i29, label %land.lhs.true63.i.if.end67.i30_crit_edge

land.lhs.true63.i.if.end67.i30_crit_edge:         ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i30

if.then66.i29:                                    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = load i32, ptr @spk_bleep_time, align 4
  store i16 414, ptr @spk_unprocessed_sound, align 4
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %100) #11
  store i32 %call2.i.i.i, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds (%struct.bleep, ptr @spk_unprocessed_sound, i32 0, i32 2), align 4
  br label %if.end67.i30

if.end67.i30:                                     ; preds = %if.then66.i29, %land.lhs.true63.i.if.end67.i30_crit_edge, %land.lhs.true.i28.if.end67.i30_crit_edge, %if.end60.i.if.end67.i30_crit_edge
  %101 = load i8, ptr @is_cursor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool69.not.i = icmp eq i8 %101, 0
  %102 = load i32, ptr @cursor_track, align 4
  br i1 %tobool69.not.i, label %lor.lhs.false70.i, label %if.then73.i31

lor.lhs.false70.i:                                ; preds = %if.end67.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp71.i = icmp eq i32 %102, 4
  br i1 %cmp71.i, label %lor.lhs.false70.i.if.end77.i36_crit_edge, label %if.end78.i

lor.lhs.false70.i.if.end77.i36_crit_edge:         ; preds = %lor.lhs.false70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i36

if.then73.i31:                                    ; preds = %if.end67.i30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp74.i = icmp eq i32 %102, 2
  br i1 %cmp74.i, label %if.then76.i, label %if.then73.i31.if.end77.i36_crit_edge

if.then73.i31.if.end77.i36_crit_edge:             ; preds = %if.then73.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i36

if.then76.i:                                      ; preds = %if.then73.i31
  %103 = ptrtoint ptr %vc_num.i20 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vc_num.i20, align 4
  %conv.i.i = zext i16 %104 to i32
  %vc_attr.i.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 18
  %105 = ptrtoint ptr %vc_attr.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vc_attr.i.i, align 1
  %107 = lshr i8 %106, 4
  %108 = and i8 %107, 7
  %109 = zext i8 %108 to i32
  %arrayidx.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv.i.i
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx3.i.i32 = getelementptr %struct.st_spk_t, ptr %111, i32 0, i32 18, i32 2, i32 %109
  %112 = ptrtoint ptr %arrayidx3.i.i32 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx3.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i.i = icmp eq i32 %113, 0
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i.i

if.end.thread.i.i:                                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #13
  %vc_pos.i.i33 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 26
  %114 = ptrtoint ptr %vc_pos.i.i33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vc_pos.i.i33, align 4
  %arrayidx11.i.i = getelementptr %struct.st_spk_t, ptr %111, i32 0, i32 18, i32 3, i32 %109
  %116 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx11.i.i, align 4
  %state.i.i34 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %117 = ptrtoint ptr %state.i.i34 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %state.i.i34, align 4
  %119 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.st_spk_t, ptr %120, i32 0, i32 18, i32 4, i32 %109
  %121 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %118, ptr %arrayidx14.i.i, align 4
  %y.i.i35 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %122 = ptrtoint ptr %y.i.i35 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %y.i.i35, align 4
  %124 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx18.i.i = getelementptr %struct.st_spk_t, ptr %124, i32 0, i32 18, i32 5, i32 %109
  %125 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %123, ptr %arrayidx18.i.i, align 4
  br label %while.body.preheader.i.i

if.end.i.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %113)
  %cmp191.i.i = icmp sgt i32 %113, 159
  br i1 %cmp191.i.i, label %if.end.i.i.update_color_buffer.exit.i_crit_edge, label %if.end.i.i.while.body.preheader.i.i_crit_edge

if.end.i.i.while.body.preheader.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader.i.i

if.end.i.i.update_color_buffer.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %update_color_buffer.exit.i

while.body.preheader.i.i:                         ; preds = %if.end.i.i.while.body.preheader.i.i_crit_edge, %if.end.thread.i.i
  %126 = ptrtoint ptr %d to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %d, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %127)
  %cmp25.i.i = icmp ugt i16 %127, 32
  br i1 %cmp25.i.i, label %if.then27.i.i, label %if.else.i.i

if.then27.i.i:                                    ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i, align 4
  br label %while.end.sink.split.i.i

if.else.i.i:                                      ; preds = %while.body.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %127)
  %cmp35.i.i = icmp ne i16 %127, 32
  %brmerge.i.i = select i1 %cmp35.i.i, i1 true, i1 %cmp.i.i
  %.mux.i.i = select i1 %cmp35.i.i, i32 %113, i32 0
  br i1 %brmerge.i.i, label %if.else.i.i.update_color_buffer.exit.i_crit_edge, label %if.then39.i.i

if.else.i.i.update_color_buffer.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %update_color_buffer.exit.i

if.then39.i.i:                                    ; preds = %if.else.i.i
  %130 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i, align 4
  %sub.i.i = add i32 %113, -1
  %arrayidx44.i.i = getelementptr %struct.st_spk_t, ptr %131, i32 0, i32 18, i32 1, i32 %109, i32 %sub.i.i
  %132 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx44.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %133)
  %cmp46.not.i.i = icmp eq i16 %133, 32
  br i1 %cmp46.not.i.i, label %if.then39.i.i.update_color_buffer.exit.i_crit_edge, label %if.then39.i.i.while.end.sink.split.i.i_crit_edge

if.then39.i.i.while.end.sink.split.i.i_crit_edge: ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.sink.split.i.i

if.then39.i.i.update_color_buffer.exit.i_crit_edge: ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %update_color_buffer.exit.i

while.end.sink.split.i.i:                         ; preds = %if.then39.i.i.while.end.sink.split.i.i_crit_edge, %if.then27.i.i
  %.sink4.i.i = phi ptr [ %129, %if.then27.i.i ], [ %131, %if.then39.i.i.while.end.sink.split.i.i_crit_edge ]
  %arrayidx32.i.i = getelementptr %struct.st_spk_t, ptr %.sink4.i.i, i32 0, i32 18, i32 1, i32 %109, i32 %113
  %134 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %127, ptr %arrayidx32.i.i, align 2
  %inc.i.i = add nsw i32 %113, 1
  br label %update_color_buffer.exit.i

update_color_buffer.exit.i:                       ; preds = %while.end.sink.split.i.i, %if.then39.i.i.update_color_buffer.exit.i_crit_edge, %if.else.i.i.update_color_buffer.exit.i_crit_edge, %if.end.i.i.update_color_buffer.exit.i_crit_edge
  %hi.0.lcssa.i.i = phi i32 [ %113, %if.end.i.i.update_color_buffer.exit.i_crit_edge ], [ %113, %if.then39.i.i.update_color_buffer.exit.i_crit_edge ], [ %.mux.i.i, %if.else.i.i.update_color_buffer.exit.i_crit_edge ], [ %inc.i.i, %while.end.sink.split.i.i ]
  %135 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.st_spk_t, ptr %136, i32 0, i32 18, i32 2, i32 %109
  %137 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %hi.0.lcssa.i.i, ptr %arrayidx63.i.i, align 4
  br label %if.end77.i36

if.end77.i36:                                     ; preds = %update_color_buffer.exit.i, %if.then73.i31.if.end77.i36_crit_edge, %lor.lhs.false70.i.if.end77.i36_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %94) #11
  br label %speakup_con_write.exit

if.end78.i:                                       ; preds = %lor.lhs.false70.i
  %138 = ptrtoint ptr %vc_num.i20 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %vc_num.i20, align 4
  %idxprom80.i = zext i16 %139 to i32
  %arrayidx81.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom80.i
  %140 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx81.i, align 4
  %w_enabled.i = getelementptr inbounds %struct.st_spk_t, ptr %141, i32 0, i32 13
  %142 = ptrtoint ptr %w_enabled.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %w_enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool82.not.i = icmp eq i8 %143, 0
  br i1 %tobool82.not.i, label %if.end78.i.if.end116.i_crit_edge, label %if.then83.i

if.end78.i.if.end116.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.i

if.then83.i:                                      ; preds = %if.end78.i
  %state84.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %144 = ptrtoint ptr %state84.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %state84.i, align 4
  %w_left.i = getelementptr inbounds %struct.st_spk_t, ptr %141, i32 0, i32 10
  %146 = ptrtoint ptr %w_left.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %w_left.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp89.not.i = icmp ult i32 %145, %147
  br i1 %cmp89.not.i, label %if.then83.i.if.end116.i_crit_edge, label %land.lhs.true91.i

if.then83.i.if.end116.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.i

land.lhs.true91.i:                                ; preds = %if.then83.i
  %w_right.i = getelementptr inbounds %struct.st_spk_t, ptr %141, i32 0, i32 11
  %148 = ptrtoint ptr %w_right.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %w_right.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %149)
  %cmp97.not.i = icmp ugt i32 %145, %149
  br i1 %cmp97.not.i, label %land.lhs.true91.i.if.end116.i_crit_edge, label %land.lhs.true99.i

land.lhs.true91.i.if.end116.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.i

land.lhs.true99.i:                                ; preds = %land.lhs.true91.i
  %y.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %150 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %y.i, align 4
  %w_top.i = getelementptr inbounds %struct.st_spk_t, ptr %141, i32 0, i32 8
  %152 = ptrtoint ptr %w_top.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %w_top.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp104.not.i = icmp ult i32 %151, %153
  br i1 %cmp104.not.i, label %land.lhs.true99.i.if.end116.i_crit_edge, label %land.lhs.true106.i

land.lhs.true99.i.if.end116.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.i

land.lhs.true106.i:                               ; preds = %land.lhs.true99.i
  %w_bottom.i = getelementptr inbounds %struct.st_spk_t, ptr %141, i32 0, i32 9
  %154 = ptrtoint ptr %w_bottom.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %w_bottom.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %155)
  %cmp112.not.i = icmp ugt i32 %151, %155
  br i1 %cmp112.not.i, label %land.lhs.true106.i.if.end116.i_crit_edge, label %if.then114.i

land.lhs.true106.i.if.end116.i_crit_edge:         ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116.i

if.then114.i:                                     ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %94) #11
  br label %speakup_con_write.exit

if.end116.i:                                      ; preds = %land.lhs.true106.i.if.end116.i_crit_edge, %land.lhs.true99.i.if.end116.i_crit_edge, %land.lhs.true91.i.if.end116.i_crit_edge, %if.then83.i.if.end116.i_crit_edge, %if.end78.i.if.end116.i_crit_edge
  call fastcc void @spkup_write(ptr noundef nonnull %d, i32 noundef 1) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %94) #11
  br label %speakup_con_write.exit

speakup_con_write.exit:                           ; preds = %if.end116.i, %if.then114.i, %if.end77.i36, %do.end52.i, %lor.lhs.false4.i.speakup_con_write.exit_crit_edge, %lor.lhs.false.i25.speakup_con_write.exit_crit_edge, %if.else.speakup_con_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %vc_num.i37 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %156 = ptrtoint ptr %vc_num.i37 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %vc_num.i37, align 4
  %idxprom.i38 = zext i16 %157 to i32
  %arrayidx.i39 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i38
  %158 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i39, align 4
  %tobool.not.i40 = icmp eq ptr %159, null
  br i1 %tobool.not.i40, label %sw.bb11.sw.epilog_crit_edge, label %lor.lhs.false.i42

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false.i42:                                ; preds = %sw.bb11
  %parked.i41 = getelementptr inbounds %struct.st_spk_t, ptr %159, i32 0, i32 16
  %160 = ptrtoint ptr %parked.i41 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %parked.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool4.not.i = icmp eq i8 %161, 0
  br i1 %tobool4.not.i, label %do.body5.i, label %lor.lhs.false.i42.sw.epilog_crit_edge

lor.lhs.false.i42.sw.epilog_crit_edge:            ; preds = %lor.lhs.false.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body5.i:                                       ; preds = %lor.lhs.false.i42
  %162 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !801
  %and.i.i43 = and i32 %162, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool15.not.i = icmp eq i32 %and.i.i43, 0
  br i1 %tobool15.not.i, label %do.end19.i, label %do.end19.thread.i

do.end19.i:                                       ; preds = %do.body5.i
  tail call void @trace_hardirqs_off() #11
  %call22.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then33.i, label %do.end19.i.if.end58.i_crit_edge

do.end19.i.if.end58.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

do.end19.thread.i:                                ; preds = %do.body5.i
  %call2276.i = tail call i32 @_raw_spin_trylock(ptr noundef nonnull @speakup_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2276.i)
  %tobool23.not77.i = icmp eq i32 %call2276.i, 0
  br i1 %tobool23.not77.i, label %do.end19.thread.i.do.body35.i_crit_edge, label %do.end19.thread.i.if.end58.i_crit_edge

do.end19.thread.i.if.end58.i_crit_edge:           ; preds = %do.end19.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

do.end19.thread.i.do.body35.i_crit_edge:          ; preds = %do.end19.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35.i

if.then33.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body35.i

do.body35.i:                                      ; preds = %if.then33.i, %do.end19.thread.i.do.body35.i_crit_edge
  %163 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !802
  %and.i.i.i44 = and i32 %163, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i44)
  %tobool43.not.i = icmp eq i32 %and.i.i.i44, 0
  br i1 %tobool43.not.i, label %if.then47.i, label %do.body35.i.do.end50.i_crit_edge, !prof !803

do.body35.i.do.end50.i_crit_edge:                 ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end50.i

if.then47.i:                                      ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then47.i, %do.body35.i.do.end50.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %162) #11, !srcloc !804
  br label %sw.epilog

if.end58.i:                                       ; preds = %do.end19.thread.i.if.end58.i_crit_edge, %do.end19.i.if.end58.i_crit_edge
  %state.i.i45 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1
  %164 = ptrtoint ptr %state.i.i45 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %state.i.i45, align 4
  %166 = ptrtoint ptr %vc_num.i37 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %vc_num.i37, align 4
  %idxprom.i.i = zext i16 %167 to i32
  %arrayidx.i.i46 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i.i
  %168 = ptrtoint ptr %arrayidx.i.i46 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i.i46, align 4
  %cursor_x.i.i47 = getelementptr inbounds %struct.st_spk_t, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %cursor_x.i.i47 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %165, ptr %cursor_x.i.i47, align 4
  %171 = load i16, ptr %vc_num.i37, align 4
  %idxprom2.i.i48 = zext i16 %171 to i32
  %arrayidx3.i.i49 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2.i.i48
  %172 = ptrtoint ptr %arrayidx3.i.i49 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx3.i.i49, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %165, ptr %173, align 4
  %y.i.i50 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %y.i.i50 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %y.i.i50, align 4
  %177 = load i16, ptr %vc_num.i37, align 4
  %idxprom6.i.i51 = zext i16 %177 to i32
  %arrayidx7.i.i52 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6.i.i51
  %178 = ptrtoint ptr %arrayidx7.i.i52 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx7.i.i52, align 4
  %cursor_y.i.i53 = getelementptr inbounds %struct.st_spk_t, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %cursor_y.i.i53 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %176, ptr %cursor_y.i.i53, align 4
  %181 = load i16, ptr %vc_num.i37, align 4
  %idxprom9.i.i54 = zext i16 %181 to i32
  %arrayidx10.i.i55 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9.i.i54
  %182 = ptrtoint ptr %arrayidx10.i.i55 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx10.i.i55, align 4
  %reading_y.i.i56 = getelementptr inbounds %struct.st_spk_t, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %reading_y.i.i56 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %176, ptr %reading_y.i.i56, align 4
  %vc_pos.i.i57 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 26
  %185 = ptrtoint ptr %vc_pos.i.i57 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %vc_pos.i.i57, align 4
  %187 = load i16, ptr %vc_num.i37, align 4
  %idxprom12.i.i58 = zext i16 %187 to i32
  %arrayidx13.i.i59 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12.i.i58
  %188 = ptrtoint ptr %arrayidx13.i.i59 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx13.i.i59, align 4
  %cursor_pos.i.i60 = getelementptr inbounds %struct.st_spk_t, ptr %189, i32 0, i32 5
  %190 = ptrtoint ptr %cursor_pos.i.i60 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %186, ptr %cursor_pos.i.i60, align 4
  %191 = load i16, ptr %vc_num.i37, align 4
  %idxprom15.i.i61 = zext i16 %191 to i32
  %arrayidx16.i.i62 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15.i.i61
  %192 = ptrtoint ptr %arrayidx16.i.i62 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %arrayidx16.i.i62, align 4
  %reading_pos.i.i63 = getelementptr inbounds %struct.st_spk_t, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %reading_pos.i.i63 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %186, ptr %reading_pos.i.i63, align 4
  %195 = load i16, ptr %vc_num.i37, align 4
  %idxprom18.i.i64 = zext i16 %195 to i32
  %arrayidx19.i.i65 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18.i.i64
  %196 = ptrtoint ptr %arrayidx19.i.i65 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx19.i.i65, align 4
  %reading_attr.i.i66 = getelementptr inbounds %struct.st_spk_t, ptr %197, i32 0, i32 14
  %198 = ptrtoint ptr %reading_attr.i.i66 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %reading_attr.i.i66, align 2
  %old_attr.i.i67 = getelementptr inbounds %struct.st_spk_t, ptr %197, i32 0, i32 15
  %200 = ptrtoint ptr %old_attr.i.i67 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %old_attr.i.i67, align 1
  %201 = load i16, ptr %vc_num.i37, align 4
  %idxprom24.i.i68 = zext i16 %201 to i32
  %arrayidx25.i.i69 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom24.i.i68
  %202 = ptrtoint ptr %arrayidx25.i.i69 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx25.i.i69, align 4
  %reading_pos26.i.i70 = getelementptr inbounds %struct.st_spk_t, ptr %203, i32 0, i32 4
  %204 = ptrtoint ptr %reading_pos26.i.i70 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %reading_pos26.i.i70, align 4
  %vc_origin.i.i.i71 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 9
  %206 = ptrtoint ptr %vc_origin.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %vc_origin.i.i.i71, align 4
  %sub.ptr.sub.i.i.i72 = sub i32 %205, %207
  %sub.ptr.div.i.i.i73 = ashr exact i32 %sub.ptr.sub.i.i.i72, 1
  %call.i.i.i74 = tail call ptr @screen_pos(ptr noundef %1, i32 noundef %sub.ptr.div.i.i.i73, i1 noundef zeroext true) #11
  %208 = ptrtoint ptr %call.i.i.i74 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %call.i.i.i74, align 2
  %vc_hi_font_mask.i.i.i75 = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 27
  %210 = ptrtoint ptr %vc_hi_font_mask.i.i.i75 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %vc_hi_font_mask.i.i.i75, align 4
  %neg.i.i.i76 = xor i16 %211, -1
  %and.i.i75.i = and i16 %209, %neg.i.i.i76
  %212 = lshr i16 %and.i.i75.i, 8
  %conv2.i.i.i77 = trunc i16 %212 to i8
  %213 = ptrtoint ptr %vc_num.i37 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %vc_num.i37, align 4
  %idxprom28.i.i78 = zext i16 %214 to i32
  %arrayidx29.i.i79 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom28.i.i78
  %215 = ptrtoint ptr %arrayidx29.i.i79 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx29.i.i79, align 4
  %reading_attr30.i.i80 = getelementptr inbounds %struct.st_spk_t, ptr %216, i32 0, i32 14
  %217 = ptrtoint ptr %reading_attr30.i.i80 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv2.i.i.i77, ptr %reading_attr30.i.i80, align 2
  %vc_mode.i = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 17
  %218 = ptrtoint ptr %vc_mode.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %vc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %219)
  %cmp60.i = icmp eq i8 %219, 1
  br i1 %cmp60.i, label %land.lhs.true.i82, label %if.end58.i.if.end67.i86_crit_edge

if.end58.i.if.end67.i86_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i86

land.lhs.true.i82:                                ; preds = %if.end58.i
  %220 = load i8, ptr @spk_paused, align 1, !range !799
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool62.not.i81 = icmp eq i8 %220, 0
  br i1 %tobool62.not.i81, label %land.lhs.true63.i84, label %land.lhs.true.i82.if.end67.i86_crit_edge

land.lhs.true.i82.if.end67.i86_crit_edge:         ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i86

land.lhs.true63.i84:                              ; preds = %land.lhs.true.i82
  %221 = load i8, ptr @spk_str_pause, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool65.not.i83 = icmp eq i8 %221, 0
  br i1 %tobool65.not.i83, label %land.lhs.true63.i84.if.end67.i86_crit_edge, label %if.then66.i85

land.lhs.true63.i84.if.end67.i86_crit_edge:       ; preds = %land.lhs.true63.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i86

if.then66.i85:                                    ; preds = %land.lhs.true63.i84
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.248, ptr noundef nonnull @spk_str_pause) #11
  store i8 1, ptr @spk_paused, align 1
  br label %if.end67.i86

if.end67.i86:                                     ; preds = %if.then66.i85, %land.lhs.true63.i84.if.end67.i86_crit_edge, %land.lhs.true.i82.if.end67.i86_crit_edge, %if.end58.i.if.end67.i86_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %162) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end67.i86, %do.end50.i, %lor.lhs.false.i42.sw.epilog_crit_edge, %sw.bb11.sw.epilog_crit_edge, %speakup_con_write.exit, %if.end77.i, %if.then66.i, %do.end45.i, %if.then7.sw.epilog_crit_edge, %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @speakup_allocate(ptr noundef %vc, i32 noundef %gfp_flags) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_num1 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 3
  %0 = ptrtoint ptr %vc_num1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_num1, align 4
  %conv = zext i16 %1 to i32
  %arrayidx = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !805

if.then.kzalloc.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.then
  %and2.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.then.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 12
  %4 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef %or.i, i32 noundef 2784) #15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %vc_num1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vc_num1, align 4
  %idxprom.i = zext i16 %8 to i32
  %arrayidx.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %parked = getelementptr inbounds %struct.st_spk_t, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %parked to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %parked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.else.cleanup.sink.split_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end
  %.sink72 = phi ptr [ %10, %if.end ], [ %3, %if.else.cleanup.sink.split_crit_edge ]
  %.sink71.in = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1
  %13 = ptrtoint ptr %.sink71.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.sink71 = load i32, ptr %.sink71.in, align 4
  %cursor_x.i21 = getelementptr inbounds %struct.st_spk_t, ptr %.sink72, i32 0, i32 1
  %14 = ptrtoint ptr %cursor_x.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink71, ptr %cursor_x.i21, align 4
  %15 = ptrtoint ptr %vc_num1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vc_num1, align 4
  %idxprom2.i22 = zext i16 %16 to i32
  %arrayidx3.i23 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2.i22
  %17 = ptrtoint ptr %arrayidx3.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i23, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink71, ptr %18, align 4
  %y.i24 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %y.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %y.i24, align 4
  %22 = load i16, ptr %vc_num1, align 4
  %idxprom6.i25 = zext i16 %22 to i32
  %arrayidx7.i26 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6.i25
  %23 = ptrtoint ptr %arrayidx7.i26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7.i26, align 4
  %cursor_y.i27 = getelementptr inbounds %struct.st_spk_t, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cursor_y.i27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %21, ptr %cursor_y.i27, align 4
  %26 = load i16, ptr %vc_num1, align 4
  %idxprom9.i28 = zext i16 %26 to i32
  %arrayidx10.i29 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9.i28
  %27 = ptrtoint ptr %arrayidx10.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx10.i29, align 4
  %reading_y.i30 = getelementptr inbounds %struct.st_spk_t, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %reading_y.i30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %21, ptr %reading_y.i30, align 4
  %vc_pos.i31 = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 26
  %30 = ptrtoint ptr %vc_pos.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vc_pos.i31, align 4
  %32 = load i16, ptr %vc_num1, align 4
  %idxprom12.i32 = zext i16 %32 to i32
  %arrayidx13.i33 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12.i32
  %33 = ptrtoint ptr %arrayidx13.i33 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx13.i33, align 4
  %cursor_pos.i34 = getelementptr inbounds %struct.st_spk_t, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %cursor_pos.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %31, ptr %cursor_pos.i34, align 4
  %36 = load i16, ptr %vc_num1, align 4
  %idxprom15.i35 = zext i16 %36 to i32
  %arrayidx16.i36 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15.i35
  %37 = ptrtoint ptr %arrayidx16.i36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx16.i36, align 4
  %reading_pos.i37 = getelementptr inbounds %struct.st_spk_t, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %reading_pos.i37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %31, ptr %reading_pos.i37, align 4
  %40 = load i16, ptr %vc_num1, align 4
  %idxprom18.i38 = zext i16 %40 to i32
  %arrayidx19.i39 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18.i38
  %41 = ptrtoint ptr %arrayidx19.i39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx19.i39, align 4
  %reading_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %reading_attr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reading_attr.i, align 2
  %old_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %42, i32 0, i32 15
  %45 = ptrtoint ptr %old_attr.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %old_attr.i, align 1
  %46 = load i16, ptr %vc_num1, align 4
  %idxprom24.i = zext i16 %46 to i32
  %arrayidx25.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom24.i
  %47 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx25.i, align 4
  %reading_pos26.i = getelementptr inbounds %struct.st_spk_t, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %reading_pos26.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reading_pos26.i, align 4
  %vc_origin.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 9
  %51 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vc_origin.i.i, align 4
  %sub.ptr.sub.i.i = sub i32 %50, %52
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 1
  %call.i.i = tail call ptr @screen_pos(ptr noundef %vc, i32 noundef %sub.ptr.div.i.i, i1 noundef zeroext true) #11
  %53 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %call.i.i, align 2
  %vc_hi_font_mask.i.i = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 27
  %55 = ptrtoint ptr %vc_hi_font_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vc_hi_font_mask.i.i, align 4
  %neg.i.i = xor i16 %56, -1
  %and.i.i = and i16 %54, %neg.i.i
  %57 = lshr i16 %and.i.i, 8
  %conv2.i.i = trunc i16 %57 to i8
  %58 = ptrtoint ptr %vc_num1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vc_num1, align 4
  %idxprom28.i = zext i16 %59 to i32
  %arrayidx29.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom28.i
  %60 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx29.i, align 4
  %reading_attr30.i = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %reading_attr30.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv2.i.i, ptr %reading_attr30.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kzalloc.exit.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cursor_done(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  %indcount.i = alloca i32, align 4
  %sentcount.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @cursor_con, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #11
  %3 = load i32, ptr @cursor_con, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %4 = load i32, ptr @fg_console, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp6.not = icmp eq i32 %3, %4
  br i1 %cmp6.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr @is_cursor, align 1
  br label %out

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vc_num.i, align 4
  %idxprom.i = zext i16 %8 to i32
  %arrayidx.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %cursor_x.i = getelementptr inbounds %struct.st_spk_t, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cursor_x.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %cursor_x.i, align 4
  %12 = load i16, ptr %vc_num.i, align 4
  %idxprom2.i = zext i16 %12 to i32
  %arrayidx3.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom2.i
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %6, ptr %14, align 4
  %y.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y.i, align 4
  %18 = load i16, ptr %vc_num.i, align 4
  %idxprom6.i = zext i16 %18 to i32
  %arrayidx7.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom6.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7.i, align 4
  %cursor_y.i = getelementptr inbounds %struct.st_spk_t, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cursor_y.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %cursor_y.i, align 4
  %22 = load i16, ptr %vc_num.i, align 4
  %idxprom9.i = zext i16 %22 to i32
  %arrayidx10.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom9.i
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx10.i, align 4
  %reading_y.i = getelementptr inbounds %struct.st_spk_t, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %reading_y.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %reading_y.i, align 4
  %vc_pos.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 26
  %26 = ptrtoint ptr %vc_pos.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vc_pos.i, align 4
  %28 = load i16, ptr %vc_num.i, align 4
  %idxprom12.i = zext i16 %28 to i32
  %arrayidx13.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom12.i
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx13.i, align 4
  %cursor_pos.i = getelementptr inbounds %struct.st_spk_t, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %cursor_pos.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %cursor_pos.i, align 4
  %32 = load i16, ptr %vc_num.i, align 4
  %idxprom15.i = zext i16 %32 to i32
  %arrayidx16.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom15.i
  %33 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx16.i, align 4
  %reading_pos.i = getelementptr inbounds %struct.st_spk_t, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %reading_pos.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %reading_pos.i, align 4
  %36 = load i16, ptr %vc_num.i, align 4
  %idxprom18.i = zext i16 %36 to i32
  %arrayidx19.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom18.i
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx19.i, align 4
  %reading_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %reading_attr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reading_attr.i, align 2
  %old_attr.i = getelementptr inbounds %struct.st_spk_t, ptr %38, i32 0, i32 15
  %41 = ptrtoint ptr %old_attr.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %old_attr.i, align 1
  %42 = load i16, ptr %vc_num.i, align 4
  %idxprom24.i = zext i16 %42 to i32
  %arrayidx25.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom24.i
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx25.i, align 4
  %reading_pos26.i = getelementptr inbounds %struct.st_spk_t, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %reading_pos26.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reading_pos26.i, align 4
  %vc_origin.i.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 9
  %47 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vc_origin.i.i, align 4
  %sub.ptr.sub.i.i = sub i32 %46, %48
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 1
  %call.i.i = tail call ptr @screen_pos(ptr noundef %2, i32 noundef %sub.ptr.div.i.i, i1 noundef zeroext true) #11
  %49 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call.i.i, align 2
  %vc_hi_font_mask.i.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 27
  %51 = ptrtoint ptr %vc_hi_font_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vc_hi_font_mask.i.i, align 4
  %neg.i.i = xor i16 %52, -1
  %and.i.i = and i16 %50, %neg.i.i
  %53 = lshr i16 %and.i.i, 8
  %conv2.i.i = trunc i16 %53 to i8
  %54 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vc_num.i, align 4
  %idxprom28.i = zext i16 %55 to i32
  %arrayidx29.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom28.i
  %56 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx29.i, align 4
  %reading_attr30.i = getelementptr inbounds %struct.st_spk_t, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %reading_attr30.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv2.i.i, ptr %reading_attr30.i, align 2
  %59 = load i16, ptr %vc_num.i, align 4
  %idxprom = zext i16 %59 to i32
  %arrayidx8 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom
  %60 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx8, align 4
  %w_enabled = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %w_enabled to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %w_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not = icmp eq i8 %63, 0
  br i1 %tobool.not, label %if.end.if.end39_crit_edge, label %if.then9

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then9:                                         ; preds = %if.end
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i, align 4
  %w_left = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 10
  %66 = ptrtoint ptr %w_left to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %w_left, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp13.not = icmp ult i32 %65, %67
  br i1 %cmp13.not, label %if.then9.if.end39_crit_edge, label %land.lhs.true

if.then9.if.end39_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then9
  %w_right = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 11
  %68 = ptrtoint ptr %w_right to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %w_right, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %69)
  %cmp20.not = icmp ugt i32 %65, %69
  br i1 %cmp20.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true22

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true22:                                  ; preds = %land.lhs.true
  %70 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %y.i, align 4
  %w_top = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 8
  %72 = ptrtoint ptr %w_top to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %w_top, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp27.not = icmp ult i32 %71, %73
  br i1 %cmp27.not, label %land.lhs.true22.if.end39_crit_edge, label %land.lhs.true29

land.lhs.true22.if.end39_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true29:                                  ; preds = %land.lhs.true22
  %w_bottom = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 9
  %74 = ptrtoint ptr %w_bottom to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %w_bottom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %75)
  %cmp35.not = icmp ugt i32 %71, %75
  br i1 %cmp35.not, label %land.lhs.true29.if.end39_crit_edge, label %if.then37

land.lhs.true29.if.end39_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  store i32 0, ptr @spk_keydown, align 4
  store i8 0, ptr @is_cursor, align 1
  br label %out

if.end39:                                         ; preds = %land.lhs.true29.if.end39_crit_edge, %land.lhs.true22.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.then9.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %76 = load i32, ptr @cursor_track, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %76, label %if.end39.if.end51_crit_edge [
    i32 4, label %if.then42
    i32 2, label %if.then46
  ]

if.end39.if.end51_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then42:                                        ; preds = %if.end39
  %78 = load i32, ptr @read_all_key, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %indcount.i) #11
  %79 = ptrtoint ptr %indcount.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %indcount.i, align 4, !annotation !800
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sentcount.i) #11
  %80 = ptrtoint ptr %sentcount.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %sentcount.i, align 4, !annotation !800
  %81 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.320)
  switch i32 %78, label %if.then42.handle_cursor_read_all.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 6, label %sw.bb32.i
    i32 3, label %sw.bb14.i
    i32 7, label %sw.bb22.i
    i32 5, label %sw.bb15.i
  ]

if.then42.handle_cursor_read_all.exit_crit_edge:  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_cursor_read_all.exit

sw.bb.i:                                          ; preds = %if.then42
  call void @spk_get_index_count(ptr noundef nonnull %indcount.i, ptr noundef nonnull %sentcount.i) #11
  %82 = ptrtoint ptr %sentcount.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sentcount.i, align 4
  %add.i = add i32 %83, 1
  call void @spk_reset_index_count(i32 noundef %add.i) #11
  %84 = ptrtoint ptr %indcount.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %indcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp.i = icmp eq i32 %85, 1
  %86 = ptrtoint ptr %sentcount.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sentcount.i, align 4
  %add1.i = add i32 %87, 1
  %88 = load i32, ptr @currbuf, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  store i32 %88, ptr @bn, align 4
  %add.i.i = add i32 %87, 2
  store i32 %add.i.i, ptr @currsentence, align 4
  %arrayidx.i.i = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %add1.i)
  %cmp1.i.i = icmp slt i32 %90, %add1.i
  br i1 %cmp1.i.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i82 = call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  call void @speakup_fake_down_arrow() #11
  %91 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vc_num.i, align 4
  %conv.i.i.i = zext i16 %92 to i32
  store i32 %conv.i.i.i, ptr @cursor_con, align 4
  store i32 7, ptr @read_all_key, align 4
  %call.i.i.i = call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %value.i.i.i = getelementptr inbounds %struct.var_t, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 7
  %94 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %value.i.i.i, align 4
  %call2.i.i.i.i = call i32 @__msecs_to_jiffies(i32 noundef %95) #11
  %add.i.i.i = add i32 %call2.i.i.i.i, %93
  %call2.i.i.i = call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i.i.i) #11
  br label %handle_cursor_read_all.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i.i = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %88, i32 %add1.i
  br label %if.end13.i

if.else.i:                                        ; preds = %sw.bb.i
  %add.i54.i = add i32 %87, 2
  store i32 %add.i54.i, ptr @currsentence, align 4
  %dec.i.i = add i32 %88, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i = icmp eq i32 %88, 0
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 1, i32 %dec.i.i
  store i32 %spec.store.select.i.i, ptr @bn, align 4
  %arrayidx.i55.i = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %spec.store.select.i.i
  %96 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i55.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %add1.i)
  %cmp1.i56.i = icmp slt i32 %97, %add1.i
  br i1 %cmp1.i56.i, label %if.then6.i, label %if.else7.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @spk_reset_index_count(i32 noundef 1) #11
  br label %if.end8.i

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i57.i = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %spec.store.select.i.i, i32 %add1.i
  %98 = ptrtoint ptr %arrayidx5.i57.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx5.i57.i, align 4
  %arrayidx6.i58.i = getelementptr [2 x ptr], ptr @sentbufend, i32 0, i32 %spec.store.select.i.i
  %100 = ptrtoint ptr %arrayidx6.i58.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx6.i58.i, align 4
  %sub.ptr.lhs.cast.i59.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i60.i = ptrtoint ptr %99 to i32
  %sub.ptr.sub.i61.i = sub i32 %sub.ptr.lhs.cast.i59.i, %sub.ptr.rhs.cast.i60.i
  %sub.ptr.div.i62.i = ashr exact i32 %sub.ptr.sub.i61.i, 1
  call fastcc void @spkup_write(ptr noundef %99, i32 noundef %sub.ptr.div.i62.i) #11
  call void @synth_insert_next_index(i32 noundef 0) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else7.i, %if.then6.i
  %sn.0.i = phi i32 [ 0, %if.else7.i ], [ 1, %if.then6.i ]
  %102 = load i32, ptr @currbuf, align 4
  store i32 %102, ptr @bn, align 4
  %add.i66.i = add nuw nsw i32 %sn.0.i, 1
  store i32 %add.i66.i, ptr @currsentence, align 4
  %arrayidx.i67.i = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i67.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %sn.0.i)
  %cmp1.i68.i = icmp slt i32 %104, %sn.0.i
  br i1 %cmp1.i68.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i78.i = call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  call void @speakup_fake_down_arrow() #11
  %105 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %vc_num.i, align 4
  %conv.i.i80.i = zext i16 %106 to i32
  store i32 %conv.i.i80.i, ptr @cursor_con, align 4
  store i32 7, ptr @read_all_key, align 4
  %call.i.i81.i = call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %value.i.i82.i = getelementptr inbounds %struct.var_t, ptr %call.i.i81.i, i32 0, i32 1, i32 0, i32 7
  %108 = ptrtoint ptr %value.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %value.i.i82.i, align 4
  %call2.i.i.i88.i = call i32 @__msecs_to_jiffies(i32 noundef %109) #11
  %add.i.i91.i = add i32 %call2.i.i.i88.i, %107
  %call2.i.i92.i = call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i.i91.i) #11
  br label %handle_cursor_read_all.exit

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i69.i = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %102, i32 %sn.0.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end12.i, %if.end.i
  %arrayidx5.i69.sink.i = phi ptr [ %arrayidx5.i69.i, %if.end12.i ], [ %arrayidx5.i.i, %if.end.i ]
  %.sink220.i = phi i32 [ %102, %if.end12.i ], [ %88, %if.end.i ]
  %110 = ptrtoint ptr %arrayidx5.i69.sink.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx5.i69.sink.i, align 4
  %arrayidx6.i70.i = getelementptr [2 x ptr], ptr @sentbufend, i32 0, i32 %.sink220.i
  %112 = ptrtoint ptr %arrayidx6.i70.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx6.i70.i, align 4
  %sub.ptr.lhs.cast.i71.i = ptrtoint ptr %113 to i32
  %sub.ptr.rhs.cast.i72.i = ptrtoint ptr %111 to i32
  %sub.ptr.sub.i73.i = sub i32 %sub.ptr.lhs.cast.i71.i, %sub.ptr.rhs.cast.i72.i
  %sub.ptr.div.i74.i = ashr exact i32 %sub.ptr.sub.i73.i, 1
  call fastcc void @spkup_write(ptr noundef %111, i32 noundef %sub.ptr.div.i74.i) #11
  call void @synth_insert_next_index(i32 noundef 0) #11
  %114 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %vc_num.i, align 4
  %conv.i.i = zext i16 %115 to i32
  store i32 %conv.i.i, ptr @cursor_con, align 4
  store i32 6, ptr @read_all_key, align 4
  %call.i94.i = call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %116 = load volatile i32, ptr @jiffies, align 128
  %value.i.i = getelementptr inbounds %struct.var_t, ptr %call.i94.i, i32 0, i32 1, i32 0, i32 7
  %117 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %value.i.i, align 4
  %call2.i.i95.i = call i32 @__msecs_to_jiffies(i32 noundef %118) #11
  %add.i96.i = add i32 %call2.i.i95.i, %116
  %call2.i.i = call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i96.i) #11
  br label %handle_cursor_read_all.exit

sw.bb14.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @read_all_doc(ptr noundef %2) #11
  br label %handle_cursor_read_all.exit

sw.bb15.i:                                        ; preds = %if.then42
  %call16.i = tail call fastcc i32 @get_sentence_buf(ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16.i)
  %cmp17.i = icmp eq i32 %call16.i, -1
  br i1 %cmp17.i, label %if.then18.i, label %if.else19.i

if.then18.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i97.i = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  tail call void @speakup_fake_down_arrow() #11
  %119 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %vc_num.i, align 4
  %conv.i.i99.i = zext i16 %120 to i32
  store i32 %conv.i.i99.i, ptr @cursor_con, align 4
  store i32 5, ptr @read_all_key, align 4
  %call.i.i100.i = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %value.i.i101.i = getelementptr inbounds %struct.var_t, ptr %call.i.i100.i, i32 0, i32 1, i32 0, i32 7
  %122 = ptrtoint ptr %value.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %value.i.i101.i, align 4
  %call2.i.i.i107.i = tail call i32 @__msecs_to_jiffies(i32 noundef %123) #11
  %add.i.i110.i = add i32 %call2.i.i.i107.i, %121
  %call2.i.i111.i = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i.i110.i) #11
  br label %handle_cursor_read_all.exit

if.else19.i:                                      ; preds = %sw.bb15.i
  %124 = load i32, ptr @currbuf, align 4
  store i32 %124, ptr @bn, align 4
  store i32 1, ptr @currsentence, align 4
  %arrayidx.i113.i = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %124
  %125 = ptrtoint ptr %arrayidx.i113.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp1.i114.i = icmp slt i32 %126, 0
  br i1 %cmp1.i114.i, label %if.else19.i.say_sentence_num.exit123.i_crit_edge, label %if.end3.i121.i

if.else19.i.say_sentence_num.exit123.i_crit_edge: ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_sentence_num.exit123.i

if.end3.i121.i:                                   ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i115.i = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %124, i32 0
  %127 = ptrtoint ptr %arrayidx5.i115.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx5.i115.i, align 4
  %arrayidx6.i116.i = getelementptr [2 x ptr], ptr @sentbufend, i32 0, i32 %124
  %129 = ptrtoint ptr %arrayidx6.i116.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx6.i116.i, align 4
  %sub.ptr.lhs.cast.i117.i = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast.i118.i = ptrtoint ptr %128 to i32
  %sub.ptr.sub.i119.i = sub i32 %sub.ptr.lhs.cast.i117.i, %sub.ptr.rhs.cast.i118.i
  %sub.ptr.div.i120.i = ashr exact i32 %sub.ptr.sub.i119.i, 1
  tail call fastcc void @spkup_write(ptr noundef %128, i32 noundef %sub.ptr.div.i120.i) #11
  br label %say_sentence_num.exit123.i

say_sentence_num.exit123.i:                       ; preds = %if.end3.i121.i, %if.else19.i.say_sentence_num.exit123.i_crit_edge
  tail call void @synth_insert_next_index(i32 noundef 0) #11
  %131 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vc_num.i, align 4
  %conv.i125.i = zext i16 %132 to i32
  store i32 %conv.i125.i, ptr @cursor_con, align 4
  store i32 6, ptr @read_all_key, align 4
  %call.i126.i = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %133 = load volatile i32, ptr @jiffies, align 128
  %value.i127.i = getelementptr inbounds %struct.var_t, ptr %call.i126.i, i32 0, i32 1, i32 0, i32 7
  %134 = ptrtoint ptr %value.i127.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %value.i127.i, align 4
  %call2.i.i133.i = tail call i32 @__msecs_to_jiffies(i32 noundef %135) #11
  %add.i136.i = add i32 %call2.i.i133.i, %133
  %call2.i137.i = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i136.i) #11
  br label %handle_cursor_read_all.exit

sw.bb22.i:                                        ; preds = %if.then42
  %call23.i = tail call fastcc i32 @get_sentence_buf(ptr noundef %2) #11
  %136 = zext i32 %call23.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %call23.i, label %sw.bb22.i.if.else29.i_crit_edge [
    i32 -1, label %if.then25.i
    i32 0, label %if.then28.i
  ]

sw.bb22.i.if.else29.i_crit_edge:                  ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else29.i

if.then25.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @read_all_doc(ptr noundef %2) #11
  br label %if.else29.i

if.then28.i:                                      ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i139.i = tail call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  tail call void @speakup_fake_down_arrow() #11
  %137 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %vc_num.i, align 4
  %conv.i.i141.i = zext i16 %138 to i32
  store i32 %conv.i.i141.i, ptr @cursor_con, align 4
  store i32 7, ptr @read_all_key, align 4
  %call.i.i142.i = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %139 = load volatile i32, ptr @jiffies, align 128
  %value.i.i143.i = getelementptr inbounds %struct.var_t, ptr %call.i.i142.i, i32 0, i32 1, i32 0, i32 7
  %140 = ptrtoint ptr %value.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %value.i.i143.i, align 4
  %call2.i.i.i149.i = tail call i32 @__msecs_to_jiffies(i32 noundef %141) #11
  %add.i.i152.i = add i32 %call2.i.i.i149.i, %139
  %call2.i.i153.i = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i.i152.i) #11
  br label %handle_cursor_read_all.exit

if.else29.i:                                      ; preds = %if.then25.i, %sw.bb22.i.if.else29.i_crit_edge
  %142 = load i32, ptr @currbuf, align 4
  store i32 %142, ptr @bn, align 4
  store i32 2, ptr @currsentence, align 4
  %arrayidx.i155.i = getelementptr [2 x i32], ptr @numsentences, i32 0, i32 %142
  %143 = ptrtoint ptr %arrayidx.i155.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %144)
  %cmp1.i156.i = icmp slt i32 %144, 1
  br i1 %cmp1.i156.i, label %if.else29.i.say_sentence_num.exit165.i_crit_edge, label %if.end3.i163.i

if.else29.i.say_sentence_num.exit165.i_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %say_sentence_num.exit165.i

if.end3.i163.i:                                   ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx5.i157.i = getelementptr [2 x [10 x ptr]], ptr @sentmarks, i32 0, i32 %142, i32 1
  %145 = ptrtoint ptr %arrayidx5.i157.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx5.i157.i, align 4
  %arrayidx6.i158.i = getelementptr [2 x ptr], ptr @sentbufend, i32 0, i32 %142
  %147 = ptrtoint ptr %arrayidx6.i158.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx6.i158.i, align 4
  %sub.ptr.lhs.cast.i159.i = ptrtoint ptr %148 to i32
  %sub.ptr.rhs.cast.i160.i = ptrtoint ptr %146 to i32
  %sub.ptr.sub.i161.i = sub i32 %sub.ptr.lhs.cast.i159.i, %sub.ptr.rhs.cast.i160.i
  %sub.ptr.div.i162.i = ashr exact i32 %sub.ptr.sub.i161.i, 1
  tail call fastcc void @spkup_write(ptr noundef %146, i32 noundef %sub.ptr.div.i162.i) #11
  br label %say_sentence_num.exit165.i

say_sentence_num.exit165.i:                       ; preds = %if.end3.i163.i, %if.else29.i.say_sentence_num.exit165.i_crit_edge
  tail call void @synth_insert_next_index(i32 noundef 0) #11
  %149 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %vc_num.i, align 4
  %conv.i167.i = zext i16 %150 to i32
  store i32 %conv.i167.i, ptr @cursor_con, align 4
  store i32 6, ptr @read_all_key, align 4
  %call.i168.i = tail call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %value.i169.i = getelementptr inbounds %struct.var_t, ptr %call.i168.i, i32 0, i32 1, i32 0, i32 7
  %152 = ptrtoint ptr %value.i169.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %value.i169.i, align 4
  %call2.i.i175.i = tail call i32 @__msecs_to_jiffies(i32 noundef %153) #11
  %add.i178.i = add i32 %call2.i.i175.i, %151
  %call2.i179.i = tail call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i178.i) #11
  br label %handle_cursor_read_all.exit

sw.bb32.i:                                        ; preds = %if.then42
  call void @spk_get_index_count(ptr noundef nonnull %indcount.i, ptr noundef nonnull %sentcount.i) #11
  %154 = ptrtoint ptr %indcount.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %indcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp33.i = icmp slt i32 %155, 2
  br i1 %cmp33.i, label %if.then34.i, label %if.else35.i

if.then34.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i181.i = call i32 @del_timer(ptr noundef nonnull @cursor_timer) #11
  call void @speakup_fake_down_arrow() #11
  %156 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %vc_num.i, align 4
  %conv.i.i183.i = zext i16 %157 to i32
  store i32 %conv.i.i183.i, ptr @cursor_con, align 4
  store i32 5, ptr @read_all_key, align 4
  %call.i.i184.i = call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %158 = load volatile i32, ptr @jiffies, align 128
  %value.i.i185.i = getelementptr inbounds %struct.var_t, ptr %call.i.i184.i, i32 0, i32 1, i32 0, i32 7
  %159 = ptrtoint ptr %value.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %value.i.i185.i, align 4
  %call2.i.i.i191.i = call i32 @__msecs_to_jiffies(i32 noundef %160) #11
  %add.i.i194.i = add i32 %call2.i.i.i191.i, %158
  %call2.i.i195.i = call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i.i194.i) #11
  br label %handle_cursor_read_all.exit

if.else35.i:                                      ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %vc_num.i, align 4
  %conv.i198.i = zext i16 %162 to i32
  store i32 %conv.i198.i, ptr @cursor_con, align 4
  store i32 6, ptr @read_all_key, align 4
  %call.i199.i = call ptr @spk_get_var(i32 noundef 17) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %163 = load volatile i32, ptr @jiffies, align 128
  %value.i200.i = getelementptr inbounds %struct.var_t, ptr %call.i199.i, i32 0, i32 1, i32 0, i32 7
  %164 = ptrtoint ptr %value.i200.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %value.i200.i, align 4
  %call2.i.i206.i = call i32 @__msecs_to_jiffies(i32 noundef %165) #11
  %add.i209.i = add i32 %call2.i.i206.i, %163
  %call2.i210.i = call i32 @mod_timer(ptr noundef nonnull @cursor_timer, i32 noundef %add.i209.i) #11
  br label %handle_cursor_read_all.exit

handle_cursor_read_all.exit:                      ; preds = %if.else35.i, %if.then34.i, %say_sentence_num.exit165.i, %if.then28.i, %say_sentence_num.exit123.i, %if.then18.i, %sw.bb14.i, %if.end13.i, %if.then11.i, %if.then2.i, %if.then42.handle_cursor_read_all.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sentcount.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %indcount.i) #11
  br label %out

if.then46:                                        ; preds = %if.end39
  %166 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %vc_origin.i.i, align 4
  %ht.i.i = getelementptr inbounds %struct.st_spk_t, ptr %61, i32 0, i32 18
  %168 = ptrtoint ptr %ht.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %ht.i.i, align 4
  %169 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.1.i.i = getelementptr %struct.st_spk_t, ptr %170, i32 0, i32 18, i32 0, i32 1
  %171 = ptrtoint ptr %arrayidx3.1.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %arrayidx3.1.i.i, align 4
  %172 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.2.i.i = getelementptr %struct.st_spk_t, ptr %172, i32 0, i32 18, i32 0, i32 2
  %173 = ptrtoint ptr %arrayidx3.2.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %arrayidx3.2.i.i, align 4
  %174 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.3.i.i = getelementptr %struct.st_spk_t, ptr %174, i32 0, i32 18, i32 0, i32 3
  %175 = ptrtoint ptr %arrayidx3.3.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %arrayidx3.3.i.i, align 4
  %176 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.4.i.i = getelementptr %struct.st_spk_t, ptr %176, i32 0, i32 18, i32 0, i32 4
  %177 = ptrtoint ptr %arrayidx3.4.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %arrayidx3.4.i.i, align 4
  %178 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.5.i.i = getelementptr %struct.st_spk_t, ptr %178, i32 0, i32 18, i32 0, i32 5
  %179 = ptrtoint ptr %arrayidx3.5.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %arrayidx3.5.i.i, align 4
  %180 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.6.i.i = getelementptr %struct.st_spk_t, ptr %180, i32 0, i32 18, i32 0, i32 6
  %181 = ptrtoint ptr %arrayidx3.6.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %arrayidx3.6.i.i, align 4
  %182 = load ptr, ptr %arrayidx8, align 4
  %arrayidx3.7.i.i = getelementptr %struct.st_spk_t, ptr %182, i32 0, i32 18, i32 0, i32 7
  %183 = ptrtoint ptr %arrayidx3.7.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %arrayidx3.7.i.i, align 4
  %vc_rows.i.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 5
  %184 = ptrtoint ptr %vc_rows.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %vc_rows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp561.not.i.i = icmp eq i32 %185, 0
  br i1 %cmp561.not.i.i, label %if.then46.count_highlight_color.exit.i_crit_edge, label %for.body7.lr.ph.i.i

if.then46.count_highlight_color.exit.i_crit_edge: ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %count_highlight_color.exit.i

for.body7.lr.ph.i.i:                              ; preds = %if.then46
  %186 = inttoptr i32 %167 to ptr
  %vc_cols.i.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 4
  %vc_size_row.i.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 6
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.end20.i.i.for.body7.i.i_crit_edge, %for.body7.lr.ph.i.i
  %start.063.i.i = phi ptr [ %186, %for.body7.lr.ph.i.i ], [ %add.ptr21.i.i, %for.end20.i.i.for.body7.i.i_crit_edge ]
  %i.162.i.i = phi i32 [ 0, %for.body7.lr.ph.i.i ], [ %inc23.i.i, %for.end20.i.i.for.body7.i.i_crit_edge ]
  %187 = ptrtoint ptr %vc_cols.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %vc_cols.i.i, align 4
  %mul.i.i = shl i32 %188, 1
  %add.ptr.i.i = getelementptr i16, ptr %start.063.i.i, i32 %mul.i.i
  %cmp959.i.i = icmp ult ptr %start.063.i.i, %add.ptr.i.i
  br i1 %cmp959.i.i, label %for.body7.i.i.for.body11.i.i_crit_edge, label %for.body7.i.i.for.end20.i.i_crit_edge

for.body7.i.i.for.end20.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20.i.i

for.body7.i.i.for.body11.i.i_crit_edge:           ; preds = %for.body7.i.i
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %for.body7.i.i.for.body11.i.i_crit_edge
  %ptr.060.i.i = phi ptr [ %incdec.ptr.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %start.063.i.i, %for.body7.i.i.for.body11.i.i_crit_edge ]
  %189 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %vc_origin.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %ptr.060.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %190
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 1
  %call.i.i.i85 = tail call ptr @screen_pos(ptr noundef %2, i32 noundef %sub.ptr.div.i.i.i, i1 noundef zeroext true) #11
  %191 = ptrtoint ptr %call.i.i.i85 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %call.i.i.i85, align 2
  %193 = ptrtoint ptr %vc_hi_font_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %vc_hi_font_mask.i.i, align 4
  %neg.i.i.i = xor i16 %194, -1
  %and.i.i.i = and i16 %192, %neg.i.i.i
  %sum.shift.i.i = lshr i16 %and.i.i.i, 12
  %195 = and i16 %sum.shift.i.i, 7
  %196 = zext i16 %195 to i32
  %197 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx8, align 4
  %ht15.i.i = getelementptr inbounds %struct.st_spk_t, ptr %198, i32 0, i32 18
  %arrayidx17.i.i = getelementptr [8 x i32], ptr %ht15.i.i, i32 0, i32 %196
  %199 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx17.i.i, align 4
  %inc18.i.i = add i32 %200, 1
  store i32 %inc18.i.i, ptr %arrayidx17.i.i, align 4
  %incdec.ptr.i.i = getelementptr i16, ptr %ptr.060.i.i, i32 1
  %cmp9.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp9.i.i, label %for.body11.i.i.for.body11.i.i_crit_edge, label %for.body11.i.i.for.end20.i.i_crit_edge

for.body11.i.i.for.end20.i.i_crit_edge:           ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end20.i.i

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11.i.i

for.end20.i.i:                                    ; preds = %for.body11.i.i.for.end20.i.i_crit_edge, %for.body7.i.i.for.end20.i.i_crit_edge
  %201 = ptrtoint ptr %vc_size_row.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %vc_size_row.i.i, align 4
  %add.ptr21.i.i = getelementptr i16, ptr %start.063.i.i, i32 %202
  %inc23.i.i = add nuw i32 %i.162.i.i, 1
  %203 = ptrtoint ptr %vc_rows.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %vc_rows.i.i, align 4
  %cmp5.i.i = icmp ult i32 %inc23.i.i, %204
  br i1 %cmp5.i.i, label %for.end20.i.i.for.body7.i.i_crit_edge, label %for.end20.i.i.count_highlight_color.exit.i_crit_edge

for.end20.i.i.count_highlight_color.exit.i_crit_edge: ; preds = %for.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %count_highlight_color.exit.i

for.end20.i.i.for.body7.i.i_crit_edge:            ; preds = %for.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7.i.i

count_highlight_color.exit.i:                     ; preds = %for.end20.i.i.count_highlight_color.exit.i_crit_edge, %if.then46.count_highlight_color.exit.i_crit_edge
  %205 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx8, align 4
  %ht30.i.i = getelementptr inbounds %struct.st_spk_t, ptr %206, i32 0, i32 18
  %207 = ptrtoint ptr %ht30.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %ht30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp33.not.i.i = icmp ne i32 %208, 0
  %inc35.i.i = zext i1 %cmp33.not.i.i to i32
  %arrayidx32.1.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 1
  %209 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx32.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp33.not.1.i.i = icmp ne i32 %210, 0
  %inc35.1.i.i = zext i1 %cmp33.not.1.i.i to i32
  %spec.select.1.i.i = add nuw nsw i32 %inc35.1.i.i, %inc35.i.i
  %arrayidx32.2.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 2
  %211 = ptrtoint ptr %arrayidx32.2.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx32.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp33.not.2.i.i = icmp ne i32 %212, 0
  %inc35.2.i.i = zext i1 %cmp33.not.2.i.i to i32
  %spec.select.2.i.i = add nuw nsw i32 %spec.select.1.i.i, %inc35.2.i.i
  %arrayidx32.3.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 3
  %213 = ptrtoint ptr %arrayidx32.3.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx32.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp33.not.3.i.i = icmp ne i32 %214, 0
  %inc35.3.i.i = zext i1 %cmp33.not.3.i.i to i32
  %spec.select.3.i.i = add nuw nsw i32 %spec.select.2.i.i, %inc35.3.i.i
  %arrayidx32.4.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 4
  %215 = ptrtoint ptr %arrayidx32.4.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx32.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp33.not.4.i.i = icmp ne i32 %216, 0
  %inc35.4.i.i = zext i1 %cmp33.not.4.i.i to i32
  %spec.select.4.i.i = add nuw nsw i32 %spec.select.3.i.i, %inc35.4.i.i
  %arrayidx32.5.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 5
  %217 = ptrtoint ptr %arrayidx32.5.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx32.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp33.not.5.i.i = icmp ne i32 %218, 0
  %inc35.5.i.i = zext i1 %cmp33.not.5.i.i to i32
  %spec.select.5.i.i = add nuw nsw i32 %spec.select.4.i.i, %inc35.5.i.i
  %arrayidx32.6.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 6
  %219 = ptrtoint ptr %arrayidx32.6.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx32.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp33.not.6.i.i = icmp ne i32 %220, 0
  %inc35.6.i.i = zext i1 %cmp33.not.6.i.i to i32
  %spec.select.6.i.i = add nuw nsw i32 %spec.select.5.i.i, %inc35.6.i.i
  %arrayidx32.7.i.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 0, i32 7
  %221 = ptrtoint ptr %arrayidx32.7.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx32.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp33.not.7.i.i = icmp ne i32 %222, 0
  %inc35.7.i.i = zext i1 %cmp33.not.7.i.i to i32
  %spec.select.7.i.i = add nuw nsw i32 %spec.select.6.i.i, %inc35.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.7.i.i)
  %cmp.i86 = icmp eq i32 %spec.select.7.i.i, 1
  br i1 %cmp.i86, label %count_highlight_color.exit.i.speak_highlight.exit.thread_crit_edge, label %if.end.i87

count_highlight_color.exit.i.speak_highlight.exit.thread_crit_edge: ; preds = %count_highlight_color.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speak_highlight.exit.thread

if.end.i87:                                       ; preds = %count_highlight_color.exit.i
  %223 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %vc_num.i, align 4
  %conv.i88.i = zext i16 %224 to i32
  %arrayidx11.i.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %conv.i88.i
  %225 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx11.i.i, align 4
  %ht.i89.i = getelementptr inbounds %struct.st_spk_t, ptr %226, i32 0, i32 18
  %227 = ptrtoint ptr %ht.i89.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %ht.i89.i, align 4
  %arrayidx18.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 1
  %229 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx18.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %228, i32 %230)
  %cmp19.i.i = icmp ugt i32 %228, %230
  %not.cmp19.i.i = xor i1 %cmp19.i.i, true
  %spec.select.i = zext i1 %not.cmp19.i.i to i32
  %spec.select150.i = zext i1 %cmp19.i.i to i32
  %arrayidx13.186.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %spec.select150.i
  %231 = ptrtoint ptr %arrayidx13.186.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx13.186.i.i, align 4
  %arrayidx18.188.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 2
  %233 = ptrtoint ptr %arrayidx18.188.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx18.188.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %234)
  %cmp19.189.i.i = icmp ugt i32 %232, %234
  %cptr.i.sroa.34.6.i = select i1 %cmp19.189.i.i, i32 %spec.select150.i, i32 2
  %cptr.i.sroa.0.2.i = select i1 %cmp19.189.i.i, i32 2, i32 %spec.select150.i
  %arrayidx13.293.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.0.2.i
  %235 = ptrtoint ptr %arrayidx13.293.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx13.293.i.i, align 4
  %arrayidx18.295.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 3
  %237 = ptrtoint ptr %arrayidx18.295.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx18.295.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %238)
  %cmp19.296.i.i = icmp ugt i32 %236, %238
  %cptr.i.sroa.50.6.i = select i1 %cmp19.296.i.i, i32 %cptr.i.sroa.0.2.i, i32 3
  %cptr.i.sroa.0.3.i = select i1 %cmp19.296.i.i, i32 3, i32 %cptr.i.sroa.0.2.i
  %arrayidx13.3100.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.0.3.i
  %239 = ptrtoint ptr %arrayidx13.3100.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx13.3100.i.i, align 4
  %arrayidx18.3102.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 4
  %241 = ptrtoint ptr %arrayidx18.3102.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx18.3102.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %242)
  %cmp19.3103.i.i = icmp ugt i32 %240, %242
  %cptr.i.sroa.66.6.i = select i1 %cmp19.3103.i.i, i32 %cptr.i.sroa.0.3.i, i32 4
  %cptr.i.sroa.0.4.i = select i1 %cmp19.3103.i.i, i32 4, i32 %cptr.i.sroa.0.3.i
  %arrayidx13.4107.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.0.4.i
  %243 = ptrtoint ptr %arrayidx13.4107.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx13.4107.i.i, align 4
  %arrayidx18.4109.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 5
  %245 = ptrtoint ptr %arrayidx18.4109.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx18.4109.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %244, i32 %246)
  %cmp19.4110.i.i = icmp ugt i32 %244, %246
  %cptr.i.sroa.82.6.i = select i1 %cmp19.4110.i.i, i32 %cptr.i.sroa.0.4.i, i32 5
  %cptr.i.sroa.0.5.i = select i1 %cmp19.4110.i.i, i32 5, i32 %cptr.i.sroa.0.4.i
  %arrayidx13.5114.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.0.5.i
  %247 = ptrtoint ptr %arrayidx13.5114.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx13.5114.i.i, align 4
  %arrayidx18.5116.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 6
  %249 = ptrtoint ptr %arrayidx18.5116.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx18.5116.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %248, i32 %250)
  %cmp19.5117.i.i = icmp ugt i32 %248, %250
  %cptr.i.sroa.98.6.i = select i1 %cmp19.5117.i.i, i32 %cptr.i.sroa.0.5.i, i32 6
  %cptr.i.sroa.0.6.i = select i1 %cmp19.5117.i.i, i32 6, i32 %cptr.i.sroa.0.5.i
  %arrayidx13.6122.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.0.6.i
  %251 = ptrtoint ptr %arrayidx13.6122.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx13.6122.i.i, align 4
  %arrayidx18.6124.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 0, i32 7
  %253 = ptrtoint ptr %arrayidx18.6124.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx18.6124.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %254)
  %cmp19.6125.i.i = icmp ugt i32 %252, %254
  %cptr.i.sroa.114.0.i = select i1 %cmp19.6125.i.i, i32 %cptr.i.sroa.0.6.i, i32 7
  %cptr.i.sroa.0.0.i = select i1 %cmp19.6125.i.i, i32 7, i32 %cptr.i.sroa.0.6.i
  %arrayidx13.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %spec.select.i
  %255 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %arrayidx13.1.i.i, align 4
  %arrayidx18.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.6.i
  %257 = ptrtoint ptr %arrayidx18.1.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %arrayidx18.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %258)
  %cmp19.1.i.i = icmp ugt i32 %256, %258
  %cptr.i.sroa.34.0.i = select i1 %cmp19.1.i.i, i32 %spec.select.i, i32 %cptr.i.sroa.34.6.i
  %cptr.i.sroa.18.0.i = select i1 %cmp19.1.i.i, i32 %cptr.i.sroa.34.6.i, i32 %spec.select.i
  %arrayidx13.1.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.18.0.i
  %259 = ptrtoint ptr %arrayidx13.1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx13.1.1.i.i, align 4
  %arrayidx18.1.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.6.i
  %261 = ptrtoint ptr %arrayidx18.1.1.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx18.1.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %260, i32 %262)
  %cmp19.1.1.i.i = icmp ugt i32 %260, %262
  %cptr.i.sroa.50.0.i = select i1 %cmp19.1.1.i.i, i32 %cptr.i.sroa.18.0.i, i32 %cptr.i.sroa.50.6.i
  %cptr.i.sroa.18.1.i = select i1 %cmp19.1.1.i.i, i32 %cptr.i.sroa.50.6.i, i32 %cptr.i.sroa.18.0.i
  %arrayidx13.1.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.18.1.i
  %263 = ptrtoint ptr %arrayidx13.1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx13.1.2.i.i, align 4
  %arrayidx18.1.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.6.i
  %265 = ptrtoint ptr %arrayidx18.1.2.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx18.1.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %266)
  %cmp19.1.2.i.i = icmp ugt i32 %264, %266
  %cptr.i.sroa.66.0.i = select i1 %cmp19.1.2.i.i, i32 %cptr.i.sroa.18.1.i, i32 %cptr.i.sroa.66.6.i
  %cptr.i.sroa.18.2.i = select i1 %cmp19.1.2.i.i, i32 %cptr.i.sroa.66.6.i, i32 %cptr.i.sroa.18.1.i
  %arrayidx13.1.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.18.2.i
  %267 = ptrtoint ptr %arrayidx13.1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx13.1.3.i.i, align 4
  %arrayidx18.1.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.6.i
  %269 = ptrtoint ptr %arrayidx18.1.3.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %arrayidx18.1.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %268, i32 %270)
  %cmp19.1.3.i.i = icmp ugt i32 %268, %270
  %cptr.i.sroa.82.0.i = select i1 %cmp19.1.3.i.i, i32 %cptr.i.sroa.18.2.i, i32 %cptr.i.sroa.82.6.i
  %cptr.i.sroa.18.3.i = select i1 %cmp19.1.3.i.i, i32 %cptr.i.sroa.82.6.i, i32 %cptr.i.sroa.18.2.i
  %arrayidx13.1.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.18.3.i
  %271 = ptrtoint ptr %arrayidx13.1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx13.1.4.i.i, align 4
  %arrayidx18.1.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.6.i
  %273 = ptrtoint ptr %arrayidx18.1.4.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx18.1.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %272, i32 %274)
  %cmp19.1.4.i.i = icmp ugt i32 %272, %274
  %cptr.i.sroa.98.0.i = select i1 %cmp19.1.4.i.i, i32 %cptr.i.sroa.18.3.i, i32 %cptr.i.sroa.98.6.i
  %cptr.i.sroa.18.4.i = select i1 %cmp19.1.4.i.i, i32 %cptr.i.sroa.98.6.i, i32 %cptr.i.sroa.18.3.i
  %arrayidx13.1.5.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.18.4.i
  %275 = ptrtoint ptr %arrayidx13.1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx13.1.5.i.i, align 4
  %arrayidx18.1.5.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.0.i
  %277 = ptrtoint ptr %arrayidx18.1.5.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %arrayidx18.1.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %276, i32 %278)
  %cmp19.1.5.i.i = icmp ugt i32 %276, %278
  %cptr.i.sroa.114.1.i = select i1 %cmp19.1.5.i.i, i32 %cptr.i.sroa.18.4.i, i32 %cptr.i.sroa.114.0.i
  %cptr.i.sroa.18.5.i = select i1 %cmp19.1.5.i.i, i32 %cptr.i.sroa.114.0.i, i32 %cptr.i.sroa.18.4.i
  %arrayidx13.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.0.i
  %279 = ptrtoint ptr %arrayidx13.2.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx13.2.i.i, align 4
  %arrayidx18.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.0.i
  %281 = ptrtoint ptr %arrayidx18.2.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx18.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %282)
  %cmp19.2.i.i = icmp ugt i32 %280, %282
  %cptr.i.sroa.50.1.i = select i1 %cmp19.2.i.i, i32 %cptr.i.sroa.34.0.i, i32 %cptr.i.sroa.50.0.i
  %cptr.i.sroa.34.1.i = select i1 %cmp19.2.i.i, i32 %cptr.i.sroa.50.0.i, i32 %cptr.i.sroa.34.0.i
  %arrayidx13.2.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.1.i
  %283 = ptrtoint ptr %arrayidx13.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx13.2.1.i.i, align 4
  %arrayidx18.2.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.0.i
  %285 = ptrtoint ptr %arrayidx18.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx18.2.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %286)
  %cmp19.2.1.i.i = icmp ugt i32 %284, %286
  %cptr.i.sroa.66.1.i = select i1 %cmp19.2.1.i.i, i32 %cptr.i.sroa.34.1.i, i32 %cptr.i.sroa.66.0.i
  %cptr.i.sroa.34.2.i = select i1 %cmp19.2.1.i.i, i32 %cptr.i.sroa.66.0.i, i32 %cptr.i.sroa.34.1.i
  %arrayidx13.2.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.2.i
  %287 = ptrtoint ptr %arrayidx13.2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx13.2.2.i.i, align 4
  %arrayidx18.2.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.0.i
  %289 = ptrtoint ptr %arrayidx18.2.2.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx18.2.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %290)
  %cmp19.2.2.i.i = icmp ugt i32 %288, %290
  %cptr.i.sroa.82.1.i = select i1 %cmp19.2.2.i.i, i32 %cptr.i.sroa.34.2.i, i32 %cptr.i.sroa.82.0.i
  %cptr.i.sroa.34.3.i = select i1 %cmp19.2.2.i.i, i32 %cptr.i.sroa.82.0.i, i32 %cptr.i.sroa.34.2.i
  %arrayidx13.2.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.3.i
  %291 = ptrtoint ptr %arrayidx13.2.3.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx13.2.3.i.i, align 4
  %arrayidx18.2.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.0.i
  %293 = ptrtoint ptr %arrayidx18.2.3.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx18.2.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %292, i32 %294)
  %cmp19.2.3.i.i = icmp ugt i32 %292, %294
  %cptr.i.sroa.98.1.i = select i1 %cmp19.2.3.i.i, i32 %cptr.i.sroa.34.3.i, i32 %cptr.i.sroa.98.0.i
  %cptr.i.sroa.34.4.i = select i1 %cmp19.2.3.i.i, i32 %cptr.i.sroa.98.0.i, i32 %cptr.i.sroa.34.3.i
  %arrayidx13.2.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.4.i
  %295 = ptrtoint ptr %arrayidx13.2.4.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx13.2.4.i.i, align 4
  %arrayidx18.2.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.1.i
  %297 = ptrtoint ptr %arrayidx18.2.4.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx18.2.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %296, i32 %298)
  %cmp19.2.4.i.i = icmp ugt i32 %296, %298
  %cptr.i.sroa.114.2.i = select i1 %cmp19.2.4.i.i, i32 %cptr.i.sroa.34.4.i, i32 %cptr.i.sroa.114.1.i
  %cptr.i.sroa.34.5.i = select i1 %cmp19.2.4.i.i, i32 %cptr.i.sroa.114.1.i, i32 %cptr.i.sroa.34.4.i
  %arrayidx13.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.1.i
  %299 = ptrtoint ptr %arrayidx13.3.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx13.3.i.i, align 4
  %arrayidx18.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.1.i
  %301 = ptrtoint ptr %arrayidx18.3.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx18.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %302)
  %cmp19.3.i.i = icmp ugt i32 %300, %302
  %cptr.i.sroa.66.2.i = select i1 %cmp19.3.i.i, i32 %cptr.i.sroa.50.1.i, i32 %cptr.i.sroa.66.1.i
  %cptr.i.sroa.50.2.i = select i1 %cmp19.3.i.i, i32 %cptr.i.sroa.66.1.i, i32 %cptr.i.sroa.50.1.i
  %arrayidx13.3.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.2.i
  %303 = ptrtoint ptr %arrayidx13.3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx13.3.1.i.i, align 4
  %arrayidx18.3.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.1.i
  %305 = ptrtoint ptr %arrayidx18.3.1.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx18.3.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %304, i32 %306)
  %cmp19.3.1.i.i = icmp ugt i32 %304, %306
  %cptr.i.sroa.82.2.i = select i1 %cmp19.3.1.i.i, i32 %cptr.i.sroa.50.2.i, i32 %cptr.i.sroa.82.1.i
  %cptr.i.sroa.50.3.i = select i1 %cmp19.3.1.i.i, i32 %cptr.i.sroa.82.1.i, i32 %cptr.i.sroa.50.2.i
  %arrayidx13.3.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.3.i
  %307 = ptrtoint ptr %arrayidx13.3.2.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx13.3.2.i.i, align 4
  %arrayidx18.3.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.1.i
  %309 = ptrtoint ptr %arrayidx18.3.2.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx18.3.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %310)
  %cmp19.3.2.i.i = icmp ugt i32 %308, %310
  %cptr.i.sroa.98.2.i = select i1 %cmp19.3.2.i.i, i32 %cptr.i.sroa.50.3.i, i32 %cptr.i.sroa.98.1.i
  %cptr.i.sroa.50.4.i = select i1 %cmp19.3.2.i.i, i32 %cptr.i.sroa.98.1.i, i32 %cptr.i.sroa.50.3.i
  %arrayidx13.3.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.4.i
  %311 = ptrtoint ptr %arrayidx13.3.3.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx13.3.3.i.i, align 4
  %arrayidx18.3.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.2.i
  %313 = ptrtoint ptr %arrayidx18.3.3.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx18.3.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %312, i32 %314)
  %cmp19.3.3.i.i = icmp ugt i32 %312, %314
  %cptr.i.sroa.114.3.i = select i1 %cmp19.3.3.i.i, i32 %cptr.i.sroa.50.4.i, i32 %cptr.i.sroa.114.2.i
  %cptr.i.sroa.50.5.i = select i1 %cmp19.3.3.i.i, i32 %cptr.i.sroa.114.2.i, i32 %cptr.i.sroa.50.4.i
  %arrayidx13.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.2.i
  %315 = ptrtoint ptr %arrayidx13.4.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx13.4.i.i, align 4
  %arrayidx18.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.2.i
  %317 = ptrtoint ptr %arrayidx18.4.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx18.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %316, i32 %318)
  %cmp19.4.i.i = icmp ugt i32 %316, %318
  %cptr.i.sroa.82.3.i = select i1 %cmp19.4.i.i, i32 %cptr.i.sroa.66.2.i, i32 %cptr.i.sroa.82.2.i
  %cptr.i.sroa.66.3.i = select i1 %cmp19.4.i.i, i32 %cptr.i.sroa.82.2.i, i32 %cptr.i.sroa.66.2.i
  %arrayidx13.4.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.3.i
  %319 = ptrtoint ptr %arrayidx13.4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx13.4.1.i.i, align 4
  %arrayidx18.4.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.2.i
  %321 = ptrtoint ptr %arrayidx18.4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx18.4.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %322)
  %cmp19.4.1.i.i = icmp ugt i32 %320, %322
  %cptr.i.sroa.98.3.i = select i1 %cmp19.4.1.i.i, i32 %cptr.i.sroa.66.3.i, i32 %cptr.i.sroa.98.2.i
  %cptr.i.sroa.66.4.i = select i1 %cmp19.4.1.i.i, i32 %cptr.i.sroa.98.2.i, i32 %cptr.i.sroa.66.3.i
  %arrayidx13.4.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.4.i
  %323 = ptrtoint ptr %arrayidx13.4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx13.4.2.i.i, align 4
  %arrayidx18.4.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.3.i
  %325 = ptrtoint ptr %arrayidx18.4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx18.4.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %324, i32 %326)
  %cmp19.4.2.i.i = icmp ugt i32 %324, %326
  %cptr.i.sroa.114.4.i = select i1 %cmp19.4.2.i.i, i32 %cptr.i.sroa.66.4.i, i32 %cptr.i.sroa.114.3.i
  %cptr.i.sroa.66.5.i = select i1 %cmp19.4.2.i.i, i32 %cptr.i.sroa.114.3.i, i32 %cptr.i.sroa.66.4.i
  %arrayidx13.5.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.3.i
  %327 = ptrtoint ptr %arrayidx13.5.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx13.5.i.i, align 4
  %arrayidx18.5.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.3.i
  %329 = ptrtoint ptr %arrayidx18.5.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx18.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %328, i32 %330)
  %cmp19.5.i.i = icmp ugt i32 %328, %330
  %cptr.i.sroa.98.4.i = select i1 %cmp19.5.i.i, i32 %cptr.i.sroa.82.3.i, i32 %cptr.i.sroa.98.3.i
  %cptr.i.sroa.82.4.i = select i1 %cmp19.5.i.i, i32 %cptr.i.sroa.98.3.i, i32 %cptr.i.sroa.82.3.i
  %arrayidx13.5.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.4.i
  %331 = ptrtoint ptr %arrayidx13.5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx13.5.1.i.i, align 4
  %arrayidx18.5.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.4.i
  %333 = ptrtoint ptr %arrayidx18.5.1.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx18.5.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %332, i32 %334)
  %cmp19.5.1.i.i = icmp ugt i32 %332, %334
  %cptr.i.sroa.114.5.i = select i1 %cmp19.5.1.i.i, i32 %cptr.i.sroa.82.4.i, i32 %cptr.i.sroa.114.4.i
  %cptr.i.sroa.82.5.i = select i1 %cmp19.5.1.i.i, i32 %cptr.i.sroa.114.4.i, i32 %cptr.i.sroa.82.4.i
  %arrayidx13.6.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.4.i
  %335 = ptrtoint ptr %arrayidx13.6.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx13.6.i.i, align 4
  %arrayidx18.6.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.5.i
  %337 = ptrtoint ptr %arrayidx18.6.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %arrayidx18.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %336, i32 %338)
  %cmp19.6.i.i = icmp ugt i32 %336, %338
  %cptr.i.sroa.114.6.i = select i1 %cmp19.6.i.i, i32 %cptr.i.sroa.98.4.i, i32 %cptr.i.sroa.114.5.i
  %cptr.i.sroa.98.5.i = select i1 %cmp19.6.i.i, i32 %cptr.i.sroa.114.5.i, i32 %cptr.i.sroa.98.4.i
  %arrayidx39.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.0.0.i
  %339 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx39.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp40.not.i.i = icmp eq i32 %340, 0
  br i1 %cmp40.not.i.i, label %if.end.i87.for.inc53.i.i_crit_edge, label %if.then42.i.i

if.end.i87.for.inc53.i.i_crit_edge:               ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.i.i

if.then42.i.i:                                    ; preds = %if.end.i87
  %arrayidx46.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.0.0.i
  %341 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx46.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %342)
  %cmp47.not.i.i = icmp eq i32 %342, 0
  br i1 %cmp47.not.i.i, label %if.then42.i.i.for.inc53.i.i_crit_edge, label %if.then42.i.i.if.then6.i89_crit_edge

if.then42.i.i.if.then6.i89_crit_edge:             ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.i.i.for.inc53.i.i_crit_edge:            ; preds = %if.then42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.i.i

for.inc53.i.i:                                    ; preds = %if.then42.i.i.for.inc53.i.i_crit_edge, %if.end.i87.for.inc53.i.i_crit_edge
  %arrayidx39.1.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.18.5.i
  %343 = ptrtoint ptr %arrayidx39.1.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx39.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %cmp40.not.1.i.i = icmp eq i32 %344, 0
  br i1 %cmp40.not.1.i.i, label %for.inc53.i.i.for.inc53.1.i.i_crit_edge, label %if.then42.1.i.i

for.inc53.i.i.for.inc53.1.i.i_crit_edge:          ; preds = %for.inc53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.1.i.i

if.then42.1.i.i:                                  ; preds = %for.inc53.i.i
  %arrayidx46.1.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.18.5.i
  %345 = ptrtoint ptr %arrayidx46.1.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx46.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %cmp47.not.1.i.i = icmp eq i32 %346, 0
  br i1 %cmp47.not.1.i.i, label %if.then42.1.i.i.for.inc53.1.i.i_crit_edge, label %if.then42.1.i.i.if.then6.i89_crit_edge

if.then42.1.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.1.i.i.for.inc53.1.i.i_crit_edge:        ; preds = %if.then42.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.1.i.i

for.inc53.1.i.i:                                  ; preds = %if.then42.1.i.i.for.inc53.1.i.i_crit_edge, %for.inc53.i.i.for.inc53.1.i.i_crit_edge
  %arrayidx39.2.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.34.5.i
  %347 = ptrtoint ptr %arrayidx39.2.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %arrayidx39.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %cmp40.not.2.i.i = icmp eq i32 %348, 0
  br i1 %cmp40.not.2.i.i, label %for.inc53.1.i.i.for.inc53.2.i.i_crit_edge, label %if.then42.2.i.i

for.inc53.1.i.i.for.inc53.2.i.i_crit_edge:        ; preds = %for.inc53.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.2.i.i

if.then42.2.i.i:                                  ; preds = %for.inc53.1.i.i
  %arrayidx46.2.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.34.5.i
  %349 = ptrtoint ptr %arrayidx46.2.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx46.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %cmp47.not.2.i.i = icmp eq i32 %350, 0
  br i1 %cmp47.not.2.i.i, label %if.then42.2.i.i.for.inc53.2.i.i_crit_edge, label %if.then42.2.i.i.if.then6.i89_crit_edge

if.then42.2.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.2.i.i.for.inc53.2.i.i_crit_edge:        ; preds = %if.then42.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.2.i.i

for.inc53.2.i.i:                                  ; preds = %if.then42.2.i.i.for.inc53.2.i.i_crit_edge, %for.inc53.1.i.i.for.inc53.2.i.i_crit_edge
  %arrayidx39.3.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.50.5.i
  %351 = ptrtoint ptr %arrayidx39.3.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %arrayidx39.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %cmp40.not.3.i.i = icmp eq i32 %352, 0
  br i1 %cmp40.not.3.i.i, label %for.inc53.2.i.i.for.inc53.3.i.i_crit_edge, label %if.then42.3.i.i

for.inc53.2.i.i.for.inc53.3.i.i_crit_edge:        ; preds = %for.inc53.2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.3.i.i

if.then42.3.i.i:                                  ; preds = %for.inc53.2.i.i
  %arrayidx46.3.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.50.5.i
  %353 = ptrtoint ptr %arrayidx46.3.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx46.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp47.not.3.i.i = icmp eq i32 %354, 0
  br i1 %cmp47.not.3.i.i, label %if.then42.3.i.i.for.inc53.3.i.i_crit_edge, label %if.then42.3.i.i.if.then6.i89_crit_edge

if.then42.3.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.3.i.i.for.inc53.3.i.i_crit_edge:        ; preds = %if.then42.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.3.i.i

for.inc53.3.i.i:                                  ; preds = %if.then42.3.i.i.for.inc53.3.i.i_crit_edge, %for.inc53.2.i.i.for.inc53.3.i.i_crit_edge
  %arrayidx39.4.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.66.5.i
  %355 = ptrtoint ptr %arrayidx39.4.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx39.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %cmp40.not.4.i.i = icmp eq i32 %356, 0
  br i1 %cmp40.not.4.i.i, label %for.inc53.3.i.i.for.inc53.4.i.i_crit_edge, label %if.then42.4.i.i

for.inc53.3.i.i.for.inc53.4.i.i_crit_edge:        ; preds = %for.inc53.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.4.i.i

if.then42.4.i.i:                                  ; preds = %for.inc53.3.i.i
  %arrayidx46.4.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.66.5.i
  %357 = ptrtoint ptr %arrayidx46.4.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %arrayidx46.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %cmp47.not.4.i.i = icmp eq i32 %358, 0
  br i1 %cmp47.not.4.i.i, label %if.then42.4.i.i.for.inc53.4.i.i_crit_edge, label %if.then42.4.i.i.if.then6.i89_crit_edge

if.then42.4.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.4.i.i.for.inc53.4.i.i_crit_edge:        ; preds = %if.then42.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.4.i.i

for.inc53.4.i.i:                                  ; preds = %if.then42.4.i.i.for.inc53.4.i.i_crit_edge, %for.inc53.3.i.i.for.inc53.4.i.i_crit_edge
  %arrayidx39.5.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.82.5.i
  %359 = ptrtoint ptr %arrayidx39.5.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx39.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %cmp40.not.5.i.i = icmp eq i32 %360, 0
  br i1 %cmp40.not.5.i.i, label %for.inc53.4.i.i.for.inc53.5.i.i_crit_edge, label %if.then42.5.i.i

for.inc53.4.i.i.for.inc53.5.i.i_crit_edge:        ; preds = %for.inc53.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.5.i.i

if.then42.5.i.i:                                  ; preds = %for.inc53.4.i.i
  %arrayidx46.5.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.82.5.i
  %361 = ptrtoint ptr %arrayidx46.5.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx46.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %cmp47.not.5.i.i = icmp eq i32 %362, 0
  br i1 %cmp47.not.5.i.i, label %if.then42.5.i.i.for.inc53.5.i.i_crit_edge, label %if.then42.5.i.i.if.then6.i89_crit_edge

if.then42.5.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.5.i.i.for.inc53.5.i.i_crit_edge:        ; preds = %if.then42.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.5.i.i

for.inc53.5.i.i:                                  ; preds = %if.then42.5.i.i.for.inc53.5.i.i_crit_edge, %for.inc53.4.i.i.for.inc53.5.i.i_crit_edge
  %arrayidx39.6.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.98.5.i
  %363 = ptrtoint ptr %arrayidx39.6.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx39.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp40.not.6.i.i = icmp eq i32 %364, 0
  br i1 %cmp40.not.6.i.i, label %for.inc53.5.i.i.for.inc53.6.i.i_crit_edge, label %if.then42.6.i.i

for.inc53.5.i.i.for.inc53.6.i.i_crit_edge:        ; preds = %for.inc53.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.6.i.i

if.then42.6.i.i:                                  ; preds = %for.inc53.5.i.i
  %arrayidx46.6.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.98.5.i
  %365 = ptrtoint ptr %arrayidx46.6.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %arrayidx46.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %cmp47.not.6.i.i = icmp eq i32 %366, 0
  br i1 %cmp47.not.6.i.i, label %if.then42.6.i.i.for.inc53.6.i.i_crit_edge, label %if.then42.6.i.i.if.then6.i89_crit_edge

if.then42.6.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.6.i.i.for.inc53.6.i.i_crit_edge:        ; preds = %if.then42.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc53.6.i.i

for.inc53.6.i.i:                                  ; preds = %if.then42.6.i.i.for.inc53.6.i.i_crit_edge, %for.inc53.5.i.i.for.inc53.6.i.i_crit_edge
  %arrayidx39.7.i.i = getelementptr [8 x i32], ptr %ht.i89.i, i32 0, i32 %cptr.i.sroa.114.6.i
  %367 = ptrtoint ptr %arrayidx39.7.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx39.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %cmp40.not.7.i.i = icmp eq i32 %368, 0
  br i1 %cmp40.not.7.i.i, label %for.inc53.6.i.i.speak_highlight.exit.thread_crit_edge, label %if.then42.7.i.i

for.inc53.6.i.i.speak_highlight.exit.thread_crit_edge: ; preds = %for.inc53.6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speak_highlight.exit.thread

if.then42.7.i.i:                                  ; preds = %for.inc53.6.i.i
  %arrayidx46.7.i.i = getelementptr %struct.st_spk_t, ptr %226, i32 0, i32 18, i32 2, i32 %cptr.i.sroa.114.6.i
  %369 = ptrtoint ptr %arrayidx46.7.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx46.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %cmp47.not.7.i.i = icmp eq i32 %370, 0
  br i1 %cmp47.not.7.i.i, label %if.then42.7.i.i.speak_highlight.exit.thread_crit_edge, label %if.then42.7.i.i.if.then6.i89_crit_edge

if.then42.7.i.i.if.then6.i89_crit_edge:           ; preds = %if.then42.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6.i89

if.then42.7.i.i.speak_highlight.exit.thread_crit_edge: ; preds = %if.then42.7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %speak_highlight.exit.thread

if.then6.i89:                                     ; preds = %if.then42.7.i.i.if.then6.i89_crit_edge, %if.then42.6.i.i.if.then6.i89_crit_edge, %if.then42.5.i.i.if.then6.i89_crit_edge, %if.then42.4.i.i.if.then6.i89_crit_edge, %if.then42.3.i.i.if.then6.i89_crit_edge, %if.then42.2.i.i.if.then6.i89_crit_edge, %if.then42.1.i.i.if.then6.i89_crit_edge, %if.then42.i.i.if.then6.i89_crit_edge
  %retval.0.i.ph.i = phi i32 [ %cptr.i.sroa.114.6.i, %if.then42.7.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.98.5.i, %if.then42.6.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.82.5.i, %if.then42.5.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.66.5.i, %if.then42.4.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.50.5.i, %if.then42.3.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.34.5.i, %if.then42.2.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.18.5.i, %if.then42.1.i.i.if.then6.i89_crit_edge ], [ %cptr.i.sroa.0.0.i, %if.then42.i.i.if.then6.i89_crit_edge ]
  %371 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %y.i, align 4
  %cy.i = getelementptr inbounds %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 6
  %373 = ptrtoint ptr %cy.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %cy.i, align 4
  %sub.i = sub i32 %372, %374
  %375 = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %375, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %sub.i, label %if.then6.i89.if.then49_crit_edge [
    i32 1, label %if.then6.i89.if.then11.i90_crit_edge
    i32 -1, label %if.then6.i89.if.then11.i90_crit_edge107
  ]

if.then6.i89.if.then11.i90_crit_edge107:          ; preds = %if.then6.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i90

if.then6.i89.if.then11.i90_crit_edge:             ; preds = %if.then6.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i90

if.then6.i89.if.then49_crit_edge:                 ; preds = %if.then6.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

if.then11.i90:                                    ; preds = %if.then6.i89.if.then11.i90_crit_edge, %if.then6.i89.if.then11.i90_crit_edge107
  %arrayidx14.i = getelementptr %struct.st_spk_t, ptr %206, i32 0, i32 18, i32 5, i32 %retval.0.i.ph.i
  %376 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %377, i32 %372)
  %cmp17.not.i = icmp eq i32 %377, %372
  br i1 %cmp17.not.i, label %if.then11.i90.if.then49_crit_edge, label %if.then11.i90.speak_highlight.exit.thread_crit_edge

if.then11.i90.speak_highlight.exit.thread_crit_edge: ; preds = %if.then11.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %speak_highlight.exit.thread

if.then11.i90.if.then49_crit_edge:                ; preds = %if.then11.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

speak_highlight.exit.thread:                      ; preds = %if.then11.i90.speak_highlight.exit.thread_crit_edge, %if.then42.7.i.i.speak_highlight.exit.thread_crit_edge, %for.inc53.6.i.i.speak_highlight.exit.thread_crit_edge, %count_highlight_color.exit.i.speak_highlight.exit.thread_crit_edge
  %.pr = load i32, ptr @cursor_track, align 4
  br label %if.end51

if.then49:                                        ; preds = %if.then11.i90.if.then49_crit_edge, %if.then6.i89.if.then49_crit_edge
  %parked.i = getelementptr inbounds %struct.st_spk_t, ptr %226, i32 0, i32 16
  %378 = ptrtoint ptr %parked.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %parked.i, align 4
  %380 = or i8 %379, 1
  store i8 %380, ptr %parked.i, align 4
  tail call void @spk_do_flush() #11
  %381 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %arrayidx8, align 4
  %arrayidx28.i = getelementptr %struct.st_spk_t, ptr %382, i32 0, i32 18, i32 1, i32 %retval.0.i.ph.i
  %arrayidx31.i = getelementptr %struct.st_spk_t, ptr %382, i32 0, i32 18, i32 2, i32 %retval.0.i.ph.i
  %383 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %arrayidx31.i, align 4
  tail call fastcc void @spkup_write(ptr noundef %arrayidx28.i, i32 noundef %384) #11
  %385 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx8, align 4
  %arrayidx34.i = getelementptr %struct.st_spk_t, ptr %386, i32 0, i32 18, i32 3, i32 %retval.0.i.ph.i
  %387 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %arrayidx34.i, align 4
  %389 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %vc_num.i, align 4
  %idxprom36.i = zext i16 %390 to i32
  %arrayidx37.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom36.i
  %391 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %arrayidx37.i, align 4
  %cursor_pos.i91 = getelementptr inbounds %struct.st_spk_t, ptr %392, i32 0, i32 5
  %393 = ptrtoint ptr %cursor_pos.i91 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %388, ptr %cursor_pos.i91, align 4
  %394 = load i16, ptr %vc_num.i, align 4
  %idxprom39.i = zext i16 %394 to i32
  %arrayidx40.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom39.i
  %395 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %arrayidx40.i, align 4
  %reading_pos.i92 = getelementptr inbounds %struct.st_spk_t, ptr %396, i32 0, i32 4
  %397 = ptrtoint ptr %reading_pos.i92 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %388, ptr %reading_pos.i92, align 4
  %398 = load ptr, ptr %arrayidx8, align 4
  %arrayidx43.i = getelementptr %struct.st_spk_t, ptr %398, i32 0, i32 18, i32 4, i32 %retval.0.i.ph.i
  %399 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %arrayidx43.i, align 4
  %401 = load i16, ptr %vc_num.i, align 4
  %idxprom45.i = zext i16 %401 to i32
  %arrayidx46.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom45.i
  %402 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %arrayidx46.i, align 4
  %cursor_x.i93 = getelementptr inbounds %struct.st_spk_t, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %cursor_x.i93 to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %400, ptr %cursor_x.i93, align 4
  %405 = load i16, ptr %vc_num.i, align 4
  %idxprom48.i = zext i16 %405 to i32
  %arrayidx49.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom48.i
  %406 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arrayidx49.i, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %400, ptr %407, align 4
  %409 = load ptr, ptr %arrayidx8, align 4
  %arrayidx53.i = getelementptr %struct.st_spk_t, ptr %409, i32 0, i32 18, i32 5, i32 %retval.0.i.ph.i
  %410 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx53.i, align 4
  %412 = load i16, ptr %vc_num.i, align 4
  %idxprom55.i = zext i16 %412 to i32
  %arrayidx56.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom55.i
  %413 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %arrayidx56.i, align 4
  %cursor_y.i94 = getelementptr inbounds %struct.st_spk_t, ptr %414, i32 0, i32 3
  %415 = ptrtoint ptr %cursor_y.i94 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %411, ptr %cursor_y.i94, align 4
  %416 = load i16, ptr %vc_num.i, align 4
  %idxprom58.i = zext i16 %416 to i32
  %arrayidx59.i = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom58.i
  %417 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %arrayidx59.i, align 4
  %reading_y.i95 = getelementptr inbounds %struct.st_spk_t, ptr %418, i32 0, i32 2
  %419 = ptrtoint ptr %reading_y.i95 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %411, ptr %reading_y.i95, align 4
  store i32 0, ptr @spk_keydown, align 4
  store i8 0, ptr @is_cursor, align 1
  br label %out

if.end51:                                         ; preds = %speak_highlight.exit.thread, %if.end39.if.end51_crit_edge
  %420 = phi i32 [ %.pr, %speak_highlight.exit.thread ], [ %76, %if.end39.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %420)
  %cmp52 = icmp eq i32 %420, 3
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @speakup_win_say(ptr noundef %2)
  br label %if.end64

if.else:                                          ; preds = %if.end51
  %421 = load i8, ptr @is_cursor, align 1
  %422 = zext i8 %421 to i64
  call void @__sanitizer_cov_trace_switch(i64 %422, ptr @__sancov_gen_cov_switch_values.323)
  switch i8 %421, label %if.else62 [
    i8 1, label %if.else.if.then61_crit_edge
    i8 4, label %if.else.if.then61_crit_edge108
  ]

if.else.if.then61_crit_edge108:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

if.else.if.then61_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

if.then61:                                        ; preds = %if.else.if.then61_crit_edge, %if.else.if.then61_crit_edge108
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 4
  %423 = ptrtoint ptr %vc_cols to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %vc_cols, align 4
  %425 = ptrtoint ptr %vc_origin.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %vc_origin.i.i, align 4
  %427 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %vc_num.i, align 4
  %idxprom.i97 = zext i16 %428 to i32
  %arrayidx.i98 = getelementptr [63 x ptr], ptr @speakup_console, i32 0, i32 %idxprom.i97
  %429 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx.i98, align 4
  %reading_y.i99 = getelementptr inbounds %struct.st_spk_t, ptr %430, i32 0, i32 2
  %431 = ptrtoint ptr %reading_y.i99 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %reading_y.i99, align 4
  %vc_size_row.i = getelementptr inbounds %struct.vc_data, ptr %2, i32 0, i32 6
  %433 = ptrtoint ptr %vc_size_row.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %vc_size_row.i, align 4
  %mul.i = mul i32 %434, %432
  %add.i100 = add i32 %mul.i, %426
  %mul1.i = shl i32 %424, 1
  %add2.i = add i32 %add.i100, %mul1.i
  %call.i = tail call fastcc i32 @say_from_to(ptr noundef %2, i32 noundef %add.i100, i32 noundef %add2.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i101 = icmp slt i32 %call.i, 1
  br i1 %cmp.i101, label %if.then.i102, label %if.then61.if.end64_crit_edge

if.then61.if.end64_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then.i102:                                     ; preds = %if.then61
  %435 = load i32, ptr @cursor_track, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %435)
  %cmp5.not.i = icmp eq i32 %435, 4
  br i1 %cmp5.not.i, label %if.then.i102.if.end64_crit_edge, label %if.then6.i103

if.then.i102.if.end64_crit_edge:                  ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then6.i103:                                    ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i = tail call ptr @spk_msg_get(i32 noundef 0) #11
  tail call void (ptr, ...) @synth_printf(ptr noundef nonnull @.str.245, ptr noundef %call7.i) #11
  br label %if.end64

if.else62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @say_char(ptr noundef %2)
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then6.i103, %if.then.i102.if.end64_crit_edge, %if.then61.if.end64_crit_edge, %if.then54
  store i32 0, ptr @spk_keydown, align 4
  store i8 0, ptr @is_cursor, align 1
  br label %out

out:                                              ; preds = %if.end64, %if.then49, %handle_cursor_read_all.exit, %if.then37, %if.then
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_get_index_count(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_initialize_msgs() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_strlwr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_register_var(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_set_mask_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @speakup_add_virtual_keyboard() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @speakup_kobj_init() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_ttyio_register_ldisc() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_register_devsynth() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_keyboard_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vt_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @speakup_thread(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 379)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 379)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !508, !509, !511, !512, !513, !514, !516, !517, !519, !520, !522, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !578, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !648, !649, !650, !652, !654, !656, !658, !660, !661, !662, !663, !665, !666, !667, !669, !670, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !778, !780, !781, !782, !783, !785, !786, !787}
!llvm.module.flags = !{!789, !790, !791, !792, !793, !794, !795, !796}
!llvm.ident = !{!797}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/main.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_author233, !3, !"__UNIQUE_ID_author233", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/main.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_description234, !5, !"__UNIQUE_ID_description234", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/main.c", i32 47, i32 1}
!6 = !{ptr @__UNIQUE_ID_file235, !7, !"__UNIQUE_ID_file235", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/main.c", i32 48, i32 1}
!8 = !{ptr @__UNIQUE_ID_license236, !7, !"__UNIQUE_ID_license236", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_version237, !10, !"__UNIQUE_ID_version237", i1 false, i1 false}
!10 = !{!"../drivers/accessibility/speakup/main.c", i32 49, i32 1}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__modver_attr, !10, !"__modver_attr", i1 false, i1 false}
!15 = !{ptr @__param_synth, !16, !"__param_synth", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/main.c", i32 52, i32 1}
!17 = !{ptr @__UNIQUE_ID_synthtype238, !16, !"__UNIQUE_ID_synthtype238", i1 false, i1 false}
!18 = !{ptr @__param_quiet, !19, !"__param_quiet", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/main.c", i32 53, i32 1}
!20 = !{ptr @__UNIQUE_ID_quiettype239, !19, !"__UNIQUE_ID_quiettype239", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_synth240, !22, !"__UNIQUE_ID_synth240", i1 false, i1 false}
!22 = !{!"../drivers/accessibility/speakup/main.c", i32 55, i32 1}
!23 = !{ptr @__UNIQUE_ID_quiet241, !24, !"__UNIQUE_ID_quiet241", i1 false, i1 false}
!24 = !{!"../drivers/accessibility/speakup/main.c", i32 56, i32 1}
!25 = !{ptr @spk_bleep_time, !26, !"spk_bleep_time", i1 false, i1 false}
!26 = !{!"../drivers/accessibility/speakup/main.c", i32 62, i32 35}
!27 = !{ptr @spk_str_caps_start, !28, !"spk_str_caps_start", i1 false, i1 false}
!28 = !{!"../drivers/accessibility/speakup/main.c", i32 68, i32 6}
!29 = !{ptr @spk_str_caps_stop, !30, !"spk_str_caps_stop", i1 false, i1 false}
!30 = !{!"../drivers/accessibility/speakup/main.c", i32 69, i32 6}
!31 = !{ptr @spk_str_pause, !32, !"spk_str_pause", i1 false, i1 false}
!32 = !{!"../drivers/accessibility/speakup/main.c", i32 70, i32 6}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/accessibility/speakup/main.c", i32 73, i32 3}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/accessibility/speakup/main.c", i32 73, i32 11}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/accessibility/speakup/main.c", i32 74, i32 3}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/accessibility/speakup/main.c", i32 74, i32 11}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/accessibility/speakup/main.c", i32 75, i32 3}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/accessibility/speakup/main.c", i32 75, i32 11}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/accessibility/speakup/main.c", i32 76, i32 3}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/accessibility/speakup/main.c", i32 76, i32 10}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/accessibility/speakup/main.c", i32 77, i32 3}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/accessibility/speakup/main.c", i32 78, i32 3}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/accessibility/speakup/main.c", i32 78, i32 14}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/accessibility/speakup/main.c", i32 79, i32 3}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/accessibility/speakup/main.c", i32 80, i32 3}
!59 = !{ptr @spk_punc_info, !60, !"spk_punc_info", i1 false, i1 false}
!60 = !{!"../drivers/accessibility/speakup/main.c", i32 72, i32 27}
!61 = !{ptr @spk_key_defaults, !62, !"spk_key_defaults", i1 false, i1 false}
!62 = !{!"../drivers/accessibility/speakup/main.c", i32 89, i32 14}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 9}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 17}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 23}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 29}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 35}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 41}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 47}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/accessibility/speakup/main.c", i32 125, i32 53}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 9}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 15}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 21}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 27}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 33}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 39}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 45}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/accessibility/speakup/main.c", i32 126, i32 51}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 9}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 15}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 21}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 27}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 33}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 39}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 45}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/accessibility/speakup/main.c", i32 127, i32 51}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/accessibility/speakup/main.c", i32 128, i32 9}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/accessibility/speakup/main.c", i32 128, i32 15}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/accessibility/speakup/main.c", i32 128, i32 21}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/accessibility/speakup/main.c", i32 128, i32 27}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 9}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 18}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 27}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 36}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 46}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 56}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/accessibility/speakup/main.c", i32 130, i32 67}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/accessibility/speakup/main.c", i32 131, i32 6}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/accessibility/speakup/main.c", i32 132, i32 9}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/accessibility/speakup/main.c", i32 132, i32 23}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/accessibility/speakup/main.c", i32 132, i32 38}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/accessibility/speakup/main.c", i32 132, i32 46}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/accessibility/speakup/main.c", i32 132, i32 54}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/accessibility/speakup/main.c", i32 132, i32 63}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/accessibility/speakup/main.c", i32 133, i32 6}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/accessibility/speakup/main.c", i32 134, i32 2}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 9}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 17}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 24}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 31}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 40}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 48}
!163 = !{ptr @.str.66, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 56}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/accessibility/speakup/main.c", i32 135, i32 63}
!167 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/accessibility/speakup/main.c", i32 136, i32 2}
!169 = !{ptr @.str.69, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/accessibility/speakup/main.c", i32 136, i32 11}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 9}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 18}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 27}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 35}
!179 = !{ptr @.str.74, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 45}
!181 = !{ptr @.str.75, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 56}
!183 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/accessibility/speakup/main.c", i32 137, i32 68}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 9}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 17}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 22}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 27}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 32}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 37}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/accessibility/speakup/main.c", i32 138, i32 42}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 9}
!201 = !{ptr @.str.85, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 14}
!203 = !{ptr @.str.86, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 19}
!205 = !{ptr @.str.87, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 24}
!207 = !{ptr @.str.88, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 29}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 34}
!211 = !{ptr @.str.90, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 39}
!213 = !{ptr @.str.91, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/accessibility/speakup/main.c", i32 139, i32 44}
!215 = !{ptr @.str.92, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 9}
!217 = !{ptr @.str.93, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 14}
!219 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 19}
!221 = !{ptr @.str.95, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 24}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 29}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 34}
!227 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 39}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 44}
!231 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/accessibility/speakup/main.c", i32 140, i32 49}
!233 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/accessibility/speakup/main.c", i32 141, i32 9}
!235 = !{ptr @.str.102, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/accessibility/speakup/main.c", i32 141, i32 14}
!237 = !{ptr @.str.103, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/accessibility/speakup/main.c", i32 141, i32 21}
!239 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/accessibility/speakup/main.c", i32 141, i32 37}
!241 = !{ptr @.str.105, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/accessibility/speakup/main.c", i32 141, i32 50}
!243 = !{ptr @.str.106, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/accessibility/speakup/main.c", i32 142, i32 6}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/accessibility/speakup/main.c", i32 143, i32 2}
!247 = !{ptr @.str.108, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 9}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 19}
!251 = !{ptr @.str.110, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 24}
!253 = !{ptr @.str.111, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 29}
!255 = !{ptr @.str.112, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 34}
!257 = !{ptr @.str.113, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 39}
!259 = !{ptr @.str.114, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 44}
!261 = !{ptr @.str.115, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/accessibility/speakup/main.c", i32 144, i32 49}
!263 = !{ptr @.str.116, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 9}
!265 = !{ptr @.str.117, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 14}
!267 = !{ptr @.str.118, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 19}
!269 = !{ptr @.str.119, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 24}
!271 = !{ptr @.str.120, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 29}
!273 = !{ptr @.str.121, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 34}
!275 = !{ptr @.str.122, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 39}
!277 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/accessibility/speakup/main.c", i32 145, i32 44}
!279 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 9}
!281 = !{ptr @.str.125, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 14}
!283 = !{ptr @.str.126, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 19}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 24}
!287 = !{ptr @.str.128, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 29}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 34}
!291 = !{ptr @.str.130, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 39}
!293 = !{ptr @.str.131, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/accessibility/speakup/main.c", i32 146, i32 44}
!295 = !{ptr @.str.132, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 9}
!297 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 14}
!299 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 19}
!301 = !{ptr @.str.135, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 26}
!303 = !{ptr @.str.136, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 40}
!305 = !{ptr @.str.137, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 47}
!307 = !{ptr @.str.138, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/accessibility/speakup/main.c", i32 147, i32 62}
!309 = !{ptr @.str.139, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/accessibility/speakup/main.c", i32 148, i32 9}
!311 = !{ptr @.str.140, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/accessibility/speakup/main.c", i32 155, i32 9}
!313 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/accessibility/speakup/main.c", i32 155, i32 17}
!315 = !{ptr @.str.142, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/accessibility/speakup/main.c", i32 156, i32 9}
!317 = !{ptr @.str.143, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/accessibility/speakup/main.c", i32 156, i32 18}
!319 = !{ptr @.str.144, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/accessibility/speakup/main.c", i32 156, i32 28}
!321 = !{ptr @.str.145, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/accessibility/speakup/main.c", i32 156, i32 40}
!323 = !{ptr @.str.146, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/accessibility/speakup/main.c", i32 156, i32 47}
!325 = !{ptr @.str.147, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/accessibility/speakup/main.c", i32 156, i32 61}
!327 = !{ptr @.str.148, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/accessibility/speakup/main.c", i32 157, i32 9}
!329 = !{ptr @.str.149, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/accessibility/speakup/main.c", i32 157, i32 22}
!331 = !{ptr @.str.150, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/accessibility/speakup/main.c", i32 157, i32 35}
!333 = !{ptr @.str.151, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/accessibility/speakup/main.c", i32 157, i32 53}
!335 = !{ptr @.str.152, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/accessibility/speakup/main.c", i32 158, i32 9}
!337 = !{ptr @.str.153, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/accessibility/speakup/main.c", i32 158, i32 16}
!339 = !{ptr @.str.154, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/accessibility/speakup/main.c", i32 158, i32 31}
!341 = !{ptr @.str.155, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/accessibility/speakup/main.c", i32 158, i32 45}
!343 = !{ptr @.str.156, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/accessibility/speakup/main.c", i32 159, i32 9}
!345 = !{ptr @.str.157, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/accessibility/speakup/main.c", i32 159, i32 20}
!347 = !{ptr @.str.158, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/accessibility/speakup/main.c", i32 159, i32 37}
!349 = !{ptr @.str.159, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/accessibility/speakup/main.c", i32 159, i32 50}
!351 = !{ptr @.str.160, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/accessibility/speakup/main.c", i32 160, i32 9}
!353 = !{ptr @.str.161, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/accessibility/speakup/main.c", i32 160, i32 25}
!355 = !{ptr @.str.162, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/accessibility/speakup/main.c", i32 160, i32 34}
!357 = !{ptr @.str.163, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/accessibility/speakup/main.c", i32 160, i32 45}
!359 = !{ptr @.str.164, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/accessibility/speakup/main.c", i32 161, i32 9}
!361 = !{ptr @.str.165, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/accessibility/speakup/main.c", i32 161, i32 20}
!363 = !{ptr @.str.166, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/accessibility/speakup/main.c", i32 161, i32 33}
!365 = !{ptr @.str.167, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/accessibility/speakup/main.c", i32 161, i32 49}
!367 = !{ptr @.str.168, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/accessibility/speakup/main.c", i32 162, i32 9}
!369 = !{ptr @.str.169, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/accessibility/speakup/main.c", i32 162, i32 24}
!371 = !{ptr @.str.170, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/accessibility/speakup/main.c", i32 162, i32 36}
!373 = !{ptr @.str.171, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/accessibility/speakup/main.c", i32 163, i32 6}
!375 = !{ptr @.str.172, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/accessibility/speakup/main.c", i32 164, i32 9}
!377 = !{ptr @.str.173, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/accessibility/speakup/main.c", i32 164, i32 20}
!379 = !{ptr @.str.174, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/accessibility/speakup/main.c", i32 164, i32 31}
!381 = !{ptr @.str.175, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/accessibility/speakup/main.c", i32 164, i32 47}
!383 = !{ptr @.str.176, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/accessibility/speakup/main.c", i32 164, i32 58}
!385 = !{ptr @.str.177, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/accessibility/speakup/main.c", i32 165, i32 6}
!387 = !{ptr @.str.178, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/accessibility/speakup/main.c", i32 166, i32 9}
!389 = !{ptr @.str.179, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/accessibility/speakup/main.c", i32 166, i32 15}
!391 = !{ptr @.str.180, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/accessibility/speakup/main.c", i32 166, i32 28}
!393 = !{ptr @.str.181, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/accessibility/speakup/main.c", i32 166, i32 39}
!395 = !{ptr @.str.182, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/accessibility/speakup/main.c", i32 166, i32 50}
!397 = !{ptr @.str.183, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/accessibility/speakup/main.c", i32 167, i32 6}
!399 = !{ptr @.str.184, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/accessibility/speakup/main.c", i32 168, i32 9}
!401 = !{ptr @.str.185, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/accessibility/speakup/main.c", i32 168, i32 20}
!403 = !{ptr @.str.186, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/accessibility/speakup/main.c", i32 168, i32 31}
!405 = !{ptr @.str.187, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/accessibility/speakup/main.c", i32 168, i32 47}
!407 = !{ptr @.str.188, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/accessibility/speakup/main.c", i32 168, i32 60}
!409 = !{ptr @.str.189, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/accessibility/speakup/main.c", i32 169, i32 6}
!411 = !{ptr @.str.190, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/accessibility/speakup/main.c", i32 170, i32 9}
!413 = !{ptr @.str.191, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/accessibility/speakup/main.c", i32 170, i32 20}
!415 = !{ptr @.str.192, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/accessibility/speakup/main.c", i32 170, i32 31}
!417 = !{ptr @.str.193, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/accessibility/speakup/main.c", i32 170, i32 47}
!419 = !{ptr @.str.194, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/accessibility/speakup/main.c", i32 170, i32 58}
!421 = !{ptr @.str.195, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/accessibility/speakup/main.c", i32 171, i32 9}
!423 = !{ptr @.str.196, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/accessibility/speakup/main.c", i32 171, i32 26}
!425 = !{ptr @.str.197, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/accessibility/speakup/main.c", i32 171, i32 38}
!427 = !{ptr @.str.198, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/accessibility/speakup/main.c", i32 171, i32 49}
!429 = !{ptr @.str.199, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/accessibility/speakup/main.c", i32 172, i32 6}
!431 = !{ptr @.str.200, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/accessibility/speakup/main.c", i32 173, i32 9}
!433 = !{ptr @.str.201, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/accessibility/speakup/main.c", i32 173, i32 22}
!435 = !{ptr @.str.202, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/accessibility/speakup/main.c", i32 173, i32 33}
!437 = !{ptr @.str.203, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/accessibility/speakup/main.c", i32 173, i32 42}
!439 = !{ptr @.str.204, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/accessibility/speakup/main.c", i32 173, i32 53}
!441 = !{ptr @.str.205, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/accessibility/speakup/main.c", i32 174, i32 9}
!443 = !{ptr @.str.206, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/accessibility/speakup/main.c", i32 174, i32 20}
!445 = !{ptr @.str.207, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/accessibility/speakup/main.c", i32 174, i32 36}
!447 = !{ptr @.str.208, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/accessibility/speakup/main.c", i32 174, i32 47}
!449 = !{ptr @.str.209, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/accessibility/speakup/main.c", i32 174, i32 60}
!451 = !{ptr @.str.210, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/accessibility/speakup/main.c", i32 175, i32 9}
!453 = !{ptr @.str.211, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/accessibility/speakup/main.c", i32 175, i32 15}
!455 = !{ptr @.str.212, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/accessibility/speakup/main.c", i32 175, i32 28}
!457 = !{ptr @.str.213, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/accessibility/speakup/main.c", i32 175, i32 39}
!459 = !{ptr @.str.214, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/accessibility/speakup/main.c", i32 176, i32 9}
!461 = !{ptr @.str.215, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/accessibility/speakup/main.c", i32 176, i32 25}
!463 = !{ptr @.str.216, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/accessibility/speakup/main.c", i32 176, i32 38}
!465 = !{ptr @.str.217, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/accessibility/speakup/main.c", i32 176, i32 49}
!467 = !{ptr @.str.218, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/accessibility/speakup/main.c", i32 177, i32 6}
!469 = !{ptr @.str.219, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/accessibility/speakup/main.c", i32 178, i32 9}
!471 = !{ptr @.str.220, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/accessibility/speakup/main.c", i32 178, i32 22}
!473 = !{ptr @.str.221, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/accessibility/speakup/main.c", i32 178, i32 29}
!475 = !{ptr @.str.222, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/accessibility/speakup/main.c", i32 178, i32 40}
!477 = !{ptr @.str.223, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/accessibility/speakup/main.c", i32 178, i32 51}
!479 = !{ptr @.str.224, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/accessibility/speakup/main.c", i32 179, i32 6}
!481 = !{ptr @.str.225, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/accessibility/speakup/main.c", i32 180, i32 9}
!483 = !{ptr @.str.226, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/accessibility/speakup/main.c", i32 180, i32 20}
!485 = !{ptr @.str.227, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/accessibility/speakup/main.c", i32 180, i32 33}
!487 = !{ptr @.str.228, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/accessibility/speakup/main.c", i32 180, i32 47}
!489 = !{ptr @.str.229, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/accessibility/speakup/main.c", i32 180, i32 59}
!491 = !{ptr @.str.230, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/accessibility/speakup/main.c", i32 181, i32 6}
!493 = !{ptr @.str.231, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/accessibility/speakup/main.c", i32 182, i32 11}
!495 = !{ptr @.str.232, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/accessibility/speakup/main.c", i32 182, i32 27}
!497 = !{ptr @.str.233, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/accessibility/speakup/main.c", i32 182, i32 40}
!499 = !{ptr @.str.234, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/accessibility/speakup/main.c", i32 182, i32 51}
!501 = !{ptr @.str.235, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/accessibility/speakup/main.c", i32 182, i32 60}
!503 = !{ptr @spk_default_chars, !504, !"spk_default_chars", i1 false, i1 false}
!504 = !{!"../drivers/accessibility/speakup/main.c", i32 124, i32 7}
!505 = !{ptr @.str.236, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/accessibility/speakup/main.c", i32 241, i32 1}
!507 = !{ptr @.str.237, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @spk_mutex, !506, !"spk_mutex", i1 false, i1 false}
!509 = !{ptr @.str.238, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/accessibility/speakup/main.c", i32 1228, i32 3}
!511 = !{ptr @.str.239, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @.str.240, !510, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @spk_set_key_info.__UNIQUE_ID_ddebug242, !510, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!514 = !{ptr @.str.241, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/accessibility/speakup/main.c", i32 1236, i32 3}
!516 = !{ptr @spk_set_key_info.__UNIQUE_ID_ddebug243, !515, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!517 = !{ptr @.str.242, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/accessibility/speakup/main.c", i32 1252, i32 4}
!519 = !{ptr @spk_set_key_info.__UNIQUE_ID_ddebug244, !518, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!520 = !{ptr @.str.243, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/accessibility/speakup/main.c", i32 1261, i32 4}
!522 = !{ptr @spk_set_key_info.__UNIQUE_ID_ddebug245, !521, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!523 = !{ptr @__initcall__kmod_speakup__246_2456_speakup_init6, !524, !"__initcall__kmod_speakup__246_2456_speakup_init6", i1 false, i1 false}
!524 = !{!"../drivers/accessibility/speakup/main.c", i32 2456, i32 1}
!525 = !{ptr @__exitcall_speakup_exit, !526, !"__exitcall_speakup_exit", i1 false, i1 false}
!526 = !{!"../drivers/accessibility/speakup/main.c", i32 2457, i32 1}
!527 = !{ptr @synth_name, !528, !"synth_name", i1 false, i1 false}
!528 = !{!"../drivers/accessibility/speakup/main.c", i32 51, i32 7}
!529 = !{ptr @spk_special_handler, !530, !"spk_special_handler", i1 false, i1 false}
!530 = !{!"../drivers/accessibility/speakup/main.c", i32 58, i32 14}
!531 = !{ptr @spk_pitch_shift, !532, !"spk_pitch_shift", i1 false, i1 false}
!532 = !{!"../drivers/accessibility/speakup/main.c", i32 60, i32 7}
!533 = !{ptr @synth_flags, !534, !"synth_flags", i1 false, i1 false}
!534 = !{!"../drivers/accessibility/speakup/main.c", i32 60, i32 24}
!535 = !{ptr @spk_attrib_bleep, !536, !"spk_attrib_bleep", i1 false, i1 false}
!536 = !{!"../drivers/accessibility/speakup/main.c", i32 62, i32 5}
!537 = !{ptr @spk_bleeps, !538, !"spk_bleeps", i1 false, i1 false}
!538 = !{!"../drivers/accessibility/speakup/main.c", i32 62, i32 23}
!539 = !{ptr @spk_no_intr, !540, !"spk_no_intr", i1 false, i1 false}
!540 = !{!"../drivers/accessibility/speakup/main.c", i32 63, i32 5}
!541 = !{ptr @spk_spell_delay, !542, !"spk_spell_delay", i1 false, i1 false}
!542 = !{!"../drivers/accessibility/speakup/main.c", i32 63, i32 18}
!543 = !{ptr @spk_key_echo, !544, !"spk_key_echo", i1 false, i1 false}
!544 = !{!"../drivers/accessibility/speakup/main.c", i32 64, i32 5}
!545 = !{ptr @spk_say_word_ctl, !546, !"spk_say_word_ctl", i1 false, i1 false}
!546 = !{!"../drivers/accessibility/speakup/main.c", i32 64, i32 19}
!547 = !{ptr @spk_say_ctrl, !548, !"spk_say_ctrl", i1 false, i1 false}
!548 = !{!"../drivers/accessibility/speakup/main.c", i32 65, i32 5}
!549 = !{ptr @spk_bell_pos, !550, !"spk_bell_pos", i1 false, i1 false}
!550 = !{!"../drivers/accessibility/speakup/main.c", i32 65, i32 19}
!551 = !{ptr @spk_punc_mask, !552, !"spk_punc_mask", i1 false, i1 false}
!552 = !{!"../drivers/accessibility/speakup/main.c", i32 66, i32 7}
!553 = !{ptr @spk_punc_level, !554, !"spk_punc_level", i1 false, i1 false}
!554 = !{!"../drivers/accessibility/speakup/main.c", i32 67, i32 5}
!555 = !{ptr @spk_reading_punc, !556, !"spk_reading_punc", i1 false, i1 false}
!556 = !{!"../drivers/accessibility/speakup/main.c", i32 67, i32 21}
!557 = !{ptr @spk_paused, !558, !"spk_paused", i1 false, i1 false}
!558 = !{!"../drivers/accessibility/speakup/main.c", i32 71, i32 6}
!559 = !{ptr @spk_shift_table, !560, !"spk_shift_table", i1 false, i1 false}
!560 = !{!"../drivers/accessibility/speakup/main.c", i32 86, i32 16}
!561 = !{ptr @spk_our_keys, !562, !"spk_our_keys", i1 false, i1 false}
!562 = !{!"../drivers/accessibility/speakup/main.c", i32 87, i32 9}
!563 = !{ptr @spk_key_buf, !564, !"spk_key_buf", i1 false, i1 false}
!564 = !{!"../drivers/accessibility/speakup/main.c", i32 88, i32 8}
!565 = !{ptr @spk_characters, !566, !"spk_characters", i1 false, i1 false}
!566 = !{!"../drivers/accessibility/speakup/main.c", i32 122, i32 7}
!567 = !{ptr @spk_chartab, !568, !"spk_chartab", i1 false, i1 false}
!568 = !{!"../drivers/accessibility/speakup/main.c", i32 189, i32 9}
!569 = !{ptr @speakup_task, !570, !"speakup_task", i1 false, i1 false}
!570 = !{!"../drivers/accessibility/speakup/main.c", i32 231, i32 21}
!571 = !{ptr @spk_unprocessed_sound, !572, !"spk_unprocessed_sound", i1 false, i1 false}
!572 = !{!"../drivers/accessibility/speakup/main.c", i32 232, i32 14}
!573 = distinct !{null, !574, !"keymap_flags", i1 false, i1 false}
!574 = !{!"../drivers/accessibility/speakup/main.c", i32 235, i32 32}
!575 = !{ptr @speakup_console, !576, !"speakup_console", i1 false, i1 false}
!576 = !{!"../drivers/accessibility/speakup/main.c", i32 239, i32 18}
!577 = !{ptr @__param_str_synth, !16, !"__param_str_synth", i1 false, i1 false}
!578 = !{ptr @__param_str_quiet, !19, !"__param_str_quiet", i1 false, i1 false}
!579 = !{ptr @default_chartab, !580, !"default_chartab", i1 false, i1 false}
!580 = !{!"../drivers/accessibility/speakup/main.c", i32 191, i32 16}
!581 = !{ptr @keyboard_notifier_block, !582, !"keyboard_notifier_block", i1 false, i1 false}
!582 = !{!"../drivers/accessibility/speakup/main.c", i32 246, i32 30}
!583 = !{ptr @keyboard_notifier_call.keycode, !584, !"keycode", i1 false, i1 false}
!584 = !{!"../drivers/accessibility/speakup/main.c", i32 2219, i32 13}
!585 = distinct !{null, !586, !"in_keyboard_notifier", i1 false, i1 false}
!586 = !{!"../drivers/accessibility/speakup/main.c", i32 1386, i32 12}
!587 = !{ptr @tty, !588, !"tty", i1 false, i1 false}
!588 = !{!"../drivers/accessibility/speakup/main.c", i32 106, i32 27}
!589 = !{ptr @spk_keydown, !590, !"spk_keydown", i1 false, i1 false}
!590 = !{!"../drivers/accessibility/speakup/main.c", i32 233, i32 12}
!591 = !{ptr @.str.244, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/accessibility/speakup/main.c", i32 2091, i32 32}
!593 = distinct !{null, !594, !"pad_chars", i1 false, i1 false}
!594 = !{!"../drivers/accessibility/speakup/main.c", i32 2091, i32 20}
!595 = !{ptr @spk_lastkey, !596, !"spk_lastkey", i1 false, i1 false}
!596 = !{!"../drivers/accessibility/speakup/main.c", i32 234, i32 12}
!597 = !{ptr @cursor_track, !598, !"cursor_track", i1 false, i1 false}
!598 = !{!"../drivers/accessibility/speakup/main.c", i32 104, i32 26}
!599 = !{ptr @prev_cursor_track, !600, !"prev_cursor_track", i1 false, i1 false}
!600 = !{!"../drivers/accessibility/speakup/main.c", i32 104, i32 44}
!601 = !{ptr @key_speakup, !602, !"key_speakup", i1 false, i1 false}
!602 = !{!"../drivers/accessibility/speakup/main.c", i32 2041, i32 15}
!603 = distinct !{null, !604, !"spk_key_locked", i1 false, i1 false}
!604 = !{!"../drivers/accessibility/speakup/main.c", i32 2041, i32 28}
!605 = !{ptr @last_keycode, !606, !"last_keycode", i1 false, i1 false}
!606 = !{!"../drivers/accessibility/speakup/main.c", i32 236, i32 15}
!607 = !{ptr @last_spk_jiffy, !608, !"last_spk_jiffy", i1 false, i1 false}
!608 = !{!"../drivers/accessibility/speakup/main.c", i32 237, i32 15}
!609 = distinct !{null, !610, !"spk_close_press", i1 false, i1 false}
!610 = !{!"../drivers/accessibility/speakup/main.c", i32 235, i32 15}
!611 = !{ptr @this_speakup_key, !612, !"this_speakup_key", i1 false, i1 false}
!612 = !{!"../drivers/accessibility/speakup/main.c", i32 236, i32 29}
!613 = !{ptr @spkup_handler, !614, !"spkup_handler", i1 false, i1 false}
!614 = !{!"../drivers/accessibility/speakup/main.c", i32 2055, i32 19}
!615 = !{ptr @.str.245, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/accessibility/speakup/main.c", i32 2024, i32 16}
!617 = !{ptr @handle_goto.goto_buf, !618, !"goto_buf", i1 false, i1 false}
!618 = !{!"../drivers/accessibility/speakup/main.c", i32 1938, i32 16}
!619 = !{ptr @handle_goto.num, !620, !"num", i1 false, i1 false}
!620 = !{!"../drivers/accessibility/speakup/main.c", i32 1939, i32 13}
!621 = !{ptr @.str.246, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/accessibility/speakup/main.c", i32 1976, i32 17}
!623 = !{ptr @spkup_write.rep_count, !624, !"rep_count", i1 false, i1 false}
!624 = !{!"../drivers/accessibility/speakup/main.c", i32 1080, i32 13}
!625 = !{ptr @spkup_write.ch, !626, !"ch", i1 false, i1 false}
!626 = !{!"../drivers/accessibility/speakup/main.c", i32 1081, i32 13}
!627 = !{ptr @spkup_write.old_ch, !628, !"old_ch", i1 false, i1 false}
!628 = !{!"../drivers/accessibility/speakup/main.c", i32 1081, i32 24}
!629 = !{ptr @spkup_write.char_type, !630, !"char_type", i1 false, i1 false}
!630 = !{!"../drivers/accessibility/speakup/main.c", i32 1082, i32 17}
!631 = !{ptr @spkup_write.last_type, !632, !"last_type", i1 false, i1 false}
!632 = !{!"../drivers/accessibility/speakup/main.c", i32 1082, i32 28}
!633 = !{ptr @.str.247, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/accessibility/speakup/main.c", i32 1103, i32 18}
!635 = !{ptr @sentmarks, !636, !"sentmarks", i1 false, i1 false}
!636 = !{!"../drivers/accessibility/speakup/main.c", i32 861, i32 13}
!637 = !{ptr @bn, !638, !"bn", i1 false, i1 false}
!638 = !{!"../drivers/accessibility/speakup/main.c", i32 863, i32 12}
!639 = !{ptr @currsentence, !640, !"currsentence", i1 false, i1 false}
!640 = !{!"../drivers/accessibility/speakup/main.c", i32 858, i32 12}
!641 = !{ptr @numsentences, !642, !"numsentences", i1 false, i1 false}
!642 = !{!"../drivers/accessibility/speakup/main.c", i32 859, i32 12}
!643 = !{ptr @.str.248, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/accessibility/speakup/main.c", i32 429, i32 17}
!645 = !{ptr @.str.249, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/accessibility/speakup/main.c", i32 439, i32 3}
!647 = !{ptr @.str.250, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @speak_char._entry, !646, !"_entry", i1 false, i1 false}
!649 = !{ptr @speak_char._entry_ptr, !646, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.251, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/accessibility/speakup/main.c", i32 444, i32 16}
!652 = !{ptr @.str.252, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/accessibility/speakup/main.c", i32 449, i32 17}
!654 = !{ptr @.str.253, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/accessibility/speakup/main.c", i32 451, i32 17}
!656 = !{ptr @speakup_cut.err_buf, !657, !"err_buf", i1 false, i1 false}
!657 = !{!"../drivers/accessibility/speakup/main.c", i32 343, i32 20}
!658 = !{ptr @.str.254, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/accessibility/speakup/main.c", i32 365, i32 3}
!660 = !{ptr @.str.255, !659, !"<string literal>", i1 false, i1 false}
!661 = !{ptr @speakup_cut._entry, !659, !"_entry", i1 false, i1 false}
!662 = !{ptr @speakup_cut._entry_ptr, !659, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.257, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/accessibility/speakup/main.c", i32 368, i32 3}
!665 = !{ptr @speakup_cut._entry.256, !664, !"_entry", i1 false, i1 false}
!666 = !{ptr @speakup_cut._entry_ptr.258, !664, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.260, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/accessibility/speakup/main.c", i32 371, i32 3}
!669 = !{ptr @speakup_cut._entry.259, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @speakup_cut._entry_ptr.261, !668, !"_entry_ptr", i1 false, i1 false}
!671 = distinct !{null, !672, !"mark_cut_flag", i1 false, i1 false}
!672 = !{!"../drivers/accessibility/speakup/main.c", i32 84, i32 13}
!673 = !{ptr @.str.262, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/accessibility/speakup/main.c", i32 1017, i32 15}
!675 = !{ptr @buf, !676, !"buf", i1 false, i1 false}
!676 = !{!"../drivers/accessibility/speakup/main.c", i32 61, i32 12}
!677 = !{ptr @.str.263, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/accessibility/speakup/main.c", i32 783, i32 16}
!679 = !{ptr @.str.264, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/accessibility/speakup/main.c", i32 702, i32 41}
!681 = !{ptr @.str.265, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/accessibility/speakup/main.c", i32 702, i32 46}
!683 = !{ptr @.str.266, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/accessibility/speakup/main.c", i32 702, i32 51}
!685 = !{ptr @.str.267, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/accessibility/speakup/main.c", i32 702, i32 58}
!687 = !{ptr @spell_word.delay_str, !688, !"delay_str", i1 false, i1 false}
!688 = !{!"../drivers/accessibility/speakup/main.c", i32 702, i32 21}
!689 = !{ptr @.str.268, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 2}
!691 = !{ptr @.str.269, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 10}
!693 = !{ptr @.str.270, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 19}
!695 = !{ptr @.str.271, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 30}
!697 = !{ptr @.str.272, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 39}
!699 = !{ptr @.str.273, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 47}
!701 = !{ptr @.str.274, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 58}
!703 = !{ptr @.str.275, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/accessibility/speakup/main.c", i32 111, i32 66}
!705 = !{ptr @.str.276, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 2}
!707 = !{ptr @.str.277, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 11}
!709 = !{ptr @.str.278, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 22}
!711 = !{ptr @.str.279, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 31}
!713 = !{ptr @.str.280, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 40}
!715 = !{ptr @.str.281, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 48}
!717 = !{ptr @.str.282, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/accessibility/speakup/main.c", i32 112, i32 60}
!719 = !{ptr @.str.283, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/accessibility/speakup/main.c", i32 113, i32 6}
!721 = !{ptr @.str.284, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 2}
!723 = !{ptr @.str.285, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 14}
!725 = !{ptr @.str.286, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 23}
!727 = !{ptr @.str.287, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 33}
!729 = !{ptr @.str.288, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 42}
!731 = !{ptr @.str.289, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 53}
!733 = !{ptr @.str.290, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../drivers/accessibility/speakup/main.c", i32 114, i32 63}
!735 = !{ptr @.str.291, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/accessibility/speakup/main.c", i32 115, i32 2}
!737 = !{ptr @.str.292, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/accessibility/speakup/main.c", i32 115, i32 11}
!739 = !{ptr @.str.293, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../drivers/accessibility/speakup/main.c", i32 115, i32 21}
!741 = !{ptr @phonetic, !742, !"phonetic", i1 false, i1 false}
!742 = !{!"../drivers/accessibility/speakup/main.c", i32 110, i32 14}
!743 = !{ptr @.str.294, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../drivers/accessibility/speakup/main.c", i32 1042, i32 15}
!745 = !{ptr @pb_edit, !746, !"pb_edit", i1 false, i1 false}
!746 = !{!"../drivers/accessibility/speakup/main.c", i32 1316, i32 35}
!747 = !{ptr @.str.295, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../drivers/accessibility/speakup/main.c", i32 505, i32 17}
!749 = !{ptr @currbuf, !750, !"currbuf", i1 false, i1 false}
!750 = !{!"../drivers/accessibility/speakup/main.c", i32 862, i32 12}
!751 = !{ptr @sentbuf, !752, !"sentbuf", i1 false, i1 false}
!752 = !{!"../drivers/accessibility/speakup/main.c", i32 864, i32 12}
!753 = !{ptr @sentbufend, !754, !"sentbufend", i1 false, i1 false}
!754 = !{!"../drivers/accessibility/speakup/main.c", i32 860, i32 13}
!755 = !{ptr @cursor_con, !756, !"cursor_con", i1 false, i1 false}
!756 = !{!"../drivers/accessibility/speakup/main.c", i32 1380, i32 12}
!757 = !{ptr @read_all_key, !758, !"read_all_key", i1 false, i1 false}
!758 = !{!"../drivers/accessibility/speakup/main.c", i32 1384, i32 30}
!759 = !{ptr @.str.296, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../drivers/accessibility/speakup/main.c", i32 1859, i32 49}
!761 = !{ptr @bleep.vals, !762, !"vals", i1 false, i1 false}
!762 = !{!"../drivers/accessibility/speakup/main.c", i32 274, i32 21}
!763 = !{ptr @is_cursor, !764, !"is_cursor", i1 false, i1 false}
!764 = !{!"../drivers/accessibility/speakup/main.c", i32 1378, i32 15}
!765 = distinct !{null, !766, !"old_cursor_pos", i1 false, i1 false}
!766 = !{!"../drivers/accessibility/speakup/main.c", i32 1379, i32 15}
!767 = distinct !{null, !768, !"old_cursor_x", i1 false, i1 false}
!768 = !{!"../drivers/accessibility/speakup/main.c", i32 1379, i32 31}
!769 = distinct !{null, !770, !"old_cursor_y", i1 false, i1 false}
!770 = !{!"../drivers/accessibility/speakup/main.c", i32 1379, i32 45}
!771 = !{ptr @.str.297, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../drivers/accessibility/speakup/main.c", i32 1827, i32 16}
!773 = !{ptr @vt_notifier_block, !774, !"vt_notifier_block", i1 false, i1 false}
!774 = !{!"../drivers/accessibility/speakup/main.c", i32 253, i32 30}
!775 = !{ptr @.str.298, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../drivers/accessibility/speakup/main.c", i32 1162, i32 8}
!777 = !{ptr @cursor_timer, !776, !"cursor_timer", i1 false, i1 false}
!778 = !{ptr @.str.299, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/accessibility/speakup/main.c", i32 2417, i32 2}
!780 = !{ptr @.str.300, !779, !"<string literal>", i1 false, i1 false}
!781 = !{ptr @speakup_init._entry, !779, !"_entry", i1 false, i1 false}
!782 = !{ptr @speakup_init._entry_ptr, !779, !"_entry_ptr", i1 false, i1 false}
!783 = !{ptr @.str.302, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../drivers/accessibility/speakup/main.c", i32 2418, i32 2}
!785 = !{ptr @speakup_init._entry.301, !784, !"_entry", i1 false, i1 false}
!786 = !{ptr @speakup_init._entry_ptr.303, !784, !"_entry_ptr", i1 false, i1 false}
!787 = !{ptr @spk_vars, !788, !"spk_vars", i1 false, i1 false}
!788 = !{!"../drivers/accessibility/speakup/main.c", i32 1271, i32 21}
!789 = !{i32 1, !"wchar_size", i32 2}
!790 = !{i32 1, !"min_enum_size", i32 4}
!791 = !{i32 8, !"branch-target-enforcement", i32 0}
!792 = !{i32 8, !"sign-return-address", i32 0}
!793 = !{i32 8, !"sign-return-address-all", i32 0}
!794 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!795 = !{i32 7, !"uwtable", i32 1}
!796 = !{i32 7, !"frame-pointer", i32 2}
!797 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!798 = !{i64 2148749774, i64 2148749779, i64 2148749792, i64 2148749836, i64 2148749870, i64 2148749891}
!799 = !{i8 0, i8 2}
!800 = !{!"auto-init"}
!801 = !{i64 660440, i64 660501}
!802 = !{i64 663172}
!803 = !{!"branch_weights", i32 1, i32 2000}
!804 = !{i64 663457}
!805 = !{!"branch_weights", i32 2000, i32 1}
