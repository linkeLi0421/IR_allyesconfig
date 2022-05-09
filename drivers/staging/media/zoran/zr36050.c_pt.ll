; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/zr36050.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/zr36050.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.videocodec = type { ptr, [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.zr36050 = type { [32 x i8], i32, ptr, i8, i32, i16, i16, i16, i32, i32, i16, [8 x i8], [8 x i8], i16, i16, %struct.jpeg_com_marker, %struct.jpeg_app_marker }
%struct.jpeg_com_marker = type { i32, [60 x i8] }
%struct.jpeg_app_marker = type { i32, i32, [60 x i8] }
%struct.videocodec_master = type { [32 x i8], i32, i32, i32, ptr, ptr, ptr }
%struct.tvnorm = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.vfe_settings = type { i32, i32, i32, i32, i16, i16, i16 }

@__param_str_debug = internal constant [14 x i8] c"zr36050.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype173 = internal constant [27 x i8] c"zr36050.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug174 = internal constant [37 x i8] c"zr36050.parm=debug:Debug level (0-4)\00", section ".modinfo", align 1
@zr36050_codecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zr36050_cleanup_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"zr36050: something's wrong - %d codecs left somehow.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zr36050_cleanup_module\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/zoran/zr36050.c\00", [58 x i8] zeroinitializer }, align 32
@zr36050_cleanup_module._entry_ptr = internal global ptr @zr36050_cleanup_module._entry, section ".printk_index", align 4
@zr36050_codec = internal constant { %struct.videocodec, [36 x i8] } { %struct.videocodec { ptr null, [32 x i8] c"zr36050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 53249, i32 2, ptr null, ptr null, ptr @zr36050_setup, ptr @zr36050_unset, ptr @zr36050_set_mode, ptr @zr36050_set_video, ptr @zr36050_control, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_zr36050__175_837_zr36050_init_module6 = internal global ptr @zr36050_init_module, section ".initcall6.init", align 4
@__exitcall_zr36050_cleanup_module = internal global ptr @zr36050_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author176 = internal constant [51 x i8] c"zr36050.author=Wolfgang Scherr <scherr@net4you.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [69 x i8] c"zr36050.description=Driver module for ZR36050 jpeg processors v0.7.1\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [49 x i8] c"zr36050.file=drivers/staging/media/zoran/zr36050\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [20 x i8] c"zr36050.license=GPL\00", section ".modinfo", align 1
@zr36050_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"zr36050: initializing MJPEG subsystem #%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36050_setup\00", [18 x i8] zeroinitializer }, align 32
@zr36050_setup._entry_ptr = internal global ptr @zr36050_setup._entry, section ".printk_index", align 4
@zr36050_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013zr36050: Can't attach more codecs!\0A\00", [58 x i8] zeroinitializer }, align 32
@zr36050_setup._entry_ptr.7 = internal global ptr @zr36050_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zr36050[%d]\00", [20 x i8] zeroinitializer }, align 32
@zr36050_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: codec attached and running\0A\00", [62 x i8] zeroinitializer }, align 32
@zr36050_setup._entry_ptr.11 = internal global ptr @zr36050_setup._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zr36050_basic_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: attach failed, can't connect to jpeg processor!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr36050_basic_test\00", [45 x i8] zeroinitializer }, align 32
@zr36050_basic_test._entry_ptr = internal global ptr @zr36050_basic_test._entry, section ".printk_index", align 4
@zr36050_basic_test._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zr36050_basic_test._entry_ptr.15 = internal global ptr @zr36050_basic_test._entry.14, section ".printk_index", align 4
@zr36050_basic_test._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: attach failed, jpeg processor failed (end flag)!\0A\00", [40 x i8] zeroinitializer }, align 32
@zr36050_basic_test._entry_ptr.18 = internal global ptr @zr36050_basic_test._entry.16, section ".printk_index", align 4
@zr36050_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: writing 0x%02x to 0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36050_write\00", [18 x i8] zeroinitializer }, align 32
@zr36050_write._entry_ptr = internal global ptr @zr36050_write._entry, section ".printk_index", align 4
@zr36050_write._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: invalid I/O setup, nothing written!\0A\00", [53 x i8] zeroinitializer }, align 32
@zr36050_write._entry_ptr.23 = internal global ptr @zr36050_write._entry.21, section ".printk_index", align 4
@zr36050_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: invalid I/O setup, nothing read!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr36050_read\00", [19 x i8] zeroinitializer }, align 32
@zr36050_read._entry_ptr = internal global ptr @zr36050_read._entry, section ".printk_index", align 4
@zr36050_read._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: reading from 0x%04x: %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@zr36050_read._entry_ptr.28 = internal global ptr @zr36050_read._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zr36050_wait_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: timeout at wait_end (last status: 0x%02x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zr36050_wait_end\00", [47 x i8] zeroinitializer }, align 32
@zr36050_wait_end._entry_ptr = internal global ptr @zr36050_wait_end._entry, section ".printk_index", align 4
@zr36050_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: COMPRESSION SETUP\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr36050_init\00", [19 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr = internal global ptr @zr36050_init._entry, section ".printk_index", align 4
@zr36050_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: write DQT, DHT, APP\0A\00", [39 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.35 = internal global ptr @zr36050_init._entry.33, section ".printk_index", align 4
@zr36050_dqt = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc", [58 x i8] zeroinitializer }, align 32
@zr36050_dht = internal constant { [420 x i8], [124 x i8] } { [420 x i8] c"\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [124 x i8] zeroinitializer }, align 32
@zr36050_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Status after table preload: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.38 = internal global ptr @zr36050_init._entry.36, section ".printk_index", align 4
@zr36050_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: init aborted!\0A\00", [43 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.41 = internal global ptr @zr36050_init._entry.39, section ".printk_index", align 4
@zr36050_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: code: csize=%d, tot=%d, bit=%ld, highbits=%ld\0A\00", [45 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.44 = internal global ptr @zr36050_init._entry.42, section ".printk_index", align 4
@zr36050_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: code: nettobit=%ld, highnettobits=%ld\0A\00", [53 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.47 = internal global ptr @zr36050_init._entry.45, section ".printk_index", align 4
@zr36050_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: EXPANSION SETUP\0A\00", [43 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.50 = internal global ptr @zr36050_init._entry.48, section ".printk_index", align 4
@zr36050_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.32, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: write DHT\0A\00", [17 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.53 = internal global ptr @zr36050_init._entry.51, section ".printk_index", align 4
@zr36050_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.55 = internal global ptr @zr36050_init._entry.54, section ".printk_index", align 4
@zr36050_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@zr36050_init._entry_ptr.57 = internal global ptr @zr36050_init._entry.56, section ".printk_index", align 4
@zr36050_set_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: write SOF (%dx%d, %d components)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36050_set_sof\00", [16 x i8] zeroinitializer }, align 32
@zr36050_set_sof._entry_ptr = internal global ptr @zr36050_set_sof._entry, section ".printk_index", align 4
@zr36050_set_sos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: write SOS\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36050_set_sos\00", [16 x i8] zeroinitializer }, align 32
@zr36050_set_sos._entry_ptr = internal global ptr @zr36050_set_sos._entry, section ".printk_index", align 4
@zr36050_set_dri._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: write DRI\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36050_set_dri\00", [16 x i8] zeroinitializer }, align 32
@zr36050_set_dri._entry_ptr = internal global ptr @zr36050_set_dri._entry, section ".printk_index", align 4
@zr36050_pushit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: write data block to 0x%04x (len=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zr36050_pushit\00", [17 x i8] zeroinitializer }, align 32
@zr36050_pushit._entry_ptr = internal global ptr @zr36050_pushit._entry, section ".printk_index", align 4
@zr36050_unset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: finished codec #%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36050_unset\00", [18 x i8] zeroinitializer }, align 32
@zr36050_unset._entry_ptr = internal global ptr @zr36050_unset._entry, section ".printk_index", align 4
@zr36050_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set_mode %d call\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zr36050_set_mode\00", [47 x i8] zeroinitializer }, align 32
@zr36050_set_mode._entry_ptr = internal global ptr @zr36050_set_mode._entry, section ".printk_index", align 4
@zr36050_set_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: set_video %d.%d, %d/%d-%dx%d (0x%x) q%d call\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zr36050_set_video\00", [46 x i8] zeroinitializer }, align 32
@zr36050_set_video._entry_ptr = internal global ptr @zr36050_set_video._entry, section ".printk_index", align 4
@zr36050_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: control %d call with %d byte\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36050_control\00", [16 x i8] zeroinitializer }, align 32
@zr36050_control._entry_ptr = internal global ptr @zr36050_control._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 16, i64 17, i64 26, i64 27, i64 32769, i64 32770, i64 32784, i64 32785, i64 32794, i64 32795]
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 35, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"zr36050_codecs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 32, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 830, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"zr36050_codec\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 800, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 748, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 752, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 762, i32 41 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 794, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 147, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 157, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 166, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 70, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 76, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 60, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 63, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 127, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 394, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 424, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"zr36050_dqt\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 205, i32 19 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"zr36050_dht\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 228, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 447, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 451, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 462, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 475, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 494, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 507, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 516, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 520, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 313, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 344, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 370, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 186, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 722, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 545, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 563, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.309 = private constant [41 x i8] c"../drivers/staging/media/zoran/zr36050.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 601, i32 2 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_debug174, ptr @__UNIQUE_ID_debugtype173, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_zr36050_cleanup_module, ptr @__initcall__kmod_zr36050__175_837_zr36050_init_module6, ptr @__param_debug, ptr @zr36050_basic_test._entry, ptr @zr36050_basic_test._entry.14, ptr @zr36050_basic_test._entry.16, ptr @zr36050_basic_test._entry_ptr, ptr @zr36050_basic_test._entry_ptr.15, ptr @zr36050_basic_test._entry_ptr.18, ptr @zr36050_cleanup_module, ptr @zr36050_cleanup_module._entry, ptr @zr36050_cleanup_module._entry_ptr, ptr @zr36050_control._entry, ptr @zr36050_control._entry_ptr, ptr @zr36050_init._entry, ptr @zr36050_init._entry.33, ptr @zr36050_init._entry.36, ptr @zr36050_init._entry.39, ptr @zr36050_init._entry.42, ptr @zr36050_init._entry.45, ptr @zr36050_init._entry.48, ptr @zr36050_init._entry.51, ptr @zr36050_init._entry.54, ptr @zr36050_init._entry.56, ptr @zr36050_init._entry_ptr, ptr @zr36050_init._entry_ptr.35, ptr @zr36050_init._entry_ptr.38, ptr @zr36050_init._entry_ptr.41, ptr @zr36050_init._entry_ptr.44, ptr @zr36050_init._entry_ptr.47, ptr @zr36050_init._entry_ptr.50, ptr @zr36050_init._entry_ptr.53, ptr @zr36050_init._entry_ptr.55, ptr @zr36050_init._entry_ptr.57, ptr @zr36050_pushit._entry, ptr @zr36050_pushit._entry_ptr, ptr @zr36050_read._entry, ptr @zr36050_read._entry.26, ptr @zr36050_read._entry_ptr, ptr @zr36050_read._entry_ptr.28, ptr @zr36050_set_dri._entry, ptr @zr36050_set_dri._entry_ptr, ptr @zr36050_set_mode._entry, ptr @zr36050_set_mode._entry_ptr, ptr @zr36050_set_sof._entry, ptr @zr36050_set_sof._entry_ptr, ptr @zr36050_set_sos._entry, ptr @zr36050_set_sos._entry_ptr, ptr @zr36050_set_video._entry, ptr @zr36050_set_video._entry_ptr, ptr @zr36050_setup._entry, ptr @zr36050_setup._entry.5, ptr @zr36050_setup._entry.9, ptr @zr36050_setup._entry_ptr, ptr @zr36050_setup._entry_ptr.11, ptr @zr36050_setup._entry_ptr.7, ptr @zr36050_unset._entry, ptr @zr36050_unset._entry_ptr, ptr @zr36050_wait_end._entry, ptr @zr36050_wait_end._entry_ptr, ptr @zr36050_write._entry, ptr @zr36050_write._entry.21, ptr @zr36050_write._entry_ptr, ptr @zr36050_write._entry_ptr.23, ptr @debug, ptr @zr36050_codecs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @zr36050_codec, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @zr36050_dqt, ptr @zr36050_dht, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_codecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_cleanup_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_codec to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_basic_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_basic_test._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_basic_test._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_write._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_read._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_wait_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_dqt to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_dht to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_set_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_set_sos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_set_dri._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_pushit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_unset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_set_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36050_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zr36050_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @zr36050_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %do.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.body:                                          ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %do.end, label %do.body.if.end4_crit_edge

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %do.body.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call i32 @videocodec_unregister(ptr noundef nonnull @zr36050_codec) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videocodec_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @zr36050_codecs, align 4
  %call = tail call i32 @videocodec_register(ptr noundef nonnull @zr36050_codec) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_setup(ptr noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load i32, ptr @zr36050_codecs, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = load i32, ptr @zr36050_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %2)
  %cmp4 = icmp eq i32 %2, 20
  br i1 %cmp4, label %do.body6, label %if.end17

do.body6:                                         ; preds = %do.end3
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %do.end11, label %do.body6.cleanup_crit_edge

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end17:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 220) #12
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end17.cleanup_crit_edge, label %if.end20

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end17
  %6 = load i32, ptr @zr36050_codecs, align 4
  %call21 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %6)
  %7 = load i32, ptr @zr36050_codecs, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @zr36050_codecs, align 4
  %num = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num, align 8
  %codec22 = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %codec22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %codec, ptr %codec22, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.i.i = icmp sgt i32 %10, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.do.end3.i.i_crit_edge

if.end20.do.end3.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 64) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end20.do.end3.i.i_crit_edge
  %11 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %codec22, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master_data.i.i, align 4
  %writereg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %writereg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %writereg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %do.body10.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16(ptr noundef %12, i16 noundef zeroext 64, i32 noundef 0) #8
  br label %zr36050_write.exit.i

do.body10.i.i:                                    ; preds = %do.end3.i.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp11.i.i = icmp sgt i32 %17, 0
  br i1 %cmp11.i.i, label %do.end15.i.i, label %do.body10.i.i.do.end3.i69.i_crit_edge

do.body10.i.i.do.end3.i69.i_crit_edge:            ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i69.i

do.end15.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #11
  br label %zr36050_write.exit.i

zr36050_write.exit.i:                             ; preds = %do.end15.i.i, %if.then4.i.i
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp.i62.i = icmp sgt i32 %.pr.i, 3
  br i1 %cmp.i62.i, label %do.end.i64.i, label %zr36050_write.exit.i.do.end3.i69.i_crit_edge

zr36050_write.exit.i.do.end3.i69.i_crit_edge:     ; preds = %zr36050_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i69.i

do.end.i64.i:                                     ; preds = %zr36050_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 65) #11
  br label %do.end3.i69.i

do.end3.i69.i:                                    ; preds = %do.end.i64.i, %zr36050_write.exit.i.do.end3.i69.i_crit_edge, %do.body10.i.i.do.end3.i69.i_crit_edge
  %18 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %codec22, align 4
  %master_data.i66.i = getelementptr inbounds %struct.videocodec, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %master_data.i66.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master_data.i66.i, align 4
  %writereg.i67.i = getelementptr inbounds %struct.videocodec_master, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %writereg.i67.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %writereg.i67.i, align 4
  %tobool.not.i68.i = icmp eq ptr %23, null
  br i1 %tobool.not.i68.i, label %do.body10.i72.i, label %if.then4.i70.i

if.then4.i70.i:                                   ; preds = %do.end3.i69.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %19, i16 noundef zeroext 65, i32 noundef 0) #8
  br label %zr36050_write.exit75.i

do.body10.i72.i:                                  ; preds = %do.end3.i69.i
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp11.i71.i = icmp sgt i32 %24, 0
  br i1 %cmp11.i71.i, label %do.end15.i74.i, label %do.body10.i72.i.zr36050_write.exit75.i_crit_edge

do.body10.i72.i.zr36050_write.exit75.i_crit_edge: ; preds = %do.body10.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit75.i

do.end15.i74.i:                                   ; preds = %do.body10.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #11
  br label %zr36050_write.exit75.i

zr36050_write.exit75.i:                           ; preds = %do.end15.i74.i, %do.body10.i72.i.zr36050_write.exit75.i_crit_edge, %if.then4.i70.i
  %25 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %codec22, align 4
  %master_data.i77.i = getelementptr inbounds %struct.videocodec, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %master_data.i77.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master_data.i77.i, align 4
  %readreg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %readreg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %readreg.i.i, align 4
  %tobool.not.i78.i = icmp eq ptr %30, null
  br i1 %tobool.not.i78.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %zr36050_write.exit75.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i79.i = tail call i32 %30(ptr noundef %26, i16 noundef zeroext 64) #8
  %conv.i.i = trunc i32 %call.i79.i to i8
  br label %do.body12.i.i

do.body.i.i:                                      ; preds = %zr36050_write.exit75.i
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i80.i = icmp sgt i32 %31, 0
  br i1 %cmp.i80.i, label %do.end.i81.i, label %do.body.i.i.zr36050_read.exit.i_crit_edge

do.body.i.i.zr36050_read.exit.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit.i

do.end.i81.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i.i) #11
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %do.end.i81.i, %if.then.i.i
  %value.0.ph.i.i = phi i8 [ 0, %do.end.i81.i ], [ %conv.i.i, %if.then.i.i ]
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i.i)
  %cmp13.i.i = icmp sgt i32 %.pr.i.i, 3
  br i1 %cmp13.i.i, label %do.end18.i.i, label %do.body12.i.i.zr36050_read.exit.i_crit_edge

do.body12.i.i.zr36050_read.exit.i_crit_edge:      ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit.i

do.end18.i.i:                                     ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i.i = zext i8 %value.0.ph.i.i to i32
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call7.i.i, i32 noundef 64, i32 noundef %conv23.i.i) #11
  br label %zr36050_read.exit.i

zr36050_read.exit.i:                              ; preds = %do.end18.i.i, %do.body12.i.i.zr36050_read.exit.i_crit_edge, %do.body.i.i.zr36050_read.exit.i_crit_edge
  %value.036.i.i = phi i8 [ %value.0.ph.i.i, %do.end18.i.i ], [ %value.0.ph.i.i, %do.body12.i.i.zr36050_read.exit.i_crit_edge ], [ 0, %do.body.i.i.zr36050_read.exit.i_crit_edge ]
  %32 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %codec22, align 4
  %master_data.i83.i = getelementptr inbounds %struct.videocodec, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %master_data.i83.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master_data.i83.i, align 4
  %readreg.i84.i = getelementptr inbounds %struct.videocodec_master, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %readreg.i84.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %readreg.i84.i, align 4
  %tobool.not.i85.i = icmp eq ptr %37, null
  br i1 %tobool.not.i85.i, label %do.body.i90.i, label %if.then.i88.i

if.then.i88.i:                                    ; preds = %zr36050_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i86.i = tail call i32 %37(ptr noundef %33, i16 noundef zeroext 65) #8
  %conv.i87.i = trunc i32 %call.i86.i to i8
  br label %do.body12.i96.i

do.body.i90.i:                                    ; preds = %zr36050_read.exit.i
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i89.i = icmp sgt i32 %38, 0
  br i1 %cmp.i89.i, label %do.end.i92.i, label %do.body.i90.i.zr36050_read.exit101.i_crit_edge

do.body.i90.i.zr36050_read.exit101.i_crit_edge:   ; preds = %do.body.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit101.i

do.end.i92.i:                                     ; preds = %do.body.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i.i) #11
  br label %do.body12.i96.i

do.body12.i96.i:                                  ; preds = %do.end.i92.i, %if.then.i88.i
  %value.0.ph.i93.i = phi i8 [ 0, %do.end.i92.i ], [ %conv.i87.i, %if.then.i88.i ]
  %.pr.i94.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i94.i)
  %cmp13.i95.i = icmp sgt i32 %.pr.i94.i, 3
  br i1 %cmp13.i95.i, label %do.end18.i99.i, label %do.body12.i96.i.zr36050_read.exit101.i_crit_edge

do.body12.i96.i.zr36050_read.exit101.i_crit_edge: ; preds = %do.body12.i96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit101.i

do.end18.i99.i:                                   ; preds = %do.body12.i96.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i97.i = zext i8 %value.0.ph.i93.i to i32
  %call24.i98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call7.i.i, i32 noundef 65, i32 noundef %conv23.i97.i) #11
  %.pr = load i32, ptr @debug, align 4
  br label %zr36050_read.exit101.i

zr36050_read.exit101.i:                           ; preds = %do.end18.i99.i, %do.body12.i96.i.zr36050_read.exit101.i_crit_edge, %do.body.i90.i.zr36050_read.exit101.i_crit_edge
  %39 = phi i32 [ %.pr, %do.end18.i99.i ], [ %.pr.i94.i, %do.body12.i96.i.zr36050_read.exit101.i_crit_edge ], [ %38, %do.body.i90.i.zr36050_read.exit101.i_crit_edge ]
  %value.036.i100.i = phi i8 [ %value.0.ph.i93.i, %do.end18.i99.i ], [ %value.0.ph.i93.i, %do.body12.i96.i.zr36050_read.exit101.i_crit_edge ], [ 0, %do.body.i90.i.zr36050_read.exit101.i_crit_edge ]
  %or61.i = or i8 %value.036.i100.i, %value.036.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or61.i)
  %cmp.not.i = icmp eq i8 %or61.i, 0
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %zr36050_read.exit101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.i = icmp sgt i32 %39, 0
  br i1 %cmp4.i, label %do.body.i.return.sink.split.i_crit_edge, label %do.body.i.if.then25_crit_edge

do.body.i.if.then25_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

if.end10.i:                                       ; preds = %zr36050_read.exit101.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i102.i = icmp sgt i32 %39, 3
  br i1 %cmp.i102.i, label %do.end.i104.i, label %if.end10.i.do.end3.i109.i_crit_edge

if.end10.i.do.end3.i109.i_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i109.i

do.end.i104.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %call7.i.i, i32 noundef 255, i32 noundef 64) #11
  br label %do.end3.i109.i

do.end3.i109.i:                                   ; preds = %do.end.i104.i, %if.end10.i.do.end3.i109.i_crit_edge
  %40 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %codec22, align 4
  %master_data.i106.i = getelementptr inbounds %struct.videocodec, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %master_data.i106.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master_data.i106.i, align 4
  %writereg.i107.i = getelementptr inbounds %struct.videocodec_master, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %writereg.i107.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %writereg.i107.i, align 4
  %tobool.not.i108.i = icmp eq ptr %45, null
  br i1 %tobool.not.i108.i, label %do.body10.i112.i, label %if.then4.i110.i

if.then4.i110.i:                                  ; preds = %do.end3.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %45(ptr noundef %41, i16 noundef zeroext 64, i32 noundef 255) #8
  br label %zr36050_write.exit115.i

do.body10.i112.i:                                 ; preds = %do.end3.i109.i
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp11.i111.i = icmp sgt i32 %46, 0
  br i1 %cmp11.i111.i, label %do.end15.i114.i, label %do.body10.i112.i.do.end3.i123.i_crit_edge

do.body10.i112.i.do.end3.i123.i_crit_edge:        ; preds = %do.body10.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i123.i

do.end15.i114.i:                                  ; preds = %do.body10.i112.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i113.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #11
  br label %zr36050_write.exit115.i

zr36050_write.exit115.i:                          ; preds = %do.end15.i114.i, %if.then4.i110.i
  %.pr175.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr175.i)
  %cmp.i116.i = icmp sgt i32 %.pr175.i, 3
  br i1 %cmp.i116.i, label %do.end.i118.i, label %zr36050_write.exit115.i.do.end3.i123.i_crit_edge

zr36050_write.exit115.i.do.end3.i123.i_crit_edge: ; preds = %zr36050_write.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i123.i

do.end.i118.i:                                    ; preds = %zr36050_write.exit115.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i117.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %call7.i.i, i32 noundef 192, i32 noundef 65) #11
  br label %do.end3.i123.i

do.end3.i123.i:                                   ; preds = %do.end.i118.i, %zr36050_write.exit115.i.do.end3.i123.i_crit_edge, %do.body10.i112.i.do.end3.i123.i_crit_edge
  %47 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %codec22, align 4
  %master_data.i120.i = getelementptr inbounds %struct.videocodec, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %master_data.i120.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master_data.i120.i, align 4
  %writereg.i121.i = getelementptr inbounds %struct.videocodec_master, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %writereg.i121.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %writereg.i121.i, align 4
  %tobool.not.i122.i = icmp eq ptr %52, null
  br i1 %tobool.not.i122.i, label %do.body10.i126.i, label %if.then4.i124.i

if.then4.i124.i:                                  ; preds = %do.end3.i123.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %52(ptr noundef %48, i16 noundef zeroext 65, i32 noundef 192) #8
  br label %zr36050_write.exit129.i

do.body10.i126.i:                                 ; preds = %do.end3.i123.i
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp11.i125.i = icmp sgt i32 %53, 0
  br i1 %cmp11.i125.i, label %do.end15.i128.i, label %do.body10.i126.i.zr36050_write.exit129.i_crit_edge

do.body10.i126.i.zr36050_write.exit129.i_crit_edge: ; preds = %do.body10.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit129.i

do.end15.i128.i:                                  ; preds = %do.body10.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i) #11
  br label %zr36050_write.exit129.i

zr36050_write.exit129.i:                          ; preds = %do.end15.i128.i, %do.body10.i126.i.zr36050_write.exit129.i_crit_edge, %if.then4.i124.i
  %54 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %codec22, align 4
  %master_data.i131.i = getelementptr inbounds %struct.videocodec, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %master_data.i131.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master_data.i131.i, align 4
  %readreg.i132.i = getelementptr inbounds %struct.videocodec_master, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %readreg.i132.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %readreg.i132.i, align 4
  %tobool.not.i133.i = icmp eq ptr %59, null
  br i1 %tobool.not.i133.i, label %do.body.i138.i, label %if.then.i136.i

if.then.i136.i:                                   ; preds = %zr36050_write.exit129.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i134.i = tail call i32 %59(ptr noundef %55, i16 noundef zeroext 64) #8
  %conv.i135.i = trunc i32 %call.i134.i to i8
  br label %do.body12.i144.i

do.body.i138.i:                                   ; preds = %zr36050_write.exit129.i
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i137.i = icmp sgt i32 %60, 0
  br i1 %cmp.i137.i, label %do.end.i140.i, label %do.body.i138.i.zr36050_read.exit149.i_crit_edge

do.body.i138.i.zr36050_read.exit149.i_crit_edge:  ; preds = %do.body.i138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit149.i

do.end.i140.i:                                    ; preds = %do.body.i138.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i139.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i.i) #11
  br label %do.body12.i144.i

do.body12.i144.i:                                 ; preds = %do.end.i140.i, %if.then.i136.i
  %value.0.ph.i141.i = phi i8 [ 0, %do.end.i140.i ], [ %conv.i135.i, %if.then.i136.i ]
  %.pr.i142.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i142.i)
  %cmp13.i143.i = icmp sgt i32 %.pr.i142.i, 3
  br i1 %cmp13.i143.i, label %do.end18.i147.i, label %do.body12.i144.i.zr36050_read.exit149.i_crit_edge

do.body12.i144.i.zr36050_read.exit149.i_crit_edge: ; preds = %do.body12.i144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit149.i

do.end18.i147.i:                                  ; preds = %do.body12.i144.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i145.i = zext i8 %value.0.ph.i141.i to i32
  %call24.i146.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call7.i.i, i32 noundef 64, i32 noundef %conv23.i145.i) #11
  br label %zr36050_read.exit149.i

zr36050_read.exit149.i:                           ; preds = %do.end18.i147.i, %do.body12.i144.i.zr36050_read.exit149.i_crit_edge, %do.body.i138.i.zr36050_read.exit149.i_crit_edge
  %value.036.i148.i = phi i8 [ %value.0.ph.i141.i, %do.end18.i147.i ], [ %value.0.ph.i141.i, %do.body12.i144.i.zr36050_read.exit149.i_crit_edge ], [ 0, %do.body.i138.i.zr36050_read.exit149.i_crit_edge ]
  %conv12.i = zext i8 %value.036.i148.i to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %61 = ptrtoint ptr %codec22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %codec22, align 4
  %master_data.i151.i = getelementptr inbounds %struct.videocodec, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %master_data.i151.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master_data.i151.i, align 4
  %readreg.i152.i = getelementptr inbounds %struct.videocodec_master, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %readreg.i152.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %readreg.i152.i, align 4
  %tobool.not.i153.i = icmp eq ptr %66, null
  br i1 %tobool.not.i153.i, label %do.body.i158.i, label %if.then.i156.i

if.then.i156.i:                                   ; preds = %zr36050_read.exit149.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i154.i = tail call i32 %66(ptr noundef %62, i16 noundef zeroext 65) #8
  %conv.i155.i = trunc i32 %call.i154.i to i8
  br label %do.body12.i164.i

do.body.i158.i:                                   ; preds = %zr36050_read.exit149.i
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i157.i = icmp sgt i32 %67, 0
  br i1 %cmp.i157.i, label %do.end.i160.i, label %do.body.i158.i.zr36050_read.exit169.i_crit_edge

do.body.i158.i.zr36050_read.exit169.i_crit_edge:  ; preds = %do.body.i158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit169.i

do.end.i160.i:                                    ; preds = %do.body.i158.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call7.i.i) #11
  br label %do.body12.i164.i

do.body12.i164.i:                                 ; preds = %do.end.i160.i, %if.then.i156.i
  %value.0.ph.i161.i = phi i8 [ 0, %do.end.i160.i ], [ %conv.i155.i, %if.then.i156.i ]
  %.pr.i162.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i162.i)
  %cmp13.i163.i = icmp sgt i32 %.pr.i162.i, 3
  br i1 %cmp13.i163.i, label %do.end18.i167.i, label %do.body12.i164.i.zr36050_read.exit169.i_crit_edge

do.body12.i164.i.zr36050_read.exit169.i_crit_edge: ; preds = %do.body12.i164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit169.i

do.end18.i167.i:                                  ; preds = %do.body12.i164.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i165.i = zext i8 %value.0.ph.i161.i to i32
  %call24.i166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %call7.i.i, i32 noundef 65, i32 noundef %conv23.i165.i) #11
  br label %zr36050_read.exit169.i

zr36050_read.exit169.i:                           ; preds = %do.end18.i167.i, %do.body12.i164.i.zr36050_read.exit169.i_crit_edge, %do.body.i158.i.zr36050_read.exit169.i_crit_edge
  %value.036.i168.i = phi i8 [ %value.0.ph.i161.i, %do.end18.i167.i ], [ %value.0.ph.i161.i, %do.body12.i164.i.zr36050_read.exit169.i_crit_edge ], [ 0, %do.body.i158.i.zr36050_read.exit169.i_crit_edge ]
  %conv14.i = zext i8 %value.036.i168.i to i32
  %or15.i = or i32 %shl.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65472, i32 %or15.i)
  %cmp16.not.i = icmp eq i32 %or15.i, 65472
  br i1 %cmp16.not.i, label %zr36050_read.exit169.i.while.cond.i.i_crit_edge, label %do.body19.i

zr36050_read.exit169.i.while.cond.i.i_crit_edge:  ; preds = %zr36050_read.exit169.i
  br label %while.cond.i.i

do.body19.i:                                      ; preds = %zr36050_read.exit169.i
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp20.i = icmp sgt i32 %68, 0
  br i1 %cmp20.i, label %do.body19.i.return.sink.split.i_crit_edge, label %do.body19.i.if.then25_crit_edge

do.body19.i.if.then25_crit_edge:                  ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

do.body19.i.return.sink.split.i_crit_edge:        ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %zr36050_read.exit169.i.while.cond.i.i_crit_edge
  %i.0.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ 0, %zr36050_read.exit169.i.while.cond.i.i_crit_edge ]
  %call.i170.i = tail call fastcc zeroext i8 @zr36050_read_status1(ptr noundef %call7.i.i) #8
  %69 = and i8 %call.i170.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i171.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i171.i, label %while.body.i.i, label %while.cond.i.i.zr36050_wait_end.exit.i_crit_edge

while.cond.i.i.zr36050_wait_end.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_wait_end.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748) #8
  %inc.i.i = add nuw nsw i32 %i.0.i.i, 1
  %exitcond.i.i = icmp eq i32 %inc.i.i, 200002
  br i1 %exitcond.i.i, label %do.body.i172.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

do.body.i172.i:                                   ; preds = %while.body.i.i
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp2.i.i = icmp sgt i32 %71, 0
  br i1 %cmp2.i.i, label %do.end.i173.i, label %do.body.i172.i.zr36050_wait_end.exit.i_crit_edge

do.body.i172.i.zr36050_wait_end.exit.i_crit_edge: ; preds = %do.body.i172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_wait_end.exit.i

do.end.i173.i:                                    ; preds = %do.body.i172.i
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i.i = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %status1.i.i, align 8
  %conv6.i.i = zext i8 %73 to i32
  %call7.i.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %call7.i.i, i32 noundef %conv6.i.i) #11
  br label %zr36050_wait_end.exit.i

zr36050_wait_end.exit.i:                          ; preds = %do.end.i173.i, %do.body.i172.i.zr36050_wait_end.exit.i_crit_edge, %while.cond.i.i.zr36050_wait_end.exit.i_crit_edge
  %status1.i = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %status1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %status1.i, align 8
  %76 = and i8 %75, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp33.i = icmp eq i8 %76, 0
  br i1 %cmp33.i, label %do.body36.i, label %if.end27

do.body36.i:                                      ; preds = %zr36050_wait_end.exit.i
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp37.i = icmp sgt i32 %77, 0
  br i1 %cmp37.i, label %do.body36.i.return.sink.split.i_crit_edge, label %do.body36.i.if.then25_crit_edge

do.body36.i.if.then25_crit_edge:                  ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then25

do.body36.i.return.sink.split.i_crit_edge:        ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %do.body36.i.return.sink.split.i_crit_edge, %do.body19.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.12, %do.body.i.return.sink.split.i_crit_edge ], [ @.str.12, %do.body19.i.return.sink.split.i_crit_edge ], [ @.str.17, %do.body36.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -6, %do.body.i.return.sink.split.i_crit_edge ], [ -6, %do.body19.i.return.sink.split.i_crit_edge ], [ -16, %do.body36.i.return.sink.split.i_crit_edge ]
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink.i, ptr noundef %call7.i.i) #11
  br label %if.then25

if.then25:                                        ; preds = %return.sink.split.i, %do.body36.i.if.then25_crit_edge, %do.body19.i.if.then25_crit_edge, %do.body.i.if.then25_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %return.sink.split.i ], [ -16, %do.body36.i.if.then25_crit_edge ], [ -6, %do.body19.i.if.then25_crit_edge ], [ -6, %do.body.i.if.then25_crit_edge ]
  %78 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data, align 4
  %tobool.not.i = icmp eq ptr %79, null
  br i1 %tobool.not.i, label %if.then25.cleanup_crit_edge, label %do.body.i70

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i70:                                      ; preds = %if.then25
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i = icmp sgt i32 %80, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i70.do.end4.i_crit_edge

do.body.i70.do.end4.i_crit_edge:                  ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #10
  %num.i = getelementptr inbounds %struct.zr36050, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %79, i32 noundef %82) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.body.i70.do.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %79) #8
  %83 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %data, align 4
  %84 = load i32, ptr @zr36050_codecs, align 4
  %dec.i = add i32 %84, -1
  store i32 %dec.i, ptr @zr36050_codecs, align 4
  br label %cleanup

if.end27:                                         ; preds = %zr36050_wait_end.exit.i
  %h_samp_ratio = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 11
  %85 = ptrtoint ptr %h_samp_ratio to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 144397762564194304, ptr %h_samp_ratio, align 2
  %v_samp_ratio = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 12
  %86 = ptrtoint ptr %v_samp_ratio to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 72340168526266368, ptr %v_samp_ratio, align 2
  %bitrate_ctrl = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 7
  %87 = ptrtoint ptr %bitrate_ctrl to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %bitrate_ctrl, align 4
  %mode = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 4
  %88 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %mode, align 4
  %width = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 5
  %89 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 384, ptr %width, align 8
  %height = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 6
  %90 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 288, ptr %height, align 2
  %total_code_vol = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 8
  %91 = ptrtoint ptr %total_code_vol to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16000, ptr %total_code_vol, align 8
  %max_block_vol = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 10
  %92 = ptrtoint ptr %max_block_vol to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 240, ptr %max_block_vol, align 8
  %scalefact = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 13
  %93 = ptrtoint ptr %scalefact to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 256, ptr %scalefact, align 2
  %dri = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 14
  %94 = ptrtoint ptr %dri to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %dri, align 4
  %app = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 16
  %95 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %app, align 8
  %len = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 16, i32 1
  %96 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %len, align 4
  %com = getelementptr inbounds %struct.zr36050, ptr %call7.i.i, i32 0, i32 15
  %97 = ptrtoint ptr %com to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %com, align 8
  tail call fastcc void @zr36050_init(ptr noundef nonnull %call7.i.i)
  %98 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp33 = icmp sgt i32 %98, 0
  br i1 %cmp33, label %do.end37, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end27.cleanup_crit_edge, %do.end4.i, %if.then25.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end11, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %do.end11 ], [ -28, %do.body6.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ 0, %do.end37 ], [ 0, %if.end27.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then25.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_unset(ptr nocapture noundef %codec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %do.body.do.end4_crit_edge

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %num = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull %1, i32 noundef %4) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data, align 4
  %6 = load i32, ptr @zr36050_codecs, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @zr36050_codecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end4 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_set_mode(ptr nocapture noundef readonly %codec, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %1, i32 noundef %mode) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %switch = icmp ult i32 %mode, 2
  br i1 %switch, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %mode8 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mode8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %mode8, align 4
  tail call fastcc void @zr36050_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_set_video(ptr nocapture noundef readonly %codec, ptr nocapture noundef readonly %norm, ptr nocapture noundef readonly %cap, ptr nocapture noundef readnone %pol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %quality = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 6
  %17 = ptrtoint ptr %quality to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %quality, align 4
  %conv4 = zext i16 %18 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %1, i32 noundef %conv, i32 noundef %conv2, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %conv3, i32 noundef %conv4) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %width7 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 2
  %19 = ptrtoint ptr %width7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %width7, align 4
  %decimation8 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 4
  %21 = ptrtoint ptr %decimation8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %decimation8, align 4
  %23 = and i16 %22, 255
  %and = zext i16 %23 to i32
  %div = udiv i32 %20, %and
  %conv10 = trunc i32 %div to i16
  %width11 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %width11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv10, ptr %width11, align 4
  %height12 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 3
  %25 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height12, align 4
  %27 = load i16, ptr %decimation8, align 4
  %28 = lshr i16 %27, 8
  %29 = zext i16 %28 to i32
  %div16 = udiv i32 %26, %29
  %conv17 = trunc i32 %div16 to i16
  %height18 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %height18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv17, ptr %height18, align 2
  %conv22 = and i32 %div16, 65535
  %quality24 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 6
  %31 = ptrtoint ptr %quality24 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %quality24, align 4
  %conv25 = zext i16 %32 to i32
  %conv20 = shl i32 %div, 4
  %mul = and i32 %conv20, 1048560
  %mul23 = mul i32 %mul, %conv22
  %mul26 = mul i32 %mul23, %conv25
  %div27 = sdiv i32 %mul26, 200
  %33 = tail call i32 @llvm.smax.i32(i32 %div27, i32 8192)
  %total_code_vol = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %total_code_vol to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %total_code_vol, align 4
  %mul32 = mul i32 %35, 7
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %mul32)
  %shr3965 = lshr i32 %36, 3
  %real_code_vol = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr3965, ptr %real_code_vol, align 4
  %max_block_vol = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %max_block_vol to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max_block_vol, align 4
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp.i = icmp sgt i32 %40, 3
  br i1 %cmp.i, label %do.end.i, label %do.end6.do.end3.i_crit_edge

do.end6.do.end3.i_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %41 = and i16 %39, 255
  %conv.i = zext i16 %41 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %1, i32 noundef %conv.i, i32 noundef 5) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end6.do.end3.i_crit_edge
  %codec.i = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %codec.i, align 4
  %master_data.i = getelementptr inbounds %struct.videocodec, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %master_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master_data.i, align 4
  %writereg.i = getelementptr inbounds %struct.videocodec_master, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %writereg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %writereg.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %do.body10.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv40.mask = and i16 %39, 255
  %conv9.i = zext i16 %conv40.mask to i32
  tail call void %47(ptr noundef %43, i16 noundef zeroext 5, i32 noundef %conv9.i) #8
  br label %zr36050_write.exit

do.body10.i:                                      ; preds = %do.end3.i
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp11.i = icmp sgt i32 %48, 0
  br i1 %cmp11.i, label %do.end15.i, label %do.body10.i.zr36050_write.exit_crit_edge

do.body10.i.zr36050_write.exit_crit_edge:         ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %1) #11
  br label %zr36050_write.exit

zr36050_write.exit:                               ; preds = %do.end15.i, %do.body10.i.zr36050_write.exit_crit_edge, %if.then4.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36050_control(ptr nocapture noundef readonly %codec, i32 noundef %type, i32 noundef %size, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %1, i32 noundef %type, i32 noundef %size) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 32769, label %sw.bb9
    i32 1, label %sw.bb14
    i32 32770, label %do.end4.cleanup82_crit_edge
    i32 2, label %do.end4.cleanup82_crit_edge131
    i32 3, label %sw.bb24
    i32 32784, label %sw.bb25
    i32 16, label %sw.bb30
    i32 32785, label %sw.bb37
    i32 17, label %sw.bb44
    i32 32794, label %sw.bb50
    i32 26, label %sw.bb56
    i32 32795, label %sw.bb65
    i32 27, label %sw.bb73
  ]

do.end4.cleanup82_crit_edge131:                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

do.end4.cleanup82_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp5.not = icmp eq i32 %size, 4
  br i1 %cmp5.not, label %if.end7, label %sw.bb.cleanup82_crit_edge

sw.bb.cleanup82_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc zeroext i8 @zr36050_read_status1(ptr noundef %1)
  %status1 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %status1, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %data, align 4
  br label %cleanup82

sw.bb9:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp10.not = icmp eq i32 %size, 4
  br i1 %cmp10.not, label %if.end13, label %sw.bb9.cleanup82_crit_edge

sw.bb9.cleanup82_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %data, align 4
  br label %cleanup82

sw.bb14:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp15.not = icmp eq i32 %size, 4
  br i1 %cmp15.not, label %if.end18, label %sw.bb14.cleanup82_crit_edge

sw.bb14.cleanup82_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end18:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp19.not = icmp eq i32 %9, 1
  %. = select i1 %cmp19.not, i32 0, i32 -22
  br label %cleanup82

sw.bb24:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

sw.bb25:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp26.not = icmp eq i32 %size, 4
  br i1 %cmp26.not, label %if.end29, label %sw.bb25.cleanup82_crit_edge

sw.bb25.cleanup82_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end29:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %total_code_vol = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %total_code_vol to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total_code_vol, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 4
  br label %cleanup82

sw.bb30:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp31.not = icmp eq i32 %size, 4
  br i1 %cmp31.not, label %if.end34, label %sw.bb30.cleanup82_crit_edge

sw.bb30.cleanup82_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end34:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %total_code_vol35 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %total_code_vol35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %total_code_vol35, align 4
  %mul = mul i32 %14, 6
  %shr = lshr i32 %mul, 3
  %real_code_vol = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %real_code_vol, align 4
  br label %cleanup82

sw.bb37:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp38.not = icmp eq i32 %size, 4
  br i1 %cmp38.not, label %if.end41, label %sw.bb37.cleanup82_crit_edge

sw.bb37.cleanup82_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end41:                                         ; preds = %sw.bb37
  %codec.i.i = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %codec.i.i, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_data.i.i, align 4
  %readreg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %readreg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %readreg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %22(ptr noundef %18, i16 noundef zeroext 17) #8
  %conv.i.i = trunc i32 %call.i.i to i8
  br label %do.body12.i.i

do.body.i.i:                                      ; preds = %if.end41
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp sgt i32 %23, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.i.zr36050_read.exit.i_crit_edge

do.body.i.i.zr36050_read.exit.i_crit_edge:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %1) #11
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %do.end.i.i, %if.then.i.i
  %value.0.ph.i.i = phi i8 [ 0, %do.end.i.i ], [ %conv.i.i, %if.then.i.i ]
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i.i)
  %cmp13.i.i = icmp sgt i32 %.pr.i.i, 3
  br i1 %cmp13.i.i, label %do.end18.i.i, label %do.body12.i.i.zr36050_read.exit.i_crit_edge

do.body12.i.i.zr36050_read.exit.i_crit_edge:      ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit.i

do.end18.i.i:                                     ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i.i = zext i8 %value.0.ph.i.i to i32
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef 17, i32 noundef %conv23.i.i) #11
  br label %zr36050_read.exit.i

zr36050_read.exit.i:                              ; preds = %do.end18.i.i, %do.body12.i.i.zr36050_read.exit.i_crit_edge, %do.body.i.i.zr36050_read.exit.i_crit_edge
  %value.036.i.i = phi i8 [ %value.0.ph.i.i, %do.end18.i.i ], [ %value.0.ph.i.i, %do.body12.i.i.zr36050_read.exit.i_crit_edge ], [ 0, %do.body.i.i.zr36050_read.exit.i_crit_edge ]
  %conv.i = zext i8 %value.036.i.i to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %24 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %codec.i.i, align 4
  %master_data.i11.i = getelementptr inbounds %struct.videocodec, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %master_data.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_data.i11.i, align 4
  %readreg.i12.i = getelementptr inbounds %struct.videocodec_master, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %readreg.i12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readreg.i12.i, align 4
  %tobool.not.i13.i = icmp eq ptr %29, null
  br i1 %tobool.not.i13.i, label %do.body.i18.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %zr36050_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i14.i = tail call i32 %29(ptr noundef %25, i16 noundef zeroext 18) #8
  %conv.i15.i = trunc i32 %call.i14.i to i8
  br label %do.body12.i24.i

do.body.i18.i:                                    ; preds = %zr36050_read.exit.i
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i17.i = icmp sgt i32 %30, 0
  br i1 %cmp.i17.i, label %do.end.i20.i, label %do.body.i18.i.zr36050_read.exit29.i_crit_edge

do.body.i18.i.zr36050_read.exit29.i_crit_edge:    ; preds = %do.body.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit29.i

do.end.i20.i:                                     ; preds = %do.body.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %1) #11
  br label %do.body12.i24.i

do.body12.i24.i:                                  ; preds = %do.end.i20.i, %if.then.i16.i
  %value.0.ph.i21.i = phi i8 [ 0, %do.end.i20.i ], [ %conv.i15.i, %if.then.i16.i ]
  %.pr.i22.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i22.i)
  %cmp13.i23.i = icmp sgt i32 %.pr.i22.i, 3
  br i1 %cmp13.i23.i, label %do.end18.i27.i, label %do.body12.i24.i.zr36050_read.exit29.i_crit_edge

do.body12.i24.i.zr36050_read.exit29.i_crit_edge:  ; preds = %do.body12.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit29.i

do.end18.i27.i:                                   ; preds = %do.body12.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i25.i = zext i8 %value.0.ph.i21.i to i32
  %call24.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef 18, i32 noundef %conv23.i25.i) #11
  br label %zr36050_read.exit29.i

zr36050_read.exit29.i:                            ; preds = %do.end18.i27.i, %do.body12.i24.i.zr36050_read.exit29.i_crit_edge, %do.body.i18.i.zr36050_read.exit29.i_crit_edge
  %value.036.i28.i = phi i8 [ %value.0.ph.i21.i, %do.end18.i27.i ], [ %value.0.ph.i21.i, %do.body12.i24.i.zr36050_read.exit29.i_crit_edge ], [ 0, %do.body.i18.i.zr36050_read.exit29.i_crit_edge ]
  %conv2.i = zext i8 %value.036.i28.i to i16
  %or.i = or i16 %shl.i, %conv2.i
  %scalefact.i = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %scalefact.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or.i, ptr %scalefact.i, align 2
  %32 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %codec.i.i, align 4
  %master_data.i31.i = getelementptr inbounds %struct.videocodec, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %master_data.i31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %master_data.i31.i, align 4
  %readreg.i32.i = getelementptr inbounds %struct.videocodec_master, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %readreg.i32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %readreg.i32.i, align 4
  %tobool.not.i33.i = icmp eq ptr %37, null
  br i1 %tobool.not.i33.i, label %do.body.i38.i, label %if.then.i36.i

if.then.i36.i:                                    ; preds = %zr36050_read.exit29.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i34.i = tail call i32 %37(ptr noundef %33, i16 noundef zeroext 0) #8
  %phi.cast.i = and i32 %call.i34.i, 255
  br label %do.body12.i44.i

do.body.i38.i:                                    ; preds = %zr36050_read.exit29.i
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i37.i = icmp sgt i32 %38, 0
  br i1 %cmp.i37.i, label %do.end.i40.i, label %do.body.i38.i.zr36050_read_scalefactor.exit_crit_edge

do.body.i38.i.zr36050_read_scalefactor.exit_crit_edge: ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read_scalefactor.exit

do.end.i40.i:                                     ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %1) #11
  br label %do.body12.i44.i

do.body12.i44.i:                                  ; preds = %do.end.i40.i, %if.then.i36.i
  %value.0.ph.i41.i = phi i32 [ 0, %do.end.i40.i ], [ %phi.cast.i, %if.then.i36.i ]
  %.pr.i42.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i42.i)
  %cmp13.i43.i = icmp sgt i32 %.pr.i42.i, 3
  br i1 %cmp13.i43.i, label %do.end18.i47.i, label %do.body12.i44.i.zr36050_read_scalefactor.exit_crit_edge

do.body12.i44.i.zr36050_read_scalefactor.exit_crit_edge: ; preds = %do.body12.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read_scalefactor.exit

do.end18.i47.i:                                   ; preds = %do.body12.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef 0, i32 noundef %value.0.ph.i41.i) #11
  br label %zr36050_read_scalefactor.exit

zr36050_read_scalefactor.exit:                    ; preds = %do.end18.i47.i, %do.body12.i44.i.zr36050_read_scalefactor.exit_crit_edge, %do.body.i38.i.zr36050_read_scalefactor.exit_crit_edge
  %39 = ptrtoint ptr %scalefact.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %scalefact.i, align 2
  %conv43 = zext i16 %40 to i32
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv43, ptr %data, align 4
  br label %cleanup82

sw.bb44:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp45.not = icmp eq i32 %size, 4
  br i1 %cmp45.not, label %if.end48, label %sw.bb44.cleanup82_crit_edge

sw.bb44.cleanup82_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end48:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data, align 4
  %conv49 = trunc i32 %43 to i16
  %scalefact = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %scalefact to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv49, ptr %scalefact, align 2
  br label %cleanup82

sw.bb50:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %size)
  %cmp51.not = icmp eq i32 %size, 68
  br i1 %cmp51.not, label %if.end54, label %sw.bb50.cleanup82_crit_edge

sw.bb50.cleanup82_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end54:                                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #10
  %app55 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 16
  %45 = call ptr @memcpy(ptr %data, ptr %app55, i32 68)
  br label %cleanup82

sw.bb56:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %size)
  %cmp58.not = icmp eq i32 %size, 68
  br i1 %cmp58.not, label %if.end61, label %sw.bb56.cleanup82_crit_edge

sw.bb56.cleanup82_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end61:                                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #10
  %app62 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 16
  %46 = call ptr @memcpy(ptr %app62, ptr %data, i32 68)
  br label %cleanup82

sw.bb65:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp66.not = icmp eq i32 %size, 64
  br i1 %cmp66.not, label %if.end69, label %sw.bb65.cleanup82_crit_edge

sw.bb65.cleanup82_crit_edge:                      ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end69:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #10
  %com70 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 15
  %47 = call ptr @memcpy(ptr %data, ptr %com70, i32 64)
  br label %cleanup82

sw.bb73:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %cmp75.not = icmp eq i32 %size, 64
  br i1 %cmp75.not, label %if.end78, label %sw.bb73.cleanup82_crit_edge

sw.bb73.cleanup82_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

if.end78:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  %com79 = getelementptr inbounds %struct.zr36050, ptr %1, i32 0, i32 15
  %48 = call ptr @memcpy(ptr %com79, ptr %data, i32 64)
  br label %cleanup82

sw.default:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

cleanup82:                                        ; preds = %sw.default, %if.end78, %sw.bb73.cleanup82_crit_edge, %if.end69, %sw.bb65.cleanup82_crit_edge, %if.end61, %sw.bb56.cleanup82_crit_edge, %if.end54, %sw.bb50.cleanup82_crit_edge, %if.end48, %sw.bb44.cleanup82_crit_edge, %zr36050_read_scalefactor.exit, %sw.bb37.cleanup82_crit_edge, %if.end34, %sw.bb30.cleanup82_crit_edge, %if.end29, %sw.bb25.cleanup82_crit_edge, %sw.bb24, %if.end18, %sw.bb14.cleanup82_crit_edge, %if.end13, %sw.bb9.cleanup82_crit_edge, %if.end7, %sw.bb.cleanup82_crit_edge, %do.end4.cleanup82_crit_edge, %do.end4.cleanup82_crit_edge131
  %retval.4 = phi i32 [ -22, %sw.default ], [ -6, %sw.bb24 ], [ -14, %sw.bb.cleanup82_crit_edge ], [ -14, %sw.bb9.cleanup82_crit_edge ], [ -14, %sw.bb14.cleanup82_crit_edge ], [ %., %if.end18 ], [ 0, %do.end4.cleanup82_crit_edge ], [ 0, %do.end4.cleanup82_crit_edge131 ], [ -14, %sw.bb25.cleanup82_crit_edge ], [ -14, %sw.bb30.cleanup82_crit_edge ], [ -14, %sw.bb37.cleanup82_crit_edge ], [ -14, %sw.bb44.cleanup82_crit_edge ], [ 64, %if.end78 ], [ 64, %if.end69 ], [ 68, %if.end61 ], [ 68, %if.end54 ], [ 4, %if.end48 ], [ 4, %zr36050_read_scalefactor.exit ], [ 4, %if.end34 ], [ 4, %if.end29 ], [ 4, %if.end13 ], [ 4, %if.end7 ], [ -14, %sw.bb50.cleanup82_crit_edge ], [ -14, %sw.bb56.cleanup82_crit_edge ], [ -14, %sw.bb65.cleanup82_crit_edge ], [ -14, %sw.bb73.cleanup82_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr36050_init(ptr noundef %ptr) unnamed_addr #3 align 64 {
entry:
  %dri_data.i = alloca [6 x i8], align 1
  %sos_data.i = alloca [16 x i8], align 1
  %sof_data.i = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.body, label %do.body150

do.body:                                          ; preds = %entry
  br i1 %cmp1, label %do.end6, label %do.body.do.end3.i_crit_edge

do.body.do.end3.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end6:                                          ; preds = %do.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %ptr) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 3
  br i1 %cmp.i, label %do.end.i, label %do.end6.do.end3.i_crit_edge

do.end6.do.end3.i_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 64, i32 noundef 2) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end6.do.end3.i_crit_edge, %do.body.do.end3.i_crit_edge
  %codec.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 2
  %3 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %codec.i, align 4
  %master_data.i = getelementptr inbounds %struct.videocodec, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %master_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master_data.i, align 4
  %writereg.i = getelementptr inbounds %struct.videocodec_master, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %writereg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %writereg.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body10.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %4, i16 noundef zeroext 2, i32 noundef 64) #8
  br label %zr36050_write.exit

do.body10.i:                                      ; preds = %do.end3.i
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11.i = icmp sgt i32 %9, 0
  br i1 %cmp11.i, label %do.end15.i, label %do.body10.i.do.end3.i322_crit_edge

do.body10.i.do.end3.i322_crit_edge:               ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i322

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit

zr36050_write.exit:                               ; preds = %do.end15.i, %if.then4.i
  %.pr1083 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1083)
  %cmp.i315 = icmp sgt i32 %.pr1083, 3
  br i1 %cmp.i315, label %do.end.i317, label %zr36050_write.exit.do.end3.i322_crit_edge

zr36050_write.exit.do.end3.i322_crit_edge:        ; preds = %zr36050_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i322

do.end.i317:                                      ; preds = %zr36050_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 144, i32 noundef 3) #11
  br label %do.end3.i322

do.end3.i322:                                     ; preds = %do.end.i317, %zr36050_write.exit.do.end3.i322_crit_edge, %do.body10.i.do.end3.i322_crit_edge
  %10 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec.i, align 4
  %master_data.i319 = getelementptr inbounds %struct.videocodec, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %master_data.i319 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_data.i319, align 4
  %writereg.i320 = getelementptr inbounds %struct.videocodec_master, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %writereg.i320 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %writereg.i320, align 4
  %tobool.not.i321 = icmp eq ptr %15, null
  br i1 %tobool.not.i321, label %do.body10.i325, label %if.then4.i323

if.then4.i323:                                    ; preds = %do.end3.i322
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %11, i16 noundef zeroext 3, i32 noundef 144) #8
  br label %zr36050_write.exit328

do.body10.i325:                                   ; preds = %do.end3.i322
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp11.i324 = icmp sgt i32 %16, 0
  br i1 %cmp11.i324, label %do.end15.i327, label %do.body10.i325.do.end3.i336_crit_edge

do.body10.i325.do.end3.i336_crit_edge:            ; preds = %do.body10.i325
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i336

do.end15.i327:                                    ; preds = %do.body10.i325
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit328

zr36050_write.exit328:                            ; preds = %do.end15.i327, %if.then4.i323
  %.pr1085 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1085)
  %cmp.i329 = icmp sgt i32 %.pr1085, 3
  br i1 %cmp.i329, label %do.end.i331, label %zr36050_write.exit328.do.end3.i336_crit_edge

zr36050_write.exit328.do.end3.i336_crit_edge:     ; preds = %zr36050_write.exit328
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i336

do.end.i331:                                      ; preds = %zr36050_write.exit328
  call void @__sanitizer_cov_trace_pc() #10
  %call.i330 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 4) #11
  br label %do.end3.i336

do.end3.i336:                                     ; preds = %do.end.i331, %zr36050_write.exit328.do.end3.i336_crit_edge, %do.body10.i325.do.end3.i336_crit_edge
  %17 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %codec.i, align 4
  %master_data.i333 = getelementptr inbounds %struct.videocodec, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %master_data.i333 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_data.i333, align 4
  %writereg.i334 = getelementptr inbounds %struct.videocodec_master, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %writereg.i334 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %writereg.i334, align 4
  %tobool.not.i335 = icmp eq ptr %22, null
  br i1 %tobool.not.i335, label %do.body10.i339, label %if.then4.i337

if.then4.i337:                                    ; preds = %do.end3.i336
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %22(ptr noundef %18, i16 noundef zeroext 4, i32 noundef 0) #8
  br label %zr36050_write.exit342

do.body10.i339:                                   ; preds = %do.end3.i336
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp11.i338 = icmp sgt i32 %23, 0
  br i1 %cmp11.i338, label %do.end15.i341, label %do.body10.i339.do.end3.i350_crit_edge

do.body10.i339.do.end3.i350_crit_edge:            ; preds = %do.body10.i339
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i350

do.end15.i341:                                    ; preds = %do.body10.i339
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit342

zr36050_write.exit342:                            ; preds = %do.end15.i341, %if.then4.i337
  %.pr1087 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1087)
  %cmp.i343 = icmp sgt i32 %.pr1087, 3
  br i1 %cmp.i343, label %do.end.i345, label %zr36050_write.exit342.do.end3.i350_crit_edge

zr36050_write.exit342.do.end3.i350_crit_edge:     ; preds = %zr36050_write.exit342
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i350

do.end.i345:                                      ; preds = %zr36050_write.exit342
  call void @__sanitizer_cov_trace_pc() #10
  %call.i344 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 7) #11
  br label %do.end3.i350

do.end3.i350:                                     ; preds = %do.end.i345, %zr36050_write.exit342.do.end3.i350_crit_edge, %do.body10.i339.do.end3.i350_crit_edge
  %24 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %codec.i, align 4
  %master_data.i347 = getelementptr inbounds %struct.videocodec, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %master_data.i347 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_data.i347, align 4
  %writereg.i348 = getelementptr inbounds %struct.videocodec_master, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %writereg.i348 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %writereg.i348, align 4
  %tobool.not.i349 = icmp eq ptr %29, null
  br i1 %tobool.not.i349, label %do.body10.i353, label %if.then4.i351

if.then4.i351:                                    ; preds = %do.end3.i350
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %25, i16 noundef zeroext 7, i32 noundef 0) #8
  br label %zr36050_write.exit356

do.body10.i353:                                   ; preds = %do.end3.i350
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp11.i352 = icmp sgt i32 %30, 0
  br i1 %cmp11.i352, label %do.end15.i355, label %do.body10.i353.do.end3.i364_crit_edge

do.body10.i353.do.end3.i364_crit_edge:            ; preds = %do.body10.i353
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i364

do.end15.i355:                                    ; preds = %do.body10.i353
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i354 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit356

zr36050_write.exit356:                            ; preds = %do.end15.i355, %if.then4.i351
  %.pr1089 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1089)
  %cmp.i357 = icmp sgt i32 %.pr1089, 3
  br i1 %cmp.i357, label %do.end.i359, label %zr36050_write.exit356.do.end3.i364_crit_edge

zr36050_write.exit356.do.end3.i364_crit_edge:     ; preds = %zr36050_write.exit356
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i364

do.end.i359:                                      ; preds = %zr36050_write.exit356
  call void @__sanitizer_cov_trace_pc() #10
  %call.i358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 3, i32 noundef 8) #11
  br label %do.end3.i364

do.end3.i364:                                     ; preds = %do.end.i359, %zr36050_write.exit356.do.end3.i364_crit_edge, %do.body10.i353.do.end3.i364_crit_edge
  %31 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %codec.i, align 4
  %master_data.i361 = getelementptr inbounds %struct.videocodec, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %master_data.i361 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master_data.i361, align 4
  %writereg.i362 = getelementptr inbounds %struct.videocodec_master, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %writereg.i362 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %writereg.i362, align 4
  %tobool.not.i363 = icmp eq ptr %36, null
  br i1 %tobool.not.i363, label %do.body10.i367, label %if.then4.i365

if.then4.i365:                                    ; preds = %do.end3.i364
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %36(ptr noundef %32, i16 noundef zeroext 8, i32 noundef 3) #8
  br label %zr36050_write.exit370

do.body10.i367:                                   ; preds = %do.end3.i364
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp11.i366 = icmp sgt i32 %37, 0
  br i1 %cmp11.i366, label %do.end15.i369, label %zr36050_write.exit370.thread

zr36050_write.exit370.thread:                     ; preds = %do.body10.i367
  call void @__sanitizer_cov_trace_pc() #10
  %scalefact1092 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 13
  %38 = ptrtoint ptr %scalefact1092 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %scalefact1092, align 2
  %40 = lshr i16 %39, 8
  %conv71093 = trunc i16 %40 to i8
  br label %do.end3.i378

do.end15.i369:                                    ; preds = %do.body10.i367
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit370

zr36050_write.exit370:                            ; preds = %do.end15.i369, %if.then4.i365
  %.pr1091 = load i32, ptr @debug, align 4
  %scalefact = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 13
  %41 = ptrtoint ptr %scalefact to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %scalefact, align 2
  %43 = lshr i16 %42, 8
  %conv7 = trunc i16 %43 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1091)
  %cmp.i371 = icmp sgt i32 %.pr1091, 3
  br i1 %cmp.i371, label %do.end.i373, label %zr36050_write.exit370.do.end3.i378_crit_edge

zr36050_write.exit370.do.end3.i378_crit_edge:     ; preds = %zr36050_write.exit370
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i378

do.end.i373:                                      ; preds = %zr36050_write.exit370
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %43 to i32
  %call.i372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i, i32 noundef 17) #11
  br label %do.end3.i378

do.end3.i378:                                     ; preds = %do.end.i373, %zr36050_write.exit370.do.end3.i378_crit_edge, %zr36050_write.exit370.thread
  %conv71096 = phi i8 [ %conv71093, %zr36050_write.exit370.thread ], [ %conv7, %do.end.i373 ], [ %conv7, %zr36050_write.exit370.do.end3.i378_crit_edge ]
  %scalefact1095 = phi ptr [ %scalefact1092, %zr36050_write.exit370.thread ], [ %scalefact, %do.end.i373 ], [ %scalefact, %zr36050_write.exit370.do.end3.i378_crit_edge ]
  %44 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %codec.i, align 4
  %master_data.i375 = getelementptr inbounds %struct.videocodec, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %master_data.i375 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %master_data.i375, align 4
  %writereg.i376 = getelementptr inbounds %struct.videocodec_master, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %writereg.i376 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %writereg.i376, align 4
  %tobool.not.i377 = icmp eq ptr %49, null
  br i1 %tobool.not.i377, label %do.body10.i381, label %if.then4.i379

if.then4.i379:                                    ; preds = %do.end3.i378
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = zext i8 %conv71096 to i32
  tail call void %49(ptr noundef %45, i16 noundef zeroext 17, i32 noundef %conv9.i) #8
  br label %zr36050_write.exit384

do.body10.i381:                                   ; preds = %do.end3.i378
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp11.i380 = icmp sgt i32 %50, 0
  br i1 %cmp11.i380, label %do.end15.i383, label %zr36050_write.exit384.thread

zr36050_write.exit384.thread:                     ; preds = %do.body10.i381
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %scalefact1095 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %scalefact1095, align 2
  %conv101098 = trunc i16 %52 to i8
  br label %do.end3.i393

do.end15.i383:                                    ; preds = %do.body10.i381
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit384

zr36050_write.exit384:                            ; preds = %do.end15.i383, %if.then4.i379
  %.pr1097 = load i32, ptr @debug, align 4
  %53 = ptrtoint ptr %scalefact1095 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %scalefact1095, align 2
  %conv10 = trunc i16 %54 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1097)
  %cmp.i385 = icmp sgt i32 %.pr1097, 3
  br i1 %cmp.i385, label %do.end.i388, label %zr36050_write.exit384.do.end3.i393_crit_edge

zr36050_write.exit384.do.end3.i393_crit_edge:     ; preds = %zr36050_write.exit384
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i393

do.end.i388:                                      ; preds = %zr36050_write.exit384
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.mask = and i16 %54, 255
  %conv.i386 = zext i16 %conv10.mask to i32
  %call.i387 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i386, i32 noundef 18) #11
  br label %do.end3.i393

do.end3.i393:                                     ; preds = %do.end.i388, %zr36050_write.exit384.do.end3.i393_crit_edge, %zr36050_write.exit384.thread
  %conv101100 = phi i8 [ %conv101098, %zr36050_write.exit384.thread ], [ %conv10, %do.end.i388 ], [ %conv10, %zr36050_write.exit384.do.end3.i393_crit_edge ]
  %55 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %codec.i, align 4
  %master_data.i390 = getelementptr inbounds %struct.videocodec, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %master_data.i390 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master_data.i390, align 4
  %writereg.i391 = getelementptr inbounds %struct.videocodec_master, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %writereg.i391 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %writereg.i391, align 4
  %tobool.not.i392 = icmp eq ptr %60, null
  br i1 %tobool.not.i392, label %do.body10.i397, label %if.then4.i395

if.then4.i395:                                    ; preds = %do.end3.i393
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i394 = zext i8 %conv101100 to i32
  tail call void %60(ptr noundef %56, i16 noundef zeroext 18, i32 noundef %conv9.i394) #8
  br label %zr36050_write.exit400

do.body10.i397:                                   ; preds = %do.end3.i393
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp11.i396 = icmp sgt i32 %61, 0
  br i1 %cmp11.i396, label %do.end15.i399, label %do.body10.i397.do.end3.i408_crit_edge

do.body10.i397.do.end3.i408_crit_edge:            ; preds = %do.body10.i397
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i408

do.end15.i399:                                    ; preds = %do.body10.i397
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i398 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit400

zr36050_write.exit400:                            ; preds = %do.end15.i399, %if.then4.i395
  %.pr1101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1101)
  %cmp.i401 = icmp sgt i32 %.pr1101, 3
  br i1 %cmp.i401, label %do.end.i403, label %zr36050_write.exit400.do.end3.i408_crit_edge

zr36050_write.exit400.do.end3.i408_crit_edge:     ; preds = %zr36050_write.exit400
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i408

do.end.i403:                                      ; preds = %zr36050_write.exit400
  call void @__sanitizer_cov_trace_pc() #10
  %call.i402 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 255, i32 noundef 19) #11
  br label %do.end3.i408

do.end3.i408:                                     ; preds = %do.end.i403, %zr36050_write.exit400.do.end3.i408_crit_edge, %do.body10.i397.do.end3.i408_crit_edge
  %62 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %codec.i, align 4
  %master_data.i405 = getelementptr inbounds %struct.videocodec, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %master_data.i405 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %master_data.i405, align 4
  %writereg.i406 = getelementptr inbounds %struct.videocodec_master, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %writereg.i406 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %writereg.i406, align 4
  %tobool.not.i407 = icmp eq ptr %67, null
  br i1 %tobool.not.i407, label %do.body10.i411, label %if.then4.i409

if.then4.i409:                                    ; preds = %do.end3.i408
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %67(ptr noundef %63, i16 noundef zeroext 19, i32 noundef 255) #8
  br label %zr36050_write.exit414

do.body10.i411:                                   ; preds = %do.end3.i408
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp11.i410 = icmp sgt i32 %68, 0
  br i1 %cmp11.i410, label %do.end15.i413, label %do.body10.i411.do.end3.i422_crit_edge

do.body10.i411.do.end3.i422_crit_edge:            ; preds = %do.body10.i411
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i422

do.end15.i413:                                    ; preds = %do.body10.i411
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit414

zr36050_write.exit414:                            ; preds = %do.end15.i413, %if.then4.i409
  %.pr1103 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1103)
  %cmp.i415 = icmp sgt i32 %.pr1103, 3
  br i1 %cmp.i415, label %do.end.i417, label %zr36050_write.exit414.do.end3.i422_crit_edge

zr36050_write.exit414.do.end3.i422_crit_edge:     ; preds = %zr36050_write.exit414
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i422

do.end.i417:                                      ; preds = %zr36050_write.exit414
  call void @__sanitizer_cov_trace_pc() #10
  %call.i416 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 255, i32 noundef 20) #11
  br label %do.end3.i422

do.end3.i422:                                     ; preds = %do.end.i417, %zr36050_write.exit414.do.end3.i422_crit_edge, %do.body10.i411.do.end3.i422_crit_edge
  %69 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %codec.i, align 4
  %master_data.i419 = getelementptr inbounds %struct.videocodec, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %master_data.i419 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master_data.i419, align 4
  %writereg.i420 = getelementptr inbounds %struct.videocodec_master, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %writereg.i420 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %writereg.i420, align 4
  %tobool.not.i421 = icmp eq ptr %74, null
  br i1 %tobool.not.i421, label %do.body10.i425, label %if.then4.i423

if.then4.i423:                                    ; preds = %do.end3.i422
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %74(ptr noundef %70, i16 noundef zeroext 20, i32 noundef 255) #8
  br label %zr36050_write.exit428

do.body10.i425:                                   ; preds = %do.end3.i422
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp11.i424 = icmp sgt i32 %75, 0
  br i1 %cmp11.i424, label %do.end15.i427, label %do.body10.i425.do.end3.i436_crit_edge

do.body10.i425.do.end3.i436_crit_edge:            ; preds = %do.body10.i425
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i436

do.end15.i427:                                    ; preds = %do.body10.i425
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i426 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit428

zr36050_write.exit428:                            ; preds = %do.end15.i427, %if.then4.i423
  %.pr1105 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1105)
  %cmp.i429 = icmp sgt i32 %.pr1105, 3
  br i1 %cmp.i429, label %do.end.i431, label %zr36050_write.exit428.do.end3.i436_crit_edge

zr36050_write.exit428.do.end3.i436_crit_edge:     ; preds = %zr36050_write.exit428
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i436

do.end.i431:                                      ; preds = %zr36050_write.exit428
  call void @__sanitizer_cov_trace_pc() #10
  %call.i430 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 255, i32 noundef 21) #11
  br label %do.end3.i436

do.end3.i436:                                     ; preds = %do.end.i431, %zr36050_write.exit428.do.end3.i436_crit_edge, %do.body10.i425.do.end3.i436_crit_edge
  %76 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %codec.i, align 4
  %master_data.i433 = getelementptr inbounds %struct.videocodec, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %master_data.i433 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %master_data.i433, align 4
  %writereg.i434 = getelementptr inbounds %struct.videocodec_master, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %writereg.i434 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %writereg.i434, align 4
  %tobool.not.i435 = icmp eq ptr %81, null
  br i1 %tobool.not.i435, label %do.body10.i439, label %if.then4.i437

if.then4.i437:                                    ; preds = %do.end3.i436
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %81(ptr noundef %77, i16 noundef zeroext 21, i32 noundef 255) #8
  br label %zr36050_write.exit442

do.body10.i439:                                   ; preds = %do.end3.i436
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp11.i438 = icmp sgt i32 %82, 0
  br i1 %cmp11.i438, label %do.end15.i441, label %zr36050_write.exit442.thread

zr36050_write.exit442.thread:                     ; preds = %do.body10.i439
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %sof_data.i) #8
  %83 = getelementptr inbounds i8, ptr %sof_data.i, i32 19
  %84 = call ptr @memset(ptr %83, i32 255, i32 15)
  br label %do.end4.i

do.end15.i441:                                    ; preds = %do.body10.i439
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i440 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit442

zr36050_write.exit442:                            ; preds = %do.end15.i441, %if.then4.i437
  %.pr1107 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %sof_data.i) #8
  %85 = getelementptr inbounds i8, ptr %sof_data.i, i32 19
  %86 = call ptr @memset(ptr %85, i32 255, i32 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr1107)
  %cmp.i443 = icmp sgt i32 %.pr1107, 2
  br i1 %cmp.i443, label %do.end.i446, label %zr36050_write.exit442.do.end4.i_crit_edge

zr36050_write.exit442.do.end4.i_crit_edge:        ; preds = %zr36050_write.exit442
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i446:                                      ; preds = %zr36050_write.exit442
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 5
  %87 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %width.i, align 4
  %conv.i444 = zext i16 %88 to i32
  %height.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 6
  %89 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %height.i, align 2
  %conv2.i = zext i16 %90 to i32
  %call.i445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %ptr, i32 noundef %conv.i444, i32 noundef %conv2.i, i32 noundef 3) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i446, %zr36050_write.exit442.do.end4.i_crit_edge, %zr36050_write.exit442.thread
  %91 = ptrtoint ptr %sof_data.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %sof_data.i, align 1
  %arrayidx5.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -64, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 3
  %94 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 17, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 4
  %95 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 8, ptr %arrayidx8.i, align 1
  %height9.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 6
  %96 = ptrtoint ptr %height9.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %height9.i, align 2
  %98 = lshr i16 %97, 8
  %conv11.i = trunc i16 %98 to i8
  %arrayidx12.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 5
  %99 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %conv15.i = trunc i16 %97 to i8
  %arrayidx16.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 6
  %100 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %width17.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 5
  %101 = ptrtoint ptr %width17.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %width17.i, align 4
  %103 = lshr i16 %102, 8
  %conv20.i = trunc i16 %103 to i8
  %arrayidx21.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 7
  %104 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv20.i, ptr %arrayidx21.i, align 1
  %conv25.i = trunc i16 %102 to i8
  %arrayidx26.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 8
  %105 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv25.i, ptr %arrayidx26.i, align 1
  %arrayidx27.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 9
  %106 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %arrayidx27.i, align 1
  %arrayidx31.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 10
  %107 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx31.i, align 1
  %arrayidx32.i = getelementptr %struct.zr36050, ptr %ptr, i32 0, i32 11, i32 0
  %108 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx32.i, align 1
  %shl.i = shl i8 %109, 4
  %arrayidx34.i = getelementptr %struct.zr36050, ptr %ptr, i32 0, i32 12, i32 0
  %110 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx34.i, align 1
  %or.i = or i8 %shl.i, %111
  %arrayidx39.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 11
  %112 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %or.i, ptr %arrayidx39.i, align 1
  %arrayidx43.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 12
  %113 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx43.i, align 1
  %arrayidx31.1.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 13
  %114 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %arrayidx31.1.i, align 1
  %arrayidx32.1.i = getelementptr %struct.zr36050, ptr %ptr, i32 0, i32 11, i32 1
  %115 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx32.1.i, align 1
  %shl.1.i = shl i8 %116, 4
  %arrayidx34.1.i = getelementptr %struct.zr36050, ptr %ptr, i32 0, i32 12, i32 1
  %117 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx34.1.i, align 1
  %or.1.i = or i8 %shl.1.i, %118
  %arrayidx39.1.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 14
  %119 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %or.1.i, ptr %arrayidx39.1.i, align 1
  %arrayidx43.1.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 15
  %120 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %arrayidx43.1.i, align 1
  %arrayidx31.2.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 16
  %121 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 2, ptr %arrayidx31.2.i, align 1
  %arrayidx32.2.i = getelementptr %struct.zr36050, ptr %ptr, i32 0, i32 11, i32 2
  %122 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx32.2.i, align 1
  %shl.2.i = shl i8 %123, 4
  %arrayidx34.2.i = getelementptr %struct.zr36050, ptr %ptr, i32 0, i32 12, i32 2
  %124 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx34.2.i, align 1
  %or.2.i = or i8 %shl.2.i, %125
  %arrayidx39.2.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 17
  %126 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %or.2.i, ptr %arrayidx39.2.i, align 1
  %arrayidx43.2.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 18
  %127 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %arrayidx43.2.i, align 1
  %128 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %128)
  %cmp.i.i = icmp sgt i32 %128, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end4.i.while.body.i.i.preheader_crit_edge

do.end4.i.while.body.i.i.preheader_crit_edge:     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.preheader

do.end.i.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 64, i32 noundef 19) #11
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %do.end.i.i, %do.end4.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %zr36050_write.exit.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %zr36050_write.exit.i.i.while.body.i.i_crit_edge ], [ 64, %while.body.i.i.preheader ]
  %i.015.i.i = phi i32 [ %inc8.i.i, %zr36050_write.exit.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc8.i.i = add nuw nsw i32 %i.015.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %sof_data.i, i32 %i.015.i.i
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i.i, align 1
  %131 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp.i.i.i = icmp sgt i32 %131, 3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %while.body.i.i.do.end3.i.i.i_crit_edge

while.body.i.i.do.end3.i.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i

do.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i = zext i8 %130 to i32
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i.i, i32 noundef %indvars.iv.i) #11
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end.i.i.i, %while.body.i.i.do.end3.i.i.i_crit_edge
  %132 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.i = getelementptr inbounds %struct.videocodec, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %master_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %master_data.i.i.i, align 4
  %writereg.i.i.i = getelementptr inbounds %struct.videocodec_master, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %writereg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %writereg.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i.i, label %do.body10.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i.i = zext i8 %130 to i32
  %138 = trunc i32 %indvars.iv.i to i16
  tail call void %137(ptr noundef %133, i16 noundef zeroext %138, i32 noundef %conv9.i.i.i) #8
  br label %zr36050_write.exit.i.i

do.body10.i.i.i:                                  ; preds = %do.end3.i.i.i
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp11.i.i.i = icmp sgt i32 %139, 0
  br i1 %cmp11.i.i.i, label %do.end15.i.i.i, label %do.body10.i.i.i.zr36050_write.exit.i.i_crit_edge

do.body10.i.i.i.zr36050_write.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i.i

do.end15.i.i.i:                                   ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i.i

zr36050_write.exit.i.i:                           ; preds = %do.end15.i.i.i, %do.body10.i.i.i.zr36050_write.exit.i.i_crit_edge, %if.then4.i.i.i
  %exitcond.not.i.i = icmp eq i32 %inc8.i.i, 19
  br i1 %exitcond.not.i.i, label %zr36050_set_sof.exit, label %zr36050_write.exit.i.i.while.body.i.i_crit_edge

zr36050_write.exit.i.i.while.body.i.i_crit_edge:  ; preds = %zr36050_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

zr36050_set_sof.exit:                             ; preds = %zr36050_write.exit.i.i
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %sof_data.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sos_data.i) #8
  %140 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 1
  %141 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 2
  %142 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 3
  %143 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 4
  %144 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 5
  %145 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 6
  %146 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 7
  %147 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 8
  %148 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 9
  %149 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 10
  %150 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 11
  %151 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 12
  %152 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 13
  %153 = getelementptr inbounds i8, ptr %sos_data.i, i32 14
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 -1, ptr %153, align 1
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %cmp.i447 = icmp sgt i32 %155, 2
  br i1 %cmp.i447, label %do.end.i449, label %zr36050_set_sof.exit.do.end3.i451_crit_edge

zr36050_set_sof.exit.do.end3.i451_crit_edge:      ; preds = %zr36050_set_sof.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i451

do.end.i449:                                      ; preds = %zr36050_set_sof.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i448 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %ptr) #11
  br label %do.end3.i451

do.end3.i451:                                     ; preds = %do.end.i449, %zr36050_set_sof.exit.do.end3.i451_crit_edge
  %156 = ptrtoint ptr %sos_data.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -1, ptr %sos_data.i, align 1
  %157 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -38, ptr %140, align 1
  %158 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %141, align 1
  %159 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 12, ptr %142, align 1
  %160 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 3, ptr %143, align 1
  %161 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %144, align 1
  %162 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %145, align 1
  %163 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %146, align 1
  %164 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 17, ptr %147, align 1
  %165 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 2, ptr %148, align 1
  %166 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 17, ptr %149, align 1
  %167 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %150, align 1
  %168 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 63, ptr %151, align 1
  %169 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %152, align 1
  %170 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %170)
  %cmp.i.i450 = icmp sgt i32 %170, 3
  br i1 %cmp.i.i450, label %do.end.i.i453, label %do.end3.i451.while.body.i.i462.preheader_crit_edge

do.end3.i451.while.body.i.i462.preheader_crit_edge: ; preds = %do.end3.i451
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i462.preheader

do.end.i.i453:                                    ; preds = %do.end3.i451
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i452 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 122, i32 noundef 14) #11
  br label %while.body.i.i462.preheader

while.body.i.i462.preheader:                      ; preds = %do.end.i.i453, %do.end3.i451.while.body.i.i462.preheader_crit_edge
  br label %while.body.i.i462

while.body.i.i462:                                ; preds = %zr36050_write.exit.i.i477.while.body.i.i462_crit_edge, %while.body.i.i462.preheader
  %indvars.iv.i456 = phi i32 [ %indvars.iv.next.i458, %zr36050_write.exit.i.i477.while.body.i.i462_crit_edge ], [ 122, %while.body.i.i462.preheader ]
  %i.015.i.i457 = phi i32 [ %inc8.i.i459, %zr36050_write.exit.i.i477.while.body.i.i462_crit_edge ], [ 0, %while.body.i.i462.preheader ]
  %indvars.iv.next.i458 = add nuw nsw i32 %indvars.iv.i456, 1
  %inc8.i.i459 = add nuw nsw i32 %i.015.i.i457, 1
  %arrayidx.i.i460 = getelementptr i8, ptr %sos_data.i, i32 %i.015.i.i457
  %171 = ptrtoint ptr %arrayidx.i.i460 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i.i460, align 1
  %173 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %173)
  %cmp.i.i.i461 = icmp sgt i32 %173, 3
  br i1 %cmp.i.i.i461, label %do.end.i.i.i465, label %while.body.i.i462.do.end3.i.i.i469_crit_edge

while.body.i.i462.do.end3.i.i.i469_crit_edge:     ; preds = %while.body.i.i462
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i469

do.end.i.i.i465:                                  ; preds = %while.body.i.i462
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i463 = zext i8 %172 to i32
  %call.i.i.i464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i.i463, i32 noundef %indvars.iv.i456) #11
  br label %do.end3.i.i.i469

do.end3.i.i.i469:                                 ; preds = %do.end.i.i.i465, %while.body.i.i462.do.end3.i.i.i469_crit_edge
  %174 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.i466 = getelementptr inbounds %struct.videocodec, ptr %175, i32 0, i32 5
  %176 = ptrtoint ptr %master_data.i.i.i466 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %master_data.i.i.i466, align 4
  %writereg.i.i.i467 = getelementptr inbounds %struct.videocodec_master, ptr %177, i32 0, i32 6
  %178 = ptrtoint ptr %writereg.i.i.i467 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %writereg.i.i.i467, align 4
  %tobool.not.i.i.i468 = icmp eq ptr %179, null
  br i1 %tobool.not.i.i.i468, label %do.body10.i.i.i473, label %if.then4.i.i.i471

if.then4.i.i.i471:                                ; preds = %do.end3.i.i.i469
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i.i470 = zext i8 %172 to i32
  %180 = trunc i32 %indvars.iv.i456 to i16
  tail call void %179(ptr noundef %175, i16 noundef zeroext %180, i32 noundef %conv9.i.i.i470) #8
  br label %zr36050_write.exit.i.i477

do.body10.i.i.i473:                               ; preds = %do.end3.i.i.i469
  %181 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp11.i.i.i472 = icmp sgt i32 %181, 0
  br i1 %cmp11.i.i.i472, label %do.end15.i.i.i475, label %do.body10.i.i.i473.zr36050_write.exit.i.i477_crit_edge

do.body10.i.i.i473.zr36050_write.exit.i.i477_crit_edge: ; preds = %do.body10.i.i.i473
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i.i477

do.end15.i.i.i475:                                ; preds = %do.body10.i.i.i473
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i.i474 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i.i477

zr36050_write.exit.i.i477:                        ; preds = %do.end15.i.i.i475, %do.body10.i.i.i473.zr36050_write.exit.i.i477_crit_edge, %if.then4.i.i.i471
  %exitcond.not.i.i476 = icmp eq i32 %inc8.i.i459, 14
  br i1 %exitcond.not.i.i476, label %zr36050_set_sos.exit, label %zr36050_write.exit.i.i477.while.body.i.i462_crit_edge

zr36050_write.exit.i.i477.while.body.i.i462_crit_edge: ; preds = %zr36050_write.exit.i.i477
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i462

zr36050_set_sos.exit:                             ; preds = %zr36050_write.exit.i.i477
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sos_data.i) #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dri_data.i) #8
  %182 = getelementptr inbounds [6 x i8], ptr %dri_data.i, i32 0, i32 1
  %183 = getelementptr inbounds [6 x i8], ptr %dri_data.i, i32 0, i32 2
  %184 = getelementptr inbounds [6 x i8], ptr %dri_data.i, i32 0, i32 3
  %185 = getelementptr inbounds [6 x i8], ptr %dri_data.i, i32 0, i32 4
  %186 = getelementptr inbounds [6 x i8], ptr %dri_data.i, i32 0, i32 5
  %187 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %187)
  %cmp.i478 = icmp sgt i32 %187, 2
  br i1 %cmp.i478, label %do.end.i480, label %zr36050_set_sos.exit.do.end3.i483_crit_edge

zr36050_set_sos.exit.do.end3.i483_crit_edge:      ; preds = %zr36050_set_sos.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i483

do.end.i480:                                      ; preds = %zr36050_set_sos.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i479 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %ptr) #11
  br label %do.end3.i483

do.end3.i483:                                     ; preds = %do.end.i480, %zr36050_set_sos.exit.do.end3.i483_crit_edge
  %188 = ptrtoint ptr %dri_data.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -1, ptr %dri_data.i, align 1
  %189 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -35, ptr %182, align 1
  %190 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %183, align 1
  %191 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 4, ptr %184, align 1
  %dri.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 14
  %192 = ptrtoint ptr %dri.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %dri.i, align 4
  %194 = lshr i16 %193, 8
  %conv7.i = trunc i16 %194 to i8
  %195 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv7.i, ptr %185, align 1
  %conv11.i481 = trunc i16 %193 to i8
  %196 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv11.i481, ptr %186, align 1
  %197 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %197)
  %cmp.i.i482 = icmp sgt i32 %197, 3
  br i1 %cmp.i.i482, label %do.end.i.i485, label %do.end3.i483.while.body.i.i494.preheader_crit_edge

do.end3.i483.while.body.i.i494.preheader_crit_edge: ; preds = %do.end3.i483
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i494.preheader

do.end.i.i485:                                    ; preds = %do.end3.i483
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i484 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 192, i32 noundef 6) #11
  br label %while.body.i.i494.preheader

while.body.i.i494.preheader:                      ; preds = %do.end.i.i485, %do.end3.i483.while.body.i.i494.preheader_crit_edge
  br label %while.body.i.i494

while.body.i.i494:                                ; preds = %zr36050_write.exit.i.i509.while.body.i.i494_crit_edge, %while.body.i.i494.preheader
  %indvars.iv.i488 = phi i32 [ %indvars.iv.next.i490, %zr36050_write.exit.i.i509.while.body.i.i494_crit_edge ], [ 192, %while.body.i.i494.preheader ]
  %i.015.i.i489 = phi i32 [ %inc8.i.i491, %zr36050_write.exit.i.i509.while.body.i.i494_crit_edge ], [ 0, %while.body.i.i494.preheader ]
  %indvars.iv.next.i490 = add nuw nsw i32 %indvars.iv.i488, 1
  %inc8.i.i491 = add nuw nsw i32 %i.015.i.i489, 1
  %arrayidx.i.i492 = getelementptr i8, ptr %dri_data.i, i32 %i.015.i.i489
  %198 = ptrtoint ptr %arrayidx.i.i492 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.i.i492, align 1
  %200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %200)
  %cmp.i.i.i493 = icmp sgt i32 %200, 3
  br i1 %cmp.i.i.i493, label %do.end.i.i.i497, label %while.body.i.i494.do.end3.i.i.i501_crit_edge

while.body.i.i494.do.end3.i.i.i501_crit_edge:     ; preds = %while.body.i.i494
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i501

do.end.i.i.i497:                                  ; preds = %while.body.i.i494
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i495 = zext i8 %199 to i32
  %call.i.i.i496 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i.i495, i32 noundef %indvars.iv.i488) #11
  br label %do.end3.i.i.i501

do.end3.i.i.i501:                                 ; preds = %do.end.i.i.i497, %while.body.i.i494.do.end3.i.i.i501_crit_edge
  %201 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.i498 = getelementptr inbounds %struct.videocodec, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %master_data.i.i.i498 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %master_data.i.i.i498, align 4
  %writereg.i.i.i499 = getelementptr inbounds %struct.videocodec_master, ptr %204, i32 0, i32 6
  %205 = ptrtoint ptr %writereg.i.i.i499 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %writereg.i.i.i499, align 4
  %tobool.not.i.i.i500 = icmp eq ptr %206, null
  br i1 %tobool.not.i.i.i500, label %do.body10.i.i.i505, label %if.then4.i.i.i503

if.then4.i.i.i503:                                ; preds = %do.end3.i.i.i501
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i.i502 = zext i8 %199 to i32
  %207 = trunc i32 %indvars.iv.i488 to i16
  tail call void %206(ptr noundef %202, i16 noundef zeroext %207, i32 noundef %conv9.i.i.i502) #8
  br label %zr36050_write.exit.i.i509

do.body10.i.i.i505:                               ; preds = %do.end3.i.i.i501
  %208 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp11.i.i.i504 = icmp sgt i32 %208, 0
  br i1 %cmp11.i.i.i504, label %do.end15.i.i.i507, label %do.body10.i.i.i505.zr36050_write.exit.i.i509_crit_edge

do.body10.i.i.i505.zr36050_write.exit.i.i509_crit_edge: ; preds = %do.body10.i.i.i505
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i.i509

do.end15.i.i.i507:                                ; preds = %do.body10.i.i.i505
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i.i506 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i.i509

zr36050_write.exit.i.i509:                        ; preds = %do.end15.i.i.i507, %do.body10.i.i.i505.zr36050_write.exit.i.i509_crit_edge, %if.then4.i.i.i503
  %exitcond.not.i.i508 = icmp eq i32 %inc8.i.i491, 6
  br i1 %exitcond.not.i.i508, label %zr36050_set_dri.exit, label %zr36050_write.exit.i.i509.while.body.i.i494_crit_edge

zr36050_write.exit.i.i509.while.body.i.i494_crit_edge: ; preds = %zr36050_write.exit.i.i509
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i494

zr36050_set_dri.exit:                             ; preds = %zr36050_write.exit.i.i509
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dri_data.i) #8
  %209 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %209)
  %cmp17 = icmp sgt i32 %209, 2
  br i1 %cmp17, label %do.end29, label %zr36050_set_dri.exit.while.body.i.preheader_crit_edge

zr36050_set_dri.exit.while.body.i.preheader_crit_edge: ; preds = %zr36050_set_dri.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

do.end29:                                         ; preds = %zr36050_set_dri.exit
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %ptr) #11
  %.pr1109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1109)
  %cmp.i510 = icmp sgt i32 %.pr1109, 3
  br i1 %cmp.i510, label %do.end.i512, label %do.end29.while.body.i.preheader_crit_edge

do.end29.while.body.i.preheader_crit_edge:        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

do.end.i512:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i511 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 204, i32 noundef 134) #11
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end.i512, %do.end29.while.body.i.preheader_crit_edge, %zr36050_set_dri.exit.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %zr36050_write.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %indvars.iv1210 = phi i32 [ %indvars.iv.next1211, %zr36050_write.exit.i.while.body.i_crit_edge ], [ 204, %while.body.i.preheader ]
  %i.015.i = phi i32 [ %inc8.i, %zr36050_write.exit.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %indvars.iv.next1211 = add nuw nsw i32 %indvars.iv1210, 1
  %inc8.i = add nuw nsw i32 %i.015.i, 1
  %arrayidx.i = getelementptr i8, ptr @zr36050_dqt, i32 %i.015.i
  %210 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.i, align 1
  %212 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %212)
  %cmp.i.i514 = icmp sgt i32 %212, 3
  br i1 %cmp.i.i514, label %do.end.i.i516, label %while.body.i.do.end3.i.i_crit_edge

while.body.i.do.end3.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i.i516:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %211 to i32
  %call.i.i515 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i, i32 noundef %indvars.iv1210) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i516, %while.body.i.do.end3.i.i_crit_edge
  %213 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %codec.i, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %214, i32 0, i32 5
  %215 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %master_data.i.i, align 4
  %writereg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %216, i32 0, i32 6
  %217 = ptrtoint ptr %writereg.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %writereg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %218, null
  br i1 %tobool.not.i.i, label %do.body10.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i = zext i8 %211 to i32
  %219 = trunc i32 %indvars.iv1210 to i16
  tail call void %218(ptr noundef %214, i16 noundef zeroext %219, i32 noundef %conv9.i.i) #8
  br label %zr36050_write.exit.i

do.body10.i.i:                                    ; preds = %do.end3.i.i
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp11.i.i = icmp sgt i32 %220, 0
  br i1 %cmp11.i.i, label %do.end15.i.i, label %do.body10.i.i.zr36050_write.exit.i_crit_edge

do.body10.i.i.zr36050_write.exit.i_crit_edge:     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i

do.end15.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i

zr36050_write.exit.i:                             ; preds = %do.end15.i.i, %do.body10.i.i.zr36050_write.exit.i_crit_edge, %if.then4.i.i
  %exitcond.not.i = icmp eq i32 %inc8.i, 134
  br i1 %exitcond.not.i, label %zr36050_pushit.exit, label %zr36050_write.exit.i.while.body.i_crit_edge

zr36050_write.exit.i.while.body.i_crit_edge:      ; preds = %zr36050_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

zr36050_pushit.exit:                              ; preds = %zr36050_write.exit.i
  %221 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %221)
  %cmp.i517 = icmp sgt i32 %221, 3
  br i1 %cmp.i517, label %do.end.i520, label %zr36050_pushit.exit.while.body.i529.preheader_crit_edge

zr36050_pushit.exit.while.body.i529.preheader_crit_edge: ; preds = %zr36050_pushit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i529.preheader

do.end.i520:                                      ; preds = %zr36050_pushit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i519 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 468, i32 noundef 420) #11
  br label %while.body.i529.preheader

while.body.i529.preheader:                        ; preds = %do.end.i520, %zr36050_pushit.exit.while.body.i529.preheader_crit_edge
  br label %while.body.i529

while.body.i529:                                  ; preds = %zr36050_write.exit.i545.while.body.i529_crit_edge, %while.body.i529.preheader
  %indvars.iv1212 = phi i32 [ %indvars.iv.next1213, %zr36050_write.exit.i545.while.body.i529_crit_edge ], [ 468, %while.body.i529.preheader ]
  %i.015.i524 = phi i32 [ %inc8.i526, %zr36050_write.exit.i545.while.body.i529_crit_edge ], [ 0, %while.body.i529.preheader ]
  %indvars.iv.next1213 = add nuw nsw i32 %indvars.iv1212, 1
  %inc8.i526 = add nuw nsw i32 %i.015.i524, 1
  %arrayidx.i527 = getelementptr i8, ptr @zr36050_dht, i32 %i.015.i524
  %222 = ptrtoint ptr %arrayidx.i527 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx.i527, align 1
  %224 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %224)
  %cmp.i.i528 = icmp sgt i32 %224, 3
  br i1 %cmp.i.i528, label %do.end.i.i533, label %while.body.i529.do.end3.i.i537_crit_edge

while.body.i529.do.end3.i.i537_crit_edge:         ; preds = %while.body.i529
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i537

do.end.i.i533:                                    ; preds = %while.body.i529
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i530 = zext i8 %223 to i32
  %call.i.i532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i530, i32 noundef %indvars.iv1212) #11
  br label %do.end3.i.i537

do.end3.i.i537:                                   ; preds = %do.end.i.i533, %while.body.i529.do.end3.i.i537_crit_edge
  %225 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %codec.i, align 4
  %master_data.i.i534 = getelementptr inbounds %struct.videocodec, ptr %226, i32 0, i32 5
  %227 = ptrtoint ptr %master_data.i.i534 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %master_data.i.i534, align 4
  %writereg.i.i535 = getelementptr inbounds %struct.videocodec_master, ptr %228, i32 0, i32 6
  %229 = ptrtoint ptr %writereg.i.i535 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %writereg.i.i535, align 4
  %tobool.not.i.i536 = icmp eq ptr %230, null
  br i1 %tobool.not.i.i536, label %do.body10.i.i541, label %if.then4.i.i539

if.then4.i.i539:                                  ; preds = %do.end3.i.i537
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i538 = zext i8 %223 to i32
  %231 = trunc i32 %indvars.iv1212 to i16
  tail call void %230(ptr noundef %226, i16 noundef zeroext %231, i32 noundef %conv9.i.i538) #8
  br label %zr36050_write.exit.i545

do.body10.i.i541:                                 ; preds = %do.end3.i.i537
  %232 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp11.i.i540 = icmp sgt i32 %232, 0
  br i1 %cmp11.i.i540, label %do.end15.i.i543, label %do.body10.i.i541.zr36050_write.exit.i545_crit_edge

do.body10.i.i541.zr36050_write.exit.i545_crit_edge: ; preds = %do.body10.i.i541
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i545

do.end15.i.i543:                                  ; preds = %do.body10.i.i541
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i545

zr36050_write.exit.i545:                          ; preds = %do.end15.i.i543, %do.body10.i.i541.zr36050_write.exit.i545_crit_edge, %if.then4.i.i539
  %exitcond.not.i544 = icmp eq i32 %inc8.i526, 420
  br i1 %exitcond.not.i544, label %zr36050_pushit.exit546, label %zr36050_write.exit.i545.while.body.i529_crit_edge

zr36050_write.exit.i545.while.body.i529_crit_edge: ; preds = %zr36050_write.exit.i545
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i529

zr36050_pushit.exit546:                           ; preds = %zr36050_write.exit.i545
  %233 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %233)
  %cmp.i547 = icmp sgt i32 %233, 3
  br i1 %cmp.i547, label %do.end.i549, label %zr36050_pushit.exit546.do.end3.i554_crit_edge

zr36050_pushit.exit546.do.end3.i554_crit_edge:    ; preds = %zr36050_pushit.exit546
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i554

do.end.i549:                                      ; preds = %zr36050_pushit.exit546
  call void @__sanitizer_cov_trace_pc() #10
  %call.i548 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 255, i32 noundef 896) #11
  br label %do.end3.i554

do.end3.i554:                                     ; preds = %do.end.i549, %zr36050_pushit.exit546.do.end3.i554_crit_edge
  %234 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %codec.i, align 4
  %master_data.i551 = getelementptr inbounds %struct.videocodec, ptr %235, i32 0, i32 5
  %236 = ptrtoint ptr %master_data.i551 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %master_data.i551, align 4
  %writereg.i552 = getelementptr inbounds %struct.videocodec_master, ptr %237, i32 0, i32 6
  %238 = ptrtoint ptr %writereg.i552 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %writereg.i552, align 4
  %tobool.not.i553 = icmp eq ptr %239, null
  br i1 %tobool.not.i553, label %do.body10.i557, label %if.then4.i555

if.then4.i555:                                    ; preds = %do.end3.i554
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %239(ptr noundef %235, i16 noundef zeroext 896, i32 noundef 255) #8
  br label %zr36050_write.exit560

do.body10.i557:                                   ; preds = %do.end3.i554
  %240 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp11.i556 = icmp sgt i32 %240, 0
  br i1 %cmp11.i556, label %do.end15.i559, label %zr36050_write.exit560.thread

zr36050_write.exit560.thread:                     ; preds = %do.body10.i557
  call void @__sanitizer_cov_trace_pc() #10
  %app1112 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 16
  %241 = ptrtoint ptr %app1112 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %app1112, align 4
  %243 = trunc i32 %242 to i8
  %conv351113 = add i8 %243, -32
  br label %do.end3.i569

do.end15.i559:                                    ; preds = %do.body10.i557
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i558 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit560

zr36050_write.exit560:                            ; preds = %do.end15.i559, %if.then4.i555
  %.pr1111 = load i32, ptr @debug, align 4
  %app = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 16
  %244 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %app, align 4
  %246 = trunc i32 %245 to i8
  %conv35 = add i8 %246, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1111)
  %cmp.i561 = icmp sgt i32 %.pr1111, 3
  br i1 %cmp.i561, label %do.end.i564, label %zr36050_write.exit560.do.end3.i569_crit_edge

zr36050_write.exit560.do.end3.i569_crit_edge:     ; preds = %zr36050_write.exit560
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i569

do.end.i564:                                      ; preds = %zr36050_write.exit560
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i562 = zext i8 %conv35 to i32
  %call.i563 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i562, i32 noundef 897) #11
  br label %do.end3.i569

do.end3.i569:                                     ; preds = %do.end.i564, %zr36050_write.exit560.do.end3.i569_crit_edge, %zr36050_write.exit560.thread
  %conv351115 = phi i8 [ %conv351113, %zr36050_write.exit560.thread ], [ %conv35, %do.end.i564 ], [ %conv35, %zr36050_write.exit560.do.end3.i569_crit_edge ]
  %247 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %codec.i, align 4
  %master_data.i566 = getelementptr inbounds %struct.videocodec, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %master_data.i566 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %master_data.i566, align 4
  %writereg.i567 = getelementptr inbounds %struct.videocodec_master, ptr %250, i32 0, i32 6
  %251 = ptrtoint ptr %writereg.i567 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %writereg.i567, align 4
  %tobool.not.i568 = icmp eq ptr %252, null
  br i1 %tobool.not.i568, label %do.body10.i573, label %if.then4.i571

if.then4.i571:                                    ; preds = %do.end3.i569
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i570 = zext i8 %conv351115 to i32
  tail call void %252(ptr noundef %248, i16 noundef zeroext 897, i32 noundef %conv9.i570) #8
  br label %zr36050_write.exit576

do.body10.i573:                                   ; preds = %do.end3.i569
  %253 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp11.i572 = icmp sgt i32 %253, 0
  br i1 %cmp11.i572, label %do.end15.i575, label %do.body10.i573.do.end3.i584_crit_edge

do.body10.i573.do.end3.i584_crit_edge:            ; preds = %do.body10.i573
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i584

do.end15.i575:                                    ; preds = %do.body10.i573
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i574 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit576

zr36050_write.exit576:                            ; preds = %do.end15.i575, %if.then4.i571
  %.pr1116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1116)
  %cmp.i577 = icmp sgt i32 %.pr1116, 3
  br i1 %cmp.i577, label %do.end.i579, label %zr36050_write.exit576.do.end3.i584_crit_edge

zr36050_write.exit576.do.end3.i584_crit_edge:     ; preds = %zr36050_write.exit576
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i584

do.end.i579:                                      ; preds = %zr36050_write.exit576
  call void @__sanitizer_cov_trace_pc() #10
  %call.i578 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 898) #11
  br label %do.end3.i584

do.end3.i584:                                     ; preds = %do.end.i579, %zr36050_write.exit576.do.end3.i584_crit_edge, %do.body10.i573.do.end3.i584_crit_edge
  %254 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %codec.i, align 4
  %master_data.i581 = getelementptr inbounds %struct.videocodec, ptr %255, i32 0, i32 5
  %256 = ptrtoint ptr %master_data.i581 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %master_data.i581, align 4
  %writereg.i582 = getelementptr inbounds %struct.videocodec_master, ptr %257, i32 0, i32 6
  %258 = ptrtoint ptr %writereg.i582 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %writereg.i582, align 4
  %tobool.not.i583 = icmp eq ptr %259, null
  br i1 %tobool.not.i583, label %do.body10.i587, label %if.then4.i585

if.then4.i585:                                    ; preds = %do.end3.i584
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %259(ptr noundef %255, i16 noundef zeroext 898, i32 noundef 0) #8
  br label %zr36050_write.exit590

do.body10.i587:                                   ; preds = %do.end3.i584
  %260 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp11.i586 = icmp sgt i32 %260, 0
  br i1 %cmp11.i586, label %do.end15.i589, label %zr36050_write.exit590.thread

zr36050_write.exit590.thread:                     ; preds = %do.body10.i587
  call void @__sanitizer_cov_trace_pc() #10
  %len1119 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 16, i32 1
  %261 = ptrtoint ptr %len1119 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %len1119, align 4
  %263 = trunc i32 %262 to i8
  %conv381120 = add i8 %263, 2
  br label %do.end3.i599

do.end15.i589:                                    ; preds = %do.body10.i587
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i588 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit590

zr36050_write.exit590:                            ; preds = %do.end15.i589, %if.then4.i585
  %.pr1118 = load i32, ptr @debug, align 4
  %len = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 16, i32 1
  %264 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %len, align 4
  %266 = trunc i32 %265 to i8
  %conv38 = add i8 %266, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1118)
  %cmp.i591 = icmp sgt i32 %.pr1118, 3
  br i1 %cmp.i591, label %do.end.i594, label %zr36050_write.exit590.do.end3.i599_crit_edge

zr36050_write.exit590.do.end3.i599_crit_edge:     ; preds = %zr36050_write.exit590
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i599

do.end.i594:                                      ; preds = %zr36050_write.exit590
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i592 = zext i8 %conv38 to i32
  %call.i593 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i592, i32 noundef 899) #11
  br label %do.end3.i599

do.end3.i599:                                     ; preds = %do.end.i594, %zr36050_write.exit590.do.end3.i599_crit_edge, %zr36050_write.exit590.thread
  %conv381123 = phi i8 [ %conv381120, %zr36050_write.exit590.thread ], [ %conv38, %do.end.i594 ], [ %conv38, %zr36050_write.exit590.do.end3.i599_crit_edge ]
  %len1122 = phi ptr [ %len1119, %zr36050_write.exit590.thread ], [ %len, %do.end.i594 ], [ %len, %zr36050_write.exit590.do.end3.i599_crit_edge ]
  %267 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %codec.i, align 4
  %master_data.i596 = getelementptr inbounds %struct.videocodec, ptr %268, i32 0, i32 5
  %269 = ptrtoint ptr %master_data.i596 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %master_data.i596, align 4
  %writereg.i597 = getelementptr inbounds %struct.videocodec_master, ptr %270, i32 0, i32 6
  %271 = ptrtoint ptr %writereg.i597 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %writereg.i597, align 4
  %tobool.not.i598 = icmp eq ptr %272, null
  br i1 %tobool.not.i598, label %do.body10.i603, label %if.then4.i601

if.then4.i601:                                    ; preds = %do.end3.i599
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i600 = zext i8 %conv381123 to i32
  tail call void %272(ptr noundef %268, i16 noundef zeroext 899, i32 noundef %conv9.i600) #8
  br label %zr36050_write.exit606

do.body10.i603:                                   ; preds = %do.end3.i599
  %273 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %cmp11.i602 = icmp sgt i32 %273, 0
  br i1 %cmp11.i602, label %do.end15.i605, label %do.body10.i603.do.end4.i611_crit_edge

do.body10.i603.do.end4.i611_crit_edge:            ; preds = %do.body10.i603
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i611

do.end15.i605:                                    ; preds = %do.body10.i603
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i604 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit606

zr36050_write.exit606:                            ; preds = %do.end15.i605, %if.then4.i601
  %.pr1124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1124)
  %cmp.i607 = icmp sgt i32 %.pr1124, 3
  br i1 %cmp.i607, label %do.end.i610, label %zr36050_write.exit606.do.end4.i611_crit_edge

zr36050_write.exit606.do.end4.i611_crit_edge:     ; preds = %zr36050_write.exit606
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i611

do.end.i610:                                      ; preds = %zr36050_write.exit606
  call void @__sanitizer_cov_trace_pc() #10
  %call.i609 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 900, i32 noundef 60) #11
  br label %do.end4.i611

do.end4.i611:                                     ; preds = %do.end.i610, %zr36050_write.exit606.do.end4.i611_crit_edge, %do.body10.i603.do.end4.i611_crit_edge
  %data1127 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 16, i32 2
  br label %while.body.i619

while.body.i619:                                  ; preds = %zr36050_write.exit.i635.while.body.i619_crit_edge, %do.end4.i611
  %indvars.iv1214 = phi i32 [ %indvars.iv.next1215, %zr36050_write.exit.i635.while.body.i619_crit_edge ], [ 900, %do.end4.i611 ]
  %i.015.i614 = phi i32 [ %inc8.i616, %zr36050_write.exit.i635.while.body.i619_crit_edge ], [ 0, %do.end4.i611 ]
  %indvars.iv.next1215 = add nuw nsw i32 %indvars.iv1214, 1
  %inc8.i616 = add nuw nsw i32 %i.015.i614, 1
  %arrayidx.i617 = getelementptr i8, ptr %data1127, i32 %i.015.i614
  %274 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx.i617, align 1
  %276 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %276)
  %cmp.i.i618 = icmp sgt i32 %276, 3
  br i1 %cmp.i.i618, label %do.end.i.i623, label %while.body.i619.do.end3.i.i627_crit_edge

while.body.i619.do.end3.i.i627_crit_edge:         ; preds = %while.body.i619
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i627

do.end.i.i623:                                    ; preds = %while.body.i619
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i620 = zext i8 %275 to i32
  %call.i.i622 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i620, i32 noundef %indvars.iv1214) #11
  br label %do.end3.i.i627

do.end3.i.i627:                                   ; preds = %do.end.i.i623, %while.body.i619.do.end3.i.i627_crit_edge
  %277 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %codec.i, align 4
  %master_data.i.i624 = getelementptr inbounds %struct.videocodec, ptr %278, i32 0, i32 5
  %279 = ptrtoint ptr %master_data.i.i624 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %master_data.i.i624, align 4
  %writereg.i.i625 = getelementptr inbounds %struct.videocodec_master, ptr %280, i32 0, i32 6
  %281 = ptrtoint ptr %writereg.i.i625 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %writereg.i.i625, align 4
  %tobool.not.i.i626 = icmp eq ptr %282, null
  br i1 %tobool.not.i.i626, label %do.body10.i.i631, label %if.then4.i.i629

if.then4.i.i629:                                  ; preds = %do.end3.i.i627
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i628 = zext i8 %275 to i32
  %283 = trunc i32 %indvars.iv1214 to i16
  tail call void %282(ptr noundef %278, i16 noundef zeroext %283, i32 noundef %conv9.i.i628) #8
  br label %zr36050_write.exit.i635

do.body10.i.i631:                                 ; preds = %do.end3.i.i627
  %284 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp11.i.i630 = icmp sgt i32 %284, 0
  br i1 %cmp11.i.i630, label %do.end15.i.i633, label %do.body10.i.i631.zr36050_write.exit.i635_crit_edge

do.body10.i.i631.zr36050_write.exit.i635_crit_edge: ; preds = %do.body10.i.i631
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i635

do.end15.i.i633:                                  ; preds = %do.body10.i.i631
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i632 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i635

zr36050_write.exit.i635:                          ; preds = %do.end15.i.i633, %do.body10.i.i631.zr36050_write.exit.i635_crit_edge, %if.then4.i.i629
  %exitcond.not.i634 = icmp eq i32 %inc8.i616, 60
  br i1 %exitcond.not.i634, label %zr36050_pushit.exit636, label %zr36050_write.exit.i635.while.body.i619_crit_edge

zr36050_write.exit.i635.while.body.i619_crit_edge: ; preds = %zr36050_write.exit.i635
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i619

zr36050_pushit.exit636:                           ; preds = %zr36050_write.exit.i635
  %285 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %285)
  %cmp.i637 = icmp sgt i32 %285, 3
  br i1 %cmp.i637, label %do.end.i639, label %zr36050_pushit.exit636.do.end3.i644_crit_edge

zr36050_pushit.exit636.do.end3.i644_crit_edge:    ; preds = %zr36050_pushit.exit636
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i644

do.end.i639:                                      ; preds = %zr36050_pushit.exit636
  call void @__sanitizer_cov_trace_pc() #10
  %call.i638 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 255, i32 noundef 960) #11
  br label %do.end3.i644

do.end3.i644:                                     ; preds = %do.end.i639, %zr36050_pushit.exit636.do.end3.i644_crit_edge
  %286 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %codec.i, align 4
  %master_data.i641 = getelementptr inbounds %struct.videocodec, ptr %287, i32 0, i32 5
  %288 = ptrtoint ptr %master_data.i641 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %master_data.i641, align 4
  %writereg.i642 = getelementptr inbounds %struct.videocodec_master, ptr %289, i32 0, i32 6
  %290 = ptrtoint ptr %writereg.i642 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %writereg.i642, align 4
  %tobool.not.i643 = icmp eq ptr %291, null
  br i1 %tobool.not.i643, label %do.body10.i647, label %if.then4.i645

if.then4.i645:                                    ; preds = %do.end3.i644
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %291(ptr noundef %287, i16 noundef zeroext 960, i32 noundef 255) #8
  br label %zr36050_write.exit650

do.body10.i647:                                   ; preds = %do.end3.i644
  %292 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %292)
  %cmp11.i646 = icmp sgt i32 %292, 0
  br i1 %cmp11.i646, label %do.end15.i649, label %do.body10.i647.do.end3.i658_crit_edge

do.body10.i647.do.end3.i658_crit_edge:            ; preds = %do.body10.i647
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i658

do.end15.i649:                                    ; preds = %do.body10.i647
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i648 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit650

zr36050_write.exit650:                            ; preds = %do.end15.i649, %if.then4.i645
  %.pr1129 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1129)
  %cmp.i651 = icmp sgt i32 %.pr1129, 3
  br i1 %cmp.i651, label %do.end.i653, label %zr36050_write.exit650.do.end3.i658_crit_edge

zr36050_write.exit650.do.end3.i658_crit_edge:     ; preds = %zr36050_write.exit650
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i658

do.end.i653:                                      ; preds = %zr36050_write.exit650
  call void @__sanitizer_cov_trace_pc() #10
  %call.i652 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 254, i32 noundef 961) #11
  br label %do.end3.i658

do.end3.i658:                                     ; preds = %do.end.i653, %zr36050_write.exit650.do.end3.i658_crit_edge, %do.body10.i647.do.end3.i658_crit_edge
  %293 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %codec.i, align 4
  %master_data.i655 = getelementptr inbounds %struct.videocodec, ptr %294, i32 0, i32 5
  %295 = ptrtoint ptr %master_data.i655 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %master_data.i655, align 4
  %writereg.i656 = getelementptr inbounds %struct.videocodec_master, ptr %296, i32 0, i32 6
  %297 = ptrtoint ptr %writereg.i656 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %writereg.i656, align 4
  %tobool.not.i657 = icmp eq ptr %298, null
  br i1 %tobool.not.i657, label %do.body10.i661, label %if.then4.i659

if.then4.i659:                                    ; preds = %do.end3.i658
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %298(ptr noundef %294, i16 noundef zeroext 961, i32 noundef 254) #8
  br label %zr36050_write.exit664

do.body10.i661:                                   ; preds = %do.end3.i658
  %299 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp11.i660 = icmp sgt i32 %299, 0
  br i1 %cmp11.i660, label %do.end15.i663, label %do.body10.i661.do.end3.i672_crit_edge

do.body10.i661.do.end3.i672_crit_edge:            ; preds = %do.body10.i661
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i672

do.end15.i663:                                    ; preds = %do.body10.i661
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i662 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit664

zr36050_write.exit664:                            ; preds = %do.end15.i663, %if.then4.i659
  %.pr1131 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1131)
  %cmp.i665 = icmp sgt i32 %.pr1131, 3
  br i1 %cmp.i665, label %do.end.i667, label %zr36050_write.exit664.do.end3.i672_crit_edge

zr36050_write.exit664.do.end3.i672_crit_edge:     ; preds = %zr36050_write.exit664
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i672

do.end.i667:                                      ; preds = %zr36050_write.exit664
  call void @__sanitizer_cov_trace_pc() #10
  %call.i666 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 962) #11
  br label %do.end3.i672

do.end3.i672:                                     ; preds = %do.end.i667, %zr36050_write.exit664.do.end3.i672_crit_edge, %do.body10.i661.do.end3.i672_crit_edge
  %300 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %codec.i, align 4
  %master_data.i669 = getelementptr inbounds %struct.videocodec, ptr %301, i32 0, i32 5
  %302 = ptrtoint ptr %master_data.i669 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %master_data.i669, align 4
  %writereg.i670 = getelementptr inbounds %struct.videocodec_master, ptr %303, i32 0, i32 6
  %304 = ptrtoint ptr %writereg.i670 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %writereg.i670, align 4
  %tobool.not.i671 = icmp eq ptr %305, null
  br i1 %tobool.not.i671, label %do.body10.i675, label %if.then4.i673

if.then4.i673:                                    ; preds = %do.end3.i672
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %305(ptr noundef %301, i16 noundef zeroext 962, i32 noundef 0) #8
  br label %zr36050_write.exit678

do.body10.i675:                                   ; preds = %do.end3.i672
  %306 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp11.i674 = icmp sgt i32 %306, 0
  br i1 %cmp11.i674, label %do.end15.i677, label %zr36050_write.exit678.thread

zr36050_write.exit678.thread:                     ; preds = %do.body10.i675
  call void @__sanitizer_cov_trace_pc() #10
  %com1134 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 15
  %307 = ptrtoint ptr %com1134 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %com1134, align 4
  %309 = trunc i32 %308 to i8
  %conv461135 = add i8 %309, 2
  br label %do.end3.i687

do.end15.i677:                                    ; preds = %do.body10.i675
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i676 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit678

zr36050_write.exit678:                            ; preds = %do.end15.i677, %if.then4.i673
  %.pr1133 = load i32, ptr @debug, align 4
  %com = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 15
  %310 = ptrtoint ptr %com to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %com, align 4
  %312 = trunc i32 %311 to i8
  %conv46 = add i8 %312, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1133)
  %cmp.i679 = icmp sgt i32 %.pr1133, 3
  br i1 %cmp.i679, label %do.end.i682, label %zr36050_write.exit678.do.end3.i687_crit_edge

zr36050_write.exit678.do.end3.i687_crit_edge:     ; preds = %zr36050_write.exit678
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i687

do.end.i682:                                      ; preds = %zr36050_write.exit678
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i680 = zext i8 %conv46 to i32
  %call.i681 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i680, i32 noundef 963) #11
  br label %do.end3.i687

do.end3.i687:                                     ; preds = %do.end.i682, %zr36050_write.exit678.do.end3.i687_crit_edge, %zr36050_write.exit678.thread
  %conv461138 = phi i8 [ %conv461135, %zr36050_write.exit678.thread ], [ %conv46, %do.end.i682 ], [ %conv46, %zr36050_write.exit678.do.end3.i687_crit_edge ]
  %com1137 = phi ptr [ %com1134, %zr36050_write.exit678.thread ], [ %com, %do.end.i682 ], [ %com, %zr36050_write.exit678.do.end3.i687_crit_edge ]
  %313 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %codec.i, align 4
  %master_data.i684 = getelementptr inbounds %struct.videocodec, ptr %314, i32 0, i32 5
  %315 = ptrtoint ptr %master_data.i684 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %master_data.i684, align 4
  %writereg.i685 = getelementptr inbounds %struct.videocodec_master, ptr %316, i32 0, i32 6
  %317 = ptrtoint ptr %writereg.i685 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %writereg.i685, align 4
  %tobool.not.i686 = icmp eq ptr %318, null
  br i1 %tobool.not.i686, label %do.body10.i691, label %if.then4.i689

if.then4.i689:                                    ; preds = %do.end3.i687
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i688 = zext i8 %conv461138 to i32
  tail call void %318(ptr noundef %314, i16 noundef zeroext 963, i32 noundef %conv9.i688) #8
  br label %zr36050_write.exit694

do.body10.i691:                                   ; preds = %do.end3.i687
  %319 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %cmp11.i690 = icmp sgt i32 %319, 0
  br i1 %cmp11.i690, label %do.end15.i693, label %do.body10.i691.do.end4.i699_crit_edge

do.body10.i691.do.end4.i699_crit_edge:            ; preds = %do.body10.i691
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i699

do.end15.i693:                                    ; preds = %do.body10.i691
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i692 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit694

zr36050_write.exit694:                            ; preds = %do.end15.i693, %if.then4.i689
  %.pr1139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1139)
  %cmp.i695 = icmp sgt i32 %.pr1139, 3
  br i1 %cmp.i695, label %do.end.i698, label %zr36050_write.exit694.do.end4.i699_crit_edge

zr36050_write.exit694.do.end4.i699_crit_edge:     ; preds = %zr36050_write.exit694
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i699

do.end.i698:                                      ; preds = %zr36050_write.exit694
  call void @__sanitizer_cov_trace_pc() #10
  %call.i697 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 964, i32 noundef 60) #11
  br label %do.end4.i699

do.end4.i699:                                     ; preds = %do.end.i698, %zr36050_write.exit694.do.end4.i699_crit_edge, %do.body10.i691.do.end4.i699_crit_edge
  %data481142 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 15, i32 1
  br label %while.body.i707

while.body.i707:                                  ; preds = %zr36050_write.exit.i723.while.body.i707_crit_edge, %do.end4.i699
  %indvars.iv1216 = phi i32 [ %indvars.iv.next1217, %zr36050_write.exit.i723.while.body.i707_crit_edge ], [ 964, %do.end4.i699 ]
  %i.015.i702 = phi i32 [ %inc8.i704, %zr36050_write.exit.i723.while.body.i707_crit_edge ], [ 0, %do.end4.i699 ]
  %indvars.iv.next1217 = add nuw nsw i32 %indvars.iv1216, 1
  %inc8.i704 = add nuw nsw i32 %i.015.i702, 1
  %arrayidx.i705 = getelementptr i8, ptr %data481142, i32 %i.015.i702
  %320 = ptrtoint ptr %arrayidx.i705 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx.i705, align 1
  %322 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %322)
  %cmp.i.i706 = icmp sgt i32 %322, 3
  br i1 %cmp.i.i706, label %do.end.i.i711, label %while.body.i707.do.end3.i.i715_crit_edge

while.body.i707.do.end3.i.i715_crit_edge:         ; preds = %while.body.i707
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i715

do.end.i.i711:                                    ; preds = %while.body.i707
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i708 = zext i8 %321 to i32
  %call.i.i710 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i708, i32 noundef %indvars.iv1216) #11
  br label %do.end3.i.i715

do.end3.i.i715:                                   ; preds = %do.end.i.i711, %while.body.i707.do.end3.i.i715_crit_edge
  %323 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %codec.i, align 4
  %master_data.i.i712 = getelementptr inbounds %struct.videocodec, ptr %324, i32 0, i32 5
  %325 = ptrtoint ptr %master_data.i.i712 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %master_data.i.i712, align 4
  %writereg.i.i713 = getelementptr inbounds %struct.videocodec_master, ptr %326, i32 0, i32 6
  %327 = ptrtoint ptr %writereg.i.i713 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %writereg.i.i713, align 4
  %tobool.not.i.i714 = icmp eq ptr %328, null
  br i1 %tobool.not.i.i714, label %do.body10.i.i719, label %if.then4.i.i717

if.then4.i.i717:                                  ; preds = %do.end3.i.i715
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i716 = zext i8 %321 to i32
  %329 = trunc i32 %indvars.iv1216 to i16
  tail call void %328(ptr noundef %324, i16 noundef zeroext %329, i32 noundef %conv9.i.i716) #8
  br label %zr36050_write.exit.i723

do.body10.i.i719:                                 ; preds = %do.end3.i.i715
  %330 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %cmp11.i.i718 = icmp sgt i32 %330, 0
  br i1 %cmp11.i.i718, label %do.end15.i.i721, label %do.body10.i.i719.zr36050_write.exit.i723_crit_edge

do.body10.i.i719.zr36050_write.exit.i723_crit_edge: ; preds = %do.body10.i.i719
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i723

do.end15.i.i721:                                  ; preds = %do.body10.i.i719
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i720 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i723

zr36050_write.exit.i723:                          ; preds = %do.end15.i.i721, %do.body10.i.i719.zr36050_write.exit.i723_crit_edge, %if.then4.i.i717
  %exitcond.not.i722 = icmp eq i32 %inc8.i704, 60
  br i1 %exitcond.not.i722, label %zr36050_pushit.exit724, label %zr36050_write.exit.i723.while.body.i707_crit_edge

zr36050_write.exit.i723.while.body.i707_crit_edge: ; preds = %zr36050_write.exit.i723
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i707

zr36050_pushit.exit724:                           ; preds = %zr36050_write.exit.i723
  %331 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %331)
  %cmp.i725 = icmp sgt i32 %331, 3
  br i1 %cmp.i725, label %do.end.i727, label %zr36050_pushit.exit724.do.end3.i732_crit_edge

zr36050_pushit.exit724.do.end3.i732_crit_edge:    ; preds = %zr36050_pushit.exit724
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i732

do.end.i727:                                      ; preds = %zr36050_pushit.exit724
  call void @__sanitizer_cov_trace_pc() #10
  %call.i726 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 1, i32 noundef 6) #11
  br label %do.end3.i732

do.end3.i732:                                     ; preds = %do.end.i727, %zr36050_pushit.exit724.do.end3.i732_crit_edge
  %332 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %codec.i, align 4
  %master_data.i729 = getelementptr inbounds %struct.videocodec, ptr %333, i32 0, i32 5
  %334 = ptrtoint ptr %master_data.i729 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %master_data.i729, align 4
  %writereg.i730 = getelementptr inbounds %struct.videocodec_master, ptr %335, i32 0, i32 6
  %336 = ptrtoint ptr %writereg.i730 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %writereg.i730, align 4
  %tobool.not.i731 = icmp eq ptr %337, null
  br i1 %tobool.not.i731, label %do.body10.i735, label %if.then4.i733

if.then4.i733:                                    ; preds = %do.end3.i732
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %337(ptr noundef %333, i16 noundef zeroext 6, i32 noundef 1) #8
  br label %zr36050_write.exit738

do.body10.i735:                                   ; preds = %do.end3.i732
  %338 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %cmp11.i734 = icmp sgt i32 %338, 0
  br i1 %cmp11.i734, label %do.end15.i737, label %do.body10.i735.do.end3.i746_crit_edge

do.body10.i735.do.end3.i746_crit_edge:            ; preds = %do.body10.i735
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i746

do.end15.i737:                                    ; preds = %do.body10.i735
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i736 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit738

zr36050_write.exit738:                            ; preds = %do.end15.i737, %if.then4.i733
  %.pr1144 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1144)
  %cmp.i739 = icmp sgt i32 %.pr1144, 3
  br i1 %cmp.i739, label %do.end.i741, label %zr36050_write.exit738.do.end3.i746_crit_edge

zr36050_write.exit738.do.end3.i746_crit_edge:     ; preds = %zr36050_write.exit738
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i746

do.end.i741:                                      ; preds = %zr36050_write.exit738
  call void @__sanitizer_cov_trace_pc() #10
  %call.i740 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i746

do.end3.i746:                                     ; preds = %do.end.i741, %zr36050_write.exit738.do.end3.i746_crit_edge, %do.body10.i735.do.end3.i746_crit_edge
  %339 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %codec.i, align 4
  %master_data.i743 = getelementptr inbounds %struct.videocodec, ptr %340, i32 0, i32 5
  %341 = ptrtoint ptr %master_data.i743 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %master_data.i743, align 4
  %writereg.i744 = getelementptr inbounds %struct.videocodec_master, ptr %342, i32 0, i32 6
  %343 = ptrtoint ptr %writereg.i744 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %writereg.i744, align 4
  %tobool.not.i745 = icmp eq ptr %344, null
  br i1 %tobool.not.i745, label %do.body10.i749, label %if.then4.i747

if.then4.i747:                                    ; preds = %do.end3.i746
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %344(ptr noundef %340, i16 noundef zeroext 0, i32 noundef 1) #8
  br label %while.cond.i.preheader

do.body10.i749:                                   ; preds = %do.end3.i746
  %345 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %cmp11.i748 = icmp sgt i32 %345, 0
  br i1 %cmp11.i748, label %do.end15.i751, label %do.body10.i749.while.cond.i.preheader_crit_edge

do.body10.i749.while.cond.i.preheader_crit_edge:  ; preds = %do.body10.i749
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.preheader

do.end15.i751:                                    ; preds = %do.body10.i749
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i750 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.end15.i751, %do.body10.i749.while.cond.i.preheader_crit_edge, %if.then4.i747
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i756.while.cond.i_crit_edge, %while.cond.i.preheader
  %i.0.i = phi i32 [ %inc.i755, %while.body.i756.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ]
  %call.i753 = tail call fastcc zeroext i8 @zr36050_read_status1(ptr noundef %ptr) #8
  %346 = and i8 %call.i753, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool.not.i754 = icmp eq i8 %346, 0
  br i1 %tobool.not.i754, label %while.body.i756, label %while.cond.i.zr36050_wait_end.exit_crit_edge

while.cond.i.zr36050_wait_end.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_wait_end.exit

while.body.i756:                                  ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %347 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %347(i32 noundef 214748) #8
  %inc.i755 = add nuw nsw i32 %i.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i755, 200002
  br i1 %exitcond.i, label %do.body.i, label %while.body.i756.while.cond.i_crit_edge

while.body.i756.while.cond.i_crit_edge:           ; preds = %while.body.i756
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.body.i:                                        ; preds = %while.body.i756
  %348 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %cmp2.i = icmp sgt i32 %348, 0
  br i1 %cmp2.i, label %do.end.i757, label %do.body.i.do.end67_crit_edge

do.body.i.do.end67_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

do.end.i757:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %349 = ptrtoint ptr %status1.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %status1.i, align 4
  %conv6.i = zext i8 %350 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %ptr, i32 noundef %conv6.i) #11
  br label %zr36050_wait_end.exit

zr36050_wait_end.exit:                            ; preds = %do.end.i757, %while.cond.i.zr36050_wait_end.exit_crit_edge
  %.pr1146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1146)
  %cmp54 = icmp sgt i32 %.pr1146, 1
  br i1 %cmp54, label %do.end59, label %zr36050_wait_end.exit.do.end67_crit_edge

zr36050_wait_end.exit.do.end67_crit_edge:         ; preds = %zr36050_wait_end.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

do.end59:                                         ; preds = %zr36050_wait_end.exit
  call void @__sanitizer_cov_trace_pc() #10
  %status1 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %351 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %status1, align 4
  %conv63 = zext i8 %352 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %ptr, i32 noundef %conv63) #11
  br label %do.end67

do.end67:                                         ; preds = %do.end59, %zr36050_wait_end.exit.do.end67_crit_edge, %do.body.i.do.end67_crit_edge
  %status168 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %353 = ptrtoint ptr %status168 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %status168, align 4
  %355 = and i8 %354, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %cmp71 = icmp eq i8 %355, 0
  br i1 %cmp71, label %do.end76, label %if.end81

do.end76:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %ptr) #11
  br label %cleanup

if.end81:                                         ; preds = %do.end67
  %real_code_vol = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 9
  %356 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %real_code_vol, align 4
  %sub = add i32 %357, -721
  %shl = shl i32 %sub, 3
  %shr82 = ashr i32 %shl, 16
  %358 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %358)
  %cmp84 = icmp sgt i32 %358, 2
  br i1 %cmp84, label %do.end97, label %do.end97.thread

do.end97.thread:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %359 = lshr i32 %shl, 24
  br label %do.end3.i766

do.end97:                                         ; preds = %if.end81
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %ptr, i32 noundef %sub, i32 noundef %357, i32 noundef %shl, i32 noundef %shr82) #11
  %.pr1148 = load i32, ptr @debug, align 4
  %360 = lshr i32 %shl, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1148)
  %cmp.i758 = icmp sgt i32 %.pr1148, 3
  br i1 %cmp.i758, label %do.end.i761, label %do.end97.do.end3.i766_crit_edge

do.end97.do.end3.i766_crit_edge:                  ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i766

do.end.i761:                                      ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  %call.i760 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %360, i32 noundef 9) #11
  br label %do.end3.i766

do.end3.i766:                                     ; preds = %do.end.i761, %do.end97.do.end3.i766_crit_edge, %do.end97.thread
  %conv991151 = phi i32 [ %359, %do.end97.thread ], [ %360, %do.end.i761 ], [ %360, %do.end97.do.end3.i766_crit_edge ]
  %361 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %codec.i, align 4
  %master_data.i763 = getelementptr inbounds %struct.videocodec, ptr %362, i32 0, i32 5
  %363 = ptrtoint ptr %master_data.i763 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %master_data.i763, align 4
  %writereg.i764 = getelementptr inbounds %struct.videocodec_master, ptr %364, i32 0, i32 6
  %365 = ptrtoint ptr %writereg.i764 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %writereg.i764, align 4
  %tobool.not.i765 = icmp eq ptr %366, null
  br i1 %tobool.not.i765, label %do.body10.i770, label %if.then4.i768

if.then4.i768:                                    ; preds = %do.end3.i766
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %366(ptr noundef %362, i16 noundef zeroext 9, i32 noundef %conv991151) #8
  br label %zr36050_write.exit773

do.body10.i770:                                   ; preds = %do.end3.i766
  %367 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %cmp11.i769 = icmp sgt i32 %367, 0
  br i1 %cmp11.i769, label %do.end15.i772, label %do.body10.i770.do.end3.i782_crit_edge

do.body10.i770.do.end3.i782_crit_edge:            ; preds = %do.body10.i770
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i782

do.end15.i772:                                    ; preds = %do.body10.i770
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i771 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit773

zr36050_write.exit773:                            ; preds = %do.end15.i772, %if.then4.i768
  %.pr1152 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1152)
  %cmp.i774 = icmp sgt i32 %.pr1152, 3
  br i1 %cmp.i774, label %do.end.i777, label %zr36050_write.exit773.do.end3.i782_crit_edge

zr36050_write.exit773.do.end3.i782_crit_edge:     ; preds = %zr36050_write.exit773
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i782

do.end.i777:                                      ; preds = %zr36050_write.exit773
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i775 = and i32 %shr82, 255
  %call.i776 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i775, i32 noundef 10) #11
  br label %do.end3.i782

do.end3.i782:                                     ; preds = %do.end.i777, %zr36050_write.exit773.do.end3.i782_crit_edge, %do.body10.i770.do.end3.i782_crit_edge
  %368 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %codec.i, align 4
  %master_data.i779 = getelementptr inbounds %struct.videocodec, ptr %369, i32 0, i32 5
  %370 = ptrtoint ptr %master_data.i779 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %master_data.i779, align 4
  %writereg.i780 = getelementptr inbounds %struct.videocodec_master, ptr %371, i32 0, i32 6
  %372 = ptrtoint ptr %writereg.i780 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %writereg.i780, align 4
  %tobool.not.i781 = icmp eq ptr %373, null
  br i1 %tobool.not.i781, label %do.body10.i786, label %if.then4.i784

if.then4.i784:                                    ; preds = %do.end3.i782
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i783 = and i32 %shr82, 255
  tail call void %373(ptr noundef %369, i16 noundef zeroext 10, i32 noundef %conv9.i783) #8
  br label %zr36050_write.exit789

do.body10.i786:                                   ; preds = %do.end3.i782
  %374 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %cmp11.i785 = icmp sgt i32 %374, 0
  br i1 %cmp11.i785, label %do.end15.i788, label %zr36050_write.exit789.thread

zr36050_write.exit789.thread:                     ; preds = %do.body10.i786
  call void @__sanitizer_cov_trace_pc() #10
  %375 = lshr i32 %shl, 8
  br label %do.end3.i798

do.end15.i788:                                    ; preds = %do.body10.i786
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i787 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit789

zr36050_write.exit789:                            ; preds = %do.end15.i788, %if.then4.i784
  %.pr1156 = load i32, ptr @debug, align 4
  %376 = lshr i32 %shl, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1156)
  %cmp.i790 = icmp sgt i32 %.pr1156, 3
  br i1 %cmp.i790, label %do.end.i793, label %zr36050_write.exit789.do.end3.i798_crit_edge

zr36050_write.exit789.do.end3.i798_crit_edge:     ; preds = %zr36050_write.exit789
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i798

do.end.i793:                                      ; preds = %zr36050_write.exit789
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i791 = and i32 %376, 255
  %call.i792 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i791, i32 noundef 11) #11
  br label %do.end3.i798

do.end3.i798:                                     ; preds = %do.end.i793, %zr36050_write.exit789.do.end3.i798_crit_edge, %zr36050_write.exit789.thread
  %conv1041159 = phi i32 [ %375, %zr36050_write.exit789.thread ], [ %376, %do.end.i793 ], [ %376, %zr36050_write.exit789.do.end3.i798_crit_edge ]
  %377 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %codec.i, align 4
  %master_data.i795 = getelementptr inbounds %struct.videocodec, ptr %378, i32 0, i32 5
  %379 = ptrtoint ptr %master_data.i795 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %master_data.i795, align 4
  %writereg.i796 = getelementptr inbounds %struct.videocodec_master, ptr %380, i32 0, i32 6
  %381 = ptrtoint ptr %writereg.i796 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %writereg.i796, align 4
  %tobool.not.i797 = icmp eq ptr %382, null
  br i1 %tobool.not.i797, label %do.body10.i802, label %if.then4.i800

if.then4.i800:                                    ; preds = %do.end3.i798
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i799 = and i32 %conv1041159, 255
  tail call void %382(ptr noundef %378, i16 noundef zeroext 11, i32 noundef %conv9.i799) #8
  br label %zr36050_write.exit805

do.body10.i802:                                   ; preds = %do.end3.i798
  %383 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %cmp11.i801 = icmp sgt i32 %383, 0
  br i1 %cmp11.i801, label %do.end15.i804, label %do.body10.i802.do.end3.i814_crit_edge

do.body10.i802.do.end3.i814_crit_edge:            ; preds = %do.body10.i802
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i814

do.end15.i804:                                    ; preds = %do.body10.i802
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i803 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit805

zr36050_write.exit805:                            ; preds = %do.end15.i804, %if.then4.i800
  %.pr1160 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1160)
  %cmp.i806 = icmp sgt i32 %.pr1160, 3
  br i1 %cmp.i806, label %do.end.i809, label %zr36050_write.exit805.do.end3.i814_crit_edge

zr36050_write.exit805.do.end3.i814_crit_edge:     ; preds = %zr36050_write.exit805
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i814

do.end.i809:                                      ; preds = %zr36050_write.exit805
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i807 = and i32 %shl, 248
  %call.i808 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i807, i32 noundef 12) #11
  br label %do.end3.i814

do.end3.i814:                                     ; preds = %do.end.i809, %zr36050_write.exit805.do.end3.i814_crit_edge, %do.body10.i802.do.end3.i814_crit_edge
  %384 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %codec.i, align 4
  %master_data.i811 = getelementptr inbounds %struct.videocodec, ptr %385, i32 0, i32 5
  %386 = ptrtoint ptr %master_data.i811 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %master_data.i811, align 4
  %writereg.i812 = getelementptr inbounds %struct.videocodec_master, ptr %387, i32 0, i32 6
  %388 = ptrtoint ptr %writereg.i812 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %writereg.i812, align 4
  %tobool.not.i813 = icmp eq ptr %389, null
  br i1 %tobool.not.i813, label %do.body10.i818, label %if.then4.i816

if.then4.i816:                                    ; preds = %do.end3.i814
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i815 = and i32 %shl, 248
  tail call void %389(ptr noundef %385, i16 noundef zeroext 12, i32 noundef %conv9.i815) #8
  br label %zr36050_write.exit821

do.body10.i818:                                   ; preds = %do.end3.i814
  %390 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %390)
  %cmp11.i817 = icmp sgt i32 %390, 0
  br i1 %cmp11.i817, label %do.end15.i820, label %zr36050_write.exit821.thread

zr36050_write.exit821.thread:                     ; preds = %do.body10.i818
  call void @__sanitizer_cov_trace_pc() #10
  %shr1071165 = ashr i32 %shl, 7
  %sub1081166 = sub i32 %shl, %shr1071165
  %mul1167 = mul i32 %sub1081166, 5
  %shr1091168 = ashr i32 %mul1167, 6
  %sub1101169 = sub i32 %sub1081166, %shr1091168
  %shr1111170 = ashr i32 %sub1101169, 16
  br label %do.end125

do.end15.i820:                                    ; preds = %do.body10.i818
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i819 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit821

zr36050_write.exit821:                            ; preds = %do.end15.i820, %if.then4.i816
  %.pr1164 = load i32, ptr @debug, align 4
  %shr107 = ashr i32 %shl, 7
  %sub108 = sub i32 %shl, %shr107
  %mul = mul i32 %sub108, 5
  %shr109 = ashr i32 %mul, 6
  %sub110 = sub i32 %sub108, %shr109
  %shr111 = ashr i32 %sub110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr1164)
  %cmp113 = icmp sgt i32 %.pr1164, 2
  br i1 %cmp113, label %do.end118, label %zr36050_write.exit821.do.end125_crit_edge

zr36050_write.exit821.do.end125_crit_edge:        ; preds = %zr36050_write.exit821
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end125

do.end118:                                        ; preds = %zr36050_write.exit821
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %ptr, i32 noundef %sub110, i32 noundef %shr111) #11
  br label %do.end125

do.end125:                                        ; preds = %do.end118, %zr36050_write.exit821.do.end125_crit_edge, %zr36050_write.exit821.thread
  %shr1111173 = phi i32 [ %shr1111170, %zr36050_write.exit821.thread ], [ %shr111, %do.end118 ], [ %shr111, %zr36050_write.exit821.do.end125_crit_edge ]
  %sub1101172 = phi i32 [ %sub1101169, %zr36050_write.exit821.thread ], [ %sub110, %do.end118 ], [ %sub110, %zr36050_write.exit821.do.end125_crit_edge ]
  %391 = lshr i32 %sub1101172, 24
  %392 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %392)
  %cmp.i822 = icmp sgt i32 %392, 3
  br i1 %cmp.i822, label %do.end.i825, label %do.end125.do.end3.i830_crit_edge

do.end125.do.end3.i830_crit_edge:                 ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i830

do.end.i825:                                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #10
  %call.i824 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %391, i32 noundef 13) #11
  br label %do.end3.i830

do.end3.i830:                                     ; preds = %do.end.i825, %do.end125.do.end3.i830_crit_edge
  %393 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %codec.i, align 4
  %master_data.i827 = getelementptr inbounds %struct.videocodec, ptr %394, i32 0, i32 5
  %395 = ptrtoint ptr %master_data.i827 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %master_data.i827, align 4
  %writereg.i828 = getelementptr inbounds %struct.videocodec_master, ptr %396, i32 0, i32 6
  %397 = ptrtoint ptr %writereg.i828 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %writereg.i828, align 4
  %tobool.not.i829 = icmp eq ptr %398, null
  br i1 %tobool.not.i829, label %do.body10.i834, label %if.then4.i832

if.then4.i832:                                    ; preds = %do.end3.i830
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %398(ptr noundef %394, i16 noundef zeroext 13, i32 noundef %391) #8
  br label %zr36050_write.exit837

do.body10.i834:                                   ; preds = %do.end3.i830
  %399 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %cmp11.i833 = icmp sgt i32 %399, 0
  br i1 %cmp11.i833, label %do.end15.i836, label %do.body10.i834.do.end3.i846_crit_edge

do.body10.i834.do.end3.i846_crit_edge:            ; preds = %do.body10.i834
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i846

do.end15.i836:                                    ; preds = %do.body10.i834
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i835 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit837

zr36050_write.exit837:                            ; preds = %do.end15.i836, %if.then4.i832
  %.pr1174 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1174)
  %cmp.i838 = icmp sgt i32 %.pr1174, 3
  br i1 %cmp.i838, label %do.end.i841, label %zr36050_write.exit837.do.end3.i846_crit_edge

zr36050_write.exit837.do.end3.i846_crit_edge:     ; preds = %zr36050_write.exit837
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i846

do.end.i841:                                      ; preds = %zr36050_write.exit837
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i839 = and i32 %shr1111173, 255
  %call.i840 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i839, i32 noundef 14) #11
  br label %do.end3.i846

do.end3.i846:                                     ; preds = %do.end.i841, %zr36050_write.exit837.do.end3.i846_crit_edge, %do.body10.i834.do.end3.i846_crit_edge
  %400 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %codec.i, align 4
  %master_data.i843 = getelementptr inbounds %struct.videocodec, ptr %401, i32 0, i32 5
  %402 = ptrtoint ptr %master_data.i843 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %master_data.i843, align 4
  %writereg.i844 = getelementptr inbounds %struct.videocodec_master, ptr %403, i32 0, i32 6
  %404 = ptrtoint ptr %writereg.i844 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %writereg.i844, align 4
  %tobool.not.i845 = icmp eq ptr %405, null
  br i1 %tobool.not.i845, label %do.body10.i850, label %if.then4.i848

if.then4.i848:                                    ; preds = %do.end3.i846
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i847 = and i32 %shr1111173, 255
  tail call void %405(ptr noundef %401, i16 noundef zeroext 14, i32 noundef %conv9.i847) #8
  br label %zr36050_write.exit853

do.body10.i850:                                   ; preds = %do.end3.i846
  %406 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %cmp11.i849 = icmp sgt i32 %406, 0
  br i1 %cmp11.i849, label %do.end15.i852, label %zr36050_write.exit853.thread

zr36050_write.exit853.thread:                     ; preds = %do.body10.i850
  call void @__sanitizer_cov_trace_pc() #10
  %407 = lshr i32 %sub1101172, 8
  br label %do.end3.i862

do.end15.i852:                                    ; preds = %do.body10.i850
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i851 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit853

zr36050_write.exit853:                            ; preds = %do.end15.i852, %if.then4.i848
  %.pr1178 = load i32, ptr @debug, align 4
  %408 = lshr i32 %sub1101172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1178)
  %cmp.i854 = icmp sgt i32 %.pr1178, 3
  br i1 %cmp.i854, label %do.end.i857, label %zr36050_write.exit853.do.end3.i862_crit_edge

zr36050_write.exit853.do.end3.i862_crit_edge:     ; preds = %zr36050_write.exit853
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i862

do.end.i857:                                      ; preds = %zr36050_write.exit853
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i855 = and i32 %408, 255
  %call.i856 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i855, i32 noundef 15) #11
  br label %do.end3.i862

do.end3.i862:                                     ; preds = %do.end.i857, %zr36050_write.exit853.do.end3.i862_crit_edge, %zr36050_write.exit853.thread
  %conv1321181 = phi i32 [ %407, %zr36050_write.exit853.thread ], [ %408, %do.end.i857 ], [ %408, %zr36050_write.exit853.do.end3.i862_crit_edge ]
  %409 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %codec.i, align 4
  %master_data.i859 = getelementptr inbounds %struct.videocodec, ptr %410, i32 0, i32 5
  %411 = ptrtoint ptr %master_data.i859 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %master_data.i859, align 4
  %writereg.i860 = getelementptr inbounds %struct.videocodec_master, ptr %412, i32 0, i32 6
  %413 = ptrtoint ptr %writereg.i860 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %writereg.i860, align 4
  %tobool.not.i861 = icmp eq ptr %414, null
  br i1 %tobool.not.i861, label %do.body10.i866, label %if.then4.i864

if.then4.i864:                                    ; preds = %do.end3.i862
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i863 = and i32 %conv1321181, 255
  tail call void %414(ptr noundef %410, i16 noundef zeroext 15, i32 noundef %conv9.i863) #8
  br label %zr36050_write.exit869

do.body10.i866:                                   ; preds = %do.end3.i862
  %415 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %cmp11.i865 = icmp sgt i32 %415, 0
  br i1 %cmp11.i865, label %do.end15.i868, label %do.body10.i866.do.end3.i878_crit_edge

do.body10.i866.do.end3.i878_crit_edge:            ; preds = %do.body10.i866
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i878

do.end15.i868:                                    ; preds = %do.body10.i866
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i867 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit869

zr36050_write.exit869:                            ; preds = %do.end15.i868, %if.then4.i864
  %.pr1182 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1182)
  %cmp.i870 = icmp sgt i32 %.pr1182, 3
  br i1 %cmp.i870, label %do.end.i873, label %zr36050_write.exit869.do.end3.i878_crit_edge

zr36050_write.exit869.do.end3.i878_crit_edge:     ; preds = %zr36050_write.exit869
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i878

do.end.i873:                                      ; preds = %zr36050_write.exit869
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i871 = and i32 %sub1101172, 255
  %call.i872 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i871, i32 noundef 16) #11
  br label %do.end3.i878

do.end3.i878:                                     ; preds = %do.end.i873, %zr36050_write.exit869.do.end3.i878_crit_edge, %do.body10.i866.do.end3.i878_crit_edge
  %416 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %codec.i, align 4
  %master_data.i875 = getelementptr inbounds %struct.videocodec, ptr %417, i32 0, i32 5
  %418 = ptrtoint ptr %master_data.i875 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %master_data.i875, align 4
  %writereg.i876 = getelementptr inbounds %struct.videocodec_master, ptr %419, i32 0, i32 6
  %420 = ptrtoint ptr %writereg.i876 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %writereg.i876, align 4
  %tobool.not.i877 = icmp eq ptr %421, null
  br i1 %tobool.not.i877, label %do.body10.i882, label %if.then4.i880

if.then4.i880:                                    ; preds = %do.end3.i878
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i879 = and i32 %sub1101172, 255
  tail call void %421(ptr noundef %417, i16 noundef zeroext 16, i32 noundef %conv9.i879) #8
  br label %zr36050_write.exit885

do.body10.i882:                                   ; preds = %do.end3.i878
  %422 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %cmp11.i881 = icmp sgt i32 %422, 0
  br i1 %cmp11.i881, label %do.end15.i884, label %zr36050_write.exit885.thread

zr36050_write.exit885.thread:                     ; preds = %do.body10.i882
  call void @__sanitizer_cov_trace_pc() #10
  %bitrate_ctrl1187 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 7
  %423 = ptrtoint ptr %bitrate_ctrl1187 to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %bitrate_ctrl1187, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %424)
  %tobool.not1188 = icmp eq i16 %424, 0
  %conv1361189 = select i1 %tobool.not1188, i8 -96, i8 -92
  br label %do.end3.i894

do.end15.i884:                                    ; preds = %do.body10.i882
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i883 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit885

zr36050_write.exit885:                            ; preds = %do.end15.i884, %if.then4.i880
  %.pr1186 = load i32, ptr @debug, align 4
  %bitrate_ctrl = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 7
  %425 = ptrtoint ptr %bitrate_ctrl to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %bitrate_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %426)
  %tobool.not = icmp eq i16 %426, 0
  %conv136 = select i1 %tobool.not, i8 -96, i8 -92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1186)
  %cmp.i886 = icmp sgt i32 %.pr1186, 3
  br i1 %cmp.i886, label %do.end.i889, label %zr36050_write.exit885.do.end3.i894_crit_edge

zr36050_write.exit885.do.end3.i894_crit_edge:     ; preds = %zr36050_write.exit885
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i894

do.end.i889:                                      ; preds = %zr36050_write.exit885
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i887 = zext i8 %conv136 to i32
  %call.i888 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i887, i32 noundef 3) #11
  br label %do.end3.i894

do.end3.i894:                                     ; preds = %do.end.i889, %zr36050_write.exit885.do.end3.i894_crit_edge, %zr36050_write.exit885.thread
  %conv1361191 = phi i8 [ %conv1361189, %zr36050_write.exit885.thread ], [ %conv136, %do.end.i889 ], [ %conv136, %zr36050_write.exit885.do.end3.i894_crit_edge ]
  %427 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %codec.i, align 4
  %master_data.i891 = getelementptr inbounds %struct.videocodec, ptr %428, i32 0, i32 5
  %429 = ptrtoint ptr %master_data.i891 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %master_data.i891, align 4
  %writereg.i892 = getelementptr inbounds %struct.videocodec_master, ptr %430, i32 0, i32 6
  %431 = ptrtoint ptr %writereg.i892 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %writereg.i892, align 4
  %tobool.not.i893 = icmp eq ptr %432, null
  br i1 %tobool.not.i893, label %do.body10.i898, label %if.then4.i896

if.then4.i896:                                    ; preds = %do.end3.i894
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i895 = zext i8 %conv1361191 to i32
  tail call void %432(ptr noundef %428, i16 noundef zeroext 3, i32 noundef %conv9.i895) #8
  br label %zr36050_write.exit901

do.body10.i898:                                   ; preds = %do.end3.i894
  %433 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %433)
  %cmp11.i897 = icmp sgt i32 %433, 0
  br i1 %cmp11.i897, label %do.end15.i900, label %do.body10.i898.zr36050_write.exit901_crit_edge

do.body10.i898.zr36050_write.exit901_crit_edge:   ; preds = %do.body10.i898
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit901

do.end15.i900:                                    ; preds = %do.body10.i898
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i899 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit901

zr36050_write.exit901:                            ; preds = %do.end15.i900, %do.body10.i898.zr36050_write.exit901_crit_edge, %if.then4.i896
  %434 = ptrtoint ptr %len1122 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %len1122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %cmp139 = icmp sgt i32 %435, 0
  %or142 = select i1 %cmp139, i8 -104, i8 24
  %436 = ptrtoint ptr %com1137 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %com1137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %437)
  %cmp145 = icmp sgt i32 %437, 0
  %cond147 = select i1 %cmp145, i8 64, i8 0
  %or148 = or i8 %cond147, %or142
  %438 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %438)
  %cmp.i902 = icmp sgt i32 %438, 3
  br i1 %cmp.i902, label %do.end.i905, label %zr36050_write.exit901.do.end3.i910_crit_edge

zr36050_write.exit901.do.end3.i910_crit_edge:     ; preds = %zr36050_write.exit901
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i910

do.end.i905:                                      ; preds = %zr36050_write.exit901
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i903 = zext i8 %or148 to i32
  %call.i904 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i903, i32 noundef 6) #11
  br label %do.end3.i910

do.end3.i910:                                     ; preds = %do.end.i905, %zr36050_write.exit901.do.end3.i910_crit_edge
  %439 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %codec.i, align 4
  %master_data.i907 = getelementptr inbounds %struct.videocodec, ptr %440, i32 0, i32 5
  %441 = ptrtoint ptr %master_data.i907 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %master_data.i907, align 4
  %writereg.i908 = getelementptr inbounds %struct.videocodec_master, ptr %442, i32 0, i32 6
  %443 = ptrtoint ptr %writereg.i908 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %writereg.i908, align 4
  %tobool.not.i909 = icmp eq ptr %444, null
  br i1 %tobool.not.i909, label %do.body10.i914, label %if.then4.i912

if.then4.i912:                                    ; preds = %do.end3.i910
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i911 = zext i8 %or148 to i32
  tail call void %444(ptr noundef %440, i16 noundef zeroext 6, i32 noundef %conv9.i911) #8
  br label %if.end209

do.body10.i914:                                   ; preds = %do.end3.i910
  %445 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %cmp11.i913 = icmp sgt i32 %445, 0
  br i1 %cmp11.i913, label %do.end15.i916, label %do.body10.i914.if.end209_crit_edge

do.body10.i914.if.end209_crit_edge:               ; preds = %do.body10.i914
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

do.end15.i916:                                    ; preds = %do.body10.i914
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i915 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %if.end209

do.body150:                                       ; preds = %entry
  br i1 %cmp1, label %do.end163, label %do.body150.do.end3.i925_crit_edge

do.body150.do.end3.i925_crit_edge:                ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i925

do.end163:                                        ; preds = %do.body150
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr) #11
  %.pr1192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1192)
  %cmp.i918 = icmp sgt i32 %.pr1192, 3
  br i1 %cmp.i918, label %do.end.i920, label %do.end163.do.end3.i925_crit_edge

do.end163.do.end3.i925_crit_edge:                 ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i925

do.end.i920:                                      ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #10
  %call.i919 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 68, i32 noundef 2) #11
  br label %do.end3.i925

do.end3.i925:                                     ; preds = %do.end.i920, %do.end163.do.end3.i925_crit_edge, %do.body150.do.end3.i925_crit_edge
  %codec.i921 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 2
  %446 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %codec.i921, align 4
  %master_data.i922 = getelementptr inbounds %struct.videocodec, ptr %447, i32 0, i32 5
  %448 = ptrtoint ptr %master_data.i922 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %master_data.i922, align 4
  %writereg.i923 = getelementptr inbounds %struct.videocodec_master, ptr %449, i32 0, i32 6
  %450 = ptrtoint ptr %writereg.i923 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %writereg.i923, align 4
  %tobool.not.i924 = icmp eq ptr %451, null
  br i1 %tobool.not.i924, label %do.body10.i928, label %if.then4.i926

if.then4.i926:                                    ; preds = %do.end3.i925
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %451(ptr noundef %447, i16 noundef zeroext 2, i32 noundef 68) #8
  br label %zr36050_write.exit931

do.body10.i928:                                   ; preds = %do.end3.i925
  %452 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %cmp11.i927 = icmp sgt i32 %452, 0
  br i1 %cmp11.i927, label %do.end15.i930, label %do.body10.i928.do.end3.i939_crit_edge

do.body10.i928.do.end3.i939_crit_edge:            ; preds = %do.body10.i928
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i939

do.end15.i930:                                    ; preds = %do.body10.i928
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i929 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit931

zr36050_write.exit931:                            ; preds = %do.end15.i930, %if.then4.i926
  %.pr1194 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1194)
  %cmp.i932 = icmp sgt i32 %.pr1194, 3
  br i1 %cmp.i932, label %do.end.i934, label %zr36050_write.exit931.do.end3.i939_crit_edge

zr36050_write.exit931.do.end3.i939_crit_edge:     ; preds = %zr36050_write.exit931
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i939

do.end.i934:                                      ; preds = %zr36050_write.exit931
  call void @__sanitizer_cov_trace_pc() #10
  %call.i933 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 16, i32 noundef 3) #11
  br label %do.end3.i939

do.end3.i939:                                     ; preds = %do.end.i934, %zr36050_write.exit931.do.end3.i939_crit_edge, %do.body10.i928.do.end3.i939_crit_edge
  %453 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %codec.i921, align 4
  %master_data.i936 = getelementptr inbounds %struct.videocodec, ptr %454, i32 0, i32 5
  %455 = ptrtoint ptr %master_data.i936 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %master_data.i936, align 4
  %writereg.i937 = getelementptr inbounds %struct.videocodec_master, ptr %456, i32 0, i32 6
  %457 = ptrtoint ptr %writereg.i937 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %writereg.i937, align 4
  %tobool.not.i938 = icmp eq ptr %458, null
  br i1 %tobool.not.i938, label %do.body10.i942, label %if.then4.i940

if.then4.i940:                                    ; preds = %do.end3.i939
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %458(ptr noundef %454, i16 noundef zeroext 3, i32 noundef 16) #8
  br label %zr36050_write.exit945

do.body10.i942:                                   ; preds = %do.end3.i939
  %459 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %459)
  %cmp11.i941 = icmp sgt i32 %459, 0
  br i1 %cmp11.i941, label %do.end15.i944, label %do.body10.i942.do.end3.i953_crit_edge

do.body10.i942.do.end3.i953_crit_edge:            ; preds = %do.body10.i942
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i953

do.end15.i944:                                    ; preds = %do.body10.i942
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i943 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit945

zr36050_write.exit945:                            ; preds = %do.end15.i944, %if.then4.i940
  %.pr1196 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1196)
  %cmp.i946 = icmp sgt i32 %.pr1196, 3
  br i1 %cmp.i946, label %do.end.i948, label %zr36050_write.exit945.do.end3.i953_crit_edge

zr36050_write.exit945.do.end3.i953_crit_edge:     ; preds = %zr36050_write.exit945
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i953

do.end.i948:                                      ; preds = %zr36050_write.exit945
  call void @__sanitizer_cov_trace_pc() #10
  %call.i947 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 7) #11
  br label %do.end3.i953

do.end3.i953:                                     ; preds = %do.end.i948, %zr36050_write.exit945.do.end3.i953_crit_edge, %do.body10.i942.do.end3.i953_crit_edge
  %460 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %codec.i921, align 4
  %master_data.i950 = getelementptr inbounds %struct.videocodec, ptr %461, i32 0, i32 5
  %462 = ptrtoint ptr %master_data.i950 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %master_data.i950, align 4
  %writereg.i951 = getelementptr inbounds %struct.videocodec_master, ptr %463, i32 0, i32 6
  %464 = ptrtoint ptr %writereg.i951 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %writereg.i951, align 4
  %tobool.not.i952 = icmp eq ptr %465, null
  br i1 %tobool.not.i952, label %do.body10.i956, label %if.then4.i954

if.then4.i954:                                    ; preds = %do.end3.i953
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %465(ptr noundef %461, i16 noundef zeroext 7, i32 noundef 0) #8
  br label %zr36050_write.exit959

do.body10.i956:                                   ; preds = %do.end3.i953
  %466 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %466)
  %cmp11.i955 = icmp sgt i32 %466, 0
  br i1 %cmp11.i955, label %do.end15.i958, label %do.body10.i956.do.end3.i967_crit_edge

do.body10.i956.do.end3.i967_crit_edge:            ; preds = %do.body10.i956
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i967

do.end15.i958:                                    ; preds = %do.body10.i956
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i957 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit959

zr36050_write.exit959:                            ; preds = %do.end15.i958, %if.then4.i954
  %.pr1198 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1198)
  %cmp.i960 = icmp sgt i32 %.pr1198, 3
  br i1 %cmp.i960, label %do.end.i962, label %zr36050_write.exit959.do.end3.i967_crit_edge

zr36050_write.exit959.do.end3.i967_crit_edge:     ; preds = %zr36050_write.exit959
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i967

do.end.i962:                                      ; preds = %zr36050_write.exit959
  call void @__sanitizer_cov_trace_pc() #10
  %call.i961 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 3, i32 noundef 8) #11
  br label %do.end3.i967

do.end3.i967:                                     ; preds = %do.end.i962, %zr36050_write.exit959.do.end3.i967_crit_edge, %do.body10.i956.do.end3.i967_crit_edge
  %467 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %codec.i921, align 4
  %master_data.i964 = getelementptr inbounds %struct.videocodec, ptr %468, i32 0, i32 5
  %469 = ptrtoint ptr %master_data.i964 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %master_data.i964, align 4
  %writereg.i965 = getelementptr inbounds %struct.videocodec_master, ptr %470, i32 0, i32 6
  %471 = ptrtoint ptr %writereg.i965 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %writereg.i965, align 4
  %tobool.not.i966 = icmp eq ptr %472, null
  br i1 %tobool.not.i966, label %do.body10.i970, label %if.then4.i968

if.then4.i968:                                    ; preds = %do.end3.i967
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %472(ptr noundef %468, i16 noundef zeroext 8, i32 noundef 3) #8
  br label %zr36050_write.exit973

do.body10.i970:                                   ; preds = %do.end3.i967
  %473 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %473)
  %cmp11.i969 = icmp sgt i32 %473, 0
  br i1 %cmp11.i969, label %do.end15.i972, label %do.body10.i970.while.body.i986.preheader_crit_edge

do.body10.i970.while.body.i986.preheader_crit_edge: ; preds = %do.body10.i970
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i986.preheader

do.end15.i972:                                    ; preds = %do.body10.i970
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i971 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit973

zr36050_write.exit973:                            ; preds = %do.end15.i972, %if.then4.i968
  %.pr1200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr1200)
  %cmp165 = icmp sgt i32 %.pr1200, 2
  br i1 %cmp165, label %do.end177, label %zr36050_write.exit973.while.body.i986.preheader_crit_edge

zr36050_write.exit973.while.body.i986.preheader_crit_edge: ; preds = %zr36050_write.exit973
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i986.preheader

do.end177:                                        ; preds = %zr36050_write.exit973
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %ptr) #11
  %.pr1202 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1202)
  %cmp.i974 = icmp sgt i32 %.pr1202, 3
  br i1 %cmp.i974, label %do.end.i977, label %do.end177.while.body.i986.preheader_crit_edge

do.end177.while.body.i986.preheader_crit_edge:    ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i986.preheader

do.end.i977:                                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #10
  %call.i976 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %ptr, i32 noundef 468, i32 noundef 420) #11
  br label %while.body.i986.preheader

while.body.i986.preheader:                        ; preds = %do.end.i977, %do.end177.while.body.i986.preheader_crit_edge, %zr36050_write.exit973.while.body.i986.preheader_crit_edge, %do.body10.i970.while.body.i986.preheader_crit_edge
  br label %while.body.i986

while.body.i986:                                  ; preds = %zr36050_write.exit.i1002.while.body.i986_crit_edge, %while.body.i986.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %zr36050_write.exit.i1002.while.body.i986_crit_edge ], [ 468, %while.body.i986.preheader ]
  %i.015.i981 = phi i32 [ %inc8.i983, %zr36050_write.exit.i1002.while.body.i986_crit_edge ], [ 0, %while.body.i986.preheader ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc8.i983 = add nuw nsw i32 %i.015.i981, 1
  %arrayidx.i984 = getelementptr i8, ptr @zr36050_dht, i32 %i.015.i981
  %474 = ptrtoint ptr %arrayidx.i984 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %arrayidx.i984, align 1
  %476 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %476)
  %cmp.i.i985 = icmp sgt i32 %476, 3
  br i1 %cmp.i.i985, label %do.end.i.i990, label %while.body.i986.do.end3.i.i994_crit_edge

while.body.i986.do.end3.i.i994_crit_edge:         ; preds = %while.body.i986
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i994

do.end.i.i990:                                    ; preds = %while.body.i986
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i987 = zext i8 %475 to i32
  %call.i.i989 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv.i.i987, i32 noundef %indvars.iv) #11
  br label %do.end3.i.i994

do.end3.i.i994:                                   ; preds = %do.end.i.i990, %while.body.i986.do.end3.i.i994_crit_edge
  %477 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %codec.i921, align 4
  %master_data.i.i991 = getelementptr inbounds %struct.videocodec, ptr %478, i32 0, i32 5
  %479 = ptrtoint ptr %master_data.i.i991 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %master_data.i.i991, align 4
  %writereg.i.i992 = getelementptr inbounds %struct.videocodec_master, ptr %480, i32 0, i32 6
  %481 = ptrtoint ptr %writereg.i.i992 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %writereg.i.i992, align 4
  %tobool.not.i.i993 = icmp eq ptr %482, null
  br i1 %tobool.not.i.i993, label %do.body10.i.i998, label %if.then4.i.i996

if.then4.i.i996:                                  ; preds = %do.end3.i.i994
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i995 = zext i8 %475 to i32
  %483 = trunc i32 %indvars.iv to i16
  tail call void %482(ptr noundef %478, i16 noundef zeroext %483, i32 noundef %conv9.i.i995) #8
  br label %zr36050_write.exit.i1002

do.body10.i.i998:                                 ; preds = %do.end3.i.i994
  %484 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %cmp11.i.i997 = icmp sgt i32 %484, 0
  br i1 %cmp11.i.i997, label %do.end15.i.i1000, label %do.body10.i.i998.zr36050_write.exit.i1002_crit_edge

do.body10.i.i998.zr36050_write.exit.i1002_crit_edge: ; preds = %do.body10.i.i998
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_write.exit.i1002

do.end15.i.i1000:                                 ; preds = %do.body10.i.i998
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i.i999 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit.i1002

zr36050_write.exit.i1002:                         ; preds = %do.end15.i.i1000, %do.body10.i.i998.zr36050_write.exit.i1002_crit_edge, %if.then4.i.i996
  %exitcond.not.i1001 = icmp eq i32 %inc8.i983, 420
  br i1 %exitcond.not.i1001, label %zr36050_pushit.exit1003, label %zr36050_write.exit.i1002.while.body.i986_crit_edge

zr36050_write.exit.i1002.while.body.i986_crit_edge: ; preds = %zr36050_write.exit.i1002
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i986

zr36050_pushit.exit1003:                          ; preds = %zr36050_write.exit.i1002
  %485 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %485)
  %cmp.i1004 = icmp sgt i32 %485, 3
  br i1 %cmp.i1004, label %do.end.i1006, label %zr36050_pushit.exit1003.do.end3.i1011_crit_edge

zr36050_pushit.exit1003.do.end3.i1011_crit_edge:  ; preds = %zr36050_pushit.exit1003
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i1011

do.end.i1006:                                     ; preds = %zr36050_pushit.exit1003
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1005 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 1, i32 noundef 6) #11
  br label %do.end3.i1011

do.end3.i1011:                                    ; preds = %do.end.i1006, %zr36050_pushit.exit1003.do.end3.i1011_crit_edge
  %486 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %codec.i921, align 4
  %master_data.i1008 = getelementptr inbounds %struct.videocodec, ptr %487, i32 0, i32 5
  %488 = ptrtoint ptr %master_data.i1008 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %master_data.i1008, align 4
  %writereg.i1009 = getelementptr inbounds %struct.videocodec_master, ptr %489, i32 0, i32 6
  %490 = ptrtoint ptr %writereg.i1009 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %writereg.i1009, align 4
  %tobool.not.i1010 = icmp eq ptr %491, null
  br i1 %tobool.not.i1010, label %do.body10.i1014, label %if.then4.i1012

if.then4.i1012:                                   ; preds = %do.end3.i1011
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %491(ptr noundef %487, i16 noundef zeroext 6, i32 noundef 1) #8
  br label %zr36050_write.exit1017

do.body10.i1014:                                  ; preds = %do.end3.i1011
  %492 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %492)
  %cmp11.i1013 = icmp sgt i32 %492, 0
  br i1 %cmp11.i1013, label %do.end15.i1016, label %do.body10.i1014.do.end3.i1025_crit_edge

do.body10.i1014.do.end3.i1025_crit_edge:          ; preds = %do.body10.i1014
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i1025

do.end15.i1016:                                   ; preds = %do.body10.i1014
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i1015 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit1017

zr36050_write.exit1017:                           ; preds = %do.end15.i1016, %if.then4.i1012
  %.pr1204 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1204)
  %cmp.i1018 = icmp sgt i32 %.pr1204, 3
  br i1 %cmp.i1018, label %do.end.i1020, label %zr36050_write.exit1017.do.end3.i1025_crit_edge

zr36050_write.exit1017.do.end3.i1025_crit_edge:   ; preds = %zr36050_write.exit1017
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i1025

do.end.i1020:                                     ; preds = %zr36050_write.exit1017
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1019 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i1025

do.end3.i1025:                                    ; preds = %do.end.i1020, %zr36050_write.exit1017.do.end3.i1025_crit_edge, %do.body10.i1014.do.end3.i1025_crit_edge
  %493 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %codec.i921, align 4
  %master_data.i1022 = getelementptr inbounds %struct.videocodec, ptr %494, i32 0, i32 5
  %495 = ptrtoint ptr %master_data.i1022 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %master_data.i1022, align 4
  %writereg.i1023 = getelementptr inbounds %struct.videocodec_master, ptr %496, i32 0, i32 6
  %497 = ptrtoint ptr %writereg.i1023 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %writereg.i1023, align 4
  %tobool.not.i1024 = icmp eq ptr %498, null
  br i1 %tobool.not.i1024, label %do.body10.i1028, label %if.then4.i1026

if.then4.i1026:                                   ; preds = %do.end3.i1025
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %498(ptr noundef %494, i16 noundef zeroext 0, i32 noundef 1) #8
  br label %while.cond.i1035.preheader

do.body10.i1028:                                  ; preds = %do.end3.i1025
  %499 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %499)
  %cmp11.i1027 = icmp sgt i32 %499, 0
  br i1 %cmp11.i1027, label %do.end15.i1030, label %do.body10.i1028.while.cond.i1035.preheader_crit_edge

do.body10.i1028.while.cond.i1035.preheader_crit_edge: ; preds = %do.body10.i1028
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i1035.preheader

do.end15.i1030:                                   ; preds = %do.body10.i1028
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i1029 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %while.cond.i1035.preheader

while.cond.i1035.preheader:                       ; preds = %do.end15.i1030, %do.body10.i1028.while.cond.i1035.preheader_crit_edge, %if.then4.i1026
  br label %while.cond.i1035

while.cond.i1035:                                 ; preds = %while.body.i1038.while.cond.i1035_crit_edge, %while.cond.i1035.preheader
  %i.0.i1032 = phi i32 [ %inc.i1036, %while.body.i1038.while.cond.i1035_crit_edge ], [ 0, %while.cond.i1035.preheader ]
  %call.i1033 = tail call fastcc zeroext i8 @zr36050_read_status1(ptr noundef %ptr) #8
  %500 = and i8 %call.i1033, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %500)
  %tobool.not.i1034 = icmp eq i8 %500, 0
  br i1 %tobool.not.i1034, label %while.body.i1038, label %while.cond.i1035.zr36050_wait_end.exit1045_crit_edge

while.cond.i1035.zr36050_wait_end.exit1045_crit_edge: ; preds = %while.cond.i1035
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_wait_end.exit1045

while.body.i1038:                                 ; preds = %while.cond.i1035
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %501 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %501(i32 noundef 214748) #8
  %inc.i1036 = add nuw nsw i32 %i.0.i1032, 1
  %exitcond.i1037 = icmp eq i32 %inc.i1036, 200002
  br i1 %exitcond.i1037, label %do.body.i1040, label %while.body.i1038.while.cond.i1035_crit_edge

while.body.i1038.while.cond.i1035_crit_edge:      ; preds = %while.body.i1038
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i1035

do.body.i1040:                                    ; preds = %while.body.i1038
  %502 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %502)
  %cmp2.i1039 = icmp sgt i32 %502, 0
  br i1 %cmp2.i1039, label %do.end.i1044, label %do.body.i1040.do.end194_crit_edge

do.body.i1040.do.end194_crit_edge:                ; preds = %do.body.i1040
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end194

do.end.i1044:                                     ; preds = %do.body.i1040
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i1041 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %503 = ptrtoint ptr %status1.i1041 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %status1.i1041, align 4
  %conv6.i1042 = zext i8 %504 to i32
  %call7.i1043 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %ptr, i32 noundef %conv6.i1042) #11
  br label %zr36050_wait_end.exit1045

zr36050_wait_end.exit1045:                        ; preds = %do.end.i1044, %while.cond.i1035.zr36050_wait_end.exit1045_crit_edge
  %.pr1206 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1206)
  %cmp180 = icmp sgt i32 %.pr1206, 1
  br i1 %cmp180, label %do.end185, label %zr36050_wait_end.exit1045.do.end194_crit_edge

zr36050_wait_end.exit1045.do.end194_crit_edge:    ; preds = %zr36050_wait_end.exit1045
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end194

do.end185:                                        ; preds = %zr36050_wait_end.exit1045
  call void @__sanitizer_cov_trace_pc() #10
  %status1189 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %505 = ptrtoint ptr %status1189 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %status1189, align 4
  %conv190 = zext i8 %506 to i32
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %ptr, i32 noundef %conv190) #11
  br label %do.end194

do.end194:                                        ; preds = %do.end185, %zr36050_wait_end.exit1045.do.end194_crit_edge, %do.body.i1040.do.end194_crit_edge
  %status1195 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %507 = ptrtoint ptr %status1195 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %status1195, align 4
  %509 = and i8 %508, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %509)
  %cmp198 = icmp eq i8 %509, 0
  br i1 %cmp198, label %do.end203, label %if.end208

do.end203:                                        ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #10
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %ptr) #11
  br label %cleanup

if.end208:                                        ; preds = %do.end194
  %510 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %510)
  %cmp.i1046 = icmp sgt i32 %510, 3
  br i1 %cmp.i1046, label %do.end.i1048, label %if.end208.do.end3.i1053_crit_edge

if.end208.do.end3.i1053_crit_edge:                ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i1053

do.end.i1048:                                     ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1047 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 3) #11
  br label %do.end3.i1053

do.end3.i1053:                                    ; preds = %do.end.i1048, %if.end208.do.end3.i1053_crit_edge
  %511 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %codec.i921, align 4
  %master_data.i1050 = getelementptr inbounds %struct.videocodec, ptr %512, i32 0, i32 5
  %513 = ptrtoint ptr %master_data.i1050 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %master_data.i1050, align 4
  %writereg.i1051 = getelementptr inbounds %struct.videocodec_master, ptr %514, i32 0, i32 6
  %515 = ptrtoint ptr %writereg.i1051 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %writereg.i1051, align 4
  %tobool.not.i1052 = icmp eq ptr %516, null
  br i1 %tobool.not.i1052, label %do.body10.i1056, label %if.then4.i1054

if.then4.i1054:                                   ; preds = %do.end3.i1053
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %516(ptr noundef %512, i16 noundef zeroext 3, i32 noundef 0) #8
  br label %zr36050_write.exit1059

do.body10.i1056:                                  ; preds = %do.end3.i1053
  %517 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %517)
  %cmp11.i1055 = icmp sgt i32 %517, 0
  br i1 %cmp11.i1055, label %do.end15.i1058, label %do.body10.i1056.do.end3.i1067_crit_edge

do.body10.i1056.do.end3.i1067_crit_edge:          ; preds = %do.body10.i1056
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i1067

do.end15.i1058:                                   ; preds = %do.body10.i1056
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i1057 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %zr36050_write.exit1059

zr36050_write.exit1059:                           ; preds = %do.end15.i1058, %if.then4.i1054
  %.pr1208 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr1208)
  %cmp.i1060 = icmp sgt i32 %.pr1208, 3
  br i1 %cmp.i1060, label %do.end.i1062, label %zr36050_write.exit1059.do.end3.i1067_crit_edge

zr36050_write.exit1059.do.end3.i1067_crit_edge:   ; preds = %zr36050_write.exit1059
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i1067

do.end.i1062:                                     ; preds = %zr36050_write.exit1059
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1061 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef 0, i32 noundef 6) #11
  br label %do.end3.i1067

do.end3.i1067:                                    ; preds = %do.end.i1062, %zr36050_write.exit1059.do.end3.i1067_crit_edge, %do.body10.i1056.do.end3.i1067_crit_edge
  %518 = ptrtoint ptr %codec.i921 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %codec.i921, align 4
  %master_data.i1064 = getelementptr inbounds %struct.videocodec, ptr %519, i32 0, i32 5
  %520 = ptrtoint ptr %master_data.i1064 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %master_data.i1064, align 4
  %writereg.i1065 = getelementptr inbounds %struct.videocodec_master, ptr %521, i32 0, i32 6
  %522 = ptrtoint ptr %writereg.i1065 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %writereg.i1065, align 4
  %tobool.not.i1066 = icmp eq ptr %523, null
  br i1 %tobool.not.i1066, label %do.body10.i1070, label %if.then4.i1068

if.then4.i1068:                                   ; preds = %do.end3.i1067
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %523(ptr noundef %519, i16 noundef zeroext 6, i32 noundef 0) #8
  br label %if.end209

do.body10.i1070:                                  ; preds = %do.end3.i1067
  %524 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %cmp11.i1069 = icmp sgt i32 %524, 0
  br i1 %cmp11.i1069, label %do.end15.i1072, label %do.body10.i1070.if.end209_crit_edge

do.body10.i1070.if.end209_crit_edge:              ; preds = %do.body10.i1070
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

do.end15.i1072:                                   ; preds = %do.body10.i1070
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i1071 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %ptr) #11
  br label %if.end209

if.end209:                                        ; preds = %do.end15.i1072, %do.body10.i1070.if.end209_crit_edge, %if.then4.i1068, %do.end15.i916, %do.body10.i914.if.end209_crit_edge, %if.then4.i912
  %codec.i1074 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 2
  %525 = ptrtoint ptr %codec.i1074 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %codec.i1074, align 4
  %master_data.i1075 = getelementptr inbounds %struct.videocodec, ptr %526, i32 0, i32 5
  %527 = ptrtoint ptr %master_data.i1075 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %master_data.i1075, align 4
  %readreg.i = getelementptr inbounds %struct.videocodec_master, ptr %528, i32 0, i32 5
  %529 = ptrtoint ptr %readreg.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %readreg.i, align 4
  %tobool.not.i1076 = icmp eq ptr %530, null
  br i1 %tobool.not.i1076, label %do.body.i1080, label %if.then.i

if.then.i:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  %call.i1077 = tail call i32 %530(ptr noundef %526, i16 noundef zeroext 0) #8
  %phi.cast = and i32 %call.i1077, 255
  br label %do.body12.i

do.body.i1080:                                    ; preds = %if.end209
  %531 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %531)
  %cmp.i1079 = icmp sgt i32 %531, 0
  br i1 %cmp.i1079, label %do.end.i1081, label %do.body.i1080.cleanup_crit_edge

do.body.i1080.cleanup_crit_edge:                  ; preds = %do.body.i1080
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i1081:                                     ; preds = %do.body.i1080
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %ptr) #11
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.end.i1081, %if.then.i
  %value.0.ph.i = phi i32 [ 0, %do.end.i1081 ], [ %phi.cast, %if.then.i ]
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp13.i = icmp sgt i32 %.pr.i, 3
  br i1 %cmp13.i, label %do.end18.i, label %do.body12.i.cleanup_crit_edge

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %ptr, i32 noundef 0, i32 noundef %value.0.ph.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end18.i, %do.body12.i.cleanup_crit_edge, %do.body.i1080.cleanup_crit_edge, %do.end203, %do.end76
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @zr36050_read_status1(ptr noundef %ptr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %codec.i = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec.i, align 4
  %master_data.i = getelementptr inbounds %struct.videocodec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %master_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_data.i, align 4
  %readreg.i = getelementptr inbounds %struct.videocodec_master, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %readreg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readreg.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 47) #8
  %conv.i = trunc i32 %call.i to i8
  br label %do.body12.i

do.body.i:                                        ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.zr36050_read.exit_crit_edge

do.body.i.zr36050_read.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %ptr) #11
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.end.i, %if.then.i
  %value.0.ph.i = phi i8 [ 0, %do.end.i ], [ %conv.i, %if.then.i ]
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp13.i = icmp sgt i32 %.pr.i, 3
  br i1 %cmp13.i, label %do.end18.i, label %do.body12.i.zr36050_read.exit_crit_edge

do.body12.i.zr36050_read.exit_crit_edge:          ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i = zext i8 %value.0.ph.i to i32
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %ptr, i32 noundef 47, i32 noundef %conv23.i) #11
  br label %zr36050_read.exit

zr36050_read.exit:                                ; preds = %do.end18.i, %do.body12.i.zr36050_read.exit_crit_edge, %do.body.i.zr36050_read.exit_crit_edge
  %value.036.i = phi i8 [ %value.0.ph.i, %do.end18.i ], [ %value.0.ph.i, %do.body12.i.zr36050_read.exit_crit_edge ], [ 0, %do.body.i.zr36050_read.exit_crit_edge ]
  %status1 = getelementptr inbounds %struct.zr36050, ptr %ptr, i32 0, i32 3
  %7 = ptrtoint ptr %status1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %value.036.i, ptr %status1, align 4
  %8 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %codec.i, align 4
  %master_data.i7 = getelementptr inbounds %struct.videocodec, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %master_data.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master_data.i7, align 4
  %readreg.i8 = getelementptr inbounds %struct.videocodec_master, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %readreg.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %readreg.i8, align 4
  %tobool.not.i9 = icmp eq ptr %13, null
  br i1 %tobool.not.i9, label %do.body.i14, label %if.then.i12

if.then.i12:                                      ; preds = %zr36050_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i10 = tail call i32 %13(ptr noundef %9, i16 noundef zeroext 0) #8
  %phi.cast = and i32 %call.i10, 255
  br label %do.body12.i20

do.body.i14:                                      ; preds = %zr36050_read.exit
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i13 = icmp sgt i32 %14, 0
  br i1 %cmp.i13, label %do.end.i16, label %do.body.i14.zr36050_read.exit25_crit_edge

do.body.i14.zr36050_read.exit25_crit_edge:        ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit25

do.end.i16:                                       ; preds = %do.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %ptr) #11
  br label %do.body12.i20

do.body12.i20:                                    ; preds = %do.end.i16, %if.then.i12
  %value.0.ph.i17 = phi i32 [ 0, %do.end.i16 ], [ %phi.cast, %if.then.i12 ]
  %.pr.i18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i18)
  %cmp13.i19 = icmp sgt i32 %.pr.i18, 3
  br i1 %cmp13.i19, label %do.end18.i23, label %do.body12.i20.zr36050_read.exit25_crit_edge

do.body12.i20.zr36050_read.exit25_crit_edge:      ; preds = %do.body12.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %zr36050_read.exit25

do.end18.i23:                                     ; preds = %do.body12.i20
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %ptr, i32 noundef 0, i32 noundef %value.0.ph.i17) #11
  br label %zr36050_read.exit25

zr36050_read.exit25:                              ; preds = %do.end18.i23, %do.body12.i20.zr36050_read.exit25_crit_edge, %do.body.i14.zr36050_read.exit25_crit_edge
  %15 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status1, align 4
  ret i8 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videocodec_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype173, !1, !"__UNIQUE_ID_debugtype173", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug174, !4, !"__UNIQUE_ID_debug174", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 37, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 830, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @zr36050_cleanup_module._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @zr36050_cleanup_module._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_zr36050__175_837_zr36050_init_module6, !12, !"__initcall__kmod_zr36050__175_837_zr36050_init_module6", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 837, i32 1}
!13 = !{ptr @__exitcall_zr36050_cleanup_module, !14, !"__exitcall_zr36050_cleanup_module", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 838, i32 1}
!15 = !{ptr @__UNIQUE_ID_author176, !16, !"__UNIQUE_ID_author176", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 840, i32 1}
!17 = !{ptr @__UNIQUE_ID_description177, !18, !"__UNIQUE_ID_description177", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 841, i32 1}
!19 = !{ptr @__UNIQUE_ID_file178, !20, !"__UNIQUE_ID_file178", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 843, i32 1}
!21 = !{ptr @__UNIQUE_ID_license179, !20, !"__UNIQUE_ID_license179", i1 false, i1 false}
!22 = !{ptr @zr36050_codecs, !23, !"zr36050_codecs", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 32, i32 12}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 35, i32 12}
!26 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @zr36050_codec, !28, !"zr36050_codec", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 800, i32 32}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 748, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @zr36050_setup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @zr36050_setup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 752, i32 3}
!36 = !{ptr @zr36050_setup._entry.5, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @zr36050_setup._entry_ptr.7, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 762, i32 41}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 794, i32 2}
!42 = !{ptr @zr36050_setup._entry.9, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @zr36050_setup._entry_ptr.11, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 147, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @zr36050_basic_test._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @zr36050_basic_test._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @zr36050_basic_test._entry.14, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 157, i32 3}
!51 = !{ptr @zr36050_basic_test._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 166, i32 3}
!54 = !{ptr @zr36050_basic_test._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @zr36050_basic_test._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 70, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @zr36050_write._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @zr36050_write._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 76, i32 3}
!63 = !{ptr @zr36050_write._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @zr36050_write._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 60, i32 3}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @zr36050_read._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @zr36050_read._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 63, i32 2}
!72 = !{ptr @zr36050_read._entry.26, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @zr36050_read._entry_ptr.28, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 127, i32 4}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @zr36050_wait_end._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @zr36050_wait_end._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"zr36050_decimation_h", i1 false, i1 false}
!80 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 293, i32 19}
!81 = distinct !{null, !82, !"zr36050_decimation_v", i1 false, i1 false}
!82 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 294, i32 19}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 394, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @zr36050_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @zr36050_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 424, i32 3}
!90 = !{ptr @zr36050_init._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @zr36050_init._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 447, i32 3}
!94 = !{ptr @zr36050_init._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @zr36050_init._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 451, i32 4}
!98 = !{ptr @zr36050_init._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @zr36050_init._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 462, i32 3}
!102 = !{ptr @zr36050_init._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @zr36050_init._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 475, i32 3}
!106 = !{ptr @zr36050_init._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @zr36050_init._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 494, i32 3}
!110 = !{ptr @zr36050_init._entry.48, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @zr36050_init._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 507, i32 3}
!114 = !{ptr @zr36050_init._entry.51, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @zr36050_init._entry_ptr.53, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @zr36050_init._entry.54, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 516, i32 3}
!118 = !{ptr @zr36050_init._entry_ptr.55, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @zr36050_init._entry.56, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 520, i32 4}
!121 = !{ptr @zr36050_init._entry_ptr.57, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 313, i32 2}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @zr36050_set_sof._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @zr36050_set_sof._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = distinct !{null, !128, !"zr36050_tq", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 288, i32 19}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 344, i32 2}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @zr36050_set_sos._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @zr36050_set_sos._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = distinct !{null, !135, !"zr36050_td", i1 false, i1 false}
!135 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 289, i32 19}
!136 = distinct !{null, !137, !"zr36050_ta", i1 false, i1 false}
!137 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 290, i32 19}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 370, i32 2}
!140 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @zr36050_set_dri._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @zr36050_set_dri._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 186, i32 2}
!145 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @zr36050_pushit._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @zr36050_pushit._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @zr36050_dqt, !149, !"zr36050_dqt", i1 false, i1 false}
!149 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 205, i32 19}
!150 = !{ptr @zr36050_dht, !151, !"zr36050_dht", i1 false, i1 false}
!151 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 228, i32 19}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 722, i32 3}
!154 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @zr36050_unset._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @zr36050_unset._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.68, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 545, i32 2}
!159 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @zr36050_set_mode._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @zr36050_set_mode._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 563, i32 2}
!164 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @zr36050_set_video._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @zr36050_set_video._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/staging/media/zoran/zr36050.c", i32 601, i32 2}
!169 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @zr36050_control._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @zr36050_control._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
