; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/speakup_spkout.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/speakup_spkout.c"
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
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }

@__param_str_ser = internal constant [19 x i8] c"speakup_spkout.ser\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@synth_spkout = internal global { %struct.spk_synth, [40 x i8] } { %struct.spk_synth { %struct.list_head zeroinitializer, ptr @.str.3, ptr @.str.2, ptr @.str.4, ptr @.str.5, i8 13, i8 24, i32 500, i32 50, i32 50, i32 40000, i32 0, i32 0, ptr @.str.6, i16 0, i16 0, i32 20030716, ptr @vars, ptr null, ptr null, ptr @spk_ttyio_ops, ptr @spk_ttyio_synth_probe, ptr @spk_ttyio_release, ptr @spk_ttyio_synth_immediate, ptr @spk_do_catch_up, ptr @synth_flush, ptr @spk_synth_is_alive_restart, ptr null, ptr null, ptr @spk_synth_get_index, %struct.synth_indexing { ptr @.str.7, i8 1, i8 5, i8 1 }, i32 0, %struct.attribute_group { ptr @.str.3, ptr null, ptr null, ptr @synth_attrs, ptr null }, ptr null }, [40 x i8] zeroinitializer }, align 32
@__param_ser = internal constant %struct.kernel_param { ptr @__param_str_ser, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_spkout, i64 48) } }, section "__param", align 4
@__UNIQUE_ID_sertype227 = internal constant [32 x i8] c"speakup_spkout.parmtype=ser:int\00", section ".modinfo", align 1
@__param_str_dev = internal constant [19 x i8] c"speakup_spkout.dev\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dev = internal constant %struct.kernel_param { ptr @__param_str_dev, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_spkout, i64 52) } }, section "__param", align 4
@__UNIQUE_ID_devtype228 = internal constant [34 x i8] c"speakup_spkout.parmtype=dev:charp\00", section ".modinfo", align 1
@__param_str_start = internal constant [21 x i8] c"speakup_spkout.start\00", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@__param_start = internal constant %struct.kernel_param { ptr @__param_str_start, ptr null, ptr @param_ops_short, i16 292, i8 -1, i8 0, %union.anon.68 { ptr getelementptr (i8, ptr @synth_spkout, i64 58) } }, section "__param", align 4
@__UNIQUE_ID_starttype229 = internal constant [36 x i8] c"speakup_spkout.parmtype=start:short\00", section ".modinfo", align 1
@__UNIQUE_ID_ser230 = internal constant [75 x i8] c"speakup_spkout.parm=ser:Set the serial port for the synthesizer (0-based).\00", section ".modinfo", align 1
@__UNIQUE_ID_dev231 = internal constant [74 x i8] c"speakup_spkout.parm=dev:Set the device e.g. ttyUSB0, for the synthesizer.\00", section ".modinfo", align 1
@__UNIQUE_ID_start232 = internal constant [67 x i8] c"speakup_spkout.parm=start:Start the synthesizer once it is loaded.\00", section ".modinfo", align 1
@__initcall__kmod_speakup_spkout__233_132_synth_spkout_init6 = internal global ptr @synth_spkout_init, section ".initcall6.init", align 4
@__exitcall_synth_spkout_exit = internal global ptr @synth_spkout_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author234 = internal constant [56 x i8] c"speakup_spkout.author=Kirk Reiser <kirk@braille.uwo.ca>\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [37 x i8] c"speakup_spkout.author=David Borowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [70 x i8] c"speakup_spkout.description=Speakup support for Speak Out synthesizers\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [65 x i8] c"speakup_spkout.file=drivers/accessibility/speakup/speakup_spkout\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"speakup_spkout.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version239 = internal constant [28 x i8] c"speakup_spkout.version=2.11\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"speakup_spkout\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.11\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spkout\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakout\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\05W1\05I2\05C3\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyS0\00", [26 x i8] zeroinitializer }, align 32
@spk_ttyio_ops = external dso_local global %struct.spk_io_ops, align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05[%c\00", [27 x i8] zeroinitializer }, align 32
@synth_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\05P+\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\05P-\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05R%d\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05P%d\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05V%d\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05T%c\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\05M%c\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nsma\00", [27 x i8] zeroinitializer }, align 32
@vars = internal global { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }>, [64 x i8] } { <{ { i32, { %struct.string_var_t, [24 x i8] } }, { i32, { %struct.string_var_t, [24 x i8] } }, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t, %struct.var_t }> <{ { i32, { %struct.string_var_t, [24 x i8] } } { i32 38, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.8 }, [24 x i8] undef } }, { i32, { %struct.string_var_t, [24 x i8] } } { i32 39, { %struct.string_var_t, [24 x i8] } { %struct.string_var_t { ptr @.str.9 }, [24 x i8] undef } }, %struct.var_t { i32 28, %union.anon.74 { %struct.num_var_t { ptr @.str.10, i32 7, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 29, %union.anon.74 { %struct.num_var_t { ptr @.str.11, i32 3, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 30, %union.anon.74 { %struct.num_var_t { ptr @.str.12, i32 9, i32 0, i32 9, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 31, %union.anon.74 { %struct.num_var_t { ptr @.str.13, i32 8, i32 0, i32 25, i16 65, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 32, %union.anon.74 { %struct.num_var_t { ptr @.str.14, i32 0, i32 0, i32 3, i16 0, i16 0, ptr @.str.15, i32 0 } } }, %struct.var_t { i32 36, %union.anon.74 { %struct.num_var_t { ptr null, i32 0, i32 0, i32 1, i16 0, i16 0, ptr null, i32 0 } } }, %struct.var_t { i32 43, %union.anon.74 zeroinitializer } }>, [64 x i8] zeroinitializer }, align 32
@caps_start_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@caps_stop_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@pitch_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@punct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@rate_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@tone_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@vol_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@delay_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@direct_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@full_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@jiffy_delta_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@trigger_time_attribute = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @spk_var_show, ptr @spk_var_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"caps_start\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caps_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pitch\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"punct\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tone\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vol\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"delay_time\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"direct\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full_time\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jiffy_delta\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_time\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"synth_spkout\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 81, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 138, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 82, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 84, i32 15 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 85, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 92, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 107, i32 14 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"synth_attrs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 65, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 22, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 23, i32 23 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 24, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 25, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 26, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 27, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 28, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 28, i32 45 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 21, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"caps_start_attribute\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 35, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"caps_stop_attribute\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 37, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"pitch_attribute\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 39, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"punct_attribute\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 41, i32 30 }
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"rate_attribute\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 43, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"tone_attribute\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 45, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"vol_attribute\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 47, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant [21 x i8] c"delay_time_attribute\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 50, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"direct_attribute\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 52, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"full_time_attribute\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 54, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"jiffy_delta_attribute\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 56, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"trigger_time_attribute\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 58, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 36, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 38, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 40, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 42, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 44, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 46, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 48, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 51, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 53, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 55, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 57, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.156 = private constant [50 x i8] c"../drivers/accessibility/speakup/speakup_spkout.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 59, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_dev231, ptr @__UNIQUE_ID_devtype228, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__UNIQUE_ID_ser230, ptr @__UNIQUE_ID_sertype227, ptr @__UNIQUE_ID_start232, ptr @__UNIQUE_ID_starttype229, ptr @__UNIQUE_ID_version239, ptr @__exitcall_synth_spkout_exit, ptr @__initcall__kmod_speakup_spkout__233_132_synth_spkout_init6, ptr @__modver_attr, ptr @__param_dev, ptr @__param_ser, ptr @__param_start, ptr @synth_spkout_exit, ptr @synth_spkout, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @synth_attrs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @vars, ptr @caps_start_attribute, ptr @caps_stop_attribute, ptr @pitch_attribute, ptr @punct_attribute, ptr @rate_attribute, ptr @tone_attribute, ptr @vol_attribute, ptr @delay_time_attribute, ptr @direct_attribute, ptr @full_time_attribute, ptr @jiffy_delta_attribute, ptr @trigger_time_attribute, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_spkout to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synth_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vars to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_start_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_stop_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pitch_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tone_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jiffy_delta_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trigger_time_attribute to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_spkout_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @synth_add(ptr noundef nonnull @synth_spkout) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synth_spkout_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @synth_remove(ptr noundef nonnull @synth_spkout) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synth_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_ttyio_synth_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_ttyio_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spk_ttyio_synth_immediate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spk_do_catch_up(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synth_flush(ptr noundef %synth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %io_ops = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 20
  %0 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_ops, align 4
  %flush_buffer = getelementptr inbounds %struct.spk_io_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flush_buffer, align 4
  tail call void %3(ptr noundef %synth) #3
  %4 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_ops, align 4
  %send_xchar = getelementptr inbounds %struct.spk_io_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %send_xchar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %send_xchar, align 4
  tail call void %7(ptr noundef %synth, i8 noundef zeroext 24) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_synth_is_alive_restart(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @spk_synth_get_index(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spk_var_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__param_ser, !1, !"__param_ser", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 124, i32 1}
!2 = !{ptr @__UNIQUE_ID_sertype227, !1, !"__UNIQUE_ID_sertype227", i1 false, i1 false}
!3 = !{ptr @__param_dev, !4, !"__param_dev", i1 false, i1 false}
!4 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 125, i32 1}
!5 = !{ptr @__UNIQUE_ID_devtype228, !4, !"__UNIQUE_ID_devtype228", i1 false, i1 false}
!6 = !{ptr @__param_start, !7, !"__param_start", i1 false, i1 false}
!7 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 126, i32 1}
!8 = !{ptr @__UNIQUE_ID_starttype229, !7, !"__UNIQUE_ID_starttype229", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_ser230, !10, !"__UNIQUE_ID_ser230", i1 false, i1 false}
!10 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 128, i32 1}
!11 = !{ptr @__UNIQUE_ID_dev231, !12, !"__UNIQUE_ID_dev231", i1 false, i1 false}
!12 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 129, i32 1}
!13 = !{ptr @__UNIQUE_ID_start232, !14, !"__UNIQUE_ID_start232", i1 false, i1 false}
!14 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 130, i32 1}
!15 = !{ptr @__initcall__kmod_speakup_spkout__233_132_synth_spkout_init6, !16, !"__initcall__kmod_speakup_spkout__233_132_synth_spkout_init6", i1 false, i1 false}
!16 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 132, i32 1}
!17 = !{ptr @__exitcall_synth_spkout_exit, !16, !"__exitcall_synth_spkout_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author234, !19, !"__UNIQUE_ID_author234", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 134, i32 1}
!20 = !{ptr @__UNIQUE_ID_author235, !21, !"__UNIQUE_ID_author235", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 135, i32 1}
!22 = !{ptr @__UNIQUE_ID_description236, !23, !"__UNIQUE_ID_description236", i1 false, i1 false}
!23 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 136, i32 1}
!24 = !{ptr @__UNIQUE_ID_file237, !25, !"__UNIQUE_ID_file237", i1 false, i1 false}
!25 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 137, i32 1}
!26 = !{ptr @__UNIQUE_ID_license238, !25, !"__UNIQUE_ID_license238", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_version239, !28, !"__UNIQUE_ID_version239", i1 false, i1 false}
!28 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 138, i32 1}
!29 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__modver_attr, !28, !"__modver_attr", i1 false, i1 false}
!33 = !{ptr @__param_str_ser, !1, !"__param_str_ser", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 82, i32 10}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 84, i32 15}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 85, i32 10}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 92, i32 14}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 107, i32 14}
!44 = !{ptr @synth_spkout, !45, !"synth_spkout", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 81, i32 25}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 22, i32 24}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 23, i32 23}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 24, i32 18}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 25, i32 19}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 26, i32 17}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 27, i32 18}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 28, i32 19}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 28, i32 45}
!62 = !{ptr @vars, !63, !"vars", i1 false, i1 false}
!63 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 21, i32 21}
!64 = !{ptr @synth_attrs, !65, !"synth_attrs", i1 false, i1 false}
!65 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 65, i32 26}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 36, i32 2}
!68 = !{ptr @caps_start_attribute, !69, !"caps_start_attribute", i1 false, i1 false}
!69 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 35, i32 30}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 38, i32 2}
!72 = !{ptr @caps_stop_attribute, !73, !"caps_stop_attribute", i1 false, i1 false}
!73 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 37, i32 30}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 40, i32 2}
!76 = !{ptr @pitch_attribute, !77, !"pitch_attribute", i1 false, i1 false}
!77 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 39, i32 30}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 42, i32 2}
!80 = !{ptr @punct_attribute, !81, !"punct_attribute", i1 false, i1 false}
!81 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 41, i32 30}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 44, i32 2}
!84 = !{ptr @rate_attribute, !85, !"rate_attribute", i1 false, i1 false}
!85 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 43, i32 30}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 46, i32 2}
!88 = !{ptr @tone_attribute, !89, !"tone_attribute", i1 false, i1 false}
!89 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 45, i32 30}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 48, i32 2}
!92 = !{ptr @vol_attribute, !93, !"vol_attribute", i1 false, i1 false}
!93 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 47, i32 30}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 51, i32 2}
!96 = !{ptr @delay_time_attribute, !97, !"delay_time_attribute", i1 false, i1 false}
!97 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 50, i32 30}
!98 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 53, i32 2}
!100 = !{ptr @direct_attribute, !101, !"direct_attribute", i1 false, i1 false}
!101 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 52, i32 30}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 55, i32 2}
!104 = !{ptr @full_time_attribute, !105, !"full_time_attribute", i1 false, i1 false}
!105 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 54, i32 30}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 57, i32 2}
!108 = !{ptr @jiffy_delta_attribute, !109, !"jiffy_delta_attribute", i1 false, i1 false}
!109 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 56, i32 30}
!110 = !{ptr @.str.28, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 59, i32 2}
!112 = !{ptr @trigger_time_attribute, !113, !"trigger_time_attribute", i1 false, i1 false}
!113 = !{!"../drivers/accessibility/speakup/speakup_spkout.c", i32 58, i32 30}
!114 = !{ptr @__param_str_dev, !4, !"__param_str_dev", i1 false, i1 false}
!115 = !{ptr @__param_str_start, !7, !"__param_str_start", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
