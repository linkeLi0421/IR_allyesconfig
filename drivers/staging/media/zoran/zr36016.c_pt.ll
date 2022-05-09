; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/zr36016.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/zr36016.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.videocodec = type { ptr, [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zr36016 = type { [32 x i8], i32, ptr, i8, i32, i16, i16, i16, i16, i16, i16 }
%struct.videocodec_master = type { [32 x i8], i32, i32, i32, ptr, ptr, ptr }
%struct.tvnorm = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.vfe_settings = type { i32, i32, i32, i32, i16, i16, i16 }

@__param_str_debug = internal constant [14 x i8] c"zr36016.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype173 = internal constant [27 x i8] c"zr36016.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug174 = internal constant [37 x i8] c"zr36016.parm=debug:Debug level (0-4)\00", section ".modinfo", align 1
@zr36016_codecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zr36016_cleanup_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"zr36016: something's wrong - %d codecs left somehow.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zr36016_cleanup_module\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/zoran/zr36016.c\00", [58 x i8] zeroinitializer }, align 32
@zr36016_cleanup_module._entry_ptr = internal global ptr @zr36016_cleanup_module._entry, section ".printk_index", align 4
@zr36016_codec = internal constant { %struct.videocodec, [36 x i8] } { %struct.videocodec { ptr null, [32 x i8] c"zr36016\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 61440, i32 3, ptr null, ptr null, ptr @zr36016_setup, ptr @zr36016_unset, ptr @zr36016_set_mode, ptr @zr36016_set_video, ptr @zr36016_control, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_zr36016__175_429_zr36016_init_module6 = internal global ptr @zr36016_init_module, section ".initcall6.init", align 4
@__exitcall_zr36016_cleanup_module = internal global ptr @zr36016_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author176 = internal constant [51 x i8] c"zr36016.author=Wolfgang Scherr <scherr@net4you.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [62 x i8] c"zr36016.description=Driver module for ZR36016 video frontends\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [49 x i8] c"zr36016.file=drivers/staging/media/zoran/zr36016\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [20 x i8] c"zr36016.license=GPL\00", section ".modinfo", align 1
@zr36016_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"zr36016: initializing VFE subsystem #%d.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36016_setup\00", [18 x i8] zeroinitializer }, align 32
@zr36016_setup._entry_ptr = internal global ptr @zr36016_setup._entry, section ".printk_index", align 4
@zr36016_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013zr36016: Can't attach more codecs!\0A\00", [58 x i8] zeroinitializer }, align 32
@zr36016_setup._entry_ptr.7 = internal global ptr @zr36016_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zr36016[%d]\00", [20 x i8] zeroinitializer }, align 32
@zr36016_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: codec v%d attached and running\0A\00", [58 x i8] zeroinitializer }, align 32
@zr36016_setup._entry_ptr.11 = internal global ptr @zr36016_setup._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zr36016_basic_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: registers: \00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr36016_basic_test\00", [45 x i8] zeroinitializer }, align 32
@zr36016_basic_test._entry_ptr = internal global ptr @zr36016_basic_test._entry, section ".printk_index", align 4
@zr36016_basic_test._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@zr36016_basic_test._entry_ptr.16 = internal global ptr @zr36016_basic_test._entry.14, section ".printk_index", align 4
@zr36016_basic_test._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@zr36016_basic_test._entry_ptr.19 = internal global ptr @zr36016_basic_test._entry.17, section ".printk_index", align 4
@zr36016_basic_test._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: attach failed, can't connect to vfe processor!\0A\00", [42 x i8] zeroinitializer }, align 32
@zr36016_basic_test._entry_ptr.22 = internal global ptr @zr36016_basic_test._entry.20, section ".printk_index", align 4
@zr36016_basic_test._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zr36016_basic_test._entry_ptr.24 = internal global ptr @zr36016_basic_test._entry.23, section ".printk_index", align 4
@zr36016_basic_test._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.13, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: attach failed, suspicious version %d found...\0A\00", [43 x i8] zeroinitializer }, align 32
@zr36016_basic_test._entry_ptr.27 = internal global ptr @zr36016_basic_test._entry.25, section ".printk_index", align 4
@zr36016_writei._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: writing indirect 0x%02x to 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zr36016_writei\00", [17 x i8] zeroinitializer }, align 32
@zr36016_writei._entry_ptr = internal global ptr @zr36016_writei._entry, section ".printk_index", align 4
@zr36016_writei._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: invalid I/O setup, nothing written (i)!\0A\00", [49 x i8] zeroinitializer }, align 32
@zr36016_writei._entry_ptr.32 = internal global ptr @zr36016_writei._entry.30, section ".printk_index", align 4
@zr36016_readi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: invalid I/O setup, nothing read (i)!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36016_readi\00", [18 x i8] zeroinitializer }, align 32
@zr36016_readi._entry_ptr = internal global ptr @zr36016_readi._entry, section ".printk_index", align 4
@zr36016_readi._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: reading indirect from 0x%04x: %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@zr36016_readi._entry_ptr.37 = internal global ptr @zr36016_readi._entry.35, section ".printk_index", align 4
@zr36016_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: invalid I/O setup, nothing read!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr36016_read\00", [19 x i8] zeroinitializer }, align 32
@zr36016_read._entry_ptr = internal global ptr @zr36016_read._entry, section ".printk_index", align 4
@zr36016_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: reading from 0x%04x: %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@zr36016_read._entry_ptr.42 = internal global ptr @zr36016_read._entry.40, section ".printk_index", align 4
@zr36016_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: writing 0x%02x to 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36016_write\00", [18 x i8] zeroinitializer }, align 32
@zr36016_write._entry_ptr = internal global ptr @zr36016_write._entry, section ".printk_index", align 4
@zr36016_write._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: invalid I/O setup, nothing written!\0A\00", [53 x i8] zeroinitializer }, align 32
@zr36016_write._entry_ptr.47 = internal global ptr @zr36016_write._entry.45, section ".printk_index", align 4
@zr36016_unset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: finished codec #%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36016_unset\00", [18 x i8] zeroinitializer }, align 32
@zr36016_unset._entry_ptr = internal global ptr @zr36016_unset._entry, section ".printk_index", align 4
@zr36016_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set_mode %d call\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zr36016_set_mode\00", [47 x i8] zeroinitializer }, align 32
@zr36016_set_mode._entry_ptr = internal global ptr @zr36016_set_mode._entry, section ".printk_index", align 4
@zr36016_set_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: set_video %d.%d, %d/%d-%dx%d (0x%x) call\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zr36016_set_video\00", [46 x i8] zeroinitializer }, align 32
@zr36016_set_video._entry_ptr = internal global ptr @zr36016_set_video._entry, section ".printk_index", align 4
@zr36016_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: control %d call with %d byte\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36016_control\00", [16 x i8] zeroinitializer }, align 32
@zr36016_control._entry_ptr = internal global ptr @zr36016_control._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 32769, i64 32770]
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 26, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"zr36016_codecs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 23, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 422, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"zr36016_codec\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 392, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 357, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 360, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 369, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 387, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 127, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 129, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 130, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 136, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 141, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 147, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 90, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 98, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 81, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 84, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 51, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 53, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 60, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 66, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 332, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 229, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 246, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [41 x i8] c"../drivers/staging/media/zoran/zr36016.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 281, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_debug174, ptr @__UNIQUE_ID_debugtype173, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_zr36016_cleanup_module, ptr @__initcall__kmod_zr36016__175_429_zr36016_init_module6, ptr @__param_debug, ptr @zr36016_basic_test._entry, ptr @zr36016_basic_test._entry.14, ptr @zr36016_basic_test._entry.17, ptr @zr36016_basic_test._entry.20, ptr @zr36016_basic_test._entry.23, ptr @zr36016_basic_test._entry.25, ptr @zr36016_basic_test._entry_ptr, ptr @zr36016_basic_test._entry_ptr.16, ptr @zr36016_basic_test._entry_ptr.19, ptr @zr36016_basic_test._entry_ptr.22, ptr @zr36016_basic_test._entry_ptr.24, ptr @zr36016_basic_test._entry_ptr.27, ptr @zr36016_cleanup_module, ptr @zr36016_cleanup_module._entry, ptr @zr36016_cleanup_module._entry_ptr, ptr @zr36016_control._entry, ptr @zr36016_control._entry_ptr, ptr @zr36016_read._entry, ptr @zr36016_read._entry.40, ptr @zr36016_read._entry_ptr, ptr @zr36016_read._entry_ptr.42, ptr @zr36016_readi._entry, ptr @zr36016_readi._entry.35, ptr @zr36016_readi._entry_ptr, ptr @zr36016_readi._entry_ptr.37, ptr @zr36016_set_mode._entry, ptr @zr36016_set_mode._entry_ptr, ptr @zr36016_set_video._entry, ptr @zr36016_set_video._entry_ptr, ptr @zr36016_setup._entry, ptr @zr36016_setup._entry.5, ptr @zr36016_setup._entry.9, ptr @zr36016_setup._entry_ptr, ptr @zr36016_setup._entry_ptr.11, ptr @zr36016_setup._entry_ptr.7, ptr @zr36016_unset._entry, ptr @zr36016_unset._entry_ptr, ptr @zr36016_write._entry, ptr @zr36016_write._entry.45, ptr @zr36016_write._entry_ptr, ptr @zr36016_write._entry_ptr.47, ptr @zr36016_writei._entry, ptr @zr36016_writei._entry.30, ptr @zr36016_writei._entry_ptr, ptr @zr36016_writei._entry_ptr.32, ptr @debug, ptr @zr36016_codecs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @zr36016_codec, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_codecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_cleanup_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_codec to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_basic_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_basic_test._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_basic_test._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_basic_test._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_basic_test._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_basic_test._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_writei._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_writei._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_readi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_readi._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_write._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_unset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_set_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36016_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zr36016_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i32, ptr @zr36016_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.body:                                          ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %do.body.if.end4_crit_edge

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #9
  br label %if.end4

if.end4:                                          ; preds = %do.end, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call i32 @videocodec_unregister(ptr noundef nonnull @zr36016_codec) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videocodec_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @zr36016_codecs, align 4
  %call = tail call i32 @videocodec_register(ptr noundef nonnull @zr36016_codec) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_setup(ptr noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = load i32, ptr @zr36016_codecs, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = load i32, ptr @zr36016_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %2)
  %cmp4 = icmp eq i32 %2, 20
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 60) #10
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %5 = load i32, ptr @zr36016_codecs, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %5)
  %6 = load i32, ptr @zr36016_codecs, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @zr36016_codecs, align 4
  %num = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num, align 8
  %codec16 = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %codec16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %codec, ptr %codec16, align 4
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end14.do.end3.i100.i_crit_edge, label %if.then.i

if.end14.do.end3.i100.i_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i100.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i.i = icmp sgt i32 %9, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.do.end3.i.i_crit_edge

if.then.i.do.end3.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull %call7.i.i, i32 noundef 85, i32 noundef 4) #9
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.then.i.do.end3.i.i_crit_edge
  %10 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec16, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_data.i.i, align 4
  %writereg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %writereg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %writereg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %do.end17.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %15(ptr noundef %11, i16 noundef zeroext 2, i32 noundef 4) #6
  %16 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %codec16, align 4
  %master_data11.i.i = getelementptr inbounds %struct.videocodec, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %master_data11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master_data11.i.i, align 4
  %writereg12.i.i = getelementptr inbounds %struct.videocodec_master, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %writereg12.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %writereg12.i.i, align 4
  tail call void %21(ptr noundef %17, i16 noundef zeroext 3, i32 noundef 85) #6
  br label %zr36016_writei.exit.i

do.end17.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %call7.i.i) #9
  br label %zr36016_writei.exit.i

zr36016_writei.exit.i:                            ; preds = %do.end17.i.i, %if.then4.i.i
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp sgt i32 %22, 0
  br i1 %cmp.i, label %do.end.i, label %zr36016_writei.exit.i.do.body6.i.preheader_crit_edge

zr36016_writei.exit.i.do.body6.i.preheader_crit_edge: ; preds = %zr36016_writei.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6.i.preheader

do.end.i:                                         ; preds = %zr36016_writei.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %call7.i.i) #9
  br label %do.body6.i.preheader

do.body6.i.preheader:                             ; preds = %do.end.i, %zr36016_writei.exit.i.do.body6.i.preheader_crit_edge
  br label %do.body6.i

do.body6.i:                                       ; preds = %for.inc.i.do.body6.i_crit_edge, %do.body6.i.preheader
  %i.0164.i = phi i32 [ %inc.i, %for.inc.i.do.body6.i_crit_edge ], [ 0, %do.body6.i.preheader ]
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7.i = icmp sgt i32 %23, 0
  br i1 %cmp7.i, label %do.end11.i, label %do.body6.i.for.inc.i_crit_edge

do.body6.i.for.inc.i_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end11.i:                                       ; preds = %do.body6.i
  %24 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %codec16, align 4
  %master_data.i87.i = getelementptr inbounds %struct.videocodec, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %master_data.i87.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_data.i87.i, align 4
  %writereg.i88.i = getelementptr inbounds %struct.videocodec_master, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %writereg.i88.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %writereg.i88.i, align 4
  %tobool.not.i89.i = icmp eq ptr %29, null
  br i1 %tobool.not.i89.i, label %do.end11.i.do.end.i91.i_crit_edge, label %land.lhs.true.i.i

do.end11.i.do.end.i91.i_crit_edge:                ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i91.i

land.lhs.true.i.i:                                ; preds = %do.end11.i
  %readreg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %readreg.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %readreg.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %31, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end.i91.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.do.end.i91.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i91.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %29(ptr noundef %25, i16 noundef zeroext 2, i32 noundef %i.0164.i) #6
  %32 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %codec16, align 4
  %master_data9.i.i = getelementptr inbounds %struct.videocodec, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %master_data9.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master_data9.i.i, align 4
  %readreg10.i.i = getelementptr inbounds %struct.videocodec_master, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %readreg10.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %readreg10.i.i, align 4
  %call.i90.i = tail call i32 %37(ptr noundef %33, i16 noundef zeroext 3) #6
  br label %do.body15.i.i

do.end.i91.i:                                     ; preds = %land.lhs.true.i.i.do.end.i91.i_crit_edge, %do.end11.i.do.end.i91.i_crit_edge
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %call7.i.i) #9
  br label %do.body15.i.i

do.body15.i.i:                                    ; preds = %do.end.i91.i, %if.then.i.i
  %value.0.i.i = phi i32 [ %call.i90.i, %if.then.i.i ], [ 0, %do.end.i91.i ]
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i92.i = icmp sgt i32 %38, 3
  %conv25.i.i = and i32 %value.0.i.i, 255
  br i1 %cmp.i92.i, label %do.end20.i.i, label %do.body15.i.i.zr36016_readi.exit.i_crit_edge

do.body15.i.i.zr36016_readi.exit.i_crit_edge:     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zr36016_readi.exit.i

do.end20.i.i:                                     ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %call7.i.i, i32 noundef %i.0164.i, i32 noundef %conv25.i.i) #9
  br label %zr36016_readi.exit.i

zr36016_readi.exit.i:                             ; preds = %do.end20.i.i, %do.body15.i.i.zr36016_readi.exit.i_crit_edge
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv25.i.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %zr36016_readi.exit.i, %do.body6.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %do.body19.i, label %for.inc.i.do.body6.i_crit_edge

for.inc.i.do.body6.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6.i

do.body19.i:                                      ; preds = %for.inc.i
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp20.i = icmp sgt i32 %39, 0
  br i1 %cmp20.i, label %if.end31.i, label %do.body19.i.do.end3.i100.i_crit_edge

do.body19.i.do.end3.i100.i_crit_edge:             ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i100.i

if.end31.i:                                       ; preds = %do.body19.i
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp.i93.i = icmp sgt i32 %.pr.i, 3
  br i1 %cmp.i93.i, label %do.end.i95.i, label %if.end31.i.do.end3.i100.i_crit_edge

if.end31.i.do.end3.i100.i_crit_edge:              ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i100.i

do.end.i95.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %call7.i.i, i32 noundef 0, i32 noundef 4) #9
  br label %do.end3.i100.i

do.end3.i100.i:                                   ; preds = %do.end.i95.i, %if.end31.i.do.end3.i100.i_crit_edge, %do.body19.i.do.end3.i100.i_crit_edge, %if.end14.do.end3.i100.i_crit_edge
  %40 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %codec16, align 4
  %master_data.i97.i = getelementptr inbounds %struct.videocodec, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %master_data.i97.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master_data.i97.i, align 4
  %writereg.i98.i = getelementptr inbounds %struct.videocodec_master, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %writereg.i98.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %writereg.i98.i, align 4
  %tobool.not.i99.i = icmp eq ptr %45, null
  br i1 %tobool.not.i99.i, label %do.end17.i105.i, label %if.then4.i103.i

if.then4.i103.i:                                  ; preds = %do.end3.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %45(ptr noundef %41, i16 noundef zeroext 2, i32 noundef 4) #6
  %46 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %codec16, align 4
  %master_data11.i101.i = getelementptr inbounds %struct.videocodec, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %master_data11.i101.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master_data11.i101.i, align 4
  %writereg12.i102.i = getelementptr inbounds %struct.videocodec_master, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %writereg12.i102.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %writereg12.i102.i, align 4
  tail call void %51(ptr noundef %47, i16 noundef zeroext 3, i32 noundef 0) #6
  br label %zr36016_writei.exit106.i

do.end17.i105.i:                                  ; preds = %do.end3.i100.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %call7.i.i) #9
  br label %zr36016_writei.exit106.i

zr36016_writei.exit106.i:                         ; preds = %do.end17.i105.i, %if.then4.i103.i
  %52 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %codec16, align 4
  %master_data.i108.i = getelementptr inbounds %struct.videocodec, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %master_data.i108.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %master_data.i108.i, align 4
  %writereg.i109.i = getelementptr inbounds %struct.videocodec_master, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %writereg.i109.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %writereg.i109.i, align 4
  %tobool.not.i110.i = icmp eq ptr %57, null
  br i1 %tobool.not.i110.i, label %zr36016_writei.exit106.i.do.end.i120.i_crit_edge, label %land.lhs.true.i113.i

zr36016_writei.exit106.i.do.end.i120.i_crit_edge: ; preds = %zr36016_writei.exit106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i120.i

land.lhs.true.i113.i:                             ; preds = %zr36016_writei.exit106.i
  %readreg.i111.i = getelementptr inbounds %struct.videocodec_master, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %readreg.i111.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %readreg.i111.i, align 4
  %tobool3.not.i112.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i112.i, label %land.lhs.true.i113.i.do.end.i120.i_crit_edge, label %if.then.i118.i

land.lhs.true.i113.i.do.end.i120.i_crit_edge:     ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i120.i

if.then.i118.i:                                   ; preds = %land.lhs.true.i113.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %57(ptr noundef %53, i16 noundef zeroext 2, i32 noundef 4) #6
  %60 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %codec16, align 4
  %master_data9.i114.i = getelementptr inbounds %struct.videocodec, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %master_data9.i114.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master_data9.i114.i, align 4
  %readreg10.i115.i = getelementptr inbounds %struct.videocodec_master, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %readreg10.i115.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %readreg10.i115.i, align 4
  %call.i116.i = tail call i32 %65(ptr noundef %61, i16 noundef zeroext 3) #6
  %conv13.i117.i = trunc i32 %call.i116.i to i8
  br label %do.body15.i123.i

do.end.i120.i:                                    ; preds = %land.lhs.true.i113.i.do.end.i120.i_crit_edge, %zr36016_writei.exit106.i.do.end.i120.i_crit_edge
  %call14.i119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %call7.i.i) #9
  br label %do.body15.i123.i

do.body15.i123.i:                                 ; preds = %do.end.i120.i, %if.then.i118.i
  %value.0.i121.i = phi i8 [ %conv13.i117.i, %if.then.i118.i ], [ 0, %do.end.i120.i ]
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i122.i = icmp sgt i32 %66, 3
  br i1 %cmp.i122.i, label %do.end20.i126.i, label %do.body15.i123.i.zr36016_readi.exit127.i_crit_edge

do.body15.i123.i.zr36016_readi.exit127.i_crit_edge: ; preds = %do.body15.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zr36016_readi.exit127.i

do.end20.i126.i:                                  ; preds = %do.body15.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv25.i124.i = zext i8 %value.0.i121.i to i32
  %call26.i125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %call7.i.i, i32 noundef 4, i32 noundef %conv25.i124.i) #9
  br label %zr36016_readi.exit127.i

zr36016_readi.exit127.i:                          ; preds = %do.end20.i126.i, %do.body15.i123.i.zr36016_readi.exit127.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value.0.i121.i)
  %cmp34.not.i = icmp eq i8 %value.0.i121.i, 0
  br i1 %cmp34.not.i, label %if.end44.i, label %do.end39.i

do.end39.i:                                       ; preds = %zr36016_readi.exit127.i
  call void @__sanitizer_cov_trace_pc() #8
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %call7.i.i) #9
  br label %if.then19

if.end44.i:                                       ; preds = %zr36016_readi.exit127.i
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i128.i = icmp sgt i32 %67, 3
  br i1 %cmp.i128.i, label %do.end.i130.i, label %if.end44.i.do.end3.i135.i_crit_edge

if.end44.i.do.end3.i135.i_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i135.i

do.end.i130.i:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %call7.i.i, i32 noundef 208, i32 noundef 4) #9
  br label %do.end3.i135.i

do.end3.i135.i:                                   ; preds = %do.end.i130.i, %if.end44.i.do.end3.i135.i_crit_edge
  %68 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %codec16, align 4
  %master_data.i132.i = getelementptr inbounds %struct.videocodec, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %master_data.i132.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %master_data.i132.i, align 4
  %writereg.i133.i = getelementptr inbounds %struct.videocodec_master, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %writereg.i133.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %writereg.i133.i, align 4
  %tobool.not.i134.i = icmp eq ptr %73, null
  br i1 %tobool.not.i134.i, label %do.end17.i140.i, label %if.then4.i138.i

if.then4.i138.i:                                  ; preds = %do.end3.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %73(ptr noundef %69, i16 noundef zeroext 2, i32 noundef 4) #6
  %74 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %codec16, align 4
  %master_data11.i136.i = getelementptr inbounds %struct.videocodec, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %master_data11.i136.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %master_data11.i136.i, align 4
  %writereg12.i137.i = getelementptr inbounds %struct.videocodec_master, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %writereg12.i137.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %writereg12.i137.i, align 4
  tail call void %79(ptr noundef %75, i16 noundef zeroext 3, i32 noundef 208) #6
  br label %zr36016_writei.exit141.i

do.end17.i140.i:                                  ; preds = %do.end3.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %call7.i.i) #9
  br label %zr36016_writei.exit141.i

zr36016_writei.exit141.i:                         ; preds = %do.end17.i140.i, %if.then4.i138.i
  %80 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %codec16, align 4
  %master_data.i143.i = getelementptr inbounds %struct.videocodec, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %master_data.i143.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %master_data.i143.i, align 4
  %writereg.i144.i = getelementptr inbounds %struct.videocodec_master, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %writereg.i144.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %writereg.i144.i, align 4
  %tobool.not.i145.i = icmp eq ptr %85, null
  br i1 %tobool.not.i145.i, label %zr36016_writei.exit141.i.do.end.i155.i_crit_edge, label %land.lhs.true.i148.i

zr36016_writei.exit141.i.do.end.i155.i_crit_edge: ; preds = %zr36016_writei.exit141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i155.i

land.lhs.true.i148.i:                             ; preds = %zr36016_writei.exit141.i
  %readreg.i146.i = getelementptr inbounds %struct.videocodec_master, ptr %83, i32 0, i32 5
  %86 = ptrtoint ptr %readreg.i146.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %readreg.i146.i, align 4
  %tobool3.not.i147.i = icmp eq ptr %87, null
  br i1 %tobool3.not.i147.i, label %land.lhs.true.i148.i.do.end.i155.i_crit_edge, label %if.then.i153.i

land.lhs.true.i148.i.do.end.i155.i_crit_edge:     ; preds = %land.lhs.true.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i155.i

if.then.i153.i:                                   ; preds = %land.lhs.true.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %85(ptr noundef %81, i16 noundef zeroext 2, i32 noundef 4) #6
  %88 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %codec16, align 4
  %master_data9.i149.i = getelementptr inbounds %struct.videocodec, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %master_data9.i149.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %master_data9.i149.i, align 4
  %readreg10.i150.i = getelementptr inbounds %struct.videocodec_master, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %readreg10.i150.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %readreg10.i150.i, align 4
  %call.i151.i = tail call i32 %93(ptr noundef %89, i16 noundef zeroext 3) #6
  %conv13.i152.i = trunc i32 %call.i151.i to i8
  br label %do.body15.i158.i

do.end.i155.i:                                    ; preds = %land.lhs.true.i148.i.do.end.i155.i_crit_edge, %zr36016_writei.exit141.i.do.end.i155.i_crit_edge
  %call14.i154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %call7.i.i) #9
  br label %do.body15.i158.i

do.body15.i158.i:                                 ; preds = %do.end.i155.i, %if.then.i153.i
  %value.0.i156.i = phi i8 [ %conv13.i152.i, %if.then.i153.i ], [ 0, %do.end.i155.i ]
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %94)
  %cmp.i157.i = icmp sgt i32 %94, 3
  br i1 %cmp.i157.i, label %do.end20.i161.i, label %do.body15.i158.i.zr36016_readi.exit162.i_crit_edge

do.body15.i158.i.zr36016_readi.exit162.i_crit_edge: ; preds = %do.body15.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zr36016_readi.exit162.i

do.end20.i161.i:                                  ; preds = %do.body15.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv25.i159.i = zext i8 %value.0.i156.i to i32
  %call26.i160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %call7.i.i, i32 noundef 4, i32 noundef %conv25.i159.i) #9
  br label %zr36016_readi.exit162.i

zr36016_readi.exit162.i:                          ; preds = %do.end20.i161.i, %do.body15.i158.i.zr36016_readi.exit162.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %value.0.i156.i)
  %cmp47.not.i = icmp eq i8 %value.0.i156.i, -48
  br i1 %cmp47.not.i, label %if.end57.i, label %do.end52.i

do.end52.i:                                       ; preds = %zr36016_readi.exit162.i
  call void @__sanitizer_cov_trace_pc() #8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %call7.i.i) #9
  br label %if.then19

if.end57.i:                                       ; preds = %zr36016_readi.exit162.i
  %95 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %codec16, align 4
  %master_data.i.i.i = getelementptr inbounds %struct.videocodec, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %master_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %master_data.i.i.i, align 4
  %readreg.i.i.i = getelementptr inbounds %struct.videocodec_master, ptr %98, i32 0, i32 5
  %99 = ptrtoint ptr %readreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %readreg.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i32 %100(ptr noundef %96, i16 noundef zeroext 0) #6
  %conv.i.i.i = trunc i32 %call.i.i.i to i8
  br label %do.body6.i.i.i

do.end.i.i.i:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %call7.i.i) #9
  br label %do.body6.i.i.i

do.body6.i.i.i:                                   ; preds = %do.end.i.i.i, %if.then.i.i.i
  %value.0.i.i.i = phi i8 [ %conv.i.i.i, %if.then.i.i.i ], [ 0, %do.end.i.i.i ]
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i.i.i = icmp sgt i32 %101, 3
  br i1 %cmp.i.i.i, label %do.end11.i.i.i, label %do.body6.i.i.i.zr36016_read_version.exit.i_crit_edge

do.body6.i.i.i.zr36016_read_version.exit.i_crit_edge: ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zr36016_read_version.exit.i

do.end11.i.i.i:                                   ; preds = %do.body6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv16.i.i.i = zext i8 %value.0.i.i.i to i32
  %call17.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %call7.i.i, i32 noundef 0, i32 noundef %conv16.i.i.i) #9
  br label %zr36016_read_version.exit.i

zr36016_read_version.exit.i:                      ; preds = %do.end11.i.i.i, %do.body6.i.i.i.zr36016_read_version.exit.i_crit_edge
  %102 = lshr i8 %value.0.i.i.i, 4
  %version.i.i = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %version.i.i, align 8
  %conv59.i = zext i8 %102 to i32
  %and.i = and i32 %conv59.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool60.not.i, label %if.end21, label %do.end64.i

do.end64.i:                                       ; preds = %zr36016_read_version.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %call7.i.i, i32 noundef %conv59.i) #9
  br label %if.then19

if.then19:                                        ; preds = %do.end64.i, %do.end52.i, %do.end39.i
  %104 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data, align 4
  %tobool.not.i52 = icmp eq ptr %105, null
  br i1 %tobool.not.i52, label %if.then19.cleanup_crit_edge, label %do.body.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %if.then19
  %106 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i53 = icmp sgt i32 %106, 0
  br i1 %cmp.i53, label %do.end.i55, label %do.body.i.do.end4.i56_crit_edge

do.body.i.do.end4.i56_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i56

do.end.i55:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %num.i = getelementptr inbounds %struct.zr36016, ptr %105, i32 0, i32 1
  %107 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num.i, align 4
  %call.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %105, i32 noundef %108) #9
  br label %do.end4.i56

do.end4.i56:                                      ; preds = %do.end.i55, %do.body.i.do.end4.i56_crit_edge
  tail call void @kfree(ptr noundef nonnull %105) #6
  %109 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %data, align 4
  %110 = load i32, ptr @zr36016_codecs, align 4
  %dec.i = add i32 %110, -1
  store i32 %dec.i, ptr @zr36016_codecs, align 4
  br label %cleanup

if.end21:                                         ; preds = %zr36016_read_version.exit.i
  %mode = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %mode, align 4
  %width = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 7
  %112 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 768, ptr %width, align 4
  %height = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 8
  %113 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 288, ptr %height, align 2
  %xdec = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 9
  %114 = ptrtoint ptr %xdec to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %xdec, align 8
  %ydec = getelementptr inbounds %struct.zr36016, ptr %call7.i.i, i32 0, i32 10
  %115 = ptrtoint ptr %ydec to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %ydec, align 2
  tail call fastcc void @zr36016_init(ptr noundef nonnull %call7.i.i)
  %116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp23 = icmp sgt i32 %116, 0
  br i1 %cmp23, label %do.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %version.i.i, align 8
  %conv = zext i8 %118 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end21.cleanup_crit_edge, %do.end4.i56, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -28, %do.end8 ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %do.end27 ], [ 0, %if.end21.cleanup_crit_edge ], [ -6, %if.then19.cleanup_crit_edge ], [ -6, %do.end4.i56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_unset(ptr nocapture noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %do.body.do.end4_crit_edge

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %num = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull %1, i32 noundef %4) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data, align 4
  %6 = load i32, ptr @zr36016_codecs, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @zr36016_codecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end4 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_set_mode(ptr nocapture noundef readonly %codec, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %1, i32 noundef %mode) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch = icmp ult i32 %mode, 2
  br i1 %switch, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %mode8 = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mode8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %mode8, align 4
  tail call fastcc void @zr36016_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_set_video(ptr nocapture noundef readonly %codec, ptr nocapture noundef readonly %norm, ptr nocapture noundef readonly %cap, ptr nocapture noundef readnone %pol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %h_start = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 2
  %3 = ptrtoint ptr %h_start to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %h_start, align 2
  %conv = zext i16 %4 to i32
  %v_start = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 6
  %5 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %v_start, align 2
  %conv2 = zext i16 %6 to i32
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap, align 4
  %y = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 1
  %9 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %y, align 4
  %width = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 2
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 3
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %decimation = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 4
  %15 = ptrtoint ptr %decimation to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %decimation, align 4
  %conv3 = zext i16 %16 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %1, i32 noundef %conv, i32 noundef %conv2, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %conv3) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %width6 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 2
  %17 = ptrtoint ptr %width6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width6, align 4
  %conv7 = trunc i32 %18 to i16
  %width8 = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %width8 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv7, ptr %width8, align 4
  %height9 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 3
  %20 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height9, align 4
  %conv10 = trunc i32 %21 to i16
  %height11 = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %height11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv10, ptr %height11, align 2
  %h_start12 = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 2
  %23 = ptrtoint ptr %h_start12 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %h_start12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not = icmp eq i16 %24, 0
  %narrow = select i1 %tobool.not, i16 1, i16 %24
  %25 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap, align 4
  %27 = trunc i32 %26 to i16
  %conv17 = add i16 %narrow, %27
  %xoff = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %xoff to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv17, ptr %xoff, align 4
  %v_start18 = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 6
  %29 = ptrtoint ptr %v_start18 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %v_start18, align 2
  %y20 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 1
  %31 = ptrtoint ptr %y20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y20, align 4
  %33 = trunc i32 %32 to i16
  %conv22 = add i16 %30, %33
  %yoff = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %yoff to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv22, ptr %yoff, align 2
  %decimation23 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 4
  %35 = ptrtoint ptr %decimation23 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %decimation23, align 4
  %37 = and i16 %36, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp25 = icmp ne i16 %37, 1
  %conv28 = zext i1 %cmp25 to i16
  %xdec = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %xdec to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv28, ptr %xdec, align 4
  %39 = ptrtoint ptr %decimation23 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %decimation23, align 4
  %.mask = and i16 %40, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %.mask)
  %cmp32 = icmp ne i16 %.mask, 256
  %conv35 = zext i1 %cmp32 to i16
  %ydec = getelementptr inbounds %struct.zr36016, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %ydec to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv35, ptr %ydec, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36016_control(ptr nocapture noundef readonly %codec, i32 noundef %type, i32 noundef %size, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data1 = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %2, i32 noundef %type, i32 noundef %size) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 32769, label %sw.bb8
    i32 1, label %sw.bb12
    i32 32770, label %do.end4.cleanup_crit_edge
    i32 2, label %do.end4.cleanup_crit_edge29
    i32 3, label %sw.bb20
  ]

do.end4.cleanup_crit_edge29:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp5.not = icmp eq i32 %size, 4
  br i1 %cmp5.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp9.not = icmp eq i32 %size, 4
  br i1 %cmp9.not, label %sw.bb8.sw.epilog_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp13.not = icmp eq i32 %size, 4
  br i1 %cmp13.not, label %if.end15, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not = icmp eq i32 %5, 0
  %. = select i1 %cmp16.not, i32 0, i32 -22
  br label %cleanup

sw.bb20:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %sw.bb20, %if.end15, %sw.bb12.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end4.cleanup_crit_edge, %do.end4.cleanup_crit_edge29
  %retval.0 = phi i32 [ -22, %sw.default ], [ -6, %sw.bb20 ], [ 4, %sw.epilog ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %sw.bb8.cleanup_crit_edge ], [ -14, %sw.bb12.cleanup_crit_edge ], [ %., %if.end15 ], [ 0, %do.end4.cleanup_crit_edge ], [ 0, %do.end4.cleanup_crit_edge29 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr36016_init(ptr noundef %ptr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp.i = icmp sgt i32 %0, 3
  br i1 %cmp.i, label %do.end.i, label %entry.do.end3.i_crit_edge

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %ptr, i32 noundef 0, i32 noundef 0) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  %codec.i = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 2
  %1 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %codec.i, align 4
  %master_data.i = getelementptr inbounds %struct.videocodec, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %master_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master_data.i, align 4
  %writereg.i = getelementptr inbounds %struct.videocodec_master, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %writereg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %writereg.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end11.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %2, i16 noundef zeroext 0, i32 noundef 0) #6
  br label %zr36016_write.exit

do.end11.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %ptr) #9
  br label %zr36016_write.exit

zr36016_write.exit:                               ; preds = %do.end11.i, %if.then4.i
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i58 = icmp sgt i32 %7, 3
  br i1 %cmp.i58, label %do.end.i60, label %zr36016_write.exit.do.end3.i65_crit_edge

zr36016_write.exit.do.end3.i65_crit_edge:         ; preds = %zr36016_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i65

do.end.i60:                                       ; preds = %zr36016_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %ptr, i32 noundef 209, i32 noundef 1) #9
  br label %do.end3.i65

do.end3.i65:                                      ; preds = %do.end.i60, %zr36016_write.exit.do.end3.i65_crit_edge
  %8 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %codec.i, align 4
  %master_data.i62 = getelementptr inbounds %struct.videocodec, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %master_data.i62 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master_data.i62, align 4
  %writereg.i63 = getelementptr inbounds %struct.videocodec_master, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %writereg.i63 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %writereg.i63, align 4
  %tobool.not.i64 = icmp eq ptr %13, null
  br i1 %tobool.not.i64, label %do.end11.i68, label %if.then4.i66

if.then4.i66:                                     ; preds = %do.end3.i65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %9, i16 noundef zeroext 1, i32 noundef 209) #6
  br label %zr36016_write.exit69

do.end11.i68:                                     ; preds = %do.end3.i65
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %ptr) #9
  br label %zr36016_write.exit69

zr36016_write.exit69:                             ; preds = %do.end11.i68, %if.then4.i66
  %xdec = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 9
  %14 = ptrtoint ptr %xdec to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %xdec, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  %ydec = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 10
  %16 = ptrtoint ptr %ydec to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ydec, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool4.not = icmp eq i16 %17, 0
  %cond5 = select i1 %tobool4.not, i8 0, i8 64
  %or6 = select i1 %tobool.not, i8 1, i8 49
  %or7 = or i8 %or6, %cond5
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp.i70 = icmp sgt i32 %18, 3
  br i1 %cmp.i70, label %do.end.i72, label %zr36016_write.exit69.do.end3.i77_crit_edge

zr36016_write.exit69.do.end3.i77_crit_edge:       ; preds = %zr36016_write.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i77

do.end.i72:                                       ; preds = %zr36016_write.exit69
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %or7 to i32
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv.i, i32 noundef 0) #9
  br label %do.end3.i77

do.end3.i77:                                      ; preds = %do.end.i72, %zr36016_write.exit69.do.end3.i77_crit_edge
  %19 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %codec.i, align 4
  %master_data.i74 = getelementptr inbounds %struct.videocodec, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %master_data.i74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master_data.i74, align 4
  %writereg.i75 = getelementptr inbounds %struct.videocodec_master, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %writereg.i75 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %writereg.i75, align 4
  %tobool.not.i76 = icmp eq ptr %24, null
  br i1 %tobool.not.i76, label %do.end17.i, label %if.then4.i78

if.then4.i78:                                     ; preds = %do.end3.i77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %24(ptr noundef %20, i16 noundef zeroext 2, i32 noundef 0) #6
  %25 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %codec.i, align 4
  %master_data11.i = getelementptr inbounds %struct.videocodec, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %master_data11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master_data11.i, align 4
  %writereg12.i = getelementptr inbounds %struct.videocodec_master, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %writereg12.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %writereg12.i, align 4
  %conv14.i = zext i8 %or7 to i32
  tail call void %30(ptr noundef %26, i16 noundef zeroext 3, i32 noundef %conv14.i) #6
  br label %zr36016_writei.exit

do.end17.i:                                       ; preds = %do.end3.i77
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit

zr36016_writei.exit:                              ; preds = %do.end17.i, %if.then4.i78
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.i79 = icmp sgt i32 %31, 3
  br i1 %cmp.i79, label %do.end.i81, label %zr36016_writei.exit.do.end3.i86_crit_edge

zr36016_writei.exit.do.end3.i86_crit_edge:        ; preds = %zr36016_writei.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i86

do.end.i81:                                       ; preds = %zr36016_writei.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef 4, i32 noundef 1) #9
  br label %do.end3.i86

do.end3.i86:                                      ; preds = %do.end.i81, %zr36016_writei.exit.do.end3.i86_crit_edge
  %32 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %codec.i, align 4
  %master_data.i83 = getelementptr inbounds %struct.videocodec, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %master_data.i83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master_data.i83, align 4
  %writereg.i84 = getelementptr inbounds %struct.videocodec_master, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %writereg.i84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %writereg.i84, align 4
  %tobool.not.i85 = icmp eq ptr %37, null
  br i1 %tobool.not.i85, label %do.end17.i91, label %if.then4.i89

if.then4.i89:                                     ; preds = %do.end3.i86
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %37(ptr noundef %33, i16 noundef zeroext 2, i32 noundef 1) #6
  %38 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %codec.i, align 4
  %master_data11.i87 = getelementptr inbounds %struct.videocodec, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %master_data11.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master_data11.i87, align 4
  %writereg12.i88 = getelementptr inbounds %struct.videocodec_master, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %writereg12.i88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %writereg12.i88, align 4
  tail call void %43(ptr noundef %39, i16 noundef zeroext 3, i32 noundef 4) #6
  br label %zr36016_writei.exit92

do.end17.i91:                                     ; preds = %do.end3.i86
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit92

zr36016_writei.exit92:                            ; preds = %do.end17.i91, %if.then4.i89
  %width = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 7
  %44 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %width, align 4
  %46 = lshr i16 %45, 8
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp.i93 = icmp sgt i32 %47, 3
  br i1 %cmp.i93, label %do.end.i96, label %zr36016_writei.exit92.do.end3.i101_crit_edge

zr36016_writei.exit92.do.end3.i101_crit_edge:     ; preds = %zr36016_writei.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i101

do.end.i96:                                       ; preds = %zr36016_writei.exit92
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i16 %46 to i32
  %call.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv10, i32 noundef 5) #9
  br label %do.end3.i101

do.end3.i101:                                     ; preds = %do.end.i96, %zr36016_writei.exit92.do.end3.i101_crit_edge
  %48 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %codec.i, align 4
  %master_data.i98 = getelementptr inbounds %struct.videocodec, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %master_data.i98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master_data.i98, align 4
  %writereg.i99 = getelementptr inbounds %struct.videocodec_master, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %writereg.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %writereg.i99, align 4
  %tobool.not.i100 = icmp eq ptr %53, null
  br i1 %tobool.not.i100, label %do.end17.i107, label %if.then4.i105

if.then4.i105:                                    ; preds = %do.end3.i101
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %53(ptr noundef %49, i16 noundef zeroext 2, i32 noundef 5) #6
  %54 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %codec.i, align 4
  %master_data11.i102 = getelementptr inbounds %struct.videocodec, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %master_data11.i102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master_data11.i102, align 4
  %writereg12.i103 = getelementptr inbounds %struct.videocodec_master, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %writereg12.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %writereg12.i103, align 4
  %conv14.i104 = zext i16 %46 to i32
  tail call void %59(ptr noundef %55, i16 noundef zeroext 3, i32 noundef %conv14.i104) #6
  br label %zr36016_writei.exit108

do.end17.i107:                                    ; preds = %do.end3.i101
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit108

zr36016_writei.exit108:                           ; preds = %do.end17.i107, %if.then4.i105
  %60 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %width, align 4
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp.i109 = icmp sgt i32 %62, 3
  br i1 %cmp.i109, label %do.end.i112, label %zr36016_writei.exit108.do.end3.i117_crit_edge

zr36016_writei.exit108.do.end3.i117_crit_edge:    ; preds = %zr36016_writei.exit108
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i117

do.end.i112:                                      ; preds = %zr36016_writei.exit108
  call void @__sanitizer_cov_trace_pc() #8
  %63 = and i16 %61, 255
  %conv.i110 = zext i16 %63 to i32
  %call.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv.i110, i32 noundef 4) #9
  br label %do.end3.i117

do.end3.i117:                                     ; preds = %do.end.i112, %zr36016_writei.exit108.do.end3.i117_crit_edge
  %64 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %codec.i, align 4
  %master_data.i114 = getelementptr inbounds %struct.videocodec, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %master_data.i114 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %master_data.i114, align 4
  %writereg.i115 = getelementptr inbounds %struct.videocodec_master, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %writereg.i115 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %writereg.i115, align 4
  %tobool.not.i116 = icmp eq ptr %69, null
  br i1 %tobool.not.i116, label %do.end17.i123, label %if.then4.i121

if.then4.i121:                                    ; preds = %do.end3.i117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %69(ptr noundef %65, i16 noundef zeroext 2, i32 noundef 4) #6
  %70 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %codec.i, align 4
  %master_data11.i118 = getelementptr inbounds %struct.videocodec, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %master_data11.i118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %master_data11.i118, align 4
  %writereg12.i119 = getelementptr inbounds %struct.videocodec_master, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %writereg12.i119 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %writereg12.i119, align 4
  %conv13.mask = and i16 %61, 255
  %conv14.i120 = zext i16 %conv13.mask to i32
  tail call void %75(ptr noundef %71, i16 noundef zeroext 3, i32 noundef %conv14.i120) #6
  br label %zr36016_writei.exit124

do.end17.i123:                                    ; preds = %do.end3.i117
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit124

zr36016_writei.exit124:                           ; preds = %do.end17.i123, %if.then4.i121
  %height = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 8
  %76 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %height, align 2
  %78 = lshr i16 %77, 8
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp.i125 = icmp sgt i32 %79, 3
  br i1 %cmp.i125, label %do.end.i128, label %zr36016_writei.exit124.do.end3.i133_crit_edge

zr36016_writei.exit124.do.end3.i133_crit_edge:    ; preds = %zr36016_writei.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i133

do.end.i128:                                      ; preds = %zr36016_writei.exit124
  call void @__sanitizer_cov_trace_pc() #8
  %conv16 = zext i16 %78 to i32
  %call.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv16, i32 noundef 9) #9
  br label %do.end3.i133

do.end3.i133:                                     ; preds = %do.end.i128, %zr36016_writei.exit124.do.end3.i133_crit_edge
  %80 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %codec.i, align 4
  %master_data.i130 = getelementptr inbounds %struct.videocodec, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %master_data.i130 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %master_data.i130, align 4
  %writereg.i131 = getelementptr inbounds %struct.videocodec_master, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %writereg.i131 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %writereg.i131, align 4
  %tobool.not.i132 = icmp eq ptr %85, null
  br i1 %tobool.not.i132, label %do.end17.i139, label %if.then4.i137

if.then4.i137:                                    ; preds = %do.end3.i133
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %85(ptr noundef %81, i16 noundef zeroext 2, i32 noundef 9) #6
  %86 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %codec.i, align 4
  %master_data11.i134 = getelementptr inbounds %struct.videocodec, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %master_data11.i134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %master_data11.i134, align 4
  %writereg12.i135 = getelementptr inbounds %struct.videocodec_master, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %writereg12.i135 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %writereg12.i135, align 4
  %conv14.i136 = zext i16 %78 to i32
  tail call void %91(ptr noundef %87, i16 noundef zeroext 3, i32 noundef %conv14.i136) #6
  br label %zr36016_writei.exit140

do.end17.i139:                                    ; preds = %do.end3.i133
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit140

zr36016_writei.exit140:                           ; preds = %do.end17.i139, %if.then4.i137
  %92 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %height, align 2
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %94)
  %cmp.i141 = icmp sgt i32 %94, 3
  br i1 %cmp.i141, label %do.end.i144, label %zr36016_writei.exit140.do.end3.i149_crit_edge

zr36016_writei.exit140.do.end3.i149_crit_edge:    ; preds = %zr36016_writei.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i149

do.end.i144:                                      ; preds = %zr36016_writei.exit140
  call void @__sanitizer_cov_trace_pc() #8
  %95 = and i16 %93, 255
  %conv.i142 = zext i16 %95 to i32
  %call.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv.i142, i32 noundef 8) #9
  br label %do.end3.i149

do.end3.i149:                                     ; preds = %do.end.i144, %zr36016_writei.exit140.do.end3.i149_crit_edge
  %96 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %codec.i, align 4
  %master_data.i146 = getelementptr inbounds %struct.videocodec, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %master_data.i146 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %master_data.i146, align 4
  %writereg.i147 = getelementptr inbounds %struct.videocodec_master, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %writereg.i147 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %writereg.i147, align 4
  %tobool.not.i148 = icmp eq ptr %101, null
  br i1 %tobool.not.i148, label %do.end17.i155, label %if.then4.i153

if.then4.i153:                                    ; preds = %do.end3.i149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %101(ptr noundef %97, i16 noundef zeroext 2, i32 noundef 8) #6
  %102 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %codec.i, align 4
  %master_data11.i150 = getelementptr inbounds %struct.videocodec, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %master_data11.i150 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %master_data11.i150, align 4
  %writereg12.i151 = getelementptr inbounds %struct.videocodec_master, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %writereg12.i151 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %writereg12.i151, align 4
  %conv20.mask = and i16 %93, 255
  %conv14.i152 = zext i16 %conv20.mask to i32
  tail call void %107(ptr noundef %103, i16 noundef zeroext 3, i32 noundef %conv14.i152) #6
  br label %zr36016_writei.exit156

do.end17.i155:                                    ; preds = %do.end3.i149
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit156

zr36016_writei.exit156:                           ; preds = %do.end17.i155, %if.then4.i153
  %xoff = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 5
  %108 = ptrtoint ptr %xoff to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %xoff, align 4
  %110 = lshr i16 %109, 8
  %111 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %111)
  %cmp.i157 = icmp sgt i32 %111, 3
  br i1 %cmp.i157, label %do.end.i160, label %zr36016_writei.exit156.do.end3.i165_crit_edge

zr36016_writei.exit156.do.end3.i165_crit_edge:    ; preds = %zr36016_writei.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i165

do.end.i160:                                      ; preds = %zr36016_writei.exit156
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = zext i16 %110 to i32
  %call.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv23, i32 noundef 3) #9
  br label %do.end3.i165

do.end3.i165:                                     ; preds = %do.end.i160, %zr36016_writei.exit156.do.end3.i165_crit_edge
  %112 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %codec.i, align 4
  %master_data.i162 = getelementptr inbounds %struct.videocodec, ptr %113, i32 0, i32 5
  %114 = ptrtoint ptr %master_data.i162 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %master_data.i162, align 4
  %writereg.i163 = getelementptr inbounds %struct.videocodec_master, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %writereg.i163 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %writereg.i163, align 4
  %tobool.not.i164 = icmp eq ptr %117, null
  br i1 %tobool.not.i164, label %do.end17.i171, label %if.then4.i169

if.then4.i169:                                    ; preds = %do.end3.i165
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %117(ptr noundef %113, i16 noundef zeroext 2, i32 noundef 3) #6
  %118 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %codec.i, align 4
  %master_data11.i166 = getelementptr inbounds %struct.videocodec, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %master_data11.i166 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %master_data11.i166, align 4
  %writereg12.i167 = getelementptr inbounds %struct.videocodec_master, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %writereg12.i167 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %writereg12.i167, align 4
  %conv14.i168 = zext i16 %110 to i32
  tail call void %123(ptr noundef %119, i16 noundef zeroext 3, i32 noundef %conv14.i168) #6
  br label %zr36016_writei.exit172

do.end17.i171:                                    ; preds = %do.end3.i165
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit172

zr36016_writei.exit172:                           ; preds = %do.end17.i171, %if.then4.i169
  %124 = ptrtoint ptr %xoff to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %xoff, align 4
  %126 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %126)
  %cmp.i173 = icmp sgt i32 %126, 3
  br i1 %cmp.i173, label %do.end.i176, label %zr36016_writei.exit172.do.end3.i181_crit_edge

zr36016_writei.exit172.do.end3.i181_crit_edge:    ; preds = %zr36016_writei.exit172
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i181

do.end.i176:                                      ; preds = %zr36016_writei.exit172
  call void @__sanitizer_cov_trace_pc() #8
  %127 = and i16 %125, 255
  %conv.i174 = zext i16 %127 to i32
  %call.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv.i174, i32 noundef 2) #9
  br label %do.end3.i181

do.end3.i181:                                     ; preds = %do.end.i176, %zr36016_writei.exit172.do.end3.i181_crit_edge
  %128 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %codec.i, align 4
  %master_data.i178 = getelementptr inbounds %struct.videocodec, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %master_data.i178 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %master_data.i178, align 4
  %writereg.i179 = getelementptr inbounds %struct.videocodec_master, ptr %131, i32 0, i32 6
  %132 = ptrtoint ptr %writereg.i179 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %writereg.i179, align 4
  %tobool.not.i180 = icmp eq ptr %133, null
  br i1 %tobool.not.i180, label %do.end17.i187, label %if.then4.i185

if.then4.i185:                                    ; preds = %do.end3.i181
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %133(ptr noundef %129, i16 noundef zeroext 2, i32 noundef 2) #6
  %134 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %codec.i, align 4
  %master_data11.i182 = getelementptr inbounds %struct.videocodec, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %master_data11.i182 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %master_data11.i182, align 4
  %writereg12.i183 = getelementptr inbounds %struct.videocodec_master, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %writereg12.i183 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %writereg12.i183, align 4
  %conv27.mask = and i16 %125, 255
  %conv14.i184 = zext i16 %conv27.mask to i32
  tail call void %139(ptr noundef %135, i16 noundef zeroext 3, i32 noundef %conv14.i184) #6
  br label %zr36016_writei.exit188

do.end17.i187:                                    ; preds = %do.end3.i181
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit188

zr36016_writei.exit188:                           ; preds = %do.end17.i187, %if.then4.i185
  %yoff = getelementptr inbounds %struct.zr36016, ptr %ptr, i32 0, i32 6
  %140 = ptrtoint ptr %yoff to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %yoff, align 2
  %142 = lshr i16 %141, 8
  %143 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %143)
  %cmp.i189 = icmp sgt i32 %143, 3
  br i1 %cmp.i189, label %do.end.i192, label %zr36016_writei.exit188.do.end3.i197_crit_edge

zr36016_writei.exit188.do.end3.i197_crit_edge:    ; preds = %zr36016_writei.exit188
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i197

do.end.i192:                                      ; preds = %zr36016_writei.exit188
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = zext i16 %142 to i32
  %call.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv30, i32 noundef 7) #9
  br label %do.end3.i197

do.end3.i197:                                     ; preds = %do.end.i192, %zr36016_writei.exit188.do.end3.i197_crit_edge
  %144 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %codec.i, align 4
  %master_data.i194 = getelementptr inbounds %struct.videocodec, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %master_data.i194 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %master_data.i194, align 4
  %writereg.i195 = getelementptr inbounds %struct.videocodec_master, ptr %147, i32 0, i32 6
  %148 = ptrtoint ptr %writereg.i195 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %writereg.i195, align 4
  %tobool.not.i196 = icmp eq ptr %149, null
  br i1 %tobool.not.i196, label %do.end17.i203, label %if.then4.i201

if.then4.i201:                                    ; preds = %do.end3.i197
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %149(ptr noundef %145, i16 noundef zeroext 2, i32 noundef 7) #6
  %150 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %codec.i, align 4
  %master_data11.i198 = getelementptr inbounds %struct.videocodec, ptr %151, i32 0, i32 5
  %152 = ptrtoint ptr %master_data11.i198 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %master_data11.i198, align 4
  %writereg12.i199 = getelementptr inbounds %struct.videocodec_master, ptr %153, i32 0, i32 6
  %154 = ptrtoint ptr %writereg12.i199 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %writereg12.i199, align 4
  %conv14.i200 = zext i16 %142 to i32
  tail call void %155(ptr noundef %151, i16 noundef zeroext 3, i32 noundef %conv14.i200) #6
  br label %zr36016_writei.exit204

do.end17.i203:                                    ; preds = %do.end3.i197
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit204

zr36016_writei.exit204:                           ; preds = %do.end17.i203, %if.then4.i201
  %156 = ptrtoint ptr %yoff to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %yoff, align 2
  %158 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %158)
  %cmp.i205 = icmp sgt i32 %158, 3
  br i1 %cmp.i205, label %do.end.i208, label %zr36016_writei.exit204.do.end3.i213_crit_edge

zr36016_writei.exit204.do.end3.i213_crit_edge:    ; preds = %zr36016_writei.exit204
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i213

do.end.i208:                                      ; preds = %zr36016_writei.exit204
  call void @__sanitizer_cov_trace_pc() #8
  %159 = and i16 %157, 255
  %conv.i206 = zext i16 %159 to i32
  %call.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %ptr, i32 noundef %conv.i206, i32 noundef 6) #9
  br label %do.end3.i213

do.end3.i213:                                     ; preds = %do.end.i208, %zr36016_writei.exit204.do.end3.i213_crit_edge
  %160 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %codec.i, align 4
  %master_data.i210 = getelementptr inbounds %struct.videocodec, ptr %161, i32 0, i32 5
  %162 = ptrtoint ptr %master_data.i210 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %master_data.i210, align 4
  %writereg.i211 = getelementptr inbounds %struct.videocodec_master, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %writereg.i211 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %writereg.i211, align 4
  %tobool.not.i212 = icmp eq ptr %165, null
  br i1 %tobool.not.i212, label %do.end17.i219, label %if.then4.i217

if.then4.i217:                                    ; preds = %do.end3.i213
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %165(ptr noundef %161, i16 noundef zeroext 2, i32 noundef 6) #6
  %166 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %codec.i, align 4
  %master_data11.i214 = getelementptr inbounds %struct.videocodec, ptr %167, i32 0, i32 5
  %168 = ptrtoint ptr %master_data11.i214 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %master_data11.i214, align 4
  %writereg12.i215 = getelementptr inbounds %struct.videocodec_master, ptr %169, i32 0, i32 6
  %170 = ptrtoint ptr %writereg12.i215 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %writereg12.i215, align 4
  %conv34.mask = and i16 %157, 255
  %conv14.i216 = zext i16 %conv34.mask to i32
  tail call void %171(ptr noundef %167, i16 noundef zeroext 3, i32 noundef %conv14.i216) #6
  br label %zr36016_writei.exit220

do.end17.i219:                                    ; preds = %do.end3.i213
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #9
  br label %zr36016_writei.exit220

zr36016_writei.exit220:                           ; preds = %do.end17.i219, %if.then4.i217
  %172 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %172)
  %cmp.i221 = icmp sgt i32 %172, 3
  br i1 %cmp.i221, label %do.end.i223, label %zr36016_writei.exit220.do.end3.i228_crit_edge

zr36016_writei.exit220.do.end3.i228_crit_edge:    ; preds = %zr36016_writei.exit220
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i228

do.end.i223:                                      ; preds = %zr36016_writei.exit220
  call void @__sanitizer_cov_trace_pc() #8
  %call.i222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %ptr, i32 noundef 1, i32 noundef 0) #9
  br label %do.end3.i228

do.end3.i228:                                     ; preds = %do.end.i223, %zr36016_writei.exit220.do.end3.i228_crit_edge
  %173 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %codec.i, align 4
  %master_data.i225 = getelementptr inbounds %struct.videocodec, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %master_data.i225 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %master_data.i225, align 4
  %writereg.i226 = getelementptr inbounds %struct.videocodec_master, ptr %176, i32 0, i32 6
  %177 = ptrtoint ptr %writereg.i226 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %writereg.i226, align 4
  %tobool.not.i227 = icmp eq ptr %178, null
  br i1 %tobool.not.i227, label %do.end11.i231, label %if.then4.i229

if.then4.i229:                                    ; preds = %do.end3.i228
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %178(ptr noundef %174, i16 noundef zeroext 0, i32 noundef 1) #6
  br label %zr36016_write.exit232

do.end11.i231:                                    ; preds = %do.end3.i228
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %ptr) #9
  br label %zr36016_write.exit232

zr36016_write.exit232:                            ; preds = %do.end11.i231, %if.then4.i229
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videocodec_register(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype173, !1, !"__UNIQUE_ID_debugtype173", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug174, !4, !"__UNIQUE_ID_debug174", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 28, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 422, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @zr36016_cleanup_module._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @zr36016_cleanup_module._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_zr36016__175_429_zr36016_init_module6, !12, !"__initcall__kmod_zr36016__175_429_zr36016_init_module6", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 429, i32 1}
!13 = !{ptr @__exitcall_zr36016_cleanup_module, !14, !"__exitcall_zr36016_cleanup_module", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 430, i32 1}
!15 = !{ptr @__UNIQUE_ID_author176, !16, !"__UNIQUE_ID_author176", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 432, i32 1}
!17 = !{ptr @__UNIQUE_ID_description177, !18, !"__UNIQUE_ID_description177", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 433, i32 1}
!19 = !{ptr @__UNIQUE_ID_file178, !20, !"__UNIQUE_ID_file178", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 434, i32 1}
!21 = !{ptr @__UNIQUE_ID_license179, !20, !"__UNIQUE_ID_license179", i1 false, i1 false}
!22 = !{ptr @zr36016_codecs, !23, !"zr36016_codecs", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 23, i32 12}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 26, i32 12}
!26 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @zr36016_codec, !28, !"zr36016_codec", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 392, i32 32}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 357, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @zr36016_setup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @zr36016_setup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 360, i32 3}
!36 = !{ptr @zr36016_setup._entry.5, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @zr36016_setup._entry_ptr.7, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 369, i32 41}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 387, i32 2}
!42 = !{ptr @zr36016_setup._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @zr36016_setup._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 127, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @zr36016_basic_test._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @zr36016_basic_test._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 129, i32 4}
!51 = !{ptr @zr36016_basic_test._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @zr36016_basic_test._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 130, i32 3}
!55 = !{ptr @zr36016_basic_test._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @zr36016_basic_test._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 136, i32 3}
!59 = !{ptr @zr36016_basic_test._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @zr36016_basic_test._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @zr36016_basic_test._entry.23, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 141, i32 3}
!63 = !{ptr @zr36016_basic_test._entry_ptr.24, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 147, i32 3}
!66 = !{ptr @zr36016_basic_test._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @zr36016_basic_test._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 90, i32 2}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @zr36016_writei._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @zr36016_writei._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 98, i32 3}
!75 = !{ptr @zr36016_writei._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @zr36016_writei._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 81, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @zr36016_readi._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @zr36016_readi._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 84, i32 2}
!84 = !{ptr @zr36016_readi._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @zr36016_readi._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 51, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @zr36016_read._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @zr36016_read._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 53, i32 2}
!93 = !{ptr @zr36016_read._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @zr36016_read._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 60, i32 2}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @zr36016_write._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @zr36016_write._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 66, i32 3}
!102 = !{ptr @zr36016_write._entry.45, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @zr36016_write._entry_ptr.47, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 332, i32 3}
!106 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @zr36016_unset._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @zr36016_unset._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 229, i32 2}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @zr36016_set_mode._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @zr36016_set_mode._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 246, i32 2}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @zr36016_set_video._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @zr36016_set_video._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/zoran/zr36016.c", i32 281, i32 2}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @zr36016_control._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @zr36016_control._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
