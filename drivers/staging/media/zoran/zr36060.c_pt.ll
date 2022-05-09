; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/zr36060.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/zr36060.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.videocodec = type { ptr, [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.zr36060 = type { [32 x i8], i32, ptr, i8, i32, i16, i16, i16, i32, i32, i16, [8 x i8], [8 x i8], i16, i16, %struct.jpeg_app_marker, %struct.jpeg_com_marker }
%struct.jpeg_app_marker = type { i32, i32, [60 x i8] }
%struct.jpeg_com_marker = type { i32, [60 x i8] }
%struct.videocodec_master = type { [32 x i8], i32, i32, i32, ptr, ptr, ptr }
%struct.vfe_settings = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.tvnorm = type { i16, i16, i16, i16, i16, i16, i16 }

@__param_str_low_bitrate = internal constant [20 x i8] c"zr36060.low_bitrate\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@low_bitrate = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_low_bitrate = internal constant %struct.kernel_param { ptr @__param_str_low_bitrate, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @low_bitrate } }, section "__param", align 4
@__UNIQUE_ID_low_bitratetype173 = internal constant [34 x i8] c"zr36060.parmtype=low_bitrate:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_low_bitrate174 = internal constant [66 x i8] c"zr36060.parm=low_bitrate:Buz compatibility option, halves bitrate\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"zr36060.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype175 = internal constant [27 x i8] c"zr36060.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug176 = internal constant [37 x i8] c"zr36060.parm=debug:Debug level (0-4)\00", section ".modinfo", align 1
@zr36060_codecs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@zr36060_cleanup_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"zr36060: something's wrong - %d codecs left somehow.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zr36060_cleanup_module\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/zoran/zr36060.c\00", [58 x i8] zeroinitializer }, align 32
@zr36060_cleanup_module._entry_ptr = internal global ptr @zr36060_cleanup_module._entry, section ".printk_index", align 4
@zr36060_codec = internal constant { %struct.videocodec, [36 x i8] } { %struct.videocodec { ptr null, [32 x i8] c"zr36060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 61441, i32 4, ptr null, ptr null, ptr @zr36060_setup, ptr @zr36060_unset, ptr @zr36060_set_mode, ptr @zr36060_set_video, ptr @zr36060_control, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_zr36060__177_868_zr36060_init_module6 = internal global ptr @zr36060_init_module, section ".initcall6.init", align 4
@__exitcall_zr36060_cleanup_module = internal global ptr @zr36060_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author178 = internal constant [61 x i8] c"zr36060.author=Laurent Pinchart <laurent.pinchart@skynet.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description179 = internal constant [67 x i8] c"zr36060.description=Driver module for ZR36060 jpeg processors v0.7\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [49 x i8] c"zr36060.file=drivers/staging/media/zoran/zr36060\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [20 x i8] c"zr36060.license=GPL\00", section ".modinfo", align 1
@zr36060_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"zr36060: initializing MJPEG subsystem #%d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36060_setup\00", [18 x i8] zeroinitializer }, align 32
@zr36060_setup._entry_ptr = internal global ptr @zr36060_setup._entry, section ".printk_index", align 4
@zr36060_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013zr36060: Can't attach more codecs!\0A\00", [58 x i8] zeroinitializer }, align 32
@zr36060_setup._entry_ptr.7 = internal global ptr @zr36060_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zr36060[%d]\00", [20 x i8] zeroinitializer }, align 32
@zr36060_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: codec attached and running\0A\00", [62 x i8] zeroinitializer }, align 32
@zr36060_setup._entry_ptr.11 = internal global ptr @zr36060_setup._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zr36060_basic_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: attach failed, can't connect to jpeg processor!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr36060_basic_test\00", [45 x i8] zeroinitializer }, align 32
@zr36060_basic_test._entry_ptr = internal global ptr @zr36060_basic_test._entry, section ".printk_index", align 4
@zr36060_basic_test._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: attach failed, jpeg processor failed (end flag)!\0A\00", [40 x i8] zeroinitializer }, align 32
@zr36060_basic_test._entry_ptr.16 = internal global ptr @zr36060_basic_test._entry.14, section ".printk_index", align 4
@zr36060_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: invalid I/O setup, nothing read!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr36060_read\00", [19 x i8] zeroinitializer }, align 32
@zr36060_read._entry_ptr = internal global ptr @zr36060_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zr36060_wait_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: timeout at wait_end (last status: 0x%02x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zr36060_wait_end\00", [47 x i8] zeroinitializer }, align 32
@zr36060_wait_end._entry_ptr = internal global ptr @zr36060_wait_end._entry, section ".printk_index", align 4
@zr36060_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: COMPRESSION SETUP\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zr36060_init\00", [19 x i8] zeroinitializer }, align 32
@zr36060_init._entry_ptr = internal global ptr @zr36060_init._entry, section ".printk_index", align 4
@zr36060_dqt = internal constant { [134 x i8], [58 x i8] } { [134 x i8] c"\FF\DB\00\84\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc", [58 x i8] zeroinitializer }, align 32
@zr36060_dht = internal constant { [420 x i8], [124 x i8] } { [420 x i8] c"\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [124 x i8] zeroinitializer }, align 32
@zr36060_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: code: csize=%d, tot=%d, bit=%ld, highbits=%ld\0A\00", [45 x i8] zeroinitializer }, align 32
@zr36060_init._entry_ptr.25 = internal global ptr @zr36060_init._entry.23, section ".printk_index", align 4
@zr36060_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: code: nettobit=%ld, highnettobits=%ld\0A\00", [53 x i8] zeroinitializer }, align 32
@zr36060_init._entry_ptr.28 = internal global ptr @zr36060_init._entry.26, section ".printk_index", align 4
@zr36060_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: EXPANSION SETUP\0A\00", [43 x i8] zeroinitializer }, align 32
@zr36060_init._entry_ptr.31 = internal global ptr @zr36060_init._entry.29, section ".printk_index", align 4
@zr36060_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Status after table preload: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@zr36060_init._entry_ptr.34 = internal global ptr @zr36060_init._entry.32, section ".printk_index", align 4
@zr36060_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: init aborted!\0A\00", [43 x i8] zeroinitializer }, align 32
@zr36060_init._entry_ptr.37 = internal global ptr @zr36060_init._entry.35, section ".printk_index", align 4
@zr36060_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%02x @0x%04x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36060_write\00", [18 x i8] zeroinitializer }, align 32
@zr36060_write._entry_ptr = internal global ptr @zr36060_write._entry, section ".printk_index", align 4
@zr36060_write._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: invalid I/O setup, nothing written!\0A\00", [53 x i8] zeroinitializer }, align 32
@zr36060_write._entry_ptr.42 = internal global ptr @zr36060_write._entry.40, section ".printk_index", align 4
@zr36060_set_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: write SOF (%dx%d, %d components)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36060_set_sof\00", [16 x i8] zeroinitializer }, align 32
@zr36060_set_sof._entry_ptr = internal global ptr @zr36060_set_sof._entry, section ".printk_index", align 4
@zr36060_set_sos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: write SOS\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36060_set_sos\00", [16 x i8] zeroinitializer }, align 32
@zr36060_set_sos._entry_ptr = internal global ptr @zr36060_set_sos._entry, section ".printk_index", align 4
@zr36060_set_dri._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: write DRI\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36060_set_dri\00", [16 x i8] zeroinitializer }, align 32
@zr36060_set_dri._entry_ptr = internal global ptr @zr36060_set_dri._entry, section ".printk_index", align 4
@zr36060_pushit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: write data block to 0x%04x (len=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zr36060_pushit\00", [17 x i8] zeroinitializer }, align 32
@zr36060_pushit._entry_ptr = internal global ptr @zr36060_pushit._entry, section ".printk_index", align 4
@zr36060_unset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: finished codec #%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zr36060_unset\00", [18 x i8] zeroinitializer }, align 32
@zr36060_unset._entry_ptr = internal global ptr @zr36060_unset._entry, section ".printk_index", align 4
@zr36060_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: set_mode %d call\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zr36060_set_mode\00", [47 x i8] zeroinitializer }, align 32
@zr36060_set_mode._entry_ptr = internal global ptr @zr36060_set_mode._entry, section ".printk_index", align 4
@zr36060_set_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: set_video %d/%d-%dx%d (%%%d) call\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zr36060_set_video\00", [46 x i8] zeroinitializer }, align 32
@zr36060_set_video._entry_ptr = internal global ptr @zr36060_set_video._entry, section ".printk_index", align 4
@zr36060_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: control %d call with %d byte\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zr36060_control\00", [16 x i8] zeroinitializer }, align 32
@zr36060_control._entry_ptr = internal global ptr @zr36060_control._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 2, i64 3, i64 16, i64 17, i64 26, i64 27, i64 32769, i64 32770, i64 32784, i64 32785, i64 32794, i64 32795]
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"low_bitrate\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 33, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 38, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"zr36060_codecs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 31, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 859, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"zr36060_codec\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 834, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 786, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 789, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 798, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 829, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 125, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 131, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 62, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 112, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 329, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"zr36060_dqt\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 161, i32 19 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"zr36060_dht\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 184, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 382, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 395, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 414, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 447, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 450, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 69, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 75, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 258, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 286, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 310, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 143, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 763, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 468, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 487, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [41 x i8] c"../drivers/staging/media/zoran/zr36060.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 645, i32 2 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_author178, ptr @__UNIQUE_ID_debug176, ptr @__UNIQUE_ID_debugtype175, ptr @__UNIQUE_ID_description179, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__UNIQUE_ID_low_bitrate174, ptr @__UNIQUE_ID_low_bitratetype173, ptr @__exitcall_zr36060_cleanup_module, ptr @__initcall__kmod_zr36060__177_868_zr36060_init_module6, ptr @__param_debug, ptr @__param_low_bitrate, ptr @zr36060_basic_test._entry, ptr @zr36060_basic_test._entry.14, ptr @zr36060_basic_test._entry_ptr, ptr @zr36060_basic_test._entry_ptr.16, ptr @zr36060_cleanup_module, ptr @zr36060_cleanup_module._entry, ptr @zr36060_cleanup_module._entry_ptr, ptr @zr36060_control._entry, ptr @zr36060_control._entry_ptr, ptr @zr36060_init._entry, ptr @zr36060_init._entry.23, ptr @zr36060_init._entry.26, ptr @zr36060_init._entry.29, ptr @zr36060_init._entry.32, ptr @zr36060_init._entry.35, ptr @zr36060_init._entry_ptr, ptr @zr36060_init._entry_ptr.25, ptr @zr36060_init._entry_ptr.28, ptr @zr36060_init._entry_ptr.31, ptr @zr36060_init._entry_ptr.34, ptr @zr36060_init._entry_ptr.37, ptr @zr36060_pushit._entry, ptr @zr36060_pushit._entry_ptr, ptr @zr36060_read._entry, ptr @zr36060_read._entry_ptr, ptr @zr36060_set_dri._entry, ptr @zr36060_set_dri._entry_ptr, ptr @zr36060_set_mode._entry, ptr @zr36060_set_mode._entry_ptr, ptr @zr36060_set_sof._entry, ptr @zr36060_set_sof._entry_ptr, ptr @zr36060_set_sos._entry, ptr @zr36060_set_sos._entry_ptr, ptr @zr36060_set_video._entry, ptr @zr36060_set_video._entry_ptr, ptr @zr36060_setup._entry, ptr @zr36060_setup._entry.5, ptr @zr36060_setup._entry.9, ptr @zr36060_setup._entry_ptr, ptr @zr36060_setup._entry_ptr.11, ptr @zr36060_setup._entry_ptr.7, ptr @zr36060_unset._entry, ptr @zr36060_unset._entry_ptr, ptr @zr36060_wait_end._entry, ptr @zr36060_wait_end._entry_ptr, ptr @zr36060_write._entry, ptr @zr36060_write._entry.40, ptr @zr36060_write._entry_ptr, ptr @zr36060_write._entry_ptr.42, ptr @low_bitrate, ptr @debug, ptr @zr36060_codecs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @zr36060_codec, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @zr36060_dqt, ptr @zr36060_dht, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @low_bitrate to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_codecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_cleanup_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_codec to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_basic_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_basic_test._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_wait_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_dqt to i32), i32 134, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_dht to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_write._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_set_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_set_sos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_set_dri._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_pushit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_unset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_set_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr36060_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zr36060_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i32, ptr @zr36060_codecs, align 4
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
  %call5 = tail call i32 @videocodec_unregister(ptr noundef nonnull @zr36060_codec) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videocodec_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @zr36060_codecs, align 4
  %call = tail call i32 @videocodec_register(ptr noundef nonnull @zr36060_codec) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_setup(ptr noundef %codec) #3 align 64 {
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
  %1 = load i32, ptr @zr36060_codecs, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = load i32, ptr @zr36060_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %2)
  %cmp4 = icmp eq i32 %2, 20
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end11:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 220) #12
  %data = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %5 = load i32, ptr @zr36060_codecs, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %5)
  %6 = load i32, ptr @zr36060_codecs, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @zr36060_codecs, align 4
  %num = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %num, align 8
  %codec16 = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %codec16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %codec, ptr %codec16, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %codec, i32 0, i32 5
  %9 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_data.i.i, align 4
  %readreg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %readreg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %readreg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %zr36060_read.exit.thread.i, label %zr36060_read.exit.i

zr36060_read.exit.thread.i:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call7.i.i) #11
  br label %land.lhs.true.i

zr36060_read.exit.i:                              ; preds = %if.end14
  %call.i.i = tail call i32 %12(ptr noundef %codec, i16 noundef zeroext 34) #8
  %conv.i.i = trunc i32 %call.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %conv.i.i)
  %cmp.not.i = icmp eq i8 %conv.i.i, 51
  br i1 %cmp.not.i, label %zr36060_read.exit.i.if.end.i_crit_edge, label %zr36060_read.exit.i.land.lhs.true.i_crit_edge

zr36060_read.exit.i.land.lhs.true.i_crit_edge:    ; preds = %zr36060_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

zr36060_read.exit.i.if.end.i_crit_edge:           ; preds = %zr36060_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %zr36060_read.exit.i.land.lhs.true.i_crit_edge, %zr36060_read.exit.thread.i
  %13 = ptrtoint ptr %codec16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %codec16, align 4
  %master_data.i22.i = getelementptr inbounds %struct.videocodec, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %master_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master_data.i22.i, align 4
  %readreg.i23.i = getelementptr inbounds %struct.videocodec_master, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %readreg.i23.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %readreg.i23.i, align 4
  %tobool.not.i24.i = icmp eq ptr %18, null
  br i1 %tobool.not.i24.i, label %zr36060_read.exit31.thread.i, label %zr36060_read.exit31.i

zr36060_read.exit31.thread.i:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %call7.i.i) #11
  br label %if.then19

zr36060_read.exit31.i:                            ; preds = %land.lhs.true.i
  %call.i25.i = tail call i32 %18(ptr noundef %14, i16 noundef zeroext 35) #8
  %conv.i26.i = trunc i32 %call.i25.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i26.i)
  %cmp4.not.i = icmp eq i8 %conv.i26.i, 1
  br i1 %cmp4.not.i, label %zr36060_read.exit31.i.if.end.i_crit_edge, label %zr36060_read.exit31.i.if.then19_crit_edge

zr36060_read.exit31.i.if.then19_crit_edge:        ; preds = %zr36060_read.exit31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

zr36060_read.exit31.i.if.end.i_crit_edge:         ; preds = %zr36060_read.exit31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %zr36060_read.exit31.i.if.end.i_crit_edge, %zr36060_read.exit.i.if.end.i_crit_edge
  tail call fastcc void @zr36060_wait_end(ptr noundef nonnull %call7.i.i) #8
  %status.i = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool.not.i = icmp sgt i8 %20, -1
  br i1 %tobool.not.i, label %if.end21, label %if.end.i.if.then19_crit_edge

if.end.i.if.then19_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %if.end.i.if.then19_crit_edge, %zr36060_read.exit31.i.if.then19_crit_edge, %zr36060_read.exit31.thread.i
  %.str.15.sink.i = phi ptr [ @.str.12, %zr36060_read.exit31.thread.i ], [ @.str.12, %zr36060_read.exit31.i.if.then19_crit_edge ], [ @.str.15, %if.end.i.if.then19_crit_edge ]
  %retval.0.ph.i = phi i32 [ -6, %zr36060_read.exit31.thread.i ], [ -6, %zr36060_read.exit31.i.if.then19_crit_edge ], [ -16, %if.end.i.if.then19_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink.i, ptr noundef nonnull %call7.i.i) #11
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %tobool.not.i66 = icmp eq ptr %22, null
  br i1 %tobool.not.i66, label %if.then19.cleanup_crit_edge, label %do.body.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.then19
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp sgt i32 %23, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.do.end4.i_crit_edge

do.body.i.do.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %num.i = getelementptr inbounds %struct.zr36060, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %22, i32 noundef %25) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.body.i.do.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %22) #8
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %data, align 4
  %27 = load i32, ptr @zr36060_codecs, align 4
  %dec.i = add i32 %27, -1
  store i32 %dec.i, ptr @zr36060_codecs, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %h_samp_ratio = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %h_samp_ratio to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 144397762564194304, ptr %h_samp_ratio, align 2
  %v_samp_ratio = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 12
  %29 = ptrtoint ptr %v_samp_ratio to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 72340168526266368, ptr %v_samp_ratio, align 2
  %bitrate_ctrl = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %bitrate_ctrl to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %bitrate_ctrl, align 4
  %mode = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mode, align 4
  %width = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 384, ptr %width, align 8
  %height = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 288, ptr %height, align 2
  %total_code_vol = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 8
  %34 = ptrtoint ptr %total_code_vol to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 16000, ptr %total_code_vol, align 8
  %real_code_vol = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 12000, ptr %real_code_vol, align 4
  %max_block_vol = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %max_block_vol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 240, ptr %max_block_vol, align 8
  %scalefact = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 13
  %37 = ptrtoint ptr %scalefact to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 256, ptr %scalefact, align 2
  %dri = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 14
  %38 = ptrtoint ptr %dri to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %dri, align 4
  %com = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %com to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %com, align 4
  %app = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 15
  %40 = ptrtoint ptr %app to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %app, align 8
  %len26 = getelementptr inbounds %struct.zr36060, ptr %call7.i.i, i32 0, i32 15, i32 1
  %41 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %len26, align 4
  tail call fastcc void @zr36060_init(ptr noundef nonnull %call7.i.i)
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp28 = icmp sgt i32 %42, 0
  br i1 %cmp28, label %do.end32, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %if.end21.cleanup_crit_edge, %do.end4.i, %if.then19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -28, %do.end8 ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %do.end32 ], [ 0, %if.end21.cleanup_crit_edge ], [ %retval.0.ph.i, %if.then19.cleanup_crit_edge ], [ %retval.0.ph.i, %do.end4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_unset(ptr nocapture noundef %codec) #3 align 64 {
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
  %num = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %1, i32 noundef %4) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data, align 4
  %6 = load i32, ptr @zr36060_codecs, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @zr36060_codecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end4 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_set_mode(ptr nocapture noundef readonly %codec, i32 noundef %mode) #3 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %1, i32 noundef %mode) #11
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
  %mode8 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mode8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %mode8, align 4
  tail call fastcc void @zr36060_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_set_video(ptr nocapture noundef readonly %codec, ptr nocapture noundef readonly %norm, ptr nocapture noundef readonly %cap, ptr nocapture noundef readonly %pol) #3 align 64 {
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
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap, align 4
  %y = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 1
  %5 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %y, align 4
  %width = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %decimation = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 4
  %11 = ptrtoint ptr %decimation to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %decimation, align 4
  %conv = zext i16 %12 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %1, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %conv) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %width4 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 2
  %13 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width4, align 4
  %decimation5 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 4
  %15 = ptrtoint ptr %decimation5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %decimation5, align 4
  %17 = and i16 %16, 255
  %and = zext i16 %17 to i32
  %div = udiv i32 %14, %and
  %conv7 = trunc i32 %div to i16
  %width8 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %width8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv7, ptr %width8, align 4
  %height9 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 3
  %19 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height9, align 4
  %21 = load i16, ptr %decimation5, align 4
  %22 = lshr i16 %21, 8
  %23 = zext i16 %22 to i32
  %div12 = udiv i32 %20, %23
  %conv13 = trunc i32 %div12 to i16
  %height14 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %height14 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv13, ptr %height14, align 2
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp.i = icmp sgt i32 %25, 3
  br i1 %cmp.i, label %do.end.i, label %do.end3.do.end3.i_crit_edge

do.end3.do.end3.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end3.do.end3.i_crit_edge
  %codec.i = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %codec.i, align 4
  %master_data.i = getelementptr inbounds %struct.videocodec, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %master_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %master_data.i, align 4
  %writereg.i = getelementptr inbounds %struct.videocodec_master, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %writereg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %writereg.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %do.end11.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef %27, i16 noundef zeroext 0, i32 noundef 1) #8
  br label %zr36060_write.exit

do.end11.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit

zr36060_write.exit:                               ; preds = %do.end11.i, %if.then4.i
  %32 = ptrtoint ptr %pol to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %pol, align 4
  %33 = xor i8 %bf.load, -1
  %34 = lshr i8 %33, 7
  %35 = lshr i8 %bf.load, 5
  %36 = and i8 %35, 2
  %37 = lshr i8 %bf.load, 3
  %38 = and i8 %37, 4
  %39 = lshr i8 %bf.load, 1
  %40 = and i8 %39, 8
  %41 = shl i8 %bf.load, 1
  %42 = and i8 %41, 16
  %43 = shl i8 %bf.load, 3
  %44 = and i8 %43, 32
  %45 = shl i8 %bf.load, 5
  %46 = and i8 %45, 64
  %47 = shl i8 %bf.load, 7
  %48 = or i8 %47, %34
  %49 = or i8 %48, %36
  %50 = or i8 %49, %38
  %51 = or i8 %50, %40
  %52 = or i8 %51, %42
  %53 = or i8 %52, %44
  %54 = or i8 %53, %46
  %or61342 = xor i8 %54, 2
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp.i345 = icmp sgt i32 %55, 3
  br i1 %cmp.i345, label %do.end.i347, label %zr36060_write.exit.do.end3.i352_crit_edge

zr36060_write.exit.do.end3.i352_crit_edge:        ; preds = %zr36060_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i352

do.end.i347:                                      ; preds = %zr36060_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %or61342 to i32
  %call.i346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i, i32 noundef 49) #11
  br label %do.end3.i352

do.end3.i352:                                     ; preds = %do.end.i347, %zr36060_write.exit.do.end3.i352_crit_edge
  %56 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %codec.i, align 4
  %master_data.i349 = getelementptr inbounds %struct.videocodec, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %master_data.i349 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %master_data.i349, align 4
  %writereg.i350 = getelementptr inbounds %struct.videocodec_master, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %writereg.i350 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %writereg.i350, align 4
  %tobool.not.i351 = icmp eq ptr %61, null
  br i1 %tobool.not.i351, label %do.end11.i355, label %if.then4.i353

if.then4.i353:                                    ; preds = %do.end3.i352
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = zext i8 %or61342 to i32
  tail call void %61(ptr noundef %57, i16 noundef zeroext 49, i32 noundef %conv9.i) #8
  br label %zr36060_write.exit356

do.end11.i355:                                    ; preds = %do.end3.i352
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i354 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit356

zr36060_write.exit356:                            ; preds = %do.end11.i355, %if.then4.i353
  %62 = ptrtoint ptr %decimation5 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %decimation5, align 4
  %trunc = trunc i16 %63 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %trunc)
  %switch.selectcmp = icmp eq i8 %trunc, 2
  %switch.select = zext i1 %switch.selectcmp to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %trunc)
  %switch.selectcmp343 = icmp eq i8 %trunc, 4
  %switch.select344 = select i1 %switch.selectcmp343, i32 2, i32 %switch.select
  %.mask = and i16 %63, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %.mask)
  %cond216 = icmp eq i16 %.mask, 512
  %or74 = or i32 %switch.select344, 4
  %reg.1 = select i1 %cond216, i32 %or74, i32 %switch.select344
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp.i357 = icmp sgt i32 %64, 3
  br i1 %cmp.i357, label %do.end.i360, label %zr36060_write.exit356.do.end3.i365_crit_edge

zr36060_write.exit356.do.end3.i365_crit_edge:     ; preds = %zr36060_write.exit356
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i365

do.end.i360:                                      ; preds = %zr36060_write.exit356
  call void @__sanitizer_cov_trace_pc() #10
  %call.i359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %reg.1, i32 noundef 50) #11
  br label %do.end3.i365

do.end3.i365:                                     ; preds = %do.end.i360, %zr36060_write.exit356.do.end3.i365_crit_edge
  %65 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %codec.i, align 4
  %master_data.i362 = getelementptr inbounds %struct.videocodec, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %master_data.i362 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %master_data.i362, align 4
  %writereg.i363 = getelementptr inbounds %struct.videocodec_master, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %writereg.i363 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %writereg.i363, align 4
  %tobool.not.i364 = icmp eq ptr %70, null
  br i1 %tobool.not.i364, label %do.end11.i369, label %if.then4.i367

if.then4.i367:                                    ; preds = %do.end3.i365
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %70(ptr noundef %66, i16 noundef zeroext 50, i32 noundef %reg.1) #8
  br label %zr36060_write.exit370

do.end11.i369:                                    ; preds = %do.end3.i365
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit370

zr36060_write.exit370:                            ; preds = %do.end11.i369, %if.then4.i367
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp.i371 = icmp sgt i32 %71, 3
  br i1 %cmp.i371, label %do.end.i373, label %zr36060_write.exit370.do.end3.i378_crit_edge

zr36060_write.exit370.do.end3.i378_crit_edge:     ; preds = %zr36060_write.exit370
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i378

do.end.i373:                                      ; preds = %zr36060_write.exit370
  call void @__sanitizer_cov_trace_pc() #10
  %call.i372 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 51) #11
  br label %do.end3.i378

do.end3.i378:                                     ; preds = %do.end.i373, %zr36060_write.exit370.do.end3.i378_crit_edge
  %72 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %codec.i, align 4
  %master_data.i375 = getelementptr inbounds %struct.videocodec, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %master_data.i375 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %master_data.i375, align 4
  %writereg.i376 = getelementptr inbounds %struct.videocodec_master, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %writereg.i376 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %writereg.i376, align 4
  %tobool.not.i377 = icmp eq ptr %77, null
  br i1 %tobool.not.i377, label %do.end11.i381, label %if.then4.i379

if.then4.i379:                                    ; preds = %do.end3.i378
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %77(ptr noundef %73, i16 noundef zeroext 51, i32 noundef 0) #8
  br label %zr36060_write.exit382

do.end11.i381:                                    ; preds = %do.end3.i378
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i380 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit382

zr36060_write.exit382:                            ; preds = %do.end11.i381, %if.then4.i379
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp.i383 = icmp sgt i32 %78, 3
  br i1 %cmp.i383, label %do.end.i385, label %zr36060_write.exit382.do.end3.i390_crit_edge

zr36060_write.exit382.do.end3.i390_crit_edge:     ; preds = %zr36060_write.exit382
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i390

do.end.i385:                                      ; preds = %zr36060_write.exit382
  call void @__sanitizer_cov_trace_pc() #10
  %call.i384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 128, i32 noundef 52) #11
  br label %do.end3.i390

do.end3.i390:                                     ; preds = %do.end.i385, %zr36060_write.exit382.do.end3.i390_crit_edge
  %79 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %codec.i, align 4
  %master_data.i387 = getelementptr inbounds %struct.videocodec, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %master_data.i387 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %master_data.i387, align 4
  %writereg.i388 = getelementptr inbounds %struct.videocodec_master, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %writereg.i388 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %writereg.i388, align 4
  %tobool.not.i389 = icmp eq ptr %84, null
  br i1 %tobool.not.i389, label %do.end11.i393, label %if.then4.i391

if.then4.i391:                                    ; preds = %do.end3.i390
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %84(ptr noundef %80, i16 noundef zeroext 52, i32 noundef 128) #8
  br label %zr36060_write.exit394

do.end11.i393:                                    ; preds = %do.end3.i390
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit394

zr36060_write.exit394:                            ; preds = %do.end11.i393, %if.then4.i391
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp.i395 = icmp sgt i32 %85, 3
  br i1 %cmp.i395, label %do.end.i397, label %zr36060_write.exit394.do.end3.i402_crit_edge

zr36060_write.exit394.do.end3.i402_crit_edge:     ; preds = %zr36060_write.exit394
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i402

do.end.i397:                                      ; preds = %zr36060_write.exit394
  call void @__sanitizer_cov_trace_pc() #10
  %call.i396 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 128, i32 noundef 53) #11
  br label %do.end3.i402

do.end3.i402:                                     ; preds = %do.end.i397, %zr36060_write.exit394.do.end3.i402_crit_edge
  %86 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %codec.i, align 4
  %master_data.i399 = getelementptr inbounds %struct.videocodec, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %master_data.i399 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %master_data.i399, align 4
  %writereg.i400 = getelementptr inbounds %struct.videocodec_master, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %writereg.i400 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %writereg.i400, align 4
  %tobool.not.i401 = icmp eq ptr %91, null
  br i1 %tobool.not.i401, label %do.end11.i405, label %if.then4.i403

if.then4.i403:                                    ; preds = %do.end3.i402
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %91(ptr noundef %87, i16 noundef zeroext 53, i32 noundef 128) #8
  br label %zr36060_write.exit406

do.end11.i405:                                    ; preds = %do.end3.i402
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i404 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit406

zr36060_write.exit406:                            ; preds = %do.end11.i405, %if.then4.i403
  %ht = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 4
  %92 = ptrtoint ptr %ht to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %ht, align 2
  %conv77 = zext i16 %93 to i32
  %sub = add nsw i32 %conv77, -1
  %shr78 = lshr i32 %sub, 8
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %94)
  %cmp.i407 = icmp sgt i32 %94, 3
  br i1 %cmp.i407, label %do.end.i410, label %zr36060_write.exit406.do.end3.i415_crit_edge

zr36060_write.exit406.do.end3.i415_crit_edge:     ; preds = %zr36060_write.exit406
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i415

do.end.i410:                                      ; preds = %zr36060_write.exit406
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i408 = and i32 %shr78, 255
  %call.i409 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i408, i32 noundef 54) #11
  br label %do.end3.i415

do.end3.i415:                                     ; preds = %do.end.i410, %zr36060_write.exit406.do.end3.i415_crit_edge
  %95 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %codec.i, align 4
  %master_data.i412 = getelementptr inbounds %struct.videocodec, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %master_data.i412 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %master_data.i412, align 4
  %writereg.i413 = getelementptr inbounds %struct.videocodec_master, ptr %98, i32 0, i32 6
  %99 = ptrtoint ptr %writereg.i413 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %writereg.i413, align 4
  %tobool.not.i414 = icmp eq ptr %100, null
  br i1 %tobool.not.i414, label %do.end11.i419, label %if.then4.i417

if.then4.i417:                                    ; preds = %do.end3.i415
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i416 = and i32 %shr78, 255
  tail call void %100(ptr noundef %96, i16 noundef zeroext 54, i32 noundef %conv9.i416) #8
  br label %zr36060_write.exit420

do.end11.i419:                                    ; preds = %do.end3.i415
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit420

zr36060_write.exit420:                            ; preds = %do.end11.i419, %if.then4.i417
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp.i421 = icmp sgt i32 %101, 3
  br i1 %cmp.i421, label %do.end.i424, label %zr36060_write.exit420.do.end3.i429_crit_edge

zr36060_write.exit420.do.end3.i429_crit_edge:     ; preds = %zr36060_write.exit420
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i429

do.end.i424:                                      ; preds = %zr36060_write.exit420
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i422 = and i32 %sub, 255
  %call.i423 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i422, i32 noundef 55) #11
  br label %do.end3.i429

do.end3.i429:                                     ; preds = %do.end.i424, %zr36060_write.exit420.do.end3.i429_crit_edge
  %102 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %codec.i, align 4
  %master_data.i426 = getelementptr inbounds %struct.videocodec, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %master_data.i426 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %master_data.i426, align 4
  %writereg.i427 = getelementptr inbounds %struct.videocodec_master, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %writereg.i427 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %writereg.i427, align 4
  %tobool.not.i428 = icmp eq ptr %107, null
  br i1 %tobool.not.i428, label %do.end11.i433, label %if.then4.i431

if.then4.i431:                                    ; preds = %do.end3.i429
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i430 = and i32 %sub, 255
  tail call void %107(ptr noundef %103, i16 noundef zeroext 55, i32 noundef %conv9.i430) #8
  br label %zr36060_write.exit434

do.end11.i433:                                    ; preds = %do.end3.i429
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i432 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit434

zr36060_write.exit434:                            ; preds = %do.end11.i433, %if.then4.i431
  %108 = ptrtoint ptr %norm to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %norm, align 2
  %conv84 = zext i16 %109 to i32
  %sub85 = add nsw i32 %conv84, -1
  %shr86 = lshr i32 %sub85, 8
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %110)
  %cmp.i435 = icmp sgt i32 %110, 3
  br i1 %cmp.i435, label %do.end.i438, label %zr36060_write.exit434.do.end3.i443_crit_edge

zr36060_write.exit434.do.end3.i443_crit_edge:     ; preds = %zr36060_write.exit434
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i443

do.end.i438:                                      ; preds = %zr36060_write.exit434
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i436 = and i32 %shr86, 255
  %call.i437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i436, i32 noundef 56) #11
  br label %do.end3.i443

do.end3.i443:                                     ; preds = %do.end.i438, %zr36060_write.exit434.do.end3.i443_crit_edge
  %111 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %codec.i, align 4
  %master_data.i440 = getelementptr inbounds %struct.videocodec, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %master_data.i440 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %master_data.i440, align 4
  %writereg.i441 = getelementptr inbounds %struct.videocodec_master, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %writereg.i441 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %writereg.i441, align 4
  %tobool.not.i442 = icmp eq ptr %116, null
  br i1 %tobool.not.i442, label %do.end11.i447, label %if.then4.i445

if.then4.i445:                                    ; preds = %do.end3.i443
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i444 = and i32 %shr86, 255
  tail call void %116(ptr noundef %112, i16 noundef zeroext 56, i32 noundef %conv9.i444) #8
  br label %zr36060_write.exit448

do.end11.i447:                                    ; preds = %do.end3.i443
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i446 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit448

zr36060_write.exit448:                            ; preds = %do.end11.i447, %if.then4.i445
  %117 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %117)
  %cmp.i449 = icmp sgt i32 %117, 3
  br i1 %cmp.i449, label %do.end.i452, label %zr36060_write.exit448.do.end3.i457_crit_edge

zr36060_write.exit448.do.end3.i457_crit_edge:     ; preds = %zr36060_write.exit448
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i457

do.end.i452:                                      ; preds = %zr36060_write.exit448
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i450 = and i32 %sub85, 255
  %call.i451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i450, i32 noundef 57) #11
  br label %do.end3.i457

do.end3.i457:                                     ; preds = %do.end.i452, %zr36060_write.exit448.do.end3.i457_crit_edge
  %118 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %codec.i, align 4
  %master_data.i454 = getelementptr inbounds %struct.videocodec, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %master_data.i454 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %master_data.i454, align 4
  %writereg.i455 = getelementptr inbounds %struct.videocodec_master, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %writereg.i455 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %writereg.i455, align 4
  %tobool.not.i456 = icmp eq ptr %123, null
  br i1 %tobool.not.i456, label %do.end11.i461, label %if.then4.i459

if.then4.i459:                                    ; preds = %do.end3.i457
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i458 = and i32 %sub85, 255
  tail call void %123(ptr noundef %119, i16 noundef zeroext 57, i32 noundef %conv9.i458) #8
  br label %zr36060_write.exit462

do.end11.i461:                                    ; preds = %do.end3.i457
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i460 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit462

zr36060_write.exit462:                            ; preds = %do.end11.i461, %if.then4.i459
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp.i463 = icmp sgt i32 %124, 3
  br i1 %cmp.i463, label %do.end.i465, label %zr36060_write.exit462.do.end3.i470_crit_edge

zr36060_write.exit462.do.end3.i470_crit_edge:     ; preds = %zr36060_write.exit462
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i470

do.end.i465:                                      ; preds = %zr36060_write.exit462
  call void @__sanitizer_cov_trace_pc() #10
  %call.i464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 5, i32 noundef 58) #11
  br label %do.end3.i470

do.end3.i470:                                     ; preds = %do.end.i465, %zr36060_write.exit462.do.end3.i470_crit_edge
  %125 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %codec.i, align 4
  %master_data.i467 = getelementptr inbounds %struct.videocodec, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %master_data.i467 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %master_data.i467, align 4
  %writereg.i468 = getelementptr inbounds %struct.videocodec_master, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %writereg.i468 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %writereg.i468, align 4
  %tobool.not.i469 = icmp eq ptr %130, null
  br i1 %tobool.not.i469, label %do.end11.i473, label %if.then4.i471

if.then4.i471:                                    ; preds = %do.end3.i470
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %130(ptr noundef %126, i16 noundef zeroext 58, i32 noundef 5) #8
  br label %zr36060_write.exit474

do.end11.i473:                                    ; preds = %do.end3.i470
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i472 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit474

zr36060_write.exit474:                            ; preds = %do.end11.i473, %if.then4.i471
  %131 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %131)
  %cmp.i475 = icmp sgt i32 %131, 3
  br i1 %cmp.i475, label %do.end.i477, label %zr36060_write.exit474.do.end3.i482_crit_edge

zr36060_write.exit474.do.end3.i482_crit_edge:     ; preds = %zr36060_write.exit474
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i482

do.end.i477:                                      ; preds = %zr36060_write.exit474
  call void @__sanitizer_cov_trace_pc() #10
  %call.i476 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 68, i32 noundef 59) #11
  br label %do.end3.i482

do.end3.i482:                                     ; preds = %do.end.i477, %zr36060_write.exit474.do.end3.i482_crit_edge
  %132 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %codec.i, align 4
  %master_data.i479 = getelementptr inbounds %struct.videocodec, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %master_data.i479 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %master_data.i479, align 4
  %writereg.i480 = getelementptr inbounds %struct.videocodec_master, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %writereg.i480 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %writereg.i480, align 4
  %tobool.not.i481 = icmp eq ptr %137, null
  br i1 %tobool.not.i481, label %do.end11.i485, label %if.then4.i483

if.then4.i483:                                    ; preds = %do.end3.i482
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %137(ptr noundef %133, i16 noundef zeroext 59, i32 noundef 68) #8
  br label %zr36060_write.exit486

do.end11.i485:                                    ; preds = %do.end3.i482
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i484 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit486

zr36060_write.exit486:                            ; preds = %do.end11.i485, %if.then4.i483
  %v_start = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 6
  %138 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %v_start, align 2
  %conv94 = zext i16 %139 to i32
  %sub95 = add nsw i32 %conv94, -1
  %140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %140)
  %cmp.i487 = icmp sgt i32 %140, 3
  br i1 %cmp.i487, label %do.end.i490, label %zr36060_write.exit486.do.end3.i495_crit_edge

zr36060_write.exit486.do.end3.i495_crit_edge:     ; preds = %zr36060_write.exit486
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i495

do.end.i490:                                      ; preds = %zr36060_write.exit486
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i488 = and i32 %sub95, 255
  %call.i489 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i488, i32 noundef 60) #11
  br label %do.end3.i495

do.end3.i495:                                     ; preds = %do.end.i490, %zr36060_write.exit486.do.end3.i495_crit_edge
  %141 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %codec.i, align 4
  %master_data.i492 = getelementptr inbounds %struct.videocodec, ptr %142, i32 0, i32 5
  %143 = ptrtoint ptr %master_data.i492 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %master_data.i492, align 4
  %writereg.i493 = getelementptr inbounds %struct.videocodec_master, ptr %144, i32 0, i32 6
  %145 = ptrtoint ptr %writereg.i493 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %writereg.i493, align 4
  %tobool.not.i494 = icmp eq ptr %146, null
  br i1 %tobool.not.i494, label %do.end11.i499, label %if.then4.i497

if.then4.i497:                                    ; preds = %do.end3.i495
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i496 = and i32 %sub95, 255
  tail call void %146(ptr noundef %142, i16 noundef zeroext 60, i32 noundef %conv9.i496) #8
  br label %zr36060_write.exit500

do.end11.i499:                                    ; preds = %do.end3.i495
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i498 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit500

zr36060_write.exit500:                            ; preds = %do.end11.i499, %if.then4.i497
  %ha = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 5
  %147 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %ha, align 2
  %149 = lshr i16 %148, 1
  %div98 = zext i16 %149 to i32
  %add = add nsw i32 %sub95, %div98
  %shr99 = lshr i32 %add, 8
  %150 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %150)
  %cmp.i501 = icmp sgt i32 %150, 3
  br i1 %cmp.i501, label %do.end.i504, label %zr36060_write.exit500.do.end3.i509_crit_edge

zr36060_write.exit500.do.end3.i509_crit_edge:     ; preds = %zr36060_write.exit500
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i509

do.end.i504:                                      ; preds = %zr36060_write.exit500
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i502 = and i32 %shr99, 255
  %call.i503 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i502, i32 noundef 62) #11
  br label %do.end3.i509

do.end3.i509:                                     ; preds = %do.end.i504, %zr36060_write.exit500.do.end3.i509_crit_edge
  %151 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %codec.i, align 4
  %master_data.i506 = getelementptr inbounds %struct.videocodec, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %master_data.i506 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %master_data.i506, align 4
  %writereg.i507 = getelementptr inbounds %struct.videocodec_master, ptr %154, i32 0, i32 6
  %155 = ptrtoint ptr %writereg.i507 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %writereg.i507, align 4
  %tobool.not.i508 = icmp eq ptr %156, null
  br i1 %tobool.not.i508, label %do.end11.i513, label %if.then4.i511

if.then4.i511:                                    ; preds = %do.end3.i509
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i510 = and i32 %shr99, 255
  tail call void %156(ptr noundef %152, i16 noundef zeroext 62, i32 noundef %conv9.i510) #8
  br label %zr36060_write.exit514

do.end11.i513:                                    ; preds = %do.end3.i509
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit514

zr36060_write.exit514:                            ; preds = %do.end11.i513, %if.then4.i511
  %157 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %157)
  %cmp.i515 = icmp sgt i32 %157, 3
  br i1 %cmp.i515, label %do.end.i518, label %zr36060_write.exit514.do.end3.i523_crit_edge

zr36060_write.exit514.do.end3.i523_crit_edge:     ; preds = %zr36060_write.exit514
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i523

do.end.i518:                                      ; preds = %zr36060_write.exit514
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i516 = and i32 %add, 255
  %call.i517 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i516, i32 noundef 63) #11
  br label %do.end3.i523

do.end3.i523:                                     ; preds = %do.end.i518, %zr36060_write.exit514.do.end3.i523_crit_edge
  %158 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %codec.i, align 4
  %master_data.i520 = getelementptr inbounds %struct.videocodec, ptr %159, i32 0, i32 5
  %160 = ptrtoint ptr %master_data.i520 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %master_data.i520, align 4
  %writereg.i521 = getelementptr inbounds %struct.videocodec_master, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %writereg.i521 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %writereg.i521, align 4
  %tobool.not.i522 = icmp eq ptr %163, null
  br i1 %tobool.not.i522, label %do.end11.i527, label %if.then4.i525

if.then4.i525:                                    ; preds = %do.end3.i523
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i524 = and i32 %add, 255
  tail call void %163(ptr noundef %159, i16 noundef zeroext 63, i32 noundef %conv9.i524) #8
  br label %zr36060_write.exit528

do.end11.i527:                                    ; preds = %do.end3.i523
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i526 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit528

zr36060_write.exit528:                            ; preds = %do.end11.i527, %if.then4.i525
  %h_start = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 2
  %164 = ptrtoint ptr %h_start to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %h_start, align 2
  %conv105 = zext i16 %165 to i32
  %sub106 = add nsw i32 %conv105, -1
  %166 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %166)
  %cmp.i529 = icmp sgt i32 %166, 3
  br i1 %cmp.i529, label %do.end.i532, label %zr36060_write.exit528.do.end3.i537_crit_edge

zr36060_write.exit528.do.end3.i537_crit_edge:     ; preds = %zr36060_write.exit528
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i537

do.end.i532:                                      ; preds = %zr36060_write.exit528
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i530 = and i32 %sub106, 255
  %call.i531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i530, i32 noundef 61) #11
  br label %do.end3.i537

do.end3.i537:                                     ; preds = %do.end.i532, %zr36060_write.exit528.do.end3.i537_crit_edge
  %167 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %codec.i, align 4
  %master_data.i534 = getelementptr inbounds %struct.videocodec, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %master_data.i534 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %master_data.i534, align 4
  %writereg.i535 = getelementptr inbounds %struct.videocodec_master, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %writereg.i535 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %writereg.i535, align 4
  %tobool.not.i536 = icmp eq ptr %172, null
  br i1 %tobool.not.i536, label %do.end11.i541, label %if.then4.i539

if.then4.i539:                                    ; preds = %do.end3.i537
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i538 = and i32 %sub106, 255
  tail call void %172(ptr noundef %168, i16 noundef zeroext 61, i32 noundef %conv9.i538) #8
  br label %zr36060_write.exit542

do.end11.i541:                                    ; preds = %do.end3.i537
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i540 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit542

zr36060_write.exit542:                            ; preds = %do.end11.i541, %if.then4.i539
  %wa = getelementptr inbounds %struct.tvnorm, ptr %norm, i32 0, i32 1
  %173 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %wa, align 2
  %conv108 = zext i16 %174 to i32
  %add109 = add nsw i32 %sub106, %conv108
  %shr110 = lshr i32 %add109, 8
  %175 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %175)
  %cmp.i543 = icmp sgt i32 %175, 3
  br i1 %cmp.i543, label %do.end.i546, label %zr36060_write.exit542.do.end3.i551_crit_edge

zr36060_write.exit542.do.end3.i551_crit_edge:     ; preds = %zr36060_write.exit542
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i551

do.end.i546:                                      ; preds = %zr36060_write.exit542
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i544 = and i32 %shr110, 255
  %call.i545 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i544, i32 noundef 64) #11
  br label %do.end3.i551

do.end3.i551:                                     ; preds = %do.end.i546, %zr36060_write.exit542.do.end3.i551_crit_edge
  %176 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %codec.i, align 4
  %master_data.i548 = getelementptr inbounds %struct.videocodec, ptr %177, i32 0, i32 5
  %178 = ptrtoint ptr %master_data.i548 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %master_data.i548, align 4
  %writereg.i549 = getelementptr inbounds %struct.videocodec_master, ptr %179, i32 0, i32 6
  %180 = ptrtoint ptr %writereg.i549 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %writereg.i549, align 4
  %tobool.not.i550 = icmp eq ptr %181, null
  br i1 %tobool.not.i550, label %do.end11.i555, label %if.then4.i553

if.then4.i553:                                    ; preds = %do.end3.i551
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i552 = and i32 %shr110, 255
  tail call void %181(ptr noundef %177, i16 noundef zeroext 64, i32 noundef %conv9.i552) #8
  br label %zr36060_write.exit556

do.end11.i555:                                    ; preds = %do.end3.i551
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i554 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit556

zr36060_write.exit556:                            ; preds = %do.end11.i555, %if.then4.i553
  %182 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %182)
  %cmp.i557 = icmp sgt i32 %182, 3
  br i1 %cmp.i557, label %do.end.i560, label %zr36060_write.exit556.do.end3.i565_crit_edge

zr36060_write.exit556.do.end3.i565_crit_edge:     ; preds = %zr36060_write.exit556
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i565

do.end.i560:                                      ; preds = %zr36060_write.exit556
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i558 = and i32 %add109, 255
  %call.i559 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i558, i32 noundef 65) #11
  br label %do.end3.i565

do.end3.i565:                                     ; preds = %do.end.i560, %zr36060_write.exit556.do.end3.i565_crit_edge
  %183 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %codec.i, align 4
  %master_data.i562 = getelementptr inbounds %struct.videocodec, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %master_data.i562 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %master_data.i562, align 4
  %writereg.i563 = getelementptr inbounds %struct.videocodec_master, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %writereg.i563 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %writereg.i563, align 4
  %tobool.not.i564 = icmp eq ptr %188, null
  br i1 %tobool.not.i564, label %do.end11.i569, label %if.then4.i567

if.then4.i567:                                    ; preds = %do.end3.i565
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i566 = and i32 %add109, 255
  tail call void %188(ptr noundef %184, i16 noundef zeroext 65, i32 noundef %conv9.i566) #8
  br label %zr36060_write.exit570

do.end11.i569:                                    ; preds = %do.end3.i565
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i568 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit570

zr36060_write.exit570:                            ; preds = %do.end11.i569, %if.then4.i567
  %y116 = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 1
  %189 = ptrtoint ptr %y116 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %y116, align 4
  %191 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %v_start, align 2
  %conv118 = zext i16 %192 to i32
  %add119 = add i32 %190, %conv118
  %shr120 = lshr i32 %add119, 8
  %193 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %193)
  %cmp.i571 = icmp sgt i32 %193, 3
  br i1 %cmp.i571, label %do.end.i574, label %zr36060_write.exit570.do.end3.i579_crit_edge

zr36060_write.exit570.do.end3.i579_crit_edge:     ; preds = %zr36060_write.exit570
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i579

do.end.i574:                                      ; preds = %zr36060_write.exit570
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i572 = and i32 %shr120, 255
  %call.i573 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i572, i32 noundef 66) #11
  br label %do.end3.i579

do.end3.i579:                                     ; preds = %do.end.i574, %zr36060_write.exit570.do.end3.i579_crit_edge
  %194 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %codec.i, align 4
  %master_data.i576 = getelementptr inbounds %struct.videocodec, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %master_data.i576 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %master_data.i576, align 4
  %writereg.i577 = getelementptr inbounds %struct.videocodec_master, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %writereg.i577 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %writereg.i577, align 4
  %tobool.not.i578 = icmp eq ptr %199, null
  br i1 %tobool.not.i578, label %do.end11.i583, label %if.then4.i581

if.then4.i581:                                    ; preds = %do.end3.i579
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i580 = and i32 %shr120, 255
  tail call void %199(ptr noundef %195, i16 noundef zeroext 66, i32 noundef %conv9.i580) #8
  br label %zr36060_write.exit584

do.end11.i583:                                    ; preds = %do.end3.i579
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i582 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit584

zr36060_write.exit584:                            ; preds = %do.end11.i583, %if.then4.i581
  %200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %200)
  %cmp.i585 = icmp sgt i32 %200, 3
  br i1 %cmp.i585, label %do.end.i588, label %zr36060_write.exit584.do.end3.i593_crit_edge

zr36060_write.exit584.do.end3.i593_crit_edge:     ; preds = %zr36060_write.exit584
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i593

do.end.i588:                                      ; preds = %zr36060_write.exit584
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i586 = and i32 %add119, 255
  %call.i587 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i586, i32 noundef 67) #11
  br label %do.end3.i593

do.end3.i593:                                     ; preds = %do.end.i588, %zr36060_write.exit584.do.end3.i593_crit_edge
  %201 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %codec.i, align 4
  %master_data.i590 = getelementptr inbounds %struct.videocodec, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %master_data.i590 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %master_data.i590, align 4
  %writereg.i591 = getelementptr inbounds %struct.videocodec_master, ptr %204, i32 0, i32 6
  %205 = ptrtoint ptr %writereg.i591 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %writereg.i591, align 4
  %tobool.not.i592 = icmp eq ptr %206, null
  br i1 %tobool.not.i592, label %do.end11.i597, label %if.then4.i595

if.then4.i595:                                    ; preds = %do.end3.i593
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i594 = and i32 %add119, 255
  tail call void %206(ptr noundef %202, i16 noundef zeroext 67, i32 noundef %conv9.i594) #8
  br label %zr36060_write.exit598

do.end11.i597:                                    ; preds = %do.end3.i593
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i596 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit598

zr36060_write.exit598:                            ; preds = %do.end11.i597, %if.then4.i595
  %207 = ptrtoint ptr %height9 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %height9, align 4
  %add127 = add i32 %208, %add119
  %shr128 = lshr i32 %add127, 8
  %209 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %209)
  %cmp.i599 = icmp sgt i32 %209, 3
  br i1 %cmp.i599, label %do.end.i602, label %zr36060_write.exit598.do.end3.i607_crit_edge

zr36060_write.exit598.do.end3.i607_crit_edge:     ; preds = %zr36060_write.exit598
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i607

do.end.i602:                                      ; preds = %zr36060_write.exit598
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i600 = and i32 %shr128, 255
  %call.i601 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i600, i32 noundef 68) #11
  br label %do.end3.i607

do.end3.i607:                                     ; preds = %do.end.i602, %zr36060_write.exit598.do.end3.i607_crit_edge
  %210 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %codec.i, align 4
  %master_data.i604 = getelementptr inbounds %struct.videocodec, ptr %211, i32 0, i32 5
  %212 = ptrtoint ptr %master_data.i604 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %master_data.i604, align 4
  %writereg.i605 = getelementptr inbounds %struct.videocodec_master, ptr %213, i32 0, i32 6
  %214 = ptrtoint ptr %writereg.i605 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %writereg.i605, align 4
  %tobool.not.i606 = icmp eq ptr %215, null
  br i1 %tobool.not.i606, label %do.end11.i611, label %if.then4.i609

if.then4.i609:                                    ; preds = %do.end3.i607
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i608 = and i32 %shr128, 255
  tail call void %215(ptr noundef %211, i16 noundef zeroext 68, i32 noundef %conv9.i608) #8
  br label %zr36060_write.exit612

do.end11.i611:                                    ; preds = %do.end3.i607
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i610 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit612

zr36060_write.exit612:                            ; preds = %do.end11.i611, %if.then4.i609
  %216 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %216)
  %cmp.i613 = icmp sgt i32 %216, 3
  br i1 %cmp.i613, label %do.end.i616, label %zr36060_write.exit612.do.end3.i621_crit_edge

zr36060_write.exit612.do.end3.i621_crit_edge:     ; preds = %zr36060_write.exit612
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i621

do.end.i616:                                      ; preds = %zr36060_write.exit612
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i614 = and i32 %add127, 255
  %call.i615 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i614, i32 noundef 69) #11
  br label %do.end3.i621

do.end3.i621:                                     ; preds = %do.end.i616, %zr36060_write.exit612.do.end3.i621_crit_edge
  %217 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %codec.i, align 4
  %master_data.i618 = getelementptr inbounds %struct.videocodec, ptr %218, i32 0, i32 5
  %219 = ptrtoint ptr %master_data.i618 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %master_data.i618, align 4
  %writereg.i619 = getelementptr inbounds %struct.videocodec_master, ptr %220, i32 0, i32 6
  %221 = ptrtoint ptr %writereg.i619 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %writereg.i619, align 4
  %tobool.not.i620 = icmp eq ptr %222, null
  br i1 %tobool.not.i620, label %do.end11.i625, label %if.then4.i623

if.then4.i623:                                    ; preds = %do.end3.i621
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i622 = and i32 %add127, 255
  tail call void %222(ptr noundef %218, i16 noundef zeroext 69, i32 noundef %conv9.i622) #8
  br label %zr36060_write.exit626

do.end11.i625:                                    ; preds = %do.end3.i621
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i624 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit626

zr36060_write.exit626:                            ; preds = %do.end11.i625, %if.then4.i623
  %223 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %cap, align 4
  %225 = ptrtoint ptr %h_start to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %h_start, align 2
  %conv136 = zext i16 %226 to i32
  %add137 = add i32 %224, %conv136
  %shr138 = lshr i32 %add137, 8
  %227 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %227)
  %cmp.i627 = icmp sgt i32 %227, 3
  br i1 %cmp.i627, label %do.end.i630, label %zr36060_write.exit626.do.end3.i635_crit_edge

zr36060_write.exit626.do.end3.i635_crit_edge:     ; preds = %zr36060_write.exit626
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i635

do.end.i630:                                      ; preds = %zr36060_write.exit626
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i628 = and i32 %shr138, 255
  %call.i629 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i628, i32 noundef 70) #11
  br label %do.end3.i635

do.end3.i635:                                     ; preds = %do.end.i630, %zr36060_write.exit626.do.end3.i635_crit_edge
  %228 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %codec.i, align 4
  %master_data.i632 = getelementptr inbounds %struct.videocodec, ptr %229, i32 0, i32 5
  %230 = ptrtoint ptr %master_data.i632 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %master_data.i632, align 4
  %writereg.i633 = getelementptr inbounds %struct.videocodec_master, ptr %231, i32 0, i32 6
  %232 = ptrtoint ptr %writereg.i633 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %writereg.i633, align 4
  %tobool.not.i634 = icmp eq ptr %233, null
  br i1 %tobool.not.i634, label %do.end11.i639, label %if.then4.i637

if.then4.i637:                                    ; preds = %do.end3.i635
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i636 = and i32 %shr138, 255
  tail call void %233(ptr noundef %229, i16 noundef zeroext 70, i32 noundef %conv9.i636) #8
  br label %zr36060_write.exit640

do.end11.i639:                                    ; preds = %do.end3.i635
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i638 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit640

zr36060_write.exit640:                            ; preds = %do.end11.i639, %if.then4.i637
  %234 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %234)
  %cmp.i641 = icmp sgt i32 %234, 3
  br i1 %cmp.i641, label %do.end.i644, label %zr36060_write.exit640.do.end3.i649_crit_edge

zr36060_write.exit640.do.end3.i649_crit_edge:     ; preds = %zr36060_write.exit640
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i649

do.end.i644:                                      ; preds = %zr36060_write.exit640
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i642 = and i32 %add137, 255
  %call.i643 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i642, i32 noundef 71) #11
  br label %do.end3.i649

do.end3.i649:                                     ; preds = %do.end.i644, %zr36060_write.exit640.do.end3.i649_crit_edge
  %235 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %codec.i, align 4
  %master_data.i646 = getelementptr inbounds %struct.videocodec, ptr %236, i32 0, i32 5
  %237 = ptrtoint ptr %master_data.i646 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %master_data.i646, align 4
  %writereg.i647 = getelementptr inbounds %struct.videocodec_master, ptr %238, i32 0, i32 6
  %239 = ptrtoint ptr %writereg.i647 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %writereg.i647, align 4
  %tobool.not.i648 = icmp eq ptr %240, null
  br i1 %tobool.not.i648, label %do.end11.i653, label %if.then4.i651

if.then4.i651:                                    ; preds = %do.end3.i649
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i650 = and i32 %add137, 255
  tail call void %240(ptr noundef %236, i16 noundef zeroext 71, i32 noundef %conv9.i650) #8
  br label %zr36060_write.exit654

do.end11.i653:                                    ; preds = %do.end3.i649
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i652 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit654

zr36060_write.exit654:                            ; preds = %do.end11.i653, %if.then4.i651
  %241 = ptrtoint ptr %width4 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %width4, align 4
  %add145 = add i32 %242, %add137
  %shr146 = lshr i32 %add145, 8
  %243 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %243)
  %cmp.i655 = icmp sgt i32 %243, 3
  br i1 %cmp.i655, label %do.end.i658, label %zr36060_write.exit654.do.end3.i663_crit_edge

zr36060_write.exit654.do.end3.i663_crit_edge:     ; preds = %zr36060_write.exit654
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i663

do.end.i658:                                      ; preds = %zr36060_write.exit654
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i656 = and i32 %shr146, 255
  %call.i657 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i656, i32 noundef 72) #11
  br label %do.end3.i663

do.end3.i663:                                     ; preds = %do.end.i658, %zr36060_write.exit654.do.end3.i663_crit_edge
  %244 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %codec.i, align 4
  %master_data.i660 = getelementptr inbounds %struct.videocodec, ptr %245, i32 0, i32 5
  %246 = ptrtoint ptr %master_data.i660 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %master_data.i660, align 4
  %writereg.i661 = getelementptr inbounds %struct.videocodec_master, ptr %247, i32 0, i32 6
  %248 = ptrtoint ptr %writereg.i661 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %writereg.i661, align 4
  %tobool.not.i662 = icmp eq ptr %249, null
  br i1 %tobool.not.i662, label %do.end11.i667, label %if.then4.i665

if.then4.i665:                                    ; preds = %do.end3.i663
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i664 = and i32 %shr146, 255
  tail call void %249(ptr noundef %245, i16 noundef zeroext 72, i32 noundef %conv9.i664) #8
  br label %zr36060_write.exit668

do.end11.i667:                                    ; preds = %do.end3.i663
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i666 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit668

zr36060_write.exit668:                            ; preds = %do.end11.i667, %if.then4.i665
  %250 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp.i669 = icmp sgt i32 %250, 3
  br i1 %cmp.i669, label %do.end.i672, label %zr36060_write.exit668.do.end3.i677_crit_edge

zr36060_write.exit668.do.end3.i677_crit_edge:     ; preds = %zr36060_write.exit668
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i677

do.end.i672:                                      ; preds = %zr36060_write.exit668
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i670 = and i32 %add145, 255
  %call.i671 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i670, i32 noundef 73) #11
  br label %do.end3.i677

do.end3.i677:                                     ; preds = %do.end.i672, %zr36060_write.exit668.do.end3.i677_crit_edge
  %251 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %codec.i, align 4
  %master_data.i674 = getelementptr inbounds %struct.videocodec, ptr %252, i32 0, i32 5
  %253 = ptrtoint ptr %master_data.i674 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %master_data.i674, align 4
  %writereg.i675 = getelementptr inbounds %struct.videocodec_master, ptr %254, i32 0, i32 6
  %255 = ptrtoint ptr %writereg.i675 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %writereg.i675, align 4
  %tobool.not.i676 = icmp eq ptr %256, null
  br i1 %tobool.not.i676, label %do.end11.i681, label %if.then4.i679

if.then4.i679:                                    ; preds = %do.end3.i677
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i678 = and i32 %add145, 255
  tail call void %256(ptr noundef %252, i16 noundef zeroext 73, i32 noundef %conv9.i678) #8
  br label %zr36060_write.exit682

do.end11.i681:                                    ; preds = %do.end3.i677
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i680 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit682

zr36060_write.exit682:                            ; preds = %do.end11.i681, %if.then4.i679
  %257 = ptrtoint ptr %v_start to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %v_start, align 2
  %conv153 = zext i16 %258 to i32
  %sub154 = add nsw i32 %conv153, -4
  %shr155 = lshr i32 %sub154, 8
  %259 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %259)
  %cmp.i683 = icmp sgt i32 %259, 3
  br i1 %cmp.i683, label %do.end.i686, label %zr36060_write.exit682.do.end3.i691_crit_edge

zr36060_write.exit682.do.end3.i691_crit_edge:     ; preds = %zr36060_write.exit682
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i691

do.end.i686:                                      ; preds = %zr36060_write.exit682
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i684 = and i32 %shr155, 255
  %call.i685 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i684, i32 noundef 74) #11
  br label %do.end3.i691

do.end3.i691:                                     ; preds = %do.end.i686, %zr36060_write.exit682.do.end3.i691_crit_edge
  %260 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %codec.i, align 4
  %master_data.i688 = getelementptr inbounds %struct.videocodec, ptr %261, i32 0, i32 5
  %262 = ptrtoint ptr %master_data.i688 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %master_data.i688, align 4
  %writereg.i689 = getelementptr inbounds %struct.videocodec_master, ptr %263, i32 0, i32 6
  %264 = ptrtoint ptr %writereg.i689 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %writereg.i689, align 4
  %tobool.not.i690 = icmp eq ptr %265, null
  br i1 %tobool.not.i690, label %do.end11.i695, label %if.then4.i693

if.then4.i693:                                    ; preds = %do.end3.i691
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i692 = and i32 %shr155, 255
  tail call void %265(ptr noundef %261, i16 noundef zeroext 74, i32 noundef %conv9.i692) #8
  br label %zr36060_write.exit696

do.end11.i695:                                    ; preds = %do.end3.i691
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i694 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit696

zr36060_write.exit696:                            ; preds = %do.end11.i695, %if.then4.i693
  %266 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %266)
  %cmp.i697 = icmp sgt i32 %266, 3
  br i1 %cmp.i697, label %do.end.i700, label %zr36060_write.exit696.do.end3.i705_crit_edge

zr36060_write.exit696.do.end3.i705_crit_edge:     ; preds = %zr36060_write.exit696
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i705

do.end.i700:                                      ; preds = %zr36060_write.exit696
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i698 = and i32 %sub154, 255
  %call.i699 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i698, i32 noundef 75) #11
  br label %do.end3.i705

do.end3.i705:                                     ; preds = %do.end.i700, %zr36060_write.exit696.do.end3.i705_crit_edge
  %267 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %codec.i, align 4
  %master_data.i702 = getelementptr inbounds %struct.videocodec, ptr %268, i32 0, i32 5
  %269 = ptrtoint ptr %master_data.i702 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %master_data.i702, align 4
  %writereg.i703 = getelementptr inbounds %struct.videocodec_master, ptr %270, i32 0, i32 6
  %271 = ptrtoint ptr %writereg.i703 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %writereg.i703, align 4
  %tobool.not.i704 = icmp eq ptr %272, null
  br i1 %tobool.not.i704, label %do.end11.i709, label %if.then4.i707

if.then4.i707:                                    ; preds = %do.end3.i705
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i706 = and i32 %sub154, 255
  tail call void %272(ptr noundef %268, i16 noundef zeroext 75, i32 noundef %conv9.i706) #8
  br label %zr36060_write.exit710

do.end11.i709:                                    ; preds = %do.end3.i705
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i708 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit710

zr36060_write.exit710:                            ; preds = %do.end11.i709, %if.then4.i707
  %273 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %ha, align 2
  %275 = lshr i16 %274, 1
  %narrow = add nuw i16 %275, 8
  %add164 = zext i16 %narrow to i32
  %add165 = add nsw i32 %sub154, %add164
  %shr166 = lshr i32 %add165, 8
  %276 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %276)
  %cmp.i711 = icmp sgt i32 %276, 3
  br i1 %cmp.i711, label %do.end.i714, label %zr36060_write.exit710.do.end3.i719_crit_edge

zr36060_write.exit710.do.end3.i719_crit_edge:     ; preds = %zr36060_write.exit710
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i719

do.end.i714:                                      ; preds = %zr36060_write.exit710
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i712 = and i32 %shr166, 255
  %call.i713 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i712, i32 noundef 76) #11
  br label %do.end3.i719

do.end3.i719:                                     ; preds = %do.end.i714, %zr36060_write.exit710.do.end3.i719_crit_edge
  %277 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %codec.i, align 4
  %master_data.i716 = getelementptr inbounds %struct.videocodec, ptr %278, i32 0, i32 5
  %279 = ptrtoint ptr %master_data.i716 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %master_data.i716, align 4
  %writereg.i717 = getelementptr inbounds %struct.videocodec_master, ptr %280, i32 0, i32 6
  %281 = ptrtoint ptr %writereg.i717 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %writereg.i717, align 4
  %tobool.not.i718 = icmp eq ptr %282, null
  br i1 %tobool.not.i718, label %do.end11.i723, label %if.then4.i721

if.then4.i721:                                    ; preds = %do.end3.i719
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i720 = and i32 %shr166, 255
  tail call void %282(ptr noundef %278, i16 noundef zeroext 76, i32 noundef %conv9.i720) #8
  br label %zr36060_write.exit724

do.end11.i723:                                    ; preds = %do.end3.i719
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i722 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit724

zr36060_write.exit724:                            ; preds = %do.end11.i723, %if.then4.i721
  %283 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %283)
  %cmp.i725 = icmp sgt i32 %283, 3
  br i1 %cmp.i725, label %do.end.i728, label %zr36060_write.exit724.do.end3.i733_crit_edge

zr36060_write.exit724.do.end3.i733_crit_edge:     ; preds = %zr36060_write.exit724
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i733

do.end.i728:                                      ; preds = %zr36060_write.exit724
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i726 = and i32 %add165, 255
  %call.i727 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i726, i32 noundef 77) #11
  br label %do.end3.i733

do.end3.i733:                                     ; preds = %do.end.i728, %zr36060_write.exit724.do.end3.i733_crit_edge
  %284 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %codec.i, align 4
  %master_data.i730 = getelementptr inbounds %struct.videocodec, ptr %285, i32 0, i32 5
  %286 = ptrtoint ptr %master_data.i730 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %master_data.i730, align 4
  %writereg.i731 = getelementptr inbounds %struct.videocodec_master, ptr %287, i32 0, i32 6
  %288 = ptrtoint ptr %writereg.i731 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %writereg.i731, align 4
  %tobool.not.i732 = icmp eq ptr %289, null
  br i1 %tobool.not.i732, label %do.end11.i737, label %if.then4.i735

if.then4.i735:                                    ; preds = %do.end3.i733
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i734 = and i32 %add165, 255
  tail call void %289(ptr noundef %285, i16 noundef zeroext 77, i32 noundef %conv9.i734) #8
  br label %zr36060_write.exit738

do.end11.i737:                                    ; preds = %do.end3.i733
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i736 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit738

zr36060_write.exit738:                            ; preds = %do.end11.i737, %if.then4.i735
  %290 = ptrtoint ptr %h_start to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %h_start, align 2
  %conv173 = zext i16 %291 to i32
  %sub174 = add nsw i32 %conv173, -4
  %shr175 = lshr i32 %sub174, 8
  %292 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %292)
  %cmp.i739 = icmp sgt i32 %292, 3
  br i1 %cmp.i739, label %do.end.i742, label %zr36060_write.exit738.do.end3.i747_crit_edge

zr36060_write.exit738.do.end3.i747_crit_edge:     ; preds = %zr36060_write.exit738
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i747

do.end.i742:                                      ; preds = %zr36060_write.exit738
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i740 = and i32 %shr175, 255
  %call.i741 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i740, i32 noundef 78) #11
  br label %do.end3.i747

do.end3.i747:                                     ; preds = %do.end.i742, %zr36060_write.exit738.do.end3.i747_crit_edge
  %293 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %codec.i, align 4
  %master_data.i744 = getelementptr inbounds %struct.videocodec, ptr %294, i32 0, i32 5
  %295 = ptrtoint ptr %master_data.i744 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %master_data.i744, align 4
  %writereg.i745 = getelementptr inbounds %struct.videocodec_master, ptr %296, i32 0, i32 6
  %297 = ptrtoint ptr %writereg.i745 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %writereg.i745, align 4
  %tobool.not.i746 = icmp eq ptr %298, null
  br i1 %tobool.not.i746, label %do.end11.i751, label %if.then4.i749

if.then4.i749:                                    ; preds = %do.end3.i747
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i748 = and i32 %shr175, 255
  tail call void %298(ptr noundef %294, i16 noundef zeroext 78, i32 noundef %conv9.i748) #8
  br label %zr36060_write.exit752

do.end11.i751:                                    ; preds = %do.end3.i747
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i750 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit752

zr36060_write.exit752:                            ; preds = %do.end11.i751, %if.then4.i749
  %299 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %299)
  %cmp.i753 = icmp sgt i32 %299, 3
  br i1 %cmp.i753, label %do.end.i756, label %zr36060_write.exit752.do.end3.i761_crit_edge

zr36060_write.exit752.do.end3.i761_crit_edge:     ; preds = %zr36060_write.exit752
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i761

do.end.i756:                                      ; preds = %zr36060_write.exit752
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i754 = and i32 %sub174, 255
  %call.i755 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i754, i32 noundef 79) #11
  br label %do.end3.i761

do.end3.i761:                                     ; preds = %do.end.i756, %zr36060_write.exit752.do.end3.i761_crit_edge
  %300 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %codec.i, align 4
  %master_data.i758 = getelementptr inbounds %struct.videocodec, ptr %301, i32 0, i32 5
  %302 = ptrtoint ptr %master_data.i758 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %master_data.i758, align 4
  %writereg.i759 = getelementptr inbounds %struct.videocodec_master, ptr %303, i32 0, i32 6
  %304 = ptrtoint ptr %writereg.i759 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %writereg.i759, align 4
  %tobool.not.i760 = icmp eq ptr %305, null
  br i1 %tobool.not.i760, label %do.end11.i765, label %if.then4.i763

if.then4.i763:                                    ; preds = %do.end3.i761
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i762 = and i32 %sub174, 255
  tail call void %305(ptr noundef %301, i16 noundef zeroext 79, i32 noundef %conv9.i762) #8
  br label %zr36060_write.exit766

do.end11.i765:                                    ; preds = %do.end3.i761
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i764 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit766

zr36060_write.exit766:                            ; preds = %do.end11.i765, %if.then4.i763
  %306 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %wa, align 2
  %conv182 = zext i16 %307 to i32
  %add183 = add nuw nsw i32 %conv173, 4
  %add184 = add nuw nsw i32 %add183, %conv182
  %shr185 = lshr i32 %add184, 8
  %308 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %308)
  %cmp.i767 = icmp sgt i32 %308, 3
  br i1 %cmp.i767, label %do.end.i770, label %zr36060_write.exit766.do.end3.i775_crit_edge

zr36060_write.exit766.do.end3.i775_crit_edge:     ; preds = %zr36060_write.exit766
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i775

do.end.i770:                                      ; preds = %zr36060_write.exit766
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i768 = and i32 %shr185, 255
  %call.i769 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i768, i32 noundef 80) #11
  br label %do.end3.i775

do.end3.i775:                                     ; preds = %do.end.i770, %zr36060_write.exit766.do.end3.i775_crit_edge
  %309 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %codec.i, align 4
  %master_data.i772 = getelementptr inbounds %struct.videocodec, ptr %310, i32 0, i32 5
  %311 = ptrtoint ptr %master_data.i772 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %master_data.i772, align 4
  %writereg.i773 = getelementptr inbounds %struct.videocodec_master, ptr %312, i32 0, i32 6
  %313 = ptrtoint ptr %writereg.i773 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %writereg.i773, align 4
  %tobool.not.i774 = icmp eq ptr %314, null
  br i1 %tobool.not.i774, label %do.end11.i779, label %if.then4.i777

if.then4.i777:                                    ; preds = %do.end3.i775
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i776 = and i32 %shr185, 255
  tail call void %314(ptr noundef %310, i16 noundef zeroext 80, i32 noundef %conv9.i776) #8
  br label %zr36060_write.exit780

do.end11.i779:                                    ; preds = %do.end3.i775
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i778 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit780

zr36060_write.exit780:                            ; preds = %do.end11.i779, %if.then4.i777
  %315 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %315)
  %cmp.i781 = icmp sgt i32 %315, 3
  br i1 %cmp.i781, label %do.end.i784, label %zr36060_write.exit780.do.end3.i789_crit_edge

zr36060_write.exit780.do.end3.i789_crit_edge:     ; preds = %zr36060_write.exit780
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i789

do.end.i784:                                      ; preds = %zr36060_write.exit780
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i782 = and i32 %add184, 255
  %call.i783 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i782, i32 noundef 81) #11
  br label %do.end3.i789

do.end3.i789:                                     ; preds = %do.end.i784, %zr36060_write.exit780.do.end3.i789_crit_edge
  %316 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %codec.i, align 4
  %master_data.i786 = getelementptr inbounds %struct.videocodec, ptr %317, i32 0, i32 5
  %318 = ptrtoint ptr %master_data.i786 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %master_data.i786, align 4
  %writereg.i787 = getelementptr inbounds %struct.videocodec_master, ptr %319, i32 0, i32 6
  %320 = ptrtoint ptr %writereg.i787 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %writereg.i787, align 4
  %tobool.not.i788 = icmp eq ptr %321, null
  br i1 %tobool.not.i788, label %do.end11.i793, label %if.then4.i791

if.then4.i791:                                    ; preds = %do.end3.i789
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i790 = and i32 %add184, 255
  tail call void %321(ptr noundef %317, i16 noundef zeroext 81, i32 noundef %conv9.i790) #8
  br label %zr36060_write.exit794

do.end11.i793:                                    ; preds = %do.end3.i789
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i792 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit794

zr36060_write.exit794:                            ; preds = %do.end11.i793, %if.then4.i791
  %322 = ptrtoint ptr %width8 to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %width8, align 4
  %conv192 = zext i16 %323 to i32
  %324 = ptrtoint ptr %height14 to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %height14, align 2
  %conv194 = zext i16 %325 to i32
  %quality = getelementptr inbounds %struct.vfe_settings, ptr %cap, i32 0, i32 6
  %326 = ptrtoint ptr %quality to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %quality, align 4
  %conv196 = zext i16 %327 to i32
  %mul = shl nuw nsw i32 %conv192, 4
  %mul195 = mul i32 %mul, %conv194
  %mul197 = mul i32 %mul195, %conv196
  %328 = load i8, ptr @low_bitrate, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool198.not = icmp eq i8 %328, 0
  %cond200 = select i1 %tobool198.not, i32 200, i32 400
  %div201 = sdiv i32 %mul197, %cond200
  %329 = tail call i32 @llvm.smax.i32(i32 %div201, i32 8192)
  %total_code_vol = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 8
  %330 = ptrtoint ptr %total_code_vol to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %total_code_vol, align 4
  %mul206 = mul i32 %331, 7
  %332 = tail call i32 @llvm.umin.i32(i32 %329, i32 %mul206)
  %shr213809 = lshr i32 %332, 3
  %real_code_vol = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 9
  %333 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %shr213809, ptr %real_code_vol, align 4
  %max_block_vol = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 10
  %334 = ptrtoint ptr %max_block_vol to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %max_block_vol, align 4
  %336 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %336)
  %cmp.i795 = icmp sgt i32 %336, 3
  br i1 %cmp.i795, label %do.end.i798, label %zr36060_write.exit794.do.end3.i803_crit_edge

zr36060_write.exit794.do.end3.i803_crit_edge:     ; preds = %zr36060_write.exit794
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i803

do.end.i798:                                      ; preds = %zr36060_write.exit794
  call void @__sanitizer_cov_trace_pc() #10
  %337 = and i16 %335, 255
  %conv.i796 = zext i16 %337 to i32
  %call.i797 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i796, i32 noundef 5) #11
  br label %do.end3.i803

do.end3.i803:                                     ; preds = %do.end.i798, %zr36060_write.exit794.do.end3.i803_crit_edge
  %338 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %codec.i, align 4
  %master_data.i800 = getelementptr inbounds %struct.videocodec, ptr %339, i32 0, i32 5
  %340 = ptrtoint ptr %master_data.i800 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %master_data.i800, align 4
  %writereg.i801 = getelementptr inbounds %struct.videocodec_master, ptr %341, i32 0, i32 6
  %342 = ptrtoint ptr %writereg.i801 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %writereg.i801, align 4
  %tobool.not.i802 = icmp eq ptr %343, null
  br i1 %tobool.not.i802, label %do.end11.i807, label %if.then4.i805

if.then4.i805:                                    ; preds = %do.end3.i803
  call void @__sanitizer_cov_trace_pc() #10
  %conv215.mask = and i16 %335, 255
  %conv9.i804 = zext i16 %conv215.mask to i32
  tail call void %343(ptr noundef %339, i16 noundef zeroext 5, i32 noundef %conv9.i804) #8
  br label %zr36060_write.exit808

do.end11.i807:                                    ; preds = %do.end3.i803
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i806 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %zr36060_write.exit808

zr36060_write.exit808:                            ; preds = %do.end11.i807, %if.then4.i805
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr36060_control(ptr nocapture noundef readonly %codec, i32 noundef %type, i32 noundef %size, ptr nocapture noundef %data) #3 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %1, i32 noundef %type, i32 noundef %size) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 32769, label %sw.bb9
    i32 1, label %sw.bb14
    i32 32770, label %do.end4.cleanup82_crit_edge
    i32 2, label %do.end4.cleanup82_crit_edge142
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

do.end4.cleanup82_crit_edge142:                   ; preds = %do.end4
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
  %codec.i.i = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec.i.i, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master_data.i.i, align 4
  %readreg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %readreg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %readreg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %9(ptr noundef %5, i16 noundef zeroext 1) #8
  %conv.i.i = trunc i32 %call.i.i to i8
  br label %zr36060_read.exit.i

do.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1) #11
  br label %zr36060_read.exit.i

zr36060_read.exit.i:                              ; preds = %do.end.i.i, %if.then.i.i
  %value.0.i.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ 0, %do.end.i.i ]
  %status.i = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %value.0.i.i, ptr %status.i, align 4
  %11 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %codec.i.i, align 4
  %master_data.i7.i = getelementptr inbounds %struct.videocodec, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %master_data.i7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master_data.i7.i, align 4
  %readreg.i8.i = getelementptr inbounds %struct.videocodec_master, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %readreg.i8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %readreg.i8.i, align 4
  %tobool.not.i9.i = icmp eq ptr %16, null
  br i1 %tobool.not.i9.i, label %do.end.i14.i, label %if.then.i12.i

if.then.i12.i:                                    ; preds = %zr36060_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i10.i = tail call i32 %16(ptr noundef %12, i16 noundef zeroext 0) #8
  br label %zr36060_read_status.exit

do.end.i14.i:                                     ; preds = %zr36060_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1) #11
  br label %zr36060_read_status.exit

zr36060_read_status.exit:                         ; preds = %do.end.i14.i, %if.then.i12.i
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status.i, align 4
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
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
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
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
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp19.not = icmp eq i32 %22, 1
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
  %total_code_vol = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %total_code_vol to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %total_code_vol, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data, align 4
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
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data, align 4
  %total_code_vol35 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %total_code_vol35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %total_code_vol35, align 4
  %mul = mul i32 %27, 6
  %shr = lshr i32 %mul, 3
  %real_code_vol = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_store4_noabort(i32 %29)
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
  %codec.i.i131 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %codec.i.i131 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %codec.i.i131, align 4
  %master_data.i.i132 = getelementptr inbounds %struct.videocodec, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %master_data.i.i132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master_data.i.i132, align 4
  %readreg.i.i133 = getelementptr inbounds %struct.videocodec_master, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %readreg.i.i133 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %readreg.i.i133, align 4
  %tobool.not.i.i134 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i134, label %do.end.i.i139, label %if.then.i.i137

if.then.i.i137:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i135 = tail call i32 %35(ptr noundef %31, i16 noundef zeroext 17) #8
  %conv.i.i136 = trunc i32 %call.i.i135 to i8
  br label %zr36060_read.exit.i141

do.end.i.i139:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1) #11
  br label %zr36060_read.exit.i141

zr36060_read.exit.i141:                           ; preds = %do.end.i.i139, %if.then.i.i137
  %value.0.i.i140 = phi i8 [ %conv.i.i136, %if.then.i.i137 ], [ 0, %do.end.i.i139 ]
  %conv.i = zext i8 %value.0.i.i140 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %36 = ptrtoint ptr %codec.i.i131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %codec.i.i131, align 4
  %master_data.i11.i = getelementptr inbounds %struct.videocodec, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %master_data.i11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master_data.i11.i, align 4
  %readreg.i12.i = getelementptr inbounds %struct.videocodec_master, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %readreg.i12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %readreg.i12.i, align 4
  %tobool.not.i13.i = icmp eq ptr %41, null
  br i1 %tobool.not.i13.i, label %do.end.i18.i, label %if.then.i16.i

if.then.i16.i:                                    ; preds = %zr36060_read.exit.i141
  call void @__sanitizer_cov_trace_pc() #10
  %call.i14.i = tail call i32 %41(ptr noundef %37, i16 noundef zeroext 18) #8
  %conv.i15.i = trunc i32 %call.i14.i to i8
  br label %zr36060_read.exit20.i

do.end.i18.i:                                     ; preds = %zr36060_read.exit.i141
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1) #11
  br label %zr36060_read.exit20.i

zr36060_read.exit20.i:                            ; preds = %do.end.i18.i, %if.then.i16.i
  %value.0.i19.i = phi i8 [ %conv.i15.i, %if.then.i16.i ], [ 0, %do.end.i18.i ]
  %conv2.i = zext i8 %value.0.i19.i to i16
  %or.i = or i16 %shl.i, %conv2.i
  %scalefact.i = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 13
  %42 = ptrtoint ptr %scalefact.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or.i, ptr %scalefact.i, align 2
  %43 = ptrtoint ptr %codec.i.i131 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %codec.i.i131, align 4
  %master_data.i22.i = getelementptr inbounds %struct.videocodec, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %master_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %master_data.i22.i, align 4
  %readreg.i23.i = getelementptr inbounds %struct.videocodec_master, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %readreg.i23.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %readreg.i23.i, align 4
  %tobool.not.i24.i = icmp eq ptr %48, null
  br i1 %tobool.not.i24.i, label %do.end.i29.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %zr36060_read.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i25.i = tail call i32 %48(ptr noundef %44, i16 noundef zeroext 0) #8
  br label %zr36060_read_scalefactor.exit

do.end.i29.i:                                     ; preds = %zr36060_read.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %1) #11
  br label %zr36060_read_scalefactor.exit

zr36060_read_scalefactor.exit:                    ; preds = %do.end.i29.i, %if.then.i27.i
  %49 = ptrtoint ptr %scalefact.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %scalefact.i, align 2
  %conv43 = zext i16 %50 to i32
  %51 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %51)
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
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data, align 4
  %conv49 = trunc i32 %53 to i16
  %scalefact = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %scalefact to i32
  call void @__asan_store2_noabort(i32 %54)
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
  %app55 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 15
  %55 = call ptr @memcpy(ptr %data, ptr %app55, i32 68)
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
  %app62 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 15
  %56 = call ptr @memcpy(ptr %app62, ptr %data, i32 68)
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
  %com70 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 16
  %57 = call ptr @memcpy(ptr %data, ptr %com70, i32 64)
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
  %com79 = getelementptr inbounds %struct.zr36060, ptr %1, i32 0, i32 16
  %58 = call ptr @memcpy(ptr %com79, ptr %data, i32 64)
  br label %cleanup82

sw.default:                                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup82

cleanup82:                                        ; preds = %sw.default, %if.end78, %sw.bb73.cleanup82_crit_edge, %if.end69, %sw.bb65.cleanup82_crit_edge, %if.end61, %sw.bb56.cleanup82_crit_edge, %if.end54, %sw.bb50.cleanup82_crit_edge, %if.end48, %sw.bb44.cleanup82_crit_edge, %zr36060_read_scalefactor.exit, %sw.bb37.cleanup82_crit_edge, %if.end34, %sw.bb30.cleanup82_crit_edge, %if.end29, %sw.bb25.cleanup82_crit_edge, %sw.bb24, %if.end18, %sw.bb14.cleanup82_crit_edge, %if.end13, %sw.bb9.cleanup82_crit_edge, %zr36060_read_status.exit, %sw.bb.cleanup82_crit_edge, %do.end4.cleanup82_crit_edge, %do.end4.cleanup82_crit_edge142
  %retval.4 = phi i32 [ -22, %sw.default ], [ -6, %sw.bb24 ], [ -14, %sw.bb.cleanup82_crit_edge ], [ -14, %sw.bb9.cleanup82_crit_edge ], [ -14, %sw.bb14.cleanup82_crit_edge ], [ %., %if.end18 ], [ 0, %do.end4.cleanup82_crit_edge ], [ 0, %do.end4.cleanup82_crit_edge142 ], [ -14, %sw.bb25.cleanup82_crit_edge ], [ -14, %sw.bb30.cleanup82_crit_edge ], [ -14, %sw.bb37.cleanup82_crit_edge ], [ -14, %sw.bb44.cleanup82_crit_edge ], [ 64, %if.end78 ], [ 64, %if.end69 ], [ 68, %if.end61 ], [ 68, %if.end54 ], [ 4, %if.end48 ], [ 4, %zr36060_read_scalefactor.exit ], [ 4, %if.end34 ], [ 4, %if.end29 ], [ 4, %if.end13 ], [ 4, %zr36060_read_status.exit ], [ -14, %sw.bb50.cleanup82_crit_edge ], [ -14, %sw.bb56.cleanup82_crit_edge ], [ -14, %sw.bb65.cleanup82_crit_edge ], [ -14, %sw.bb73.cleanup82_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr36060_init(ptr noundef %ptr) unnamed_addr #3 align 64 {
entry:
  %sos_data.i = alloca [16 x i8], align 1
  %sof_data.i = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.body, label %do.body103

do.body:                                          ; preds = %entry
  br i1 %cmp1, label %do.end6, label %do.body.do.end3.i_crit_edge

do.body.do.end3.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end6:                                          ; preds = %do.body
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %ptr) #11
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 3
  br i1 %cmp.i, label %do.end.i, label %do.end6.do.end3.i_crit_edge

do.end6.do.end3.i_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end6.do.end3.i_crit_edge, %do.body.do.end3.i_crit_edge
  %codec.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 2
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
  br i1 %tobool.not.i, label %do.end11.i, label %if.then4.i

if.then4.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %4, i16 noundef zeroext 0, i32 noundef 1) #8
  br label %zr36060_write.exit

do.end11.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit

zr36060_write.exit:                               ; preds = %do.end11.i, %if.then4.i
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i243 = icmp sgt i32 %9, 3
  br i1 %cmp.i243, label %do.end.i245, label %zr36060_write.exit.do.end3.i250_crit_edge

zr36060_write.exit.do.end3.i250_crit_edge:        ; preds = %zr36060_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i250

do.end.i245:                                      ; preds = %zr36060_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i244 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef 2) #11
  br label %do.end3.i250

do.end3.i250:                                     ; preds = %do.end.i245, %zr36060_write.exit.do.end3.i250_crit_edge
  %10 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec.i, align 4
  %master_data.i247 = getelementptr inbounds %struct.videocodec, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %master_data.i247 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master_data.i247, align 4
  %writereg.i248 = getelementptr inbounds %struct.videocodec_master, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %writereg.i248 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %writereg.i248, align 4
  %tobool.not.i249 = icmp eq ptr %15, null
  br i1 %tobool.not.i249, label %do.end11.i253, label %if.then4.i251

if.then4.i251:                                    ; preds = %do.end3.i250
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %11, i16 noundef zeroext 2, i32 noundef 1) #8
  br label %zr36060_write.exit254

do.end11.i253:                                    ; preds = %do.end3.i250
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit254

zr36060_write.exit254:                            ; preds = %do.end11.i253, %if.then4.i251
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i255 = icmp sgt i32 %16, 3
  br i1 %cmp.i255, label %do.end.i257, label %zr36060_write.exit254.do.end3.i262_crit_edge

zr36060_write.exit254.do.end3.i262_crit_edge:     ; preds = %zr36060_write.exit254
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i262

do.end.i257:                                      ; preds = %zr36060_write.exit254
  call void @__sanitizer_cov_trace_pc() #10
  %call.i256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 164, i32 noundef 3) #11
  br label %do.end3.i262

do.end3.i262:                                     ; preds = %do.end.i257, %zr36060_write.exit254.do.end3.i262_crit_edge
  %17 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %codec.i, align 4
  %master_data.i259 = getelementptr inbounds %struct.videocodec, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %master_data.i259 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_data.i259, align 4
  %writereg.i260 = getelementptr inbounds %struct.videocodec_master, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %writereg.i260 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %writereg.i260, align 4
  %tobool.not.i261 = icmp eq ptr %22, null
  br i1 %tobool.not.i261, label %do.end11.i265, label %if.then4.i263

if.then4.i263:                                    ; preds = %do.end3.i262
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %22(ptr noundef %18, i16 noundef zeroext 3, i32 noundef 164) #8
  br label %zr36060_write.exit266

do.end11.i265:                                    ; preds = %do.end3.i262
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit266

zr36060_write.exit266:                            ; preds = %do.end11.i265, %if.then4.i263
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i267 = icmp sgt i32 %23, 3
  br i1 %cmp.i267, label %do.end.i269, label %zr36060_write.exit266.do.end3.i274_crit_edge

zr36060_write.exit266.do.end3.i274_crit_edge:     ; preds = %zr36060_write.exit266
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i274

do.end.i269:                                      ; preds = %zr36060_write.exit266
  call void @__sanitizer_cov_trace_pc() #10
  %call.i268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 4) #11
  br label %do.end3.i274

do.end3.i274:                                     ; preds = %do.end.i269, %zr36060_write.exit266.do.end3.i274_crit_edge
  %24 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %codec.i, align 4
  %master_data.i271 = getelementptr inbounds %struct.videocodec, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %master_data.i271 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master_data.i271, align 4
  %writereg.i272 = getelementptr inbounds %struct.videocodec_master, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %writereg.i272 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %writereg.i272, align 4
  %tobool.not.i273 = icmp eq ptr %29, null
  br i1 %tobool.not.i273, label %do.end11.i277, label %if.then4.i275

if.then4.i275:                                    ; preds = %do.end3.i274
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %25, i16 noundef zeroext 4, i32 noundef 0) #8
  br label %zr36060_write.exit278

do.end11.i277:                                    ; preds = %do.end3.i274
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit278

zr36060_write.exit278:                            ; preds = %do.end11.i277, %if.then4.i275
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i279 = icmp sgt i32 %30, 3
  br i1 %cmp.i279, label %do.end.i281, label %zr36060_write.exit278.do.end3.i286_crit_edge

zr36060_write.exit278.do.end3.i286_crit_edge:     ; preds = %zr36060_write.exit278
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i286

do.end.i281:                                      ; preds = %zr36060_write.exit278
  call void @__sanitizer_cov_trace_pc() #10
  %call.i280 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 36) #11
  br label %do.end3.i286

do.end3.i286:                                     ; preds = %do.end.i281, %zr36060_write.exit278.do.end3.i286_crit_edge
  %31 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %codec.i, align 4
  %master_data.i283 = getelementptr inbounds %struct.videocodec, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %master_data.i283 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master_data.i283, align 4
  %writereg.i284 = getelementptr inbounds %struct.videocodec_master, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %writereg.i284 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %writereg.i284, align 4
  %tobool.not.i285 = icmp eq ptr %36, null
  br i1 %tobool.not.i285, label %do.end11.i289, label %if.then4.i287

if.then4.i287:                                    ; preds = %do.end3.i286
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %36(ptr noundef %32, i16 noundef zeroext 36, i32 noundef 0) #8
  br label %zr36060_write.exit290

do.end11.i289:                                    ; preds = %do.end3.i286
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit290

zr36060_write.exit290:                            ; preds = %do.end11.i289, %if.then4.i287
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i291 = icmp sgt i32 %37, 3
  br i1 %cmp.i291, label %do.end.i293, label %zr36060_write.exit290.do.end3.i298_crit_edge

zr36060_write.exit290.do.end3.i298_crit_edge:     ; preds = %zr36060_write.exit290
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i298

do.end.i293:                                      ; preds = %zr36060_write.exit290
  call void @__sanitizer_cov_trace_pc() #10
  %call.i292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 37) #11
  br label %do.end3.i298

do.end3.i298:                                     ; preds = %do.end.i293, %zr36060_write.exit290.do.end3.i298_crit_edge
  %38 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %codec.i, align 4
  %master_data.i295 = getelementptr inbounds %struct.videocodec, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %master_data.i295 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master_data.i295, align 4
  %writereg.i296 = getelementptr inbounds %struct.videocodec_master, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %writereg.i296 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %writereg.i296, align 4
  %tobool.not.i297 = icmp eq ptr %43, null
  br i1 %tobool.not.i297, label %do.end11.i301, label %if.then4.i299

if.then4.i299:                                    ; preds = %do.end3.i298
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %43(ptr noundef %39, i16 noundef zeroext 37, i32 noundef 0) #8
  br label %zr36060_write.exit302

do.end11.i301:                                    ; preds = %do.end3.i298
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit302

zr36060_write.exit302:                            ; preds = %do.end11.i301, %if.then4.i299
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i303 = icmp sgt i32 %44, 3
  br i1 %cmp.i303, label %do.end.i305, label %zr36060_write.exit302.do.end3.i310_crit_edge

zr36060_write.exit302.do.end3.i310_crit_edge:     ; preds = %zr36060_write.exit302
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i310

do.end.i305:                                      ; preds = %zr36060_write.exit302
  call void @__sanitizer_cov_trace_pc() #10
  %call.i304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 7) #11
  br label %do.end3.i310

do.end3.i310:                                     ; preds = %do.end.i305, %zr36060_write.exit302.do.end3.i310_crit_edge
  %45 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %codec.i, align 4
  %master_data.i307 = getelementptr inbounds %struct.videocodec, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %master_data.i307 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master_data.i307, align 4
  %writereg.i308 = getelementptr inbounds %struct.videocodec_master, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %writereg.i308 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %writereg.i308, align 4
  %tobool.not.i309 = icmp eq ptr %50, null
  br i1 %tobool.not.i309, label %do.end11.i313, label %if.then4.i311

if.then4.i311:                                    ; preds = %do.end3.i310
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %50(ptr noundef %46, i16 noundef zeroext 7, i32 noundef 0) #8
  br label %zr36060_write.exit314

do.end11.i313:                                    ; preds = %do.end3.i310
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i312 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit314

zr36060_write.exit314:                            ; preds = %do.end11.i313, %if.then4.i311
  %scalefact = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 13
  %51 = ptrtoint ptr %scalefact to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %scalefact, align 2
  %53 = lshr i16 %52, 8
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %cmp.i315 = icmp sgt i32 %54, 3
  br i1 %cmp.i315, label %do.end.i317, label %zr36060_write.exit314.do.end3.i322_crit_edge

zr36060_write.exit314.do.end3.i322_crit_edge:     ; preds = %zr36060_write.exit314
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i322

do.end.i317:                                      ; preds = %zr36060_write.exit314
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i16 %53 to i32
  %call.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv7, i32 noundef 17) #11
  br label %do.end3.i322

do.end3.i322:                                     ; preds = %do.end.i317, %zr36060_write.exit314.do.end3.i322_crit_edge
  %55 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %codec.i, align 4
  %master_data.i319 = getelementptr inbounds %struct.videocodec, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %master_data.i319 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %master_data.i319, align 4
  %writereg.i320 = getelementptr inbounds %struct.videocodec_master, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %writereg.i320 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %writereg.i320, align 4
  %tobool.not.i321 = icmp eq ptr %60, null
  br i1 %tobool.not.i321, label %do.end11.i325, label %if.then4.i323

if.then4.i323:                                    ; preds = %do.end3.i322
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = zext i16 %53 to i32
  tail call void %60(ptr noundef %56, i16 noundef zeroext 17, i32 noundef %conv9.i) #8
  br label %zr36060_write.exit326

do.end11.i325:                                    ; preds = %do.end3.i322
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit326

zr36060_write.exit326:                            ; preds = %do.end11.i325, %if.then4.i323
  %61 = ptrtoint ptr %scalefact to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %scalefact, align 2
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %63)
  %cmp.i327 = icmp sgt i32 %63, 3
  br i1 %cmp.i327, label %do.end.i330, label %zr36060_write.exit326.do.end3.i335_crit_edge

zr36060_write.exit326.do.end3.i335_crit_edge:     ; preds = %zr36060_write.exit326
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i335

do.end.i330:                                      ; preds = %zr36060_write.exit326
  call void @__sanitizer_cov_trace_pc() #10
  %64 = and i16 %62, 255
  %conv.i328 = zext i16 %64 to i32
  %call.i329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i328, i32 noundef 18) #11
  br label %do.end3.i335

do.end3.i335:                                     ; preds = %do.end.i330, %zr36060_write.exit326.do.end3.i335_crit_edge
  %65 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %codec.i, align 4
  %master_data.i332 = getelementptr inbounds %struct.videocodec, ptr %66, i32 0, i32 5
  %67 = ptrtoint ptr %master_data.i332 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %master_data.i332, align 4
  %writereg.i333 = getelementptr inbounds %struct.videocodec_master, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %writereg.i333 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %writereg.i333, align 4
  %tobool.not.i334 = icmp eq ptr %70, null
  br i1 %tobool.not.i334, label %do.end11.i339, label %if.then4.i337

if.then4.i337:                                    ; preds = %do.end3.i335
  call void @__sanitizer_cov_trace_pc() #10
  %conv10.mask = and i16 %62, 255
  %conv9.i336 = zext i16 %conv10.mask to i32
  tail call void %70(ptr noundef %66, i16 noundef zeroext 18, i32 noundef %conv9.i336) #8
  br label %zr36060_write.exit340

do.end11.i339:                                    ; preds = %do.end3.i335
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit340

zr36060_write.exit340:                            ; preds = %do.end11.i339, %if.then4.i337
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp.i341 = icmp sgt i32 %71, 3
  br i1 %cmp.i341, label %do.end.i343, label %zr36060_write.exit340.do.end3.i348_crit_edge

zr36060_write.exit340.do.end3.i348_crit_edge:     ; preds = %zr36060_write.exit340
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i348

do.end.i343:                                      ; preds = %zr36060_write.exit340
  call void @__sanitizer_cov_trace_pc() #10
  %call.i342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 255, i32 noundef 19) #11
  br label %do.end3.i348

do.end3.i348:                                     ; preds = %do.end.i343, %zr36060_write.exit340.do.end3.i348_crit_edge
  %72 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %codec.i, align 4
  %master_data.i345 = getelementptr inbounds %struct.videocodec, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %master_data.i345 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %master_data.i345, align 4
  %writereg.i346 = getelementptr inbounds %struct.videocodec_master, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %writereg.i346 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %writereg.i346, align 4
  %tobool.not.i347 = icmp eq ptr %77, null
  br i1 %tobool.not.i347, label %do.end11.i351, label %if.then4.i349

if.then4.i349:                                    ; preds = %do.end3.i348
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %77(ptr noundef %73, i16 noundef zeroext 19, i32 noundef 255) #8
  br label %zr36060_write.exit352

do.end11.i351:                                    ; preds = %do.end3.i348
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit352

zr36060_write.exit352:                            ; preds = %do.end11.i351, %if.then4.i349
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp.i353 = icmp sgt i32 %78, 3
  br i1 %cmp.i353, label %do.end.i355, label %zr36060_write.exit352.do.end3.i360_crit_edge

zr36060_write.exit352.do.end3.i360_crit_edge:     ; preds = %zr36060_write.exit352
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i360

do.end.i355:                                      ; preds = %zr36060_write.exit352
  call void @__sanitizer_cov_trace_pc() #10
  %call.i354 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 255, i32 noundef 20) #11
  br label %do.end3.i360

do.end3.i360:                                     ; preds = %do.end.i355, %zr36060_write.exit352.do.end3.i360_crit_edge
  %79 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %codec.i, align 4
  %master_data.i357 = getelementptr inbounds %struct.videocodec, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %master_data.i357 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %master_data.i357, align 4
  %writereg.i358 = getelementptr inbounds %struct.videocodec_master, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %writereg.i358 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %writereg.i358, align 4
  %tobool.not.i359 = icmp eq ptr %84, null
  br i1 %tobool.not.i359, label %do.end11.i363, label %if.then4.i361

if.then4.i361:                                    ; preds = %do.end3.i360
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %84(ptr noundef %80, i16 noundef zeroext 20, i32 noundef 255) #8
  br label %zr36060_write.exit364

do.end11.i363:                                    ; preds = %do.end3.i360
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i362 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit364

zr36060_write.exit364:                            ; preds = %do.end11.i363, %if.then4.i361
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %cmp.i365 = icmp sgt i32 %85, 3
  br i1 %cmp.i365, label %do.end.i367, label %zr36060_write.exit364.do.end3.i372_crit_edge

zr36060_write.exit364.do.end3.i372_crit_edge:     ; preds = %zr36060_write.exit364
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i372

do.end.i367:                                      ; preds = %zr36060_write.exit364
  call void @__sanitizer_cov_trace_pc() #10
  %call.i366 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 255, i32 noundef 21) #11
  br label %do.end3.i372

do.end3.i372:                                     ; preds = %do.end.i367, %zr36060_write.exit364.do.end3.i372_crit_edge
  %86 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %codec.i, align 4
  %master_data.i369 = getelementptr inbounds %struct.videocodec, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %master_data.i369 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %master_data.i369, align 4
  %writereg.i370 = getelementptr inbounds %struct.videocodec_master, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %writereg.i370 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %writereg.i370, align 4
  %tobool.not.i371 = icmp eq ptr %91, null
  br i1 %tobool.not.i371, label %do.end11.i375, label %if.then4.i373

if.then4.i373:                                    ; preds = %do.end3.i372
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %91(ptr noundef %87, i16 noundef zeroext 21, i32 noundef 255) #8
  br label %zr36060_write.exit376

do.end11.i375:                                    ; preds = %do.end3.i372
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit376

zr36060_write.exit376:                            ; preds = %do.end11.i375, %if.then4.i373
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %sof_data.i) #8
  %92 = getelementptr inbounds i8, ptr %sof_data.i, i32 19
  %93 = call ptr @memset(ptr %92, i32 255, i32 15)
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp.i377 = icmp sgt i32 %94, 2
  br i1 %cmp.i377, label %do.end.i380, label %zr36060_write.exit376.do.end4.i_crit_edge

zr36060_write.exit376.do.end4.i_crit_edge:        ; preds = %zr36060_write.exit376
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i380:                                      ; preds = %zr36060_write.exit376
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 5
  %95 = ptrtoint ptr %width.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %width.i, align 4
  %conv.i378 = zext i16 %96 to i32
  %height.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 6
  %97 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %height.i, align 2
  %conv2.i = zext i16 %98 to i32
  %call.i379 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %ptr, i32 noundef %conv.i378, i32 noundef %conv2.i, i32 noundef 3) #11
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i380, %zr36060_write.exit376.do.end4.i_crit_edge
  %99 = ptrtoint ptr %sof_data.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %sof_data.i, align 1
  %arrayidx5.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 1
  %100 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -64, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx6.i, align 1
  %arrayidx7.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 3
  %102 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 17, ptr %arrayidx7.i, align 1
  %arrayidx8.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 4
  %103 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 8, ptr %arrayidx8.i, align 1
  %height9.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 6
  %104 = ptrtoint ptr %height9.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %height9.i, align 2
  %106 = lshr i16 %105, 8
  %conv11.i = trunc i16 %106 to i8
  %arrayidx12.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 5
  %107 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %conv15.i = trunc i16 %105 to i8
  %arrayidx16.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 6
  %108 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv15.i, ptr %arrayidx16.i, align 1
  %width17.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 5
  %109 = ptrtoint ptr %width17.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %width17.i, align 4
  %111 = lshr i16 %110, 8
  %conv20.i = trunc i16 %111 to i8
  %arrayidx21.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 7
  %112 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv20.i, ptr %arrayidx21.i, align 1
  %conv25.i = trunc i16 %110 to i8
  %arrayidx26.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 8
  %113 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv25.i, ptr %arrayidx26.i, align 1
  %arrayidx27.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 9
  %114 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 3, ptr %arrayidx27.i, align 1
  %arrayidx31.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 10
  %115 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx31.i, align 1
  %arrayidx32.i = getelementptr %struct.zr36060, ptr %ptr, i32 0, i32 11, i32 0
  %116 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx32.i, align 1
  %shl.i = shl i8 %117, 4
  %arrayidx34.i = getelementptr %struct.zr36060, ptr %ptr, i32 0, i32 12, i32 0
  %118 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx34.i, align 1
  %or.i = or i8 %shl.i, %119
  %arrayidx39.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 11
  %120 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %or.i, ptr %arrayidx39.i, align 1
  %arrayidx43.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 12
  %121 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx43.i, align 1
  %arrayidx31.1.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 13
  %122 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %arrayidx31.1.i, align 1
  %arrayidx32.1.i = getelementptr %struct.zr36060, ptr %ptr, i32 0, i32 11, i32 1
  %123 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx32.1.i, align 1
  %shl.1.i = shl i8 %124, 4
  %arrayidx34.1.i = getelementptr %struct.zr36060, ptr %ptr, i32 0, i32 12, i32 1
  %125 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx34.1.i, align 1
  %or.1.i = or i8 %shl.1.i, %126
  %arrayidx39.1.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 14
  %127 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %or.1.i, ptr %arrayidx39.1.i, align 1
  %arrayidx43.1.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 15
  %128 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %arrayidx43.1.i, align 1
  %arrayidx31.2.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 16
  %129 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %arrayidx31.2.i, align 1
  %arrayidx32.2.i = getelementptr %struct.zr36060, ptr %ptr, i32 0, i32 11, i32 2
  %130 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx32.2.i, align 1
  %shl.2.i = shl i8 %131, 4
  %arrayidx34.2.i = getelementptr %struct.zr36060, ptr %ptr, i32 0, i32 12, i32 2
  %132 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx34.2.i, align 1
  %or.2.i = or i8 %shl.2.i, %133
  %arrayidx39.2.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 17
  %134 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %or.2.i, ptr %arrayidx39.2.i, align 1
  %arrayidx43.2.i = getelementptr inbounds [34 x i8], ptr %sof_data.i, i32 0, i32 18
  %135 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %arrayidx43.2.i, align 1
  %136 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %136)
  %cmp.i.i = icmp sgt i32 %136, 3
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end4.i.while.body.i.i.preheader_crit_edge

do.end4.i.while.body.i.i.preheader_crit_edge:     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.preheader

do.end.i.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 96, i32 noundef 19) #11
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %do.end.i.i, %do.end4.i.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %zr36060_write.exit.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %zr36060_write.exit.i.i.while.body.i.i_crit_edge ], [ 96, %while.body.i.i.preheader ]
  %i.015.i.i = phi i32 [ %inc8.i.i, %zr36060_write.exit.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %inc8.i.i = add nuw nsw i32 %i.015.i.i, 1
  %arrayidx.i.i = getelementptr i8, ptr %sof_data.i, i32 %i.015.i.i
  %137 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.i, align 1
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %cmp.i.i.i = icmp sgt i32 %139, 3
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %while.body.i.i.do.end3.i.i.i_crit_edge

while.body.i.i.do.end3.i.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i

do.end.i.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i = zext i8 %138 to i32
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i.i, i32 noundef %indvars.iv.i) #11
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end.i.i.i, %while.body.i.i.do.end3.i.i.i_crit_edge
  %140 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.i = getelementptr inbounds %struct.videocodec, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %master_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %master_data.i.i.i, align 4
  %writereg.i.i.i = getelementptr inbounds %struct.videocodec_master, ptr %143, i32 0, i32 6
  %144 = ptrtoint ptr %writereg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %writereg.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i.i.i, label %do.end11.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i.i = zext i8 %138 to i32
  %146 = trunc i32 %indvars.iv.i to i16
  tail call void %145(ptr noundef %141, i16 noundef zeroext %146, i32 noundef %conv9.i.i.i) #8
  br label %zr36060_write.exit.i.i

do.end11.i.i.i:                                   ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.i

zr36060_write.exit.i.i:                           ; preds = %do.end11.i.i.i, %if.then4.i.i.i
  %exitcond.not.i.i = icmp eq i32 %inc8.i.i, 19
  br i1 %exitcond.not.i.i, label %zr36060_set_sof.exit, label %zr36060_write.exit.i.i.while.body.i.i_crit_edge

zr36060_write.exit.i.i.while.body.i.i_crit_edge:  ; preds = %zr36060_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

zr36060_set_sof.exit:                             ; preds = %zr36060_write.exit.i.i
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %sof_data.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sos_data.i) #8
  %147 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 1
  %148 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 2
  %149 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 3
  %150 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 4
  %151 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 5
  %152 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 6
  %153 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 7
  %154 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 8
  %155 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 9
  %156 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 10
  %157 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 11
  %158 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 12
  %159 = getelementptr inbounds [16 x i8], ptr %sos_data.i, i32 0, i32 13
  %160 = getelementptr inbounds i8, ptr %sos_data.i, i32 14
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 -1, ptr %160, align 1
  %162 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %162)
  %cmp.i381 = icmp sgt i32 %162, 2
  br i1 %cmp.i381, label %do.end.i383, label %zr36060_set_sof.exit.do.end3.i385_crit_edge

zr36060_set_sof.exit.do.end3.i385_crit_edge:      ; preds = %zr36060_set_sof.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i385

do.end.i383:                                      ; preds = %zr36060_set_sof.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i382 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %ptr) #11
  br label %do.end3.i385

do.end3.i385:                                     ; preds = %do.end.i383, %zr36060_set_sof.exit.do.end3.i385_crit_edge
  %163 = ptrtoint ptr %sos_data.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -1, ptr %sos_data.i, align 1
  %164 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -38, ptr %147, align 1
  %165 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %148, align 1
  %166 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 12, ptr %149, align 1
  %167 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 3, ptr %150, align 1
  %168 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %151, align 1
  %169 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %152, align 1
  %170 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %153, align 1
  %171 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 17, ptr %154, align 1
  %172 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %155, align 1
  %173 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 17, ptr %156, align 1
  %174 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %157, align 1
  %175 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 63, ptr %158, align 1
  %176 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %159, align 1
  %177 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %177)
  %cmp.i.i384 = icmp sgt i32 %177, 3
  br i1 %cmp.i.i384, label %do.end.i.i387, label %do.end3.i385.while.body.i.i396.preheader_crit_edge

do.end3.i385.while.body.i.i396.preheader_crit_edge: ; preds = %do.end3.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i396.preheader

do.end.i.i387:                                    ; preds = %do.end3.i385
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i386 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 122, i32 noundef 14) #11
  br label %while.body.i.i396.preheader

while.body.i.i396.preheader:                      ; preds = %do.end.i.i387, %do.end3.i385.while.body.i.i396.preheader_crit_edge
  br label %while.body.i.i396

while.body.i.i396:                                ; preds = %zr36060_write.exit.i.i409.while.body.i.i396_crit_edge, %while.body.i.i396.preheader
  %indvars.iv.i390 = phi i32 [ %indvars.iv.next.i392, %zr36060_write.exit.i.i409.while.body.i.i396_crit_edge ], [ 122, %while.body.i.i396.preheader ]
  %i.015.i.i391 = phi i32 [ %inc8.i.i393, %zr36060_write.exit.i.i409.while.body.i.i396_crit_edge ], [ 0, %while.body.i.i396.preheader ]
  %indvars.iv.next.i392 = add nuw nsw i32 %indvars.iv.i390, 1
  %inc8.i.i393 = add nuw nsw i32 %i.015.i.i391, 1
  %arrayidx.i.i394 = getelementptr i8, ptr %sos_data.i, i32 %i.015.i.i391
  %178 = ptrtoint ptr %arrayidx.i.i394 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx.i.i394, align 1
  %180 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %180)
  %cmp.i.i.i395 = icmp sgt i32 %180, 3
  br i1 %cmp.i.i.i395, label %do.end.i.i.i399, label %while.body.i.i396.do.end3.i.i.i403_crit_edge

while.body.i.i396.do.end3.i.i.i403_crit_edge:     ; preds = %while.body.i.i396
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i403

do.end.i.i.i399:                                  ; preds = %while.body.i.i396
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i397 = zext i8 %179 to i32
  %call.i.i.i398 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i.i397, i32 noundef %indvars.iv.i390) #11
  br label %do.end3.i.i.i403

do.end3.i.i.i403:                                 ; preds = %do.end.i.i.i399, %while.body.i.i396.do.end3.i.i.i403_crit_edge
  %181 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.i400 = getelementptr inbounds %struct.videocodec, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %master_data.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %master_data.i.i.i400, align 4
  %writereg.i.i.i401 = getelementptr inbounds %struct.videocodec_master, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %writereg.i.i.i401 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %writereg.i.i.i401, align 4
  %tobool.not.i.i.i402 = icmp eq ptr %186, null
  br i1 %tobool.not.i.i.i402, label %do.end11.i.i.i407, label %if.then4.i.i.i405

if.then4.i.i.i405:                                ; preds = %do.end3.i.i.i403
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i.i404 = zext i8 %179 to i32
  %187 = trunc i32 %indvars.iv.i390 to i16
  tail call void %186(ptr noundef %182, i16 noundef zeroext %187, i32 noundef %conv9.i.i.i404) #8
  br label %zr36060_write.exit.i.i409

do.end11.i.i.i407:                                ; preds = %do.end3.i.i.i403
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.i406 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.i409

zr36060_write.exit.i.i409:                        ; preds = %do.end11.i.i.i407, %if.then4.i.i.i405
  %exitcond.not.i.i408 = icmp eq i32 %inc8.i.i393, 14
  br i1 %exitcond.not.i.i408, label %zr36060_set_sos.exit, label %zr36060_write.exit.i.i409.while.body.i.i396_crit_edge

zr36060_write.exit.i.i409.while.body.i.i396_crit_edge: ; preds = %zr36060_write.exit.i.i409
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i396

zr36060_set_sos.exit:                             ; preds = %zr36060_write.exit.i.i409
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sos_data.i) #8
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %188)
  %cmp.i410 = icmp sgt i32 %188, 2
  br i1 %cmp.i410, label %do.end3.i413, label %do.end3.thread.i

do.end3.thread.i:                                 ; preds = %zr36060_set_sos.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dri18.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 14
  %189 = ptrtoint ptr %dri18.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %dri18.i, align 4
  br label %do.end3.i.i.i424

do.end3.i413:                                     ; preds = %zr36060_set_sos.exit
  %call.i411 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %ptr) #11
  %.pr.i = load i32, ptr @debug, align 4
  %dri.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 14
  %191 = ptrtoint ptr %dri.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %dri.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %cmp.i.i412 = icmp sgt i32 %.pr.i, 3
  br i1 %cmp.i.i412, label %do.end4.i.i418, label %do.end3.i413.do.end3.i.i.i424_crit_edge

do.end3.i413.do.end3.i.i.i424_crit_edge:          ; preds = %do.end3.i413
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i424

do.end4.i.i418:                                   ; preds = %do.end3.i413
  %call.i.i414 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 192, i32 noundef 6) #11
  %.pr909 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr909)
  %cmp.i.i.i417 = icmp sgt i32 %.pr909, 3
  br i1 %cmp.i.i.i417, label %do.end.i.i.i420, label %do.end4.i.i418.do.end3.i.i.i424_crit_edge

do.end4.i.i418.do.end3.i.i.i424_crit_edge:        ; preds = %do.end4.i.i418
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i424

do.end.i.i.i420:                                  ; preds = %do.end4.i.i418
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 255, i32 noundef 192) #11
  br label %do.end3.i.i.i424

do.end3.i.i.i424:                                 ; preds = %do.end.i.i.i420, %do.end4.i.i418.do.end3.i.i.i424_crit_edge, %do.end3.i413.do.end3.i.i.i424_crit_edge, %do.end3.thread.i
  %193 = phi i16 [ %192, %do.end.i.i.i420 ], [ %192, %do.end4.i.i418.do.end3.i.i.i424_crit_edge ], [ %192, %do.end3.i413.do.end3.i.i.i424_crit_edge ], [ %190, %do.end3.thread.i ]
  %conv721.i913.in = lshr i16 %193, 8
  %conv721.i913 = zext i16 %conv721.i913.in to i32
  %194 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.i421 = getelementptr inbounds %struct.videocodec, ptr %195, i32 0, i32 5
  %196 = ptrtoint ptr %master_data.i.i.i421 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %master_data.i.i.i421, align 4
  %writereg.i.i.i422 = getelementptr inbounds %struct.videocodec_master, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %writereg.i.i.i422 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %writereg.i.i.i422, align 4
  %tobool.not.i.i.i423 = icmp eq ptr %199, null
  br i1 %tobool.not.i.i.i423, label %do.end11.i.i.i427, label %if.then4.i.i.i425

if.then4.i.i.i425:                                ; preds = %do.end3.i.i.i424
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %199(ptr noundef %195, i16 noundef zeroext 192, i32 noundef 255) #8
  br label %zr36060_write.exit.i.i428

do.end11.i.i.i427:                                ; preds = %do.end3.i.i.i424
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.i426 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.i428

zr36060_write.exit.i.i428:                        ; preds = %do.end11.i.i.i427, %if.then4.i.i.i425
  %200 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %200)
  %cmp.i.i.1.i = icmp sgt i32 %200, 3
  br i1 %cmp.i.i.1.i, label %do.end.i.i.1.i, label %zr36060_write.exit.i.i428.do.end3.i.i.1.i_crit_edge

zr36060_write.exit.i.i428.do.end3.i.i.1.i_crit_edge: ; preds = %zr36060_write.exit.i.i428
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.1.i

do.end.i.i.1.i:                                   ; preds = %zr36060_write.exit.i.i428
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 221, i32 noundef 193) #11
  br label %do.end3.i.i.1.i

do.end3.i.i.1.i:                                  ; preds = %do.end.i.i.1.i, %zr36060_write.exit.i.i428.do.end3.i.i.1.i_crit_edge
  %201 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.1.i = getelementptr inbounds %struct.videocodec, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %master_data.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %master_data.i.i.1.i, align 4
  %writereg.i.i.1.i = getelementptr inbounds %struct.videocodec_master, ptr %204, i32 0, i32 6
  %205 = ptrtoint ptr %writereg.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %writereg.i.i.1.i, align 4
  %tobool.not.i.i.1.i = icmp eq ptr %206, null
  br i1 %tobool.not.i.i.1.i, label %do.end11.i.i.1.i, label %if.then4.i.i.1.i

if.then4.i.i.1.i:                                 ; preds = %do.end3.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %206(ptr noundef %202, i16 noundef zeroext 193, i32 noundef 221) #8
  br label %zr36060_write.exit.i.1.i

do.end11.i.i.1.i:                                 ; preds = %do.end3.i.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.1.i

zr36060_write.exit.i.1.i:                         ; preds = %do.end11.i.i.1.i, %if.then4.i.i.1.i
  %207 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %207)
  %cmp.i.i.2.i = icmp sgt i32 %207, 3
  br i1 %cmp.i.i.2.i, label %do.end.i.i.2.i, label %zr36060_write.exit.i.1.i.do.end3.i.i.2.i_crit_edge

zr36060_write.exit.i.1.i.do.end3.i.i.2.i_crit_edge: ; preds = %zr36060_write.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.2.i

do.end.i.i.2.i:                                   ; preds = %zr36060_write.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 194) #11
  br label %do.end3.i.i.2.i

do.end3.i.i.2.i:                                  ; preds = %do.end.i.i.2.i, %zr36060_write.exit.i.1.i.do.end3.i.i.2.i_crit_edge
  %208 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.2.i = getelementptr inbounds %struct.videocodec, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %master_data.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %master_data.i.i.2.i, align 4
  %writereg.i.i.2.i = getelementptr inbounds %struct.videocodec_master, ptr %211, i32 0, i32 6
  %212 = ptrtoint ptr %writereg.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %writereg.i.i.2.i, align 4
  %tobool.not.i.i.2.i = icmp eq ptr %213, null
  br i1 %tobool.not.i.i.2.i, label %do.end11.i.i.2.i, label %if.then4.i.i.2.i

if.then4.i.i.2.i:                                 ; preds = %do.end3.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %213(ptr noundef %209, i16 noundef zeroext 194, i32 noundef 0) #8
  br label %zr36060_write.exit.i.2.i

do.end11.i.i.2.i:                                 ; preds = %do.end3.i.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.2.i

zr36060_write.exit.i.2.i:                         ; preds = %do.end11.i.i.2.i, %if.then4.i.i.2.i
  %214 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %214)
  %cmp.i.i.3.i = icmp sgt i32 %214, 3
  br i1 %cmp.i.i.3.i, label %do.end.i.i.3.i, label %zr36060_write.exit.i.2.i.do.end3.i.i.3.i_crit_edge

zr36060_write.exit.i.2.i.do.end3.i.i.3.i_crit_edge: ; preds = %zr36060_write.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.3.i

do.end.i.i.3.i:                                   ; preds = %zr36060_write.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, i32 noundef 195) #11
  br label %do.end3.i.i.3.i

do.end3.i.i.3.i:                                  ; preds = %do.end.i.i.3.i, %zr36060_write.exit.i.2.i.do.end3.i.i.3.i_crit_edge
  %215 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.3.i = getelementptr inbounds %struct.videocodec, ptr %216, i32 0, i32 5
  %217 = ptrtoint ptr %master_data.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %master_data.i.i.3.i, align 4
  %writereg.i.i.3.i = getelementptr inbounds %struct.videocodec_master, ptr %218, i32 0, i32 6
  %219 = ptrtoint ptr %writereg.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %writereg.i.i.3.i, align 4
  %tobool.not.i.i.3.i = icmp eq ptr %220, null
  br i1 %tobool.not.i.i.3.i, label %do.end11.i.i.3.i, label %if.then4.i.i.3.i

if.then4.i.i.3.i:                                 ; preds = %do.end3.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %220(ptr noundef %216, i16 noundef zeroext 195, i32 noundef 4) #8
  br label %zr36060_write.exit.i.3.i

do.end11.i.i.3.i:                                 ; preds = %do.end3.i.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.3.i

zr36060_write.exit.i.3.i:                         ; preds = %do.end11.i.i.3.i, %if.then4.i.i.3.i
  %221 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %221)
  %cmp.i.i.4.i = icmp sgt i32 %221, 3
  br i1 %cmp.i.i.4.i, label %do.end.i.i.4.i, label %zr36060_write.exit.i.3.i.do.end3.i.i.4.i_crit_edge

zr36060_write.exit.i.3.i.do.end3.i.i.4.i_crit_edge: ; preds = %zr36060_write.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.4.i

do.end.i.i.4.i:                                   ; preds = %zr36060_write.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv721.i913, i32 noundef 196) #11
  br label %do.end3.i.i.4.i

do.end3.i.i.4.i:                                  ; preds = %do.end.i.i.4.i, %zr36060_write.exit.i.3.i.do.end3.i.i.4.i_crit_edge
  %222 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.4.i = getelementptr inbounds %struct.videocodec, ptr %223, i32 0, i32 5
  %224 = ptrtoint ptr %master_data.i.i.4.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %master_data.i.i.4.i, align 4
  %writereg.i.i.4.i = getelementptr inbounds %struct.videocodec_master, ptr %225, i32 0, i32 6
  %226 = ptrtoint ptr %writereg.i.i.4.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %writereg.i.i.4.i, align 4
  %tobool.not.i.i.4.i = icmp eq ptr %227, null
  br i1 %tobool.not.i.i.4.i, label %do.end11.i.i.4.i, label %if.then4.i.i.4.i

if.then4.i.i.4.i:                                 ; preds = %do.end3.i.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %227(ptr noundef %223, i16 noundef zeroext 196, i32 noundef %conv721.i913) #8
  br label %zr36060_write.exit.i.4.i

do.end11.i.i.4.i:                                 ; preds = %do.end3.i.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i.4.i

zr36060_write.exit.i.4.i:                         ; preds = %do.end11.i.i.4.i, %if.then4.i.i.4.i
  %228 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %228)
  %cmp.i.i.5.i = icmp sgt i32 %228, 3
  br i1 %cmp.i.i.5.i, label %do.end.i.i.5.i, label %zr36060_write.exit.i.4.i.do.end3.i.i.5.i_crit_edge

zr36060_write.exit.i.4.i.do.end3.i.i.5.i_crit_edge: ; preds = %zr36060_write.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.5.i

do.end.i.i.5.i:                                   ; preds = %zr36060_write.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %229 = and i16 %193, 255
  %conv.i.i.5.i = zext i16 %229 to i32
  %call.i.i.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i.5.i, i32 noundef 197) #11
  br label %do.end3.i.i.5.i

do.end3.i.i.5.i:                                  ; preds = %do.end.i.i.5.i, %zr36060_write.exit.i.4.i.do.end3.i.i.5.i_crit_edge
  %230 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %codec.i, align 4
  %master_data.i.i.5.i = getelementptr inbounds %struct.videocodec, ptr %231, i32 0, i32 5
  %232 = ptrtoint ptr %master_data.i.i.5.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %master_data.i.i.5.i, align 4
  %writereg.i.i.5.i = getelementptr inbounds %struct.videocodec_master, ptr %233, i32 0, i32 6
  %234 = ptrtoint ptr %writereg.i.i.5.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %writereg.i.i.5.i, align 4
  %tobool.not.i.i.5.i = icmp eq ptr %235, null
  br i1 %tobool.not.i.i.5.i, label %do.end11.i.i.5.i, label %if.then4.i.i.5.i

if.then4.i.i.5.i:                                 ; preds = %do.end3.i.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv11.mask.i = and i16 %193, 255
  %conv9.i.i.5.i = zext i16 %conv11.mask.i to i32
  tail call void %235(ptr noundef %231, i16 noundef zeroext 197, i32 noundef %conv9.i.i.5.i) #8
  br label %zr36060_set_dri.exit

do.end11.i.i.5.i:                                 ; preds = %do.end3.i.i.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_set_dri.exit

zr36060_set_dri.exit:                             ; preds = %do.end11.i.i.5.i, %if.then4.i.i.5.i
  %236 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %236)
  %cmp.i429 = icmp sgt i32 %236, 3
  br i1 %cmp.i429, label %do.end.i431, label %zr36060_set_dri.exit.while.body.i.preheader_crit_edge

zr36060_set_dri.exit.while.body.i.preheader_crit_edge: ; preds = %zr36060_set_dri.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

do.end.i431:                                      ; preds = %zr36060_set_dri.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i430 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 204, i32 noundef 134) #11
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %do.end.i431, %zr36060_set_dri.exit.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %zr36060_write.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %indvars.iv925 = phi i32 [ %indvars.iv.next926, %zr36060_write.exit.i.while.body.i_crit_edge ], [ 204, %while.body.i.preheader ]
  %i.015.i = phi i32 [ %inc8.i, %zr36060_write.exit.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %indvars.iv.next926 = add nuw nsw i32 %indvars.iv925, 1
  %inc8.i = add nuw nsw i32 %i.015.i, 1
  %arrayidx.i = getelementptr i8, ptr @zr36060_dqt, i32 %i.015.i
  %237 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx.i, align 1
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %239)
  %cmp.i.i433 = icmp sgt i32 %239, 3
  br i1 %cmp.i.i433, label %do.end.i.i435, label %while.body.i.do.end3.i.i_crit_edge

while.body.i.do.end3.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i

do.end.i.i435:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %238 to i32
  %call.i.i434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i, i32 noundef %indvars.iv925) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i435, %while.body.i.do.end3.i.i_crit_edge
  %240 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %codec.i, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %241, i32 0, i32 5
  %242 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %master_data.i.i, align 4
  %writereg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %243, i32 0, i32 6
  %244 = ptrtoint ptr %writereg.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %writereg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %245, null
  br i1 %tobool.not.i.i, label %do.end11.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i = zext i8 %238 to i32
  %246 = trunc i32 %indvars.iv925 to i16
  tail call void %245(ptr noundef %241, i16 noundef zeroext %246, i32 noundef %conv9.i.i) #8
  br label %zr36060_write.exit.i

do.end11.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i

zr36060_write.exit.i:                             ; preds = %do.end11.i.i, %if.then4.i.i
  %exitcond.not.i = icmp eq i32 %inc8.i, 134
  br i1 %exitcond.not.i, label %zr36060_pushit.exit, label %zr36060_write.exit.i.while.body.i_crit_edge

zr36060_write.exit.i.while.body.i_crit_edge:      ; preds = %zr36060_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

zr36060_pushit.exit:                              ; preds = %zr36060_write.exit.i
  %247 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %247)
  %cmp.i436 = icmp sgt i32 %247, 3
  br i1 %cmp.i436, label %do.end.i439, label %zr36060_pushit.exit.while.body.i448.preheader_crit_edge

zr36060_pushit.exit.while.body.i448.preheader_crit_edge: ; preds = %zr36060_pushit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i448.preheader

do.end.i439:                                      ; preds = %zr36060_pushit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i438 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 468, i32 noundef 420) #11
  br label %while.body.i448.preheader

while.body.i448.preheader:                        ; preds = %do.end.i439, %zr36060_pushit.exit.while.body.i448.preheader_crit_edge
  br label %while.body.i448

while.body.i448:                                  ; preds = %zr36060_write.exit.i462.while.body.i448_crit_edge, %while.body.i448.preheader
  %indvars.iv927 = phi i32 [ %indvars.iv.next928, %zr36060_write.exit.i462.while.body.i448_crit_edge ], [ 468, %while.body.i448.preheader ]
  %i.015.i443 = phi i32 [ %inc8.i445, %zr36060_write.exit.i462.while.body.i448_crit_edge ], [ 0, %while.body.i448.preheader ]
  %indvars.iv.next928 = add nuw nsw i32 %indvars.iv927, 1
  %inc8.i445 = add nuw nsw i32 %i.015.i443, 1
  %arrayidx.i446 = getelementptr i8, ptr @zr36060_dht, i32 %i.015.i443
  %248 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx.i446, align 1
  %250 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp.i.i447 = icmp sgt i32 %250, 3
  br i1 %cmp.i.i447, label %do.end.i.i452, label %while.body.i448.do.end3.i.i456_crit_edge

while.body.i448.do.end3.i.i456_crit_edge:         ; preds = %while.body.i448
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i456

do.end.i.i452:                                    ; preds = %while.body.i448
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i449 = zext i8 %249 to i32
  %call.i.i451 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i449, i32 noundef %indvars.iv927) #11
  br label %do.end3.i.i456

do.end3.i.i456:                                   ; preds = %do.end.i.i452, %while.body.i448.do.end3.i.i456_crit_edge
  %251 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %codec.i, align 4
  %master_data.i.i453 = getelementptr inbounds %struct.videocodec, ptr %252, i32 0, i32 5
  %253 = ptrtoint ptr %master_data.i.i453 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %master_data.i.i453, align 4
  %writereg.i.i454 = getelementptr inbounds %struct.videocodec_master, ptr %254, i32 0, i32 6
  %255 = ptrtoint ptr %writereg.i.i454 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %writereg.i.i454, align 4
  %tobool.not.i.i455 = icmp eq ptr %256, null
  br i1 %tobool.not.i.i455, label %do.end11.i.i460, label %if.then4.i.i458

if.then4.i.i458:                                  ; preds = %do.end3.i.i456
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i457 = zext i8 %249 to i32
  %257 = trunc i32 %indvars.iv927 to i16
  tail call void %256(ptr noundef %252, i16 noundef zeroext %257, i32 noundef %conv9.i.i457) #8
  br label %zr36060_write.exit.i462

do.end11.i.i460:                                  ; preds = %do.end3.i.i456
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i462

zr36060_write.exit.i462:                          ; preds = %do.end11.i.i460, %if.then4.i.i458
  %exitcond.not.i461 = icmp eq i32 %inc8.i445, 420
  br i1 %exitcond.not.i461, label %zr36060_pushit.exit463, label %zr36060_write.exit.i462.while.body.i448_crit_edge

zr36060_write.exit.i462.while.body.i448_crit_edge: ; preds = %zr36060_write.exit.i462
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i448

zr36060_pushit.exit463:                           ; preds = %zr36060_write.exit.i462
  %258 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %258)
  %cmp.i464 = icmp sgt i32 %258, 3
  br i1 %cmp.i464, label %do.end.i466, label %zr36060_pushit.exit463.do.end3.i471_crit_edge

zr36060_pushit.exit463.do.end3.i471_crit_edge:    ; preds = %zr36060_pushit.exit463
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i471

do.end.i466:                                      ; preds = %zr36060_pushit.exit463
  call void @__sanitizer_cov_trace_pc() #10
  %call.i465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 255, i32 noundef 896) #11
  br label %do.end3.i471

do.end3.i471:                                     ; preds = %do.end.i466, %zr36060_pushit.exit463.do.end3.i471_crit_edge
  %259 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %codec.i, align 4
  %master_data.i468 = getelementptr inbounds %struct.videocodec, ptr %260, i32 0, i32 5
  %261 = ptrtoint ptr %master_data.i468 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %master_data.i468, align 4
  %writereg.i469 = getelementptr inbounds %struct.videocodec_master, ptr %262, i32 0, i32 6
  %263 = ptrtoint ptr %writereg.i469 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %writereg.i469, align 4
  %tobool.not.i470 = icmp eq ptr %264, null
  br i1 %tobool.not.i470, label %do.end11.i474, label %if.then4.i472

if.then4.i472:                                    ; preds = %do.end3.i471
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %264(ptr noundef %260, i16 noundef zeroext 896, i32 noundef 255) #8
  br label %zr36060_write.exit475

do.end11.i474:                                    ; preds = %do.end3.i471
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i473 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit475

zr36060_write.exit475:                            ; preds = %do.end11.i474, %if.then4.i472
  %app = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 15
  %265 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %app, align 4
  %267 = trunc i32 %266 to i8
  %conv21 = add i8 %267, -32
  %268 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %268)
  %cmp.i476 = icmp sgt i32 %268, 3
  br i1 %cmp.i476, label %do.end.i479, label %zr36060_write.exit475.do.end3.i484_crit_edge

zr36060_write.exit475.do.end3.i484_crit_edge:     ; preds = %zr36060_write.exit475
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i484

do.end.i479:                                      ; preds = %zr36060_write.exit475
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i477 = zext i8 %conv21 to i32
  %call.i478 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i477, i32 noundef 897) #11
  br label %do.end3.i484

do.end3.i484:                                     ; preds = %do.end.i479, %zr36060_write.exit475.do.end3.i484_crit_edge
  %269 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %codec.i, align 4
  %master_data.i481 = getelementptr inbounds %struct.videocodec, ptr %270, i32 0, i32 5
  %271 = ptrtoint ptr %master_data.i481 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %master_data.i481, align 4
  %writereg.i482 = getelementptr inbounds %struct.videocodec_master, ptr %272, i32 0, i32 6
  %273 = ptrtoint ptr %writereg.i482 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %writereg.i482, align 4
  %tobool.not.i483 = icmp eq ptr %274, null
  br i1 %tobool.not.i483, label %do.end11.i488, label %if.then4.i486

if.then4.i486:                                    ; preds = %do.end3.i484
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i485 = zext i8 %conv21 to i32
  tail call void %274(ptr noundef %270, i16 noundef zeroext 897, i32 noundef %conv9.i485) #8
  br label %zr36060_write.exit489

do.end11.i488:                                    ; preds = %do.end3.i484
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit489

zr36060_write.exit489:                            ; preds = %do.end11.i488, %if.then4.i486
  %275 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %275)
  %cmp.i490 = icmp sgt i32 %275, 3
  br i1 %cmp.i490, label %do.end.i492, label %zr36060_write.exit489.do.end3.i497_crit_edge

zr36060_write.exit489.do.end3.i497_crit_edge:     ; preds = %zr36060_write.exit489
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i497

do.end.i492:                                      ; preds = %zr36060_write.exit489
  call void @__sanitizer_cov_trace_pc() #10
  %call.i491 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 898) #11
  br label %do.end3.i497

do.end3.i497:                                     ; preds = %do.end.i492, %zr36060_write.exit489.do.end3.i497_crit_edge
  %276 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %codec.i, align 4
  %master_data.i494 = getelementptr inbounds %struct.videocodec, ptr %277, i32 0, i32 5
  %278 = ptrtoint ptr %master_data.i494 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %master_data.i494, align 4
  %writereg.i495 = getelementptr inbounds %struct.videocodec_master, ptr %279, i32 0, i32 6
  %280 = ptrtoint ptr %writereg.i495 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %writereg.i495, align 4
  %tobool.not.i496 = icmp eq ptr %281, null
  br i1 %tobool.not.i496, label %do.end11.i500, label %if.then4.i498

if.then4.i498:                                    ; preds = %do.end3.i497
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %281(ptr noundef %277, i16 noundef zeroext 898, i32 noundef 0) #8
  br label %zr36060_write.exit501

do.end11.i500:                                    ; preds = %do.end3.i497
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i499 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit501

zr36060_write.exit501:                            ; preds = %do.end11.i500, %if.then4.i498
  %len = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 15, i32 1
  %282 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %len, align 4
  %284 = trunc i32 %283 to i8
  %conv24 = add i8 %284, 2
  %285 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %285)
  %cmp.i502 = icmp sgt i32 %285, 3
  br i1 %cmp.i502, label %do.end.i505, label %zr36060_write.exit501.do.end3.i510_crit_edge

zr36060_write.exit501.do.end3.i510_crit_edge:     ; preds = %zr36060_write.exit501
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i510

do.end.i505:                                      ; preds = %zr36060_write.exit501
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i503 = zext i8 %conv24 to i32
  %call.i504 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i503, i32 noundef 899) #11
  br label %do.end3.i510

do.end3.i510:                                     ; preds = %do.end.i505, %zr36060_write.exit501.do.end3.i510_crit_edge
  %286 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %codec.i, align 4
  %master_data.i507 = getelementptr inbounds %struct.videocodec, ptr %287, i32 0, i32 5
  %288 = ptrtoint ptr %master_data.i507 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %master_data.i507, align 4
  %writereg.i508 = getelementptr inbounds %struct.videocodec_master, ptr %289, i32 0, i32 6
  %290 = ptrtoint ptr %writereg.i508 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %writereg.i508, align 4
  %tobool.not.i509 = icmp eq ptr %291, null
  br i1 %tobool.not.i509, label %do.end11.i514, label %if.then4.i512

if.then4.i512:                                    ; preds = %do.end3.i510
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i511 = zext i8 %conv24 to i32
  tail call void %291(ptr noundef %287, i16 noundef zeroext 899, i32 noundef %conv9.i511) #8
  br label %zr36060_write.exit515

do.end11.i514:                                    ; preds = %do.end3.i510
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i513 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit515

zr36060_write.exit515:                            ; preds = %do.end11.i514, %if.then4.i512
  %data = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 15, i32 2
  %292 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %292)
  %cmp.i516 = icmp sgt i32 %292, 3
  br i1 %cmp.i516, label %do.end.i519, label %zr36060_write.exit515.while.body.i528.preheader_crit_edge

zr36060_write.exit515.while.body.i528.preheader_crit_edge: ; preds = %zr36060_write.exit515
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i528.preheader

do.end.i519:                                      ; preds = %zr36060_write.exit515
  call void @__sanitizer_cov_trace_pc() #10
  %call.i518 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 900, i32 noundef 60) #11
  br label %while.body.i528.preheader

while.body.i528.preheader:                        ; preds = %do.end.i519, %zr36060_write.exit515.while.body.i528.preheader_crit_edge
  br label %while.body.i528

while.body.i528:                                  ; preds = %zr36060_write.exit.i542.while.body.i528_crit_edge, %while.body.i528.preheader
  %indvars.iv929 = phi i32 [ %indvars.iv.next930, %zr36060_write.exit.i542.while.body.i528_crit_edge ], [ 900, %while.body.i528.preheader ]
  %i.015.i523 = phi i32 [ %inc8.i525, %zr36060_write.exit.i542.while.body.i528_crit_edge ], [ 0, %while.body.i528.preheader ]
  %indvars.iv.next930 = add nuw nsw i32 %indvars.iv929, 1
  %inc8.i525 = add nuw nsw i32 %i.015.i523, 1
  %arrayidx.i526 = getelementptr i8, ptr %data, i32 %i.015.i523
  %293 = ptrtoint ptr %arrayidx.i526 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx.i526, align 1
  %295 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %295)
  %cmp.i.i527 = icmp sgt i32 %295, 3
  br i1 %cmp.i.i527, label %do.end.i.i532, label %while.body.i528.do.end3.i.i536_crit_edge

while.body.i528.do.end3.i.i536_crit_edge:         ; preds = %while.body.i528
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i536

do.end.i.i532:                                    ; preds = %while.body.i528
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i529 = zext i8 %294 to i32
  %call.i.i531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i529, i32 noundef %indvars.iv929) #11
  br label %do.end3.i.i536

do.end3.i.i536:                                   ; preds = %do.end.i.i532, %while.body.i528.do.end3.i.i536_crit_edge
  %296 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %codec.i, align 4
  %master_data.i.i533 = getelementptr inbounds %struct.videocodec, ptr %297, i32 0, i32 5
  %298 = ptrtoint ptr %master_data.i.i533 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %master_data.i.i533, align 4
  %writereg.i.i534 = getelementptr inbounds %struct.videocodec_master, ptr %299, i32 0, i32 6
  %300 = ptrtoint ptr %writereg.i.i534 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %writereg.i.i534, align 4
  %tobool.not.i.i535 = icmp eq ptr %301, null
  br i1 %tobool.not.i.i535, label %do.end11.i.i540, label %if.then4.i.i538

if.then4.i.i538:                                  ; preds = %do.end3.i.i536
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i537 = zext i8 %294 to i32
  %302 = trunc i32 %indvars.iv929 to i16
  tail call void %301(ptr noundef %297, i16 noundef zeroext %302, i32 noundef %conv9.i.i537) #8
  br label %zr36060_write.exit.i542

do.end11.i.i540:                                  ; preds = %do.end3.i.i536
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i539 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i542

zr36060_write.exit.i542:                          ; preds = %do.end11.i.i540, %if.then4.i.i538
  %exitcond.not.i541 = icmp eq i32 %inc8.i525, 60
  br i1 %exitcond.not.i541, label %zr36060_pushit.exit543, label %zr36060_write.exit.i542.while.body.i528_crit_edge

zr36060_write.exit.i542.while.body.i528_crit_edge: ; preds = %zr36060_write.exit.i542
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i528

zr36060_pushit.exit543:                           ; preds = %zr36060_write.exit.i542
  %303 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %303)
  %cmp.i544 = icmp sgt i32 %303, 3
  br i1 %cmp.i544, label %do.end.i546, label %zr36060_pushit.exit543.do.end3.i551_crit_edge

zr36060_pushit.exit543.do.end3.i551_crit_edge:    ; preds = %zr36060_pushit.exit543
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i551

do.end.i546:                                      ; preds = %zr36060_pushit.exit543
  call void @__sanitizer_cov_trace_pc() #10
  %call.i545 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 255, i32 noundef 960) #11
  br label %do.end3.i551

do.end3.i551:                                     ; preds = %do.end.i546, %zr36060_pushit.exit543.do.end3.i551_crit_edge
  %304 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %codec.i, align 4
  %master_data.i548 = getelementptr inbounds %struct.videocodec, ptr %305, i32 0, i32 5
  %306 = ptrtoint ptr %master_data.i548 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %master_data.i548, align 4
  %writereg.i549 = getelementptr inbounds %struct.videocodec_master, ptr %307, i32 0, i32 6
  %308 = ptrtoint ptr %writereg.i549 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %writereg.i549, align 4
  %tobool.not.i550 = icmp eq ptr %309, null
  br i1 %tobool.not.i550, label %do.end11.i554, label %if.then4.i552

if.then4.i552:                                    ; preds = %do.end3.i551
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %309(ptr noundef %305, i16 noundef zeroext 960, i32 noundef 255) #8
  br label %zr36060_write.exit555

do.end11.i554:                                    ; preds = %do.end3.i551
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i553 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit555

zr36060_write.exit555:                            ; preds = %do.end11.i554, %if.then4.i552
  %310 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %310)
  %cmp.i556 = icmp sgt i32 %310, 3
  br i1 %cmp.i556, label %do.end.i558, label %zr36060_write.exit555.do.end3.i563_crit_edge

zr36060_write.exit555.do.end3.i563_crit_edge:     ; preds = %zr36060_write.exit555
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i563

do.end.i558:                                      ; preds = %zr36060_write.exit555
  call void @__sanitizer_cov_trace_pc() #10
  %call.i557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 254, i32 noundef 961) #11
  br label %do.end3.i563

do.end3.i563:                                     ; preds = %do.end.i558, %zr36060_write.exit555.do.end3.i563_crit_edge
  %311 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %codec.i, align 4
  %master_data.i560 = getelementptr inbounds %struct.videocodec, ptr %312, i32 0, i32 5
  %313 = ptrtoint ptr %master_data.i560 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %master_data.i560, align 4
  %writereg.i561 = getelementptr inbounds %struct.videocodec_master, ptr %314, i32 0, i32 6
  %315 = ptrtoint ptr %writereg.i561 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %writereg.i561, align 4
  %tobool.not.i562 = icmp eq ptr %316, null
  br i1 %tobool.not.i562, label %do.end11.i566, label %if.then4.i564

if.then4.i564:                                    ; preds = %do.end3.i563
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %316(ptr noundef %312, i16 noundef zeroext 961, i32 noundef 254) #8
  br label %zr36060_write.exit567

do.end11.i566:                                    ; preds = %do.end3.i563
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i565 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit567

zr36060_write.exit567:                            ; preds = %do.end11.i566, %if.then4.i564
  %317 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %317)
  %cmp.i568 = icmp sgt i32 %317, 3
  br i1 %cmp.i568, label %do.end.i570, label %zr36060_write.exit567.do.end3.i575_crit_edge

zr36060_write.exit567.do.end3.i575_crit_edge:     ; preds = %zr36060_write.exit567
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i575

do.end.i570:                                      ; preds = %zr36060_write.exit567
  call void @__sanitizer_cov_trace_pc() #10
  %call.i569 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 962) #11
  br label %do.end3.i575

do.end3.i575:                                     ; preds = %do.end.i570, %zr36060_write.exit567.do.end3.i575_crit_edge
  %318 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %codec.i, align 4
  %master_data.i572 = getelementptr inbounds %struct.videocodec, ptr %319, i32 0, i32 5
  %320 = ptrtoint ptr %master_data.i572 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %master_data.i572, align 4
  %writereg.i573 = getelementptr inbounds %struct.videocodec_master, ptr %321, i32 0, i32 6
  %322 = ptrtoint ptr %writereg.i573 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %writereg.i573, align 4
  %tobool.not.i574 = icmp eq ptr %323, null
  br i1 %tobool.not.i574, label %do.end11.i578, label %if.then4.i576

if.then4.i576:                                    ; preds = %do.end3.i575
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %323(ptr noundef %319, i16 noundef zeroext 962, i32 noundef 0) #8
  br label %zr36060_write.exit579

do.end11.i578:                                    ; preds = %do.end3.i575
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i577 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit579

zr36060_write.exit579:                            ; preds = %do.end11.i578, %if.then4.i576
  %com = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 16
  %324 = ptrtoint ptr %com to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %com, align 4
  %326 = trunc i32 %325 to i8
  %conv32 = add i8 %326, 2
  %327 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %327)
  %cmp.i580 = icmp sgt i32 %327, 3
  br i1 %cmp.i580, label %do.end.i583, label %zr36060_write.exit579.do.end3.i588_crit_edge

zr36060_write.exit579.do.end3.i588_crit_edge:     ; preds = %zr36060_write.exit579
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i588

do.end.i583:                                      ; preds = %zr36060_write.exit579
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i581 = zext i8 %conv32 to i32
  %call.i582 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i581, i32 noundef 963) #11
  br label %do.end3.i588

do.end3.i588:                                     ; preds = %do.end.i583, %zr36060_write.exit579.do.end3.i588_crit_edge
  %328 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %codec.i, align 4
  %master_data.i585 = getelementptr inbounds %struct.videocodec, ptr %329, i32 0, i32 5
  %330 = ptrtoint ptr %master_data.i585 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %master_data.i585, align 4
  %writereg.i586 = getelementptr inbounds %struct.videocodec_master, ptr %331, i32 0, i32 6
  %332 = ptrtoint ptr %writereg.i586 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %writereg.i586, align 4
  %tobool.not.i587 = icmp eq ptr %333, null
  br i1 %tobool.not.i587, label %do.end11.i592, label %if.then4.i590

if.then4.i590:                                    ; preds = %do.end3.i588
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i589 = zext i8 %conv32 to i32
  tail call void %333(ptr noundef %329, i16 noundef zeroext 963, i32 noundef %conv9.i589) #8
  br label %zr36060_write.exit593

do.end11.i592:                                    ; preds = %do.end3.i588
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i591 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit593

zr36060_write.exit593:                            ; preds = %do.end11.i592, %if.then4.i590
  %data34 = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 16, i32 1
  %334 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %334)
  %cmp.i594 = icmp sgt i32 %334, 3
  br i1 %cmp.i594, label %do.end.i597, label %zr36060_write.exit593.while.body.i606.preheader_crit_edge

zr36060_write.exit593.while.body.i606.preheader_crit_edge: ; preds = %zr36060_write.exit593
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i606.preheader

do.end.i597:                                      ; preds = %zr36060_write.exit593
  call void @__sanitizer_cov_trace_pc() #10
  %call.i596 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 964, i32 noundef 60) #11
  br label %while.body.i606.preheader

while.body.i606.preheader:                        ; preds = %do.end.i597, %zr36060_write.exit593.while.body.i606.preheader_crit_edge
  br label %while.body.i606

while.body.i606:                                  ; preds = %zr36060_write.exit.i620.while.body.i606_crit_edge, %while.body.i606.preheader
  %indvars.iv931 = phi i32 [ %indvars.iv.next932, %zr36060_write.exit.i620.while.body.i606_crit_edge ], [ 964, %while.body.i606.preheader ]
  %i.015.i601 = phi i32 [ %inc8.i603, %zr36060_write.exit.i620.while.body.i606_crit_edge ], [ 0, %while.body.i606.preheader ]
  %indvars.iv.next932 = add nuw nsw i32 %indvars.iv931, 1
  %inc8.i603 = add nuw nsw i32 %i.015.i601, 1
  %arrayidx.i604 = getelementptr i8, ptr %data34, i32 %i.015.i601
  %335 = ptrtoint ptr %arrayidx.i604 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx.i604, align 1
  %337 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %337)
  %cmp.i.i605 = icmp sgt i32 %337, 3
  br i1 %cmp.i.i605, label %do.end.i.i610, label %while.body.i606.do.end3.i.i614_crit_edge

while.body.i606.do.end3.i.i614_crit_edge:         ; preds = %while.body.i606
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i614

do.end.i.i610:                                    ; preds = %while.body.i606
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i607 = zext i8 %336 to i32
  %call.i.i609 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i607, i32 noundef %indvars.iv931) #11
  br label %do.end3.i.i614

do.end3.i.i614:                                   ; preds = %do.end.i.i610, %while.body.i606.do.end3.i.i614_crit_edge
  %338 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %codec.i, align 4
  %master_data.i.i611 = getelementptr inbounds %struct.videocodec, ptr %339, i32 0, i32 5
  %340 = ptrtoint ptr %master_data.i.i611 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %master_data.i.i611, align 4
  %writereg.i.i612 = getelementptr inbounds %struct.videocodec_master, ptr %341, i32 0, i32 6
  %342 = ptrtoint ptr %writereg.i.i612 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %writereg.i.i612, align 4
  %tobool.not.i.i613 = icmp eq ptr %343, null
  br i1 %tobool.not.i.i613, label %do.end11.i.i618, label %if.then4.i.i616

if.then4.i.i616:                                  ; preds = %do.end3.i.i614
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i615 = zext i8 %336 to i32
  %344 = trunc i32 %indvars.iv931 to i16
  tail call void %343(ptr noundef %339, i16 noundef zeroext %344, i32 noundef %conv9.i.i615) #8
  br label %zr36060_write.exit.i620

do.end11.i.i618:                                  ; preds = %do.end3.i.i614
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i617 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i620

zr36060_write.exit.i620:                          ; preds = %do.end11.i.i618, %if.then4.i.i616
  %exitcond.not.i619 = icmp eq i32 %inc8.i603, 60
  br i1 %exitcond.not.i619, label %zr36060_pushit.exit621, label %zr36060_write.exit.i620.while.body.i606_crit_edge

zr36060_write.exit.i620.while.body.i606_crit_edge: ; preds = %zr36060_write.exit.i620
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i606

zr36060_pushit.exit621:                           ; preds = %zr36060_write.exit.i620
  %real_code_vol = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 9
  %345 = ptrtoint ptr %real_code_vol to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %real_code_vol, align 4
  %sub = add i32 %346, -721
  %shl = shl i32 %sub, 3
  %shr39 = ashr i32 %shl, 16
  %347 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %347)
  %cmp41 = icmp sgt i32 %347, 2
  br i1 %cmp41, label %do.end54, label %do.end54.thread

do.end54.thread:                                  ; preds = %zr36060_pushit.exit621
  call void @__sanitizer_cov_trace_pc() #10
  %348 = lshr i32 %shl, 24
  br label %do.end3.i630

do.end54:                                         ; preds = %zr36060_pushit.exit621
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %ptr, i32 noundef %sub, i32 noundef %346, i32 noundef %shl, i32 noundef %shr39) #11
  %.pr915 = load i32, ptr @debug, align 4
  %349 = lshr i32 %shl, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr915)
  %cmp.i622 = icmp sgt i32 %.pr915, 3
  br i1 %cmp.i622, label %do.end.i625, label %do.end54.do.end3.i630_crit_edge

do.end54.do.end3.i630_crit_edge:                  ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i630

do.end.i625:                                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call.i624 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %349, i32 noundef 9) #11
  br label %do.end3.i630

do.end3.i630:                                     ; preds = %do.end.i625, %do.end54.do.end3.i630_crit_edge, %do.end54.thread
  %conv56918 = phi i32 [ %348, %do.end54.thread ], [ %349, %do.end.i625 ], [ %349, %do.end54.do.end3.i630_crit_edge ]
  %350 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %codec.i, align 4
  %master_data.i627 = getelementptr inbounds %struct.videocodec, ptr %351, i32 0, i32 5
  %352 = ptrtoint ptr %master_data.i627 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %master_data.i627, align 4
  %writereg.i628 = getelementptr inbounds %struct.videocodec_master, ptr %353, i32 0, i32 6
  %354 = ptrtoint ptr %writereg.i628 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %writereg.i628, align 4
  %tobool.not.i629 = icmp eq ptr %355, null
  br i1 %tobool.not.i629, label %do.end11.i634, label %if.then4.i632

if.then4.i632:                                    ; preds = %do.end3.i630
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %355(ptr noundef %351, i16 noundef zeroext 9, i32 noundef %conv56918) #8
  br label %zr36060_write.exit635

do.end11.i634:                                    ; preds = %do.end3.i630
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i633 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit635

zr36060_write.exit635:                            ; preds = %do.end11.i634, %if.then4.i632
  %356 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %356)
  %cmp.i636 = icmp sgt i32 %356, 3
  br i1 %cmp.i636, label %do.end.i639, label %zr36060_write.exit635.do.end3.i644_crit_edge

zr36060_write.exit635.do.end3.i644_crit_edge:     ; preds = %zr36060_write.exit635
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i644

do.end.i639:                                      ; preds = %zr36060_write.exit635
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i637 = and i32 %shr39, 255
  %call.i638 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i637, i32 noundef 10) #11
  br label %do.end3.i644

do.end3.i644:                                     ; preds = %do.end.i639, %zr36060_write.exit635.do.end3.i644_crit_edge
  %357 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %codec.i, align 4
  %master_data.i641 = getelementptr inbounds %struct.videocodec, ptr %358, i32 0, i32 5
  %359 = ptrtoint ptr %master_data.i641 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %master_data.i641, align 4
  %writereg.i642 = getelementptr inbounds %struct.videocodec_master, ptr %360, i32 0, i32 6
  %361 = ptrtoint ptr %writereg.i642 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %writereg.i642, align 4
  %tobool.not.i643 = icmp eq ptr %362, null
  br i1 %tobool.not.i643, label %do.end11.i648, label %if.then4.i646

if.then4.i646:                                    ; preds = %do.end3.i644
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i645 = and i32 %shr39, 255
  tail call void %362(ptr noundef %358, i16 noundef zeroext 10, i32 noundef %conv9.i645) #8
  br label %zr36060_write.exit649

do.end11.i648:                                    ; preds = %do.end3.i644
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i647 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit649

zr36060_write.exit649:                            ; preds = %do.end11.i648, %if.then4.i646
  %363 = lshr i32 %shl, 8
  %364 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %364)
  %cmp.i650 = icmp sgt i32 %364, 3
  br i1 %cmp.i650, label %do.end.i653, label %zr36060_write.exit649.do.end3.i658_crit_edge

zr36060_write.exit649.do.end3.i658_crit_edge:     ; preds = %zr36060_write.exit649
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i658

do.end.i653:                                      ; preds = %zr36060_write.exit649
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i651 = and i32 %363, 255
  %call.i652 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i651, i32 noundef 11) #11
  br label %do.end3.i658

do.end3.i658:                                     ; preds = %do.end.i653, %zr36060_write.exit649.do.end3.i658_crit_edge
  %365 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %codec.i, align 4
  %master_data.i655 = getelementptr inbounds %struct.videocodec, ptr %366, i32 0, i32 5
  %367 = ptrtoint ptr %master_data.i655 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %master_data.i655, align 4
  %writereg.i656 = getelementptr inbounds %struct.videocodec_master, ptr %368, i32 0, i32 6
  %369 = ptrtoint ptr %writereg.i656 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %writereg.i656, align 4
  %tobool.not.i657 = icmp eq ptr %370, null
  br i1 %tobool.not.i657, label %do.end11.i662, label %if.then4.i660

if.then4.i660:                                    ; preds = %do.end3.i658
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i659 = and i32 %363, 255
  tail call void %370(ptr noundef %366, i16 noundef zeroext 11, i32 noundef %conv9.i659) #8
  br label %zr36060_write.exit663

do.end11.i662:                                    ; preds = %do.end3.i658
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i661 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit663

zr36060_write.exit663:                            ; preds = %do.end11.i662, %if.then4.i660
  %371 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %371)
  %cmp.i664 = icmp sgt i32 %371, 3
  br i1 %cmp.i664, label %do.end.i667, label %zr36060_write.exit663.do.end3.i672_crit_edge

zr36060_write.exit663.do.end3.i672_crit_edge:     ; preds = %zr36060_write.exit663
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i672

do.end.i667:                                      ; preds = %zr36060_write.exit663
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i665 = and i32 %shl, 248
  %call.i666 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i665, i32 noundef 12) #11
  br label %do.end3.i672

do.end3.i672:                                     ; preds = %do.end.i667, %zr36060_write.exit663.do.end3.i672_crit_edge
  %372 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %codec.i, align 4
  %master_data.i669 = getelementptr inbounds %struct.videocodec, ptr %373, i32 0, i32 5
  %374 = ptrtoint ptr %master_data.i669 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %master_data.i669, align 4
  %writereg.i670 = getelementptr inbounds %struct.videocodec_master, ptr %375, i32 0, i32 6
  %376 = ptrtoint ptr %writereg.i670 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %writereg.i670, align 4
  %tobool.not.i671 = icmp eq ptr %377, null
  br i1 %tobool.not.i671, label %do.end11.i676, label %if.then4.i674

if.then4.i674:                                    ; preds = %do.end3.i672
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i673 = and i32 %shl, 248
  tail call void %377(ptr noundef %373, i16 noundef zeroext 12, i32 noundef %conv9.i673) #8
  br label %zr36060_write.exit677

do.end11.i676:                                    ; preds = %do.end3.i672
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit677

zr36060_write.exit677:                            ; preds = %do.end11.i676, %if.then4.i674
  %shr64 = ashr i32 %shl, 7
  %sub65 = sub i32 %shl, %shr64
  %mul = mul i32 %sub65, 5
  %shr66 = ashr i32 %mul, 6
  %sub67 = sub i32 %sub65, %shr66
  %shr68 = ashr i32 %sub67, 16
  %378 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %378)
  %cmp70 = icmp sgt i32 %378, 2
  br i1 %cmp70, label %do.end82, label %do.end82.thread

do.end82.thread:                                  ; preds = %zr36060_write.exit677
  call void @__sanitizer_cov_trace_pc() #10
  %379 = lshr i32 %sub67, 24
  br label %do.end3.i686

do.end82:                                         ; preds = %zr36060_write.exit677
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %ptr, i32 noundef %sub67, i32 noundef %shr68) #11
  %.pr919 = load i32, ptr @debug, align 4
  %380 = lshr i32 %sub67, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr919)
  %cmp.i678 = icmp sgt i32 %.pr919, 3
  br i1 %cmp.i678, label %do.end.i681, label %do.end82.do.end3.i686_crit_edge

do.end82.do.end3.i686_crit_edge:                  ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i686

do.end.i681:                                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  %call.i680 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %380, i32 noundef 13) #11
  br label %do.end3.i686

do.end3.i686:                                     ; preds = %do.end.i681, %do.end82.do.end3.i686_crit_edge, %do.end82.thread
  %conv84922 = phi i32 [ %379, %do.end82.thread ], [ %380, %do.end.i681 ], [ %380, %do.end82.do.end3.i686_crit_edge ]
  %381 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %codec.i, align 4
  %master_data.i683 = getelementptr inbounds %struct.videocodec, ptr %382, i32 0, i32 5
  %383 = ptrtoint ptr %master_data.i683 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %master_data.i683, align 4
  %writereg.i684 = getelementptr inbounds %struct.videocodec_master, ptr %384, i32 0, i32 6
  %385 = ptrtoint ptr %writereg.i684 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %writereg.i684, align 4
  %tobool.not.i685 = icmp eq ptr %386, null
  br i1 %tobool.not.i685, label %do.end11.i690, label %if.then4.i688

if.then4.i688:                                    ; preds = %do.end3.i686
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %386(ptr noundef %382, i16 noundef zeroext 13, i32 noundef %conv84922) #8
  br label %zr36060_write.exit691

do.end11.i690:                                    ; preds = %do.end3.i686
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i689 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit691

zr36060_write.exit691:                            ; preds = %do.end11.i690, %if.then4.i688
  %387 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %387)
  %cmp.i692 = icmp sgt i32 %387, 3
  br i1 %cmp.i692, label %do.end.i695, label %zr36060_write.exit691.do.end3.i700_crit_edge

zr36060_write.exit691.do.end3.i700_crit_edge:     ; preds = %zr36060_write.exit691
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i700

do.end.i695:                                      ; preds = %zr36060_write.exit691
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i693 = and i32 %shr68, 255
  %call.i694 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i693, i32 noundef 14) #11
  br label %do.end3.i700

do.end3.i700:                                     ; preds = %do.end.i695, %zr36060_write.exit691.do.end3.i700_crit_edge
  %388 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %codec.i, align 4
  %master_data.i697 = getelementptr inbounds %struct.videocodec, ptr %389, i32 0, i32 5
  %390 = ptrtoint ptr %master_data.i697 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %master_data.i697, align 4
  %writereg.i698 = getelementptr inbounds %struct.videocodec_master, ptr %391, i32 0, i32 6
  %392 = ptrtoint ptr %writereg.i698 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %writereg.i698, align 4
  %tobool.not.i699 = icmp eq ptr %393, null
  br i1 %tobool.not.i699, label %do.end11.i704, label %if.then4.i702

if.then4.i702:                                    ; preds = %do.end3.i700
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i701 = and i32 %shr68, 255
  tail call void %393(ptr noundef %389, i16 noundef zeroext 14, i32 noundef %conv9.i701) #8
  br label %zr36060_write.exit705

do.end11.i704:                                    ; preds = %do.end3.i700
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i703 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit705

zr36060_write.exit705:                            ; preds = %do.end11.i704, %if.then4.i702
  %394 = lshr i32 %sub67, 8
  %395 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %395)
  %cmp.i706 = icmp sgt i32 %395, 3
  br i1 %cmp.i706, label %do.end.i709, label %zr36060_write.exit705.do.end3.i714_crit_edge

zr36060_write.exit705.do.end3.i714_crit_edge:     ; preds = %zr36060_write.exit705
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i714

do.end.i709:                                      ; preds = %zr36060_write.exit705
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i707 = and i32 %394, 255
  %call.i708 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i707, i32 noundef 15) #11
  br label %do.end3.i714

do.end3.i714:                                     ; preds = %do.end.i709, %zr36060_write.exit705.do.end3.i714_crit_edge
  %396 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %codec.i, align 4
  %master_data.i711 = getelementptr inbounds %struct.videocodec, ptr %397, i32 0, i32 5
  %398 = ptrtoint ptr %master_data.i711 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %master_data.i711, align 4
  %writereg.i712 = getelementptr inbounds %struct.videocodec_master, ptr %399, i32 0, i32 6
  %400 = ptrtoint ptr %writereg.i712 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %writereg.i712, align 4
  %tobool.not.i713 = icmp eq ptr %401, null
  br i1 %tobool.not.i713, label %do.end11.i718, label %if.then4.i716

if.then4.i716:                                    ; preds = %do.end3.i714
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i715 = and i32 %394, 255
  tail call void %401(ptr noundef %397, i16 noundef zeroext 15, i32 noundef %conv9.i715) #8
  br label %zr36060_write.exit719

do.end11.i718:                                    ; preds = %do.end3.i714
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i717 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit719

zr36060_write.exit719:                            ; preds = %do.end11.i718, %if.then4.i716
  %402 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %402)
  %cmp.i720 = icmp sgt i32 %402, 3
  br i1 %cmp.i720, label %do.end.i723, label %zr36060_write.exit719.do.end3.i728_crit_edge

zr36060_write.exit719.do.end3.i728_crit_edge:     ; preds = %zr36060_write.exit719
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i728

do.end.i723:                                      ; preds = %zr36060_write.exit719
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i721 = and i32 %sub67, 255
  %call.i722 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i721, i32 noundef 16) #11
  br label %do.end3.i728

do.end3.i728:                                     ; preds = %do.end.i723, %zr36060_write.exit719.do.end3.i728_crit_edge
  %403 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %codec.i, align 4
  %master_data.i725 = getelementptr inbounds %struct.videocodec, ptr %404, i32 0, i32 5
  %405 = ptrtoint ptr %master_data.i725 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %master_data.i725, align 4
  %writereg.i726 = getelementptr inbounds %struct.videocodec_master, ptr %406, i32 0, i32 6
  %407 = ptrtoint ptr %writereg.i726 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %writereg.i726, align 4
  %tobool.not.i727 = icmp eq ptr %408, null
  br i1 %tobool.not.i727, label %do.end11.i732, label %if.then4.i730

if.then4.i730:                                    ; preds = %do.end3.i728
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i729 = and i32 %sub67, 255
  tail call void %408(ptr noundef %404, i16 noundef zeroext 16, i32 noundef %conv9.i729) #8
  br label %zr36060_write.exit733

do.end11.i732:                                    ; preds = %do.end3.i728
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i731 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit733

zr36060_write.exit733:                            ; preds = %do.end11.i732, %if.then4.i730
  %409 = ptrtoint ptr %com to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %com, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %cmp94 = icmp sgt i32 %410, 0
  %or = select i1 %cmp94, i8 88, i8 24
  %411 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp98 = icmp sgt i32 %412, 0
  %cond100 = select i1 %cmp98, i8 -128, i8 0
  %or101 = or i8 %cond100, %or
  %413 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %413)
  %cmp.i734 = icmp sgt i32 %413, 3
  br i1 %cmp.i734, label %do.end.i737, label %zr36060_write.exit733.do.end3.i742_crit_edge

zr36060_write.exit733.do.end3.i742_crit_edge:     ; preds = %zr36060_write.exit733
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i742

do.end.i737:                                      ; preds = %zr36060_write.exit733
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i735 = zext i8 %or101 to i32
  %call.i736 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i735, i32 noundef 6) #11
  br label %do.end3.i742

do.end3.i742:                                     ; preds = %do.end.i737, %zr36060_write.exit733.do.end3.i742_crit_edge
  %414 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %codec.i, align 4
  %master_data.i739 = getelementptr inbounds %struct.videocodec, ptr %415, i32 0, i32 5
  %416 = ptrtoint ptr %master_data.i739 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %master_data.i739, align 4
  %writereg.i740 = getelementptr inbounds %struct.videocodec_master, ptr %417, i32 0, i32 6
  %418 = ptrtoint ptr %writereg.i740 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %writereg.i740, align 4
  %tobool.not.i741 = icmp eq ptr %419, null
  br i1 %tobool.not.i741, label %do.end11.i746, label %if.then4.i744

if.then4.i744:                                    ; preds = %do.end3.i742
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i743 = zext i8 %or101 to i32
  tail call void %419(ptr noundef %415, i16 noundef zeroext 6, i32 noundef %conv9.i743) #8
  br label %zr36060_write.exit747

do.end11.i746:                                    ; preds = %do.end3.i742
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i745 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit747

zr36060_write.exit747:                            ; preds = %do.end11.i746, %if.then4.i744
  %420 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %420)
  %cmp.i748 = icmp sgt i32 %420, 3
  br i1 %cmp.i748, label %do.end.i750, label %zr36060_write.exit747.do.end3.i755_crit_edge

zr36060_write.exit747.do.end3.i755_crit_edge:     ; preds = %zr36060_write.exit747
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i755

do.end.i750:                                      ; preds = %zr36060_write.exit747
  call void @__sanitizer_cov_trace_pc() #10
  %call.i749 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 64, i32 noundef 48) #11
  br label %do.end3.i755

do.end3.i755:                                     ; preds = %do.end.i750, %zr36060_write.exit747.do.end3.i755_crit_edge
  %421 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %codec.i, align 4
  %master_data.i752 = getelementptr inbounds %struct.videocodec, ptr %422, i32 0, i32 5
  %423 = ptrtoint ptr %master_data.i752 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %master_data.i752, align 4
  %writereg.i753 = getelementptr inbounds %struct.videocodec_master, ptr %424, i32 0, i32 6
  %425 = ptrtoint ptr %writereg.i753 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %writereg.i753, align 4
  %tobool.not.i754 = icmp eq ptr %426, null
  br i1 %tobool.not.i754, label %do.end11.i758, label %if.then4.i756

if.then4.i756:                                    ; preds = %do.end3.i755
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %426(ptr noundef %422, i16 noundef zeroext 48, i32 noundef 64) #8
  br label %if.end118

do.end11.i758:                                    ; preds = %do.end3.i755
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i757 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %if.end118

do.body103:                                       ; preds = %entry
  br i1 %cmp1, label %do.end116, label %do.body103.do.end3.i767_crit_edge

do.body103.do.end3.i767_crit_edge:                ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i767

do.end116:                                        ; preds = %do.body103
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %ptr) #11
  %.pr923 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr923)
  %cmp.i760 = icmp sgt i32 %.pr923, 3
  br i1 %cmp.i760, label %do.end.i762, label %do.end116.do.end3.i767_crit_edge

do.end116.do.end3.i767_crit_edge:                 ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i767

do.end.i762:                                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  %call.i761 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i767

do.end3.i767:                                     ; preds = %do.end.i762, %do.end116.do.end3.i767_crit_edge, %do.body103.do.end3.i767_crit_edge
  %codec.i763 = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 2
  %427 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %codec.i763, align 4
  %master_data.i764 = getelementptr inbounds %struct.videocodec, ptr %428, i32 0, i32 5
  %429 = ptrtoint ptr %master_data.i764 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %master_data.i764, align 4
  %writereg.i765 = getelementptr inbounds %struct.videocodec_master, ptr %430, i32 0, i32 6
  %431 = ptrtoint ptr %writereg.i765 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %writereg.i765, align 4
  %tobool.not.i766 = icmp eq ptr %432, null
  br i1 %tobool.not.i766, label %do.end11.i770, label %if.then4.i768

if.then4.i768:                                    ; preds = %do.end3.i767
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %432(ptr noundef %428, i16 noundef zeroext 0, i32 noundef 1) #8
  br label %zr36060_write.exit771

do.end11.i770:                                    ; preds = %do.end3.i767
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i769 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit771

zr36060_write.exit771:                            ; preds = %do.end11.i770, %if.then4.i768
  %433 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %433)
  %cmp.i772 = icmp sgt i32 %433, 3
  br i1 %cmp.i772, label %do.end.i774, label %zr36060_write.exit771.do.end3.i779_crit_edge

zr36060_write.exit771.do.end3.i779_crit_edge:     ; preds = %zr36060_write.exit771
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i779

do.end.i774:                                      ; preds = %zr36060_write.exit771
  call void @__sanitizer_cov_trace_pc() #10
  %call.i773 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef 2) #11
  br label %do.end3.i779

do.end3.i779:                                     ; preds = %do.end.i774, %zr36060_write.exit771.do.end3.i779_crit_edge
  %434 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %codec.i763, align 4
  %master_data.i776 = getelementptr inbounds %struct.videocodec, ptr %435, i32 0, i32 5
  %436 = ptrtoint ptr %master_data.i776 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %master_data.i776, align 4
  %writereg.i777 = getelementptr inbounds %struct.videocodec_master, ptr %437, i32 0, i32 6
  %438 = ptrtoint ptr %writereg.i777 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %writereg.i777, align 4
  %tobool.not.i778 = icmp eq ptr %439, null
  br i1 %tobool.not.i778, label %do.end11.i782, label %if.then4.i780

if.then4.i780:                                    ; preds = %do.end3.i779
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %439(ptr noundef %435, i16 noundef zeroext 2, i32 noundef 1) #8
  br label %zr36060_write.exit783

do.end11.i782:                                    ; preds = %do.end3.i779
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i781 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit783

zr36060_write.exit783:                            ; preds = %do.end11.i782, %if.then4.i780
  %440 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %440)
  %cmp.i784 = icmp sgt i32 %440, 3
  br i1 %cmp.i784, label %do.end.i786, label %zr36060_write.exit783.do.end3.i791_crit_edge

zr36060_write.exit783.do.end3.i791_crit_edge:     ; preds = %zr36060_write.exit783
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i791

do.end.i786:                                      ; preds = %zr36060_write.exit783
  call void @__sanitizer_cov_trace_pc() #10
  %call.i785 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 3) #11
  br label %do.end3.i791

do.end3.i791:                                     ; preds = %do.end.i786, %zr36060_write.exit783.do.end3.i791_crit_edge
  %441 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %codec.i763, align 4
  %master_data.i788 = getelementptr inbounds %struct.videocodec, ptr %442, i32 0, i32 5
  %443 = ptrtoint ptr %master_data.i788 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %master_data.i788, align 4
  %writereg.i789 = getelementptr inbounds %struct.videocodec_master, ptr %444, i32 0, i32 6
  %445 = ptrtoint ptr %writereg.i789 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %writereg.i789, align 4
  %tobool.not.i790 = icmp eq ptr %446, null
  br i1 %tobool.not.i790, label %do.end11.i794, label %if.then4.i792

if.then4.i792:                                    ; preds = %do.end3.i791
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %446(ptr noundef %442, i16 noundef zeroext 3, i32 noundef 0) #8
  br label %zr36060_write.exit795

do.end11.i794:                                    ; preds = %do.end3.i791
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i793 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit795

zr36060_write.exit795:                            ; preds = %do.end11.i794, %if.then4.i792
  %447 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %447)
  %cmp.i796 = icmp sgt i32 %447, 3
  br i1 %cmp.i796, label %do.end.i798, label %zr36060_write.exit795.do.end3.i803_crit_edge

zr36060_write.exit795.do.end3.i803_crit_edge:     ; preds = %zr36060_write.exit795
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i803

do.end.i798:                                      ; preds = %zr36060_write.exit795
  call void @__sanitizer_cov_trace_pc() #10
  %call.i797 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 4) #11
  br label %do.end3.i803

do.end3.i803:                                     ; preds = %do.end.i798, %zr36060_write.exit795.do.end3.i803_crit_edge
  %448 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %codec.i763, align 4
  %master_data.i800 = getelementptr inbounds %struct.videocodec, ptr %449, i32 0, i32 5
  %450 = ptrtoint ptr %master_data.i800 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %master_data.i800, align 4
  %writereg.i801 = getelementptr inbounds %struct.videocodec_master, ptr %451, i32 0, i32 6
  %452 = ptrtoint ptr %writereg.i801 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %writereg.i801, align 4
  %tobool.not.i802 = icmp eq ptr %453, null
  br i1 %tobool.not.i802, label %do.end11.i806, label %if.then4.i804

if.then4.i804:                                    ; preds = %do.end3.i803
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %453(ptr noundef %449, i16 noundef zeroext 4, i32 noundef 0) #8
  br label %zr36060_write.exit807

do.end11.i806:                                    ; preds = %do.end3.i803
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i805 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit807

zr36060_write.exit807:                            ; preds = %do.end11.i806, %if.then4.i804
  %454 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %454)
  %cmp.i808 = icmp sgt i32 %454, 3
  br i1 %cmp.i808, label %do.end.i810, label %zr36060_write.exit807.do.end3.i815_crit_edge

zr36060_write.exit807.do.end3.i815_crit_edge:     ; preds = %zr36060_write.exit807
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i815

do.end.i810:                                      ; preds = %zr36060_write.exit807
  call void @__sanitizer_cov_trace_pc() #10
  %call.i809 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 36) #11
  br label %do.end3.i815

do.end3.i815:                                     ; preds = %do.end.i810, %zr36060_write.exit807.do.end3.i815_crit_edge
  %455 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %codec.i763, align 4
  %master_data.i812 = getelementptr inbounds %struct.videocodec, ptr %456, i32 0, i32 5
  %457 = ptrtoint ptr %master_data.i812 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %master_data.i812, align 4
  %writereg.i813 = getelementptr inbounds %struct.videocodec_master, ptr %458, i32 0, i32 6
  %459 = ptrtoint ptr %writereg.i813 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %writereg.i813, align 4
  %tobool.not.i814 = icmp eq ptr %460, null
  br i1 %tobool.not.i814, label %do.end11.i818, label %if.then4.i816

if.then4.i816:                                    ; preds = %do.end3.i815
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %460(ptr noundef %456, i16 noundef zeroext 36, i32 noundef 0) #8
  br label %zr36060_write.exit819

do.end11.i818:                                    ; preds = %do.end3.i815
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i817 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit819

zr36060_write.exit819:                            ; preds = %do.end11.i818, %if.then4.i816
  %461 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %461)
  %cmp.i820 = icmp sgt i32 %461, 3
  br i1 %cmp.i820, label %do.end.i822, label %zr36060_write.exit819.do.end3.i827_crit_edge

zr36060_write.exit819.do.end3.i827_crit_edge:     ; preds = %zr36060_write.exit819
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i827

do.end.i822:                                      ; preds = %zr36060_write.exit819
  call void @__sanitizer_cov_trace_pc() #10
  %call.i821 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 37) #11
  br label %do.end3.i827

do.end3.i827:                                     ; preds = %do.end.i822, %zr36060_write.exit819.do.end3.i827_crit_edge
  %462 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %codec.i763, align 4
  %master_data.i824 = getelementptr inbounds %struct.videocodec, ptr %463, i32 0, i32 5
  %464 = ptrtoint ptr %master_data.i824 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %master_data.i824, align 4
  %writereg.i825 = getelementptr inbounds %struct.videocodec_master, ptr %465, i32 0, i32 6
  %466 = ptrtoint ptr %writereg.i825 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %writereg.i825, align 4
  %tobool.not.i826 = icmp eq ptr %467, null
  br i1 %tobool.not.i826, label %do.end11.i830, label %if.then4.i828

if.then4.i828:                                    ; preds = %do.end3.i827
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %467(ptr noundef %463, i16 noundef zeroext 37, i32 noundef 0) #8
  br label %zr36060_write.exit831

do.end11.i830:                                    ; preds = %do.end3.i827
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i829 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit831

zr36060_write.exit831:                            ; preds = %do.end11.i830, %if.then4.i828
  %468 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %468)
  %cmp.i832 = icmp sgt i32 %468, 3
  br i1 %cmp.i832, label %do.end.i834, label %zr36060_write.exit831.do.end3.i839_crit_edge

zr36060_write.exit831.do.end3.i839_crit_edge:     ; preds = %zr36060_write.exit831
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i839

do.end.i834:                                      ; preds = %zr36060_write.exit831
  call void @__sanitizer_cov_trace_pc() #10
  %call.i833 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 7) #11
  br label %do.end3.i839

do.end3.i839:                                     ; preds = %do.end.i834, %zr36060_write.exit831.do.end3.i839_crit_edge
  %469 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %codec.i763, align 4
  %master_data.i836 = getelementptr inbounds %struct.videocodec, ptr %470, i32 0, i32 5
  %471 = ptrtoint ptr %master_data.i836 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %master_data.i836, align 4
  %writereg.i837 = getelementptr inbounds %struct.videocodec_master, ptr %472, i32 0, i32 6
  %473 = ptrtoint ptr %writereg.i837 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %writereg.i837, align 4
  %tobool.not.i838 = icmp eq ptr %474, null
  br i1 %tobool.not.i838, label %do.end11.i842, label %if.then4.i840

if.then4.i840:                                    ; preds = %do.end3.i839
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %474(ptr noundef %470, i16 noundef zeroext 7, i32 noundef 0) #8
  br label %zr36060_write.exit843

do.end11.i842:                                    ; preds = %do.end3.i839
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i841 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit843

zr36060_write.exit843:                            ; preds = %do.end11.i842, %if.then4.i840
  %475 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %475)
  %cmp.i844 = icmp sgt i32 %475, 3
  br i1 %cmp.i844, label %do.end.i846, label %zr36060_write.exit843.do.end3.i851_crit_edge

zr36060_write.exit843.do.end3.i851_crit_edge:     ; preds = %zr36060_write.exit843
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i851

do.end.i846:                                      ; preds = %zr36060_write.exit843
  call void @__sanitizer_cov_trace_pc() #10
  %call.i845 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 6) #11
  br label %do.end3.i851

do.end3.i851:                                     ; preds = %do.end.i846, %zr36060_write.exit843.do.end3.i851_crit_edge
  %476 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %codec.i763, align 4
  %master_data.i848 = getelementptr inbounds %struct.videocodec, ptr %477, i32 0, i32 5
  %478 = ptrtoint ptr %master_data.i848 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %master_data.i848, align 4
  %writereg.i849 = getelementptr inbounds %struct.videocodec_master, ptr %479, i32 0, i32 6
  %480 = ptrtoint ptr %writereg.i849 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %writereg.i849, align 4
  %tobool.not.i850 = icmp eq ptr %481, null
  br i1 %tobool.not.i850, label %do.end11.i854, label %if.then4.i852

if.then4.i852:                                    ; preds = %do.end3.i851
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %481(ptr noundef %477, i16 noundef zeroext 6, i32 noundef 0) #8
  br label %zr36060_write.exit855

do.end11.i854:                                    ; preds = %do.end3.i851
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i853 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit855

zr36060_write.exit855:                            ; preds = %do.end11.i854, %if.then4.i852
  %482 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %482)
  %cmp.i856 = icmp sgt i32 %482, 3
  br i1 %cmp.i856, label %do.end.i859, label %zr36060_write.exit855.while.body.i868.preheader_crit_edge

zr36060_write.exit855.while.body.i868.preheader_crit_edge: ; preds = %zr36060_write.exit855
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i868.preheader

do.end.i859:                                      ; preds = %zr36060_write.exit855
  call void @__sanitizer_cov_trace_pc() #10
  %call.i858 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %ptr, i32 noundef 468, i32 noundef 420) #11
  br label %while.body.i868.preheader

while.body.i868.preheader:                        ; preds = %do.end.i859, %zr36060_write.exit855.while.body.i868.preheader_crit_edge
  br label %while.body.i868

while.body.i868:                                  ; preds = %zr36060_write.exit.i882.while.body.i868_crit_edge, %while.body.i868.preheader
  %indvars.iv = phi i32 [ %indvars.iv.next, %zr36060_write.exit.i882.while.body.i868_crit_edge ], [ 468, %while.body.i868.preheader ]
  %i.015.i863 = phi i32 [ %inc8.i865, %zr36060_write.exit.i882.while.body.i868_crit_edge ], [ 0, %while.body.i868.preheader ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc8.i865 = add nuw nsw i32 %i.015.i863, 1
  %arrayidx.i866 = getelementptr i8, ptr @zr36060_dht, i32 %i.015.i863
  %483 = ptrtoint ptr %arrayidx.i866 to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %arrayidx.i866, align 1
  %485 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %485)
  %cmp.i.i867 = icmp sgt i32 %485, 3
  br i1 %cmp.i.i867, label %do.end.i.i872, label %while.body.i868.do.end3.i.i876_crit_edge

while.body.i868.do.end3.i.i876_crit_edge:         ; preds = %while.body.i868
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i876

do.end.i.i872:                                    ; preds = %while.body.i868
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i869 = zext i8 %484 to i32
  %call.i.i871 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv.i.i869, i32 noundef %indvars.iv) #11
  br label %do.end3.i.i876

do.end3.i.i876:                                   ; preds = %do.end.i.i872, %while.body.i868.do.end3.i.i876_crit_edge
  %486 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %codec.i763, align 4
  %master_data.i.i873 = getelementptr inbounds %struct.videocodec, ptr %487, i32 0, i32 5
  %488 = ptrtoint ptr %master_data.i.i873 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %master_data.i.i873, align 4
  %writereg.i.i874 = getelementptr inbounds %struct.videocodec_master, ptr %489, i32 0, i32 6
  %490 = ptrtoint ptr %writereg.i.i874 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %writereg.i.i874, align 4
  %tobool.not.i.i875 = icmp eq ptr %491, null
  br i1 %tobool.not.i.i875, label %do.end11.i.i880, label %if.then4.i.i878

if.then4.i.i878:                                  ; preds = %do.end3.i.i876
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i.i877 = zext i8 %484 to i32
  %492 = trunc i32 %indvars.iv to i16
  tail call void %491(ptr noundef %487, i16 noundef zeroext %492, i32 noundef %conv9.i.i877) #8
  br label %zr36060_write.exit.i882

do.end11.i.i880:                                  ; preds = %do.end3.i.i876
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i.i879 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit.i882

zr36060_write.exit.i882:                          ; preds = %do.end11.i.i880, %if.then4.i.i878
  %exitcond.not.i881 = icmp eq i32 %inc8.i865, 420
  br i1 %exitcond.not.i881, label %zr36060_pushit.exit883, label %zr36060_write.exit.i882.while.body.i868_crit_edge

zr36060_write.exit.i882.while.body.i868_crit_edge: ; preds = %zr36060_write.exit.i882
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i868

zr36060_pushit.exit883:                           ; preds = %zr36060_write.exit.i882
  %493 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %493)
  %cmp.i884 = icmp sgt i32 %493, 3
  br i1 %cmp.i884, label %do.end.i886, label %zr36060_pushit.exit883.do.end3.i891_crit_edge

zr36060_pushit.exit883.do.end3.i891_crit_edge:    ; preds = %zr36060_pushit.exit883
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i891

do.end.i886:                                      ; preds = %zr36060_pushit.exit883
  call void @__sanitizer_cov_trace_pc() #10
  %call.i885 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 64, i32 noundef 48) #11
  br label %do.end3.i891

do.end3.i891:                                     ; preds = %do.end.i886, %zr36060_pushit.exit883.do.end3.i891_crit_edge
  %494 = ptrtoint ptr %codec.i763 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %codec.i763, align 4
  %master_data.i888 = getelementptr inbounds %struct.videocodec, ptr %495, i32 0, i32 5
  %496 = ptrtoint ptr %master_data.i888 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %master_data.i888, align 4
  %writereg.i889 = getelementptr inbounds %struct.videocodec_master, ptr %497, i32 0, i32 6
  %498 = ptrtoint ptr %writereg.i889 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %writereg.i889, align 4
  %tobool.not.i890 = icmp eq ptr %499, null
  br i1 %tobool.not.i890, label %do.end11.i894, label %if.then4.i892

if.then4.i892:                                    ; preds = %do.end3.i891
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %499(ptr noundef %495, i16 noundef zeroext 48, i32 noundef 64) #8
  br label %if.end118

do.end11.i894:                                    ; preds = %do.end3.i891
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i893 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %if.end118

if.end118:                                        ; preds = %do.end11.i894, %if.then4.i892, %do.end11.i758, %if.then4.i756
  %500 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %500)
  %cmp.i896 = icmp sgt i32 %500, 3
  br i1 %cmp.i896, label %do.end.i898, label %if.end118.do.end3.i903_crit_edge

if.end118.do.end3.i903_crit_edge:                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i903

do.end.i898:                                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %call.i897 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 129, i32 noundef 0) #11
  br label %do.end3.i903

do.end3.i903:                                     ; preds = %do.end.i898, %if.end118.do.end3.i903_crit_edge
  %codec.i899 = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 2
  %501 = ptrtoint ptr %codec.i899 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %codec.i899, align 4
  %master_data.i900 = getelementptr inbounds %struct.videocodec, ptr %502, i32 0, i32 5
  %503 = ptrtoint ptr %master_data.i900 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %master_data.i900, align 4
  %writereg.i901 = getelementptr inbounds %struct.videocodec_master, ptr %504, i32 0, i32 6
  %505 = ptrtoint ptr %writereg.i901 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %writereg.i901, align 4
  %tobool.not.i902 = icmp eq ptr %506, null
  br i1 %tobool.not.i902, label %do.end11.i906, label %if.then4.i904

if.then4.i904:                                    ; preds = %do.end3.i903
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %506(ptr noundef %502, i16 noundef zeroext 0, i32 noundef 129) #8
  br label %zr36060_write.exit907

do.end11.i906:                                    ; preds = %do.end3.i903
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i905 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %ptr) #11
  br label %zr36060_write.exit907

zr36060_write.exit907:                            ; preds = %do.end11.i906, %if.then4.i904
  tail call fastcc void @zr36060_wait_end(ptr noundef %ptr)
  %507 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %507)
  %cmp120 = icmp sgt i32 %507, 1
  br i1 %cmp120, label %do.end125, label %zr36060_write.exit907.do.end133_crit_edge

zr36060_write.exit907.do.end133_crit_edge:        ; preds = %zr36060_write.exit907
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end133

do.end125:                                        ; preds = %zr36060_write.exit907
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 3
  %508 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %status, align 4
  %conv129 = zext i8 %509 to i32
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %ptr, i32 noundef %conv129) #11
  br label %do.end133

do.end133:                                        ; preds = %do.end125, %zr36060_write.exit907.do.end133_crit_edge
  %status134 = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 3
  %510 = ptrtoint ptr %status134 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %status134, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %511)
  %tobool.not = icmp sgt i8 %511, -1
  br i1 %tobool.not, label %do.end133.cleanup_crit_edge, label %do.end140

do.end133.cleanup_crit_edge:                      ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end140:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %do.end133.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zr36060_wait_end(ptr noundef %ptr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %codec.i.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.zr36060, ptr %ptr, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %codec.i.i, align 4
  %master_data.i.i = getelementptr inbounds %struct.videocodec, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %master_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_data.i.i, align 4
  %readreg.i.i = getelementptr inbounds %struct.videocodec_master, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %readreg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readreg.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext 1) #8
  %conv.i.i = trunc i32 %call.i.i to i8
  br label %zr36060_read.exit.i

do.end.i.i:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %ptr) #11
  br label %zr36060_read.exit.i

zr36060_read.exit.i:                              ; preds = %do.end.i.i, %if.then.i.i
  %value.0.i.i = phi i8 [ %conv.i.i, %if.then.i.i ], [ 0, %do.end.i.i ]
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %value.0.i.i, ptr %status.i, align 4
  %7 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %codec.i.i, align 4
  %master_data.i7.i = getelementptr inbounds %struct.videocodec, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %master_data.i7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_data.i7.i, align 4
  %readreg.i8.i = getelementptr inbounds %struct.videocodec_master, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %readreg.i8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %readreg.i8.i, align 4
  %tobool.not.i9.i = icmp eq ptr %12, null
  br i1 %tobool.not.i9.i, label %do.end.i14.i, label %if.then.i12.i

if.then.i12.i:                                    ; preds = %zr36060_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i10.i = tail call i32 %12(ptr noundef %8, i16 noundef zeroext 0) #8
  br label %zr36060_read_status.exit

do.end.i14.i:                                     ; preds = %zr36060_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %ptr) #11
  br label %zr36060_read_status.exit

zr36060_read_status.exit:                         ; preds = %do.end.i14.i, %if.then.i12.i
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not = icmp sgt i8 %14, -1
  br i1 %tobool.not, label %zr36060_read_status.exit.while.end_crit_edge, label %while.body

zr36060_read_status.exit.while.end_crit_edge:     ; preds = %zr36060_read_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %zr36060_read_status.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond = icmp eq i32 %inc, 200002
  br i1 %exitcond, label %do.body, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.body:                                          ; preds = %while.body
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2 = icmp sgt i32 %16, 0
  br i1 %cmp2, label %do.end, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %status.i, align 4
  %conv6 = zext i8 %18 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %ptr, i32 noundef %conv6) #11
  br label %while.end

while.end:                                        ; preds = %do.end, %do.body.while.end_crit_edge, %zr36060_read_status.exit.while.end_crit_edge
  ret void
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_low_bitrate, !1, !"__param_low_bitrate", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_low_bitratetype173, !1, !"__UNIQUE_ID_low_bitratetype173", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_low_bitrate174, !4, !"__UNIQUE_ID_low_bitrate174", i1 false, i1 false}
!4 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 35, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype175, !6, !"__UNIQUE_ID_debugtype175", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug176, !9, !"__UNIQUE_ID_debug176", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 40, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 859, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @zr36060_cleanup_module._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @zr36060_cleanup_module._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_zr36060__177_868_zr36060_init_module6, !17, !"__initcall__kmod_zr36060__177_868_zr36060_init_module6", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 868, i32 1}
!18 = !{ptr @__exitcall_zr36060_cleanup_module, !19, !"__exitcall_zr36060_cleanup_module", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 869, i32 1}
!20 = !{ptr @__UNIQUE_ID_author178, !21, !"__UNIQUE_ID_author178", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 871, i32 1}
!22 = !{ptr @__UNIQUE_ID_description179, !23, !"__UNIQUE_ID_description179", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 872, i32 1}
!24 = !{ptr @__UNIQUE_ID_file180, !25, !"__UNIQUE_ID_file180", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 873, i32 1}
!26 = !{ptr @__UNIQUE_ID_license181, !25, !"__UNIQUE_ID_license181", i1 false, i1 false}
!27 = !{ptr @zr36060_codecs, !28, !"zr36060_codecs", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 31, i32 12}
!29 = !{ptr @low_bitrate, !30, !"low_bitrate", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 33, i32 13}
!31 = !{ptr @debug, !32, !"debug", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 38, i32 12}
!33 = !{ptr @__param_str_low_bitrate, !1, !"__param_str_low_bitrate", i1 false, i1 false}
!34 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @zr36060_codec, !36, !"zr36060_codec", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 834, i32 32}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 786, i32 2}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @zr36060_setup._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @zr36060_setup._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 789, i32 3}
!44 = !{ptr @zr36060_setup._entry.5, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @zr36060_setup._entry_ptr.7, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 798, i32 41}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 829, i32 2}
!50 = !{ptr @zr36060_setup._entry.9, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @zr36060_setup._entry_ptr.11, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 125, i32 3}
!54 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @zr36060_basic_test._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @zr36060_basic_test._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 131, i32 3}
!59 = !{ptr @zr36060_basic_test._entry.14, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @zr36060_basic_test._entry_ptr.16, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 62, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @zr36060_read._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @zr36060_read._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 112, i32 4}
!68 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @zr36060_wait_end._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @zr36060_wait_end._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"zr36060_decimation_h", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 249, i32 19}
!73 = distinct !{null, !74, !"zr36060_decimation_v", i1 false, i1 false}
!74 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 250, i32 19}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 329, i32 3}
!77 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @zr36060_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @zr36060_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 382, i32 3}
!82 = !{ptr @zr36060_init._entry.23, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @zr36060_init._entry_ptr.25, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 395, i32 3}
!86 = !{ptr @zr36060_init._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @zr36060_init._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 414, i32 3}
!90 = !{ptr @zr36060_init._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @zr36060_init._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 447, i32 2}
!94 = !{ptr @zr36060_init._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @zr36060_init._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 450, i32 3}
!98 = !{ptr @zr36060_init._entry.35, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @zr36060_init._entry_ptr.37, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 69, i32 2}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @zr36060_write._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @zr36060_write._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 75, i32 3}
!107 = !{ptr @zr36060_write._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @zr36060_write._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 258, i32 2}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @zr36060_set_sof._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @zr36060_set_sof._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = distinct !{null, !115, !"zr36060_tq", i1 false, i1 false}
!115 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 244, i32 19}
!116 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 286, i32 2}
!118 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @zr36060_set_sos._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @zr36060_set_sos._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"zr36060_td", i1 false, i1 false}
!122 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 245, i32 19}
!123 = distinct !{null, !124, !"zr36060_ta", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 246, i32 19}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 310, i32 2}
!127 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @zr36060_set_dri._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @zr36060_set_dri._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 143, i32 2}
!132 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @zr36060_pushit._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @zr36060_pushit._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @zr36060_dqt, !136, !"zr36060_dqt", i1 false, i1 false}
!136 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 161, i32 19}
!137 = !{ptr @zr36060_dht, !138, !"zr36060_dht", i1 false, i1 false}
!138 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 184, i32 19}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 763, i32 3}
!141 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @zr36060_unset._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @zr36060_unset._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 468, i32 2}
!146 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @zr36060_set_mode._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @zr36060_set_mode._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 487, i32 2}
!151 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @zr36060_set_video._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @zr36060_set_video._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/staging/media/zoran/zr36060.c", i32 645, i32 2}
!156 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @zr36060_control._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @zr36060_control._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i8 0, i8 2}
