; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_ltlk.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_ltlk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.list_head = type { ptr, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spk_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.string_var_t = type { ptr }
%struct.var_t = type { i32, %union.anon.74 }
%union.anon.74 = type { %struct.num_var_t }
%struct.num_var_t = type { ptr, i32, i32, i32, i16, i16, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }

@__param_str_ser = internal constant [17 x i8] c"speakup_ltlk.ser\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@synth_ltlk = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str.3, ptr @.str.2, ptr @.str.4, ptr @.str.5, i8 13, i8 24, i32 500, i32 50, i32 50, i32 40000, i32 0, i32 0, ptr @.str.6, i16 0, i16 0, i32 20030716, ptr @vars, ptr null, ptr null, ptr @spk_ttyio_ops, ptr @synth_probe, ptr @spk_ttyio_release, ptr @spk_ttyio_synth_immediate, ptr @spk_do_catch_up, ptr @spk_synth_flush, ptr @spk_synth_is_alive_restart, ptr null, ptr null, ptr @spk_synth_get_index, %struct.synth_indexing { ptr @.str.7, i8 1, i8 5, i8 1 }, i32 0, %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_ser = internal constant %struct.kernel_param { ptr @__param_str_ser, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_ltlk, i64 48) } }, section "__param", align 4
@__UNIQUE_ID_sertype227 = internal constant [30 x i8] c"speakup_ltlk.parmtype=ser:int\00", section ".modinfo", align 1
@__param_str_dev = internal constant [17 x i8] c"speakup_ltlk.dev\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dev = internal constant %struct.kernel_param { ptr @__param_str_dev, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_ltlk, i64 52) } }, section "__param", align 4
@__UNIQUE_ID_devtype228 = internal constant [32 x i8] c"speakup_ltlk.parmtype=dev:charp\00", section ".modinfo", align 1
@__param_str_start = internal constant [19 x i8] c"speakup_ltlk.start\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr null, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_ltlk, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype229 = internal constant [34 x i8] c"speakup_ltlk.parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_ser230 = internal constant [73 x i8] c"speakup_ltlk.parm=ser:Set the serial port for the synthesizer (0-based).\00", section ".modinfo", align 1
@__UNIQUE_ID_dev231 = internal constant [72 x i8] c"speakup_ltlk.parm=dev:Set the device e.g. ttyUSB0, for the synthesizer.\00", section ".modinfo", align 1
@__UNIQUE_ID_start232 = internal constant [65 x i8] c"speakup_ltlk.parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__initcall__kmod_speakup_ltlk__233_168_synth_ltlk_init6 = internal global ptr @synth_ltlk_init, section ".initcall6.init", align 4
@__exitcall_synth_ltlk_exit = internal global ptr @synth_ltlk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [54 x i8] c"speakup_ltlk.author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [35 x i8] c"speakup_ltlk.author=David Borowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [81 x i8] c"speakup_ltlk.description=Speakup support for DoubleTalk LT/LiteTalk synthesizers\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [61 x i8] c"speakup_ltlk.file=drivers/accessibility/speakup/speakup_ltlk\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [25 x i8] c"speakup_ltlk.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version239 = internal constant [26 x i8] c"speakup_ltlk.version=2.11\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speakup_ltlk\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.11\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ltlk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LiteTalk\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01@\011y\0A\00\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyS0\00", [26 x i8] zeroinitializer }, align 32
@spk_ttyio_ops = external dso_local global %struct.spk_io_ops, align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%di\00", [27 x i8] zeroinitializer }, align 32
@synth_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @freq_attribute, ptr @pitch_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01+35p\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01-35p\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%ds\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dp\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dv\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%dx\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%db\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%do\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01%df\00", [27 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [64 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.8 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.9 }, [24 x i8] undef } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.10, i32 8, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.11, i32 50, i32 0, i32 99, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 30, %union.anon.74 { %struct.num_var_t { ptr @.str.12, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 31, %union.anon.74 { %struct.num_var_t { ptr @.str.13, i32 1, i32 0, i32 2, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 32, %union.anon.74 { %struct.num_var_t { ptr @.str.14, i32 7, i32 0, i32 15, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 33, %union.anon.74 { %struct.num_var_t { ptr @.str.15, i32 0, i32 0, i32 7, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 34, %union.anon.74 { %struct.num_var_t { ptr @.str.16, i32 5, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [64 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\18\01?\00", [28 x i8] zeroinitializer }, align 32
@synth_interrogate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: ROM version: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"synth_interrogate\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/accessibility/speakup/speakup_ltlk.c\00", [51 x i8] zeroinitializer }, align 32
@synth_interrogate._entry_ptr = internal global ptr @synth_interrogate._entry, section ".printk_index", align 4
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@freq_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@tone_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@voice_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@vol_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"freq\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tone\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"voice\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"synth_ltlk\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 90, i32 25 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 174, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 91, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 93, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 94, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 101, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 116, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 72, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 22, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 23, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 24, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 25, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 26, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 27, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 28, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 29, i32 19 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 30, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 21, i32 21 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 133, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 146, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 38, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 40, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"freq_attribute\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 42, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 44, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [16 x i8] c"punct_attribute\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 46, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 48, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"tone_attribute\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 50, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"voice_attribute\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 52, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"vol_attribute\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 54, i32 30 }
@___asan_gen_.138 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 57, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 59, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 61, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 63, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 65, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 39, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 41, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 43, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 45, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 47, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 49, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 51, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 53, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 55, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 58, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 60, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 62, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 64, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [48 x i8] c"../drivers/accessibility/speakup/speakup_ltlk.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 66, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_dev231, ptr @__UNIQUE_ID_devtype228, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__UNIQUE_ID_ser230, ptr @__UNIQUE_ID_sertype227, ptr @__UNIQUE_ID_start232, ptr @__UNIQUE_ID_starttype229, ptr @__UNIQUE_ID_version239, ptr @__exitcall_synth_ltlk_exit, ptr @__initcall__kmod_speakup_ltlk__233_168_synth_ltlk_init6, ptr @__modver_attr, ptr @__param_dev, ptr @__param_ser, ptr @__param_start, ptr @synth_interrogate._entry, ptr @synth_interrogate._entry_ptr, ptr @synth_ltlk_exit, ptr @synth_ltlk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @synth_attrs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @vars, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @freq_attribute, ptr @pitch_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @voice_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_ltlk to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_interrogate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freq_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_ltlk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_ltlk) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_ltlk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @synth_remove(ptr noundef nonnull @synth_ltlk) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_probe(ptr noundef %synth) #2 align 64 {
entry:
  %buf.i = alloca [50 x i8], align 1
  %rom_v.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spk_ttyio_synth_probe(ptr noundef %synth) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf.i) #5
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 50)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rom_v.i) #5
  %1 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 1
  %2 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 3
  %3 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 5
  %4 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 7
  %5 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 9
  %6 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 11
  %7 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 13
  %8 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 15
  %9 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 17
  %synth_immediate.i = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 23
  %10 = call ptr @memset(ptr %rom_v.i, i32 255, i32 20)
  %11 = ptrtoint ptr %synth_immediate.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %synth_immediate.i, align 4
  %call.i = tail call ptr %12(ptr noundef %synth, ptr noundef nonnull @.str.18) #5
  %io_ops.i = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %indvars.iv.i = phi i32 [ 0, %if.then ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %io_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_ops.i, align 4
  %synth_in.i = getelementptr inbounds %struct.spk_io_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %synth_in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %synth_in.i, align 4
  %call2.i = tail call zeroext i8 %16(ptr noundef %synth) #5
  %arrayidx.i = getelementptr [50 x i8], ptr %buf.i, i32 0, i32 %indvars.iv.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call2.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv.i)
  %cmp4.i = icmp ugt i32 %indvars.iv.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %call2.i)
  %cmp9.i = icmp eq i8 %call2.i, 127
  %or.cond.i = select i1 %cmp4.i, i1 %cmp9.i, i1 false
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %indvars.iv.next.i)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 50
  %or.cond51.i = select i1 %or.cond.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond51.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %18 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 2
  %19 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 4
  %20 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 6
  %21 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 8
  %22 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 10
  %23 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 12
  %24 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 14
  %25 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 16
  %26 = getelementptr inbounds [20 x i8], ptr %rom_v.i, i32 0, i32 18
  %add.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 2
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %28)
  %cmp13.not44.i = icmp eq i8 %28, 13
  br i1 %cmp13.not44.i, label %for.end.i.synth_interrogate.exit_crit_edge, label %for.body15.preheader.i

for.end.i.synth_interrogate.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.preheader.i:                           ; preds = %for.end.i
  %29 = ptrtoint ptr %rom_v.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %rom_v.i, align 1
  %incdec.ptr.i = getelementptr inbounds i8, ptr %buf.i, i32 3
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %31)
  %cmp13.not.i = icmp eq i8 %31, 13
  br i1 %cmp13.not.i, label %for.body15.preheader.i.synth_interrogate.exit_crit_edge, label %for.body15.1.i

for.body15.preheader.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.1.i:                                   ; preds = %for.body15.preheader.i
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %1, align 1
  %incdec.ptr.1.i = getelementptr inbounds i8, ptr %buf.i, i32 4
  %33 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %34)
  %cmp13.not.1.i = icmp eq i8 %34, 13
  br i1 %cmp13.not.1.i, label %for.body15.1.i.synth_interrogate.exit_crit_edge, label %for.body15.2.i

for.body15.1.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.2.i:                                   ; preds = %for.body15.1.i
  %35 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %18, align 1
  %incdec.ptr.2.i = getelementptr inbounds i8, ptr %buf.i, i32 5
  %36 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %37)
  %cmp13.not.2.i = icmp eq i8 %37, 13
  br i1 %cmp13.not.2.i, label %for.body15.2.i.synth_interrogate.exit_crit_edge, label %for.body15.3.i

for.body15.2.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.3.i:                                   ; preds = %for.body15.2.i
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %2, align 1
  %incdec.ptr.3.i = getelementptr inbounds i8, ptr %buf.i, i32 6
  %39 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %40)
  %cmp13.not.3.i = icmp eq i8 %40, 13
  br i1 %cmp13.not.3.i, label %for.body15.3.i.synth_interrogate.exit_crit_edge, label %for.body15.4.i

for.body15.3.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.4.i:                                   ; preds = %for.body15.3.i
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %19, align 1
  %incdec.ptr.4.i = getelementptr inbounds i8, ptr %buf.i, i32 7
  %42 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %43)
  %cmp13.not.4.i = icmp eq i8 %43, 13
  br i1 %cmp13.not.4.i, label %for.body15.4.i.synth_interrogate.exit_crit_edge, label %for.body15.5.i

for.body15.4.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.5.i:                                   ; preds = %for.body15.4.i
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %3, align 1
  %incdec.ptr.5.i = getelementptr inbounds i8, ptr %buf.i, i32 8
  %45 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %46)
  %cmp13.not.5.i = icmp eq i8 %46, 13
  br i1 %cmp13.not.5.i, label %for.body15.5.i.synth_interrogate.exit_crit_edge, label %for.body15.6.i

for.body15.5.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.6.i:                                   ; preds = %for.body15.5.i
  %47 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %20, align 1
  %incdec.ptr.6.i = getelementptr inbounds i8, ptr %buf.i, i32 9
  %48 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %49)
  %cmp13.not.6.i = icmp eq i8 %49, 13
  br i1 %cmp13.not.6.i, label %for.body15.6.i.synth_interrogate.exit_crit_edge, label %for.body15.7.i

for.body15.6.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.7.i:                                   ; preds = %for.body15.6.i
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %4, align 1
  %incdec.ptr.7.i = getelementptr inbounds i8, ptr %buf.i, i32 10
  %51 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %52)
  %cmp13.not.7.i = icmp eq i8 %52, 13
  br i1 %cmp13.not.7.i, label %for.body15.7.i.synth_interrogate.exit_crit_edge, label %for.body15.8.i

for.body15.7.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.8.i:                                   ; preds = %for.body15.7.i
  %53 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %21, align 1
  %incdec.ptr.8.i = getelementptr inbounds i8, ptr %buf.i, i32 11
  %54 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %incdec.ptr.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %55)
  %cmp13.not.8.i = icmp eq i8 %55, 13
  br i1 %cmp13.not.8.i, label %for.body15.8.i.synth_interrogate.exit_crit_edge, label %for.body15.9.i

for.body15.8.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.9.i:                                   ; preds = %for.body15.8.i
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %5, align 1
  %incdec.ptr.9.i = getelementptr inbounds i8, ptr %buf.i, i32 12
  %57 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %58)
  %cmp13.not.9.i = icmp eq i8 %58, 13
  br i1 %cmp13.not.9.i, label %for.body15.9.i.synth_interrogate.exit_crit_edge, label %for.body15.10.i

for.body15.9.i.synth_interrogate.exit_crit_edge:  ; preds = %for.body15.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.10.i:                                  ; preds = %for.body15.9.i
  %59 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %22, align 1
  %incdec.ptr.10.i = getelementptr inbounds i8, ptr %buf.i, i32 13
  %60 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %incdec.ptr.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %61)
  %cmp13.not.10.i = icmp eq i8 %61, 13
  br i1 %cmp13.not.10.i, label %for.body15.10.i.synth_interrogate.exit_crit_edge, label %for.body15.11.i

for.body15.10.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.11.i:                                  ; preds = %for.body15.10.i
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %6, align 1
  %incdec.ptr.11.i = getelementptr inbounds i8, ptr %buf.i, i32 14
  %63 = ptrtoint ptr %incdec.ptr.11.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %64)
  %cmp13.not.11.i = icmp eq i8 %64, 13
  br i1 %cmp13.not.11.i, label %for.body15.11.i.synth_interrogate.exit_crit_edge, label %for.body15.12.i

for.body15.11.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.12.i:                                  ; preds = %for.body15.11.i
  %65 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %23, align 1
  %incdec.ptr.12.i = getelementptr inbounds i8, ptr %buf.i, i32 15
  %66 = ptrtoint ptr %incdec.ptr.12.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %incdec.ptr.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %67)
  %cmp13.not.12.i = icmp eq i8 %67, 13
  br i1 %cmp13.not.12.i, label %for.body15.12.i.synth_interrogate.exit_crit_edge, label %for.body15.13.i

for.body15.12.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.13.i:                                  ; preds = %for.body15.12.i
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %7, align 1
  %incdec.ptr.13.i = getelementptr inbounds i8, ptr %buf.i, i32 16
  %69 = ptrtoint ptr %incdec.ptr.13.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %70)
  %cmp13.not.13.i = icmp eq i8 %70, 13
  br i1 %cmp13.not.13.i, label %for.body15.13.i.synth_interrogate.exit_crit_edge, label %for.body15.14.i

for.body15.13.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.14.i:                                  ; preds = %for.body15.13.i
  %71 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %24, align 1
  %incdec.ptr.14.i = getelementptr inbounds i8, ptr %buf.i, i32 17
  %72 = ptrtoint ptr %incdec.ptr.14.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %incdec.ptr.14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %73)
  %cmp13.not.14.i = icmp eq i8 %73, 13
  br i1 %cmp13.not.14.i, label %for.body15.14.i.synth_interrogate.exit_crit_edge, label %for.body15.15.i

for.body15.14.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.15.i:                                  ; preds = %for.body15.14.i
  %74 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %8, align 1
  %incdec.ptr.15.i = getelementptr inbounds i8, ptr %buf.i, i32 18
  %75 = ptrtoint ptr %incdec.ptr.15.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr.15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %76)
  %cmp13.not.15.i = icmp eq i8 %76, 13
  br i1 %cmp13.not.15.i, label %for.body15.15.i.synth_interrogate.exit_crit_edge, label %for.body15.16.i

for.body15.15.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.16.i:                                  ; preds = %for.body15.15.i
  %77 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %25, align 1
  %incdec.ptr.16.i = getelementptr inbounds i8, ptr %buf.i, i32 19
  %78 = ptrtoint ptr %incdec.ptr.16.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %incdec.ptr.16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %79)
  %cmp13.not.16.i = icmp eq i8 %79, 13
  br i1 %cmp13.not.16.i, label %for.body15.16.i.synth_interrogate.exit_crit_edge, label %for.body15.17.i

for.body15.16.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.17.i:                                  ; preds = %for.body15.16.i
  %80 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %9, align 1
  %incdec.ptr.17.i = getelementptr inbounds i8, ptr %buf.i, i32 20
  %81 = ptrtoint ptr %incdec.ptr.17.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr.17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %82)
  %cmp13.not.17.i = icmp eq i8 %82, 13
  br i1 %cmp13.not.17.i, label %for.body15.17.i.synth_interrogate.exit_crit_edge, label %for.body15.18.i

for.body15.17.i.synth_interrogate.exit_crit_edge: ; preds = %for.body15.17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synth_interrogate.exit

for.body15.18.i:                                  ; preds = %for.body15.17.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %26, align 1
  br label %synth_interrogate.exit

synth_interrogate.exit:                           ; preds = %for.body15.18.i, %for.body15.17.i.synth_interrogate.exit_crit_edge, %for.body15.16.i.synth_interrogate.exit_crit_edge, %for.body15.15.i.synth_interrogate.exit_crit_edge, %for.body15.14.i.synth_interrogate.exit_crit_edge, %for.body15.13.i.synth_interrogate.exit_crit_edge, %for.body15.12.i.synth_interrogate.exit_crit_edge, %for.body15.11.i.synth_interrogate.exit_crit_edge, %for.body15.10.i.synth_interrogate.exit_crit_edge, %for.body15.9.i.synth_interrogate.exit_crit_edge, %for.body15.8.i.synth_interrogate.exit_crit_edge, %for.body15.7.i.synth_interrogate.exit_crit_edge, %for.body15.6.i.synth_interrogate.exit_crit_edge, %for.body15.5.i.synth_interrogate.exit_crit_edge, %for.body15.4.i.synth_interrogate.exit_crit_edge, %for.body15.3.i.synth_interrogate.exit_crit_edge, %for.body15.2.i.synth_interrogate.exit_crit_edge, %for.body15.1.i.synth_interrogate.exit_crit_edge, %for.body15.preheader.i.synth_interrogate.exit_crit_edge, %for.end.i.synth_interrogate.exit_crit_edge
  %i.2.i = phi i32 [ 0, %for.end.i.synth_interrogate.exit_crit_edge ], [ 1, %for.body15.preheader.i.synth_interrogate.exit_crit_edge ], [ 2, %for.body15.1.i.synth_interrogate.exit_crit_edge ], [ 3, %for.body15.2.i.synth_interrogate.exit_crit_edge ], [ 4, %for.body15.3.i.synth_interrogate.exit_crit_edge ], [ 5, %for.body15.4.i.synth_interrogate.exit_crit_edge ], [ 6, %for.body15.5.i.synth_interrogate.exit_crit_edge ], [ 7, %for.body15.6.i.synth_interrogate.exit_crit_edge ], [ 8, %for.body15.7.i.synth_interrogate.exit_crit_edge ], [ 9, %for.body15.8.i.synth_interrogate.exit_crit_edge ], [ 10, %for.body15.9.i.synth_interrogate.exit_crit_edge ], [ 11, %for.body15.10.i.synth_interrogate.exit_crit_edge ], [ 12, %for.body15.11.i.synth_interrogate.exit_crit_edge ], [ 13, %for.body15.12.i.synth_interrogate.exit_crit_edge ], [ 14, %for.body15.13.i.synth_interrogate.exit_crit_edge ], [ 15, %for.body15.14.i.synth_interrogate.exit_crit_edge ], [ 16, %for.body15.15.i.synth_interrogate.exit_crit_edge ], [ 17, %for.body15.16.i.synth_interrogate.exit_crit_edge ], [ 18, %for.body15.17.i.synth_interrogate.exit_crit_edge ], [ 19, %for.body15.18.i ]
  %arrayidx27.i = getelementptr [20 x i8], ptr %rom_v.i, i32 0, i32 %i.2.i
  %84 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx27.i, align 1
  %long_name.i = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 3
  %85 = ptrtoint ptr %long_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %long_name.i, align 4
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %86, ptr noundef nonnull %rom_v.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rom_v.i) #5
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf.i) #5
  br label %if.end

if.end:                                           ; preds = %synth_interrogate.exit, %entry.if.end_crit_edge
  %lnot.ext = zext i1 %cmp to i32
  %alive = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 31
  %87 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %lnot.ext, ptr %alive, align 4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_ttyio_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_ttyio_synth_immediate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_do_catch_up(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_synth_flush(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_synth_is_alive_restart(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spk_synth_get_index(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_ttyio_synth_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__param_ser, !1, !"__param_ser", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 160, i32 1}
!2 = !{ptr @__UNIQUE_ID_sertype227, !1, !"__UNIQUE_ID_sertype227", i1 false, i1 false}
!3 = !{ptr @__param_dev, !4, !"__param_dev", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 161, i32 1}
!5 = !{ptr @__UNIQUE_ID_devtype228, !4, !"__UNIQUE_ID_devtype228", i1 false, i1 false}
!6 = !{ptr @__param_start, !7, !"__param_start", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 162, i32 1}
!8 = !{ptr @__UNIQUE_ID_starttype229, !7, !"__UNIQUE_ID_starttype229", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_ser230, !10, !"__UNIQUE_ID_ser230", i1 false, i1 false}
!10 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 164, i32 1}
!11 = !{ptr @__UNIQUE_ID_dev231, !12, !"__UNIQUE_ID_dev231", i1 false, i1 false}
!12 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 165, i32 1}
!13 = !{ptr @__UNIQUE_ID_start232, !14, !"__UNIQUE_ID_start232", i1 false, i1 false}
!14 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 166, i32 1}
!15 = !{ptr @__initcall__kmod_speakup_ltlk__233_168_synth_ltlk_init6, !16, !"__initcall__kmod_speakup_ltlk__233_168_synth_ltlk_init6", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 168, i32 1}
!17 = !{ptr @__exitcall_synth_ltlk_exit, !16, !"__exitcall_synth_ltlk_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author234, !19, !"__UNIQUE_ID_author234", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 170, i32 1}
!20 = !{ptr @__UNIQUE_ID_author235, !21, !"__UNIQUE_ID_author235", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 171, i32 1}
!22 = !{ptr @__UNIQUE_ID_description236, !23, !"__UNIQUE_ID_description236", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 172, i32 1}
!24 = !{ptr @__UNIQUE_ID_file237, !25, !"__UNIQUE_ID_file237", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 173, i32 1}
!26 = !{ptr @__UNIQUE_ID_license238, !25, !"__UNIQUE_ID_license238", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_version239, !28, !"__UNIQUE_ID_version239", i1 false, i1 false}
!28 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 174, i32 1}
!29 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__modver_attr, !28, !"__modver_attr", i1 false, i1 false}
!33 = !{ptr @__param_str_ser, !1, !"__param_str_ser", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 91, i32 10}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 93, i32 15}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 94, i32 10}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 101, i32 14}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 116, i32 14}
!44 = !{ptr @synth_ltlk, !45, !"synth_ltlk", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 90, i32 25}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 22, i32 24}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 23, i32 23}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 24, i32 18}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 25, i32 19}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 26, i32 17}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 27, i32 18}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 28, i32 19}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 29, i32 19}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 30, i32 23}
!64 = !{ptr @vars, !65, !"vars", i1 false, i1 false}
!65 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 21, i32 21}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 133, i32 32}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 146, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @synth_interrogate._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @synth_interrogate._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @synth_attrs, !75, !"synth_attrs", i1 false, i1 false}
!75 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 72, i32 26}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 39, i32 2}
!78 = !{ptr @caps_start_attribute, !79, !"caps_start_attribute", i1 false, i1 false}
!79 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 38, i32 30}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 41, i32 2}
!82 = !{ptr @caps_stop_attribute, !83, !"caps_stop_attribute", i1 false, i1 false}
!83 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 40, i32 30}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 43, i32 2}
!86 = !{ptr @freq_attribute, !87, !"freq_attribute", i1 false, i1 false}
!87 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 42, i32 30}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 45, i32 2}
!90 = !{ptr @pitch_attribute, !91, !"pitch_attribute", i1 false, i1 false}
!91 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 44, i32 30}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 47, i32 2}
!94 = !{ptr @punct_attribute, !95, !"punct_attribute", i1 false, i1 false}
!95 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 46, i32 30}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 49, i32 2}
!98 = !{ptr @rate_attribute, !99, !"rate_attribute", i1 false, i1 false}
!99 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 48, i32 30}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 51, i32 2}
!102 = !{ptr @tone_attribute, !103, !"tone_attribute", i1 false, i1 false}
!103 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 50, i32 30}
!104 = !{ptr @.str.29, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 53, i32 2}
!106 = !{ptr @voice_attribute, !107, !"voice_attribute", i1 false, i1 false}
!107 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 52, i32 30}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 55, i32 2}
!110 = !{ptr @vol_attribute, !111, !"vol_attribute", i1 false, i1 false}
!111 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 54, i32 30}
!112 = !{ptr @.str.31, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 58, i32 2}
!114 = !{ptr @delay_time_attribute, !115, !"delay_time_attribute", i1 false, i1 false}
!115 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 57, i32 30}
!116 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 60, i32 2}
!118 = !{ptr @direct_attribute, !119, !"direct_attribute", i1 false, i1 false}
!119 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 59, i32 30}
!120 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 62, i32 2}
!122 = !{ptr @full_time_attribute, !123, !"full_time_attribute", i1 false, i1 false}
!123 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 61, i32 30}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 64, i32 2}
!126 = !{ptr @jiffy_delta_attribute, !127, !"jiffy_delta_attribute", i1 false, i1 false}
!127 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 63, i32 30}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 66, i32 2}
!130 = !{ptr @trigger_time_attribute, !131, !"trigger_time_attribute", i1 false, i1 false}
!131 = !{!"../drivers/accessibility/speakup/speakup_ltlk.c", i32 65, i32 30}
!132 = !{ptr @__param_str_dev, !4, !"__param_str_dev", i1 false, i1 false}
!133 = !{ptr @__param_str_start, !7, !"__param_str_start", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
