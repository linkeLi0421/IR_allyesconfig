; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/mt2063.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2063.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mt2063_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt2063_attach\09\09\09\09"
module asm "\09.long\09__crc_mt2063_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2063_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2063_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2063_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt2063_state = type { ptr, i8, ptr, %struct.dvb_tuner_ops, ptr, i32, i32, i32, i32, i32, %struct.MT2063_AvoidSpursData_t, i32, i32, i32, [31 x i32], i32, [61 x i8] }
%struct.MT2063_AvoidSpursData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [48 x %struct.MT2063_ExclZone_t] }
%struct.MT2063_ExclZone_t = type { i32, i32, ptr }
%struct.mt2063_config = type { i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.MT2063_FIFZone_t = type { i32, i32 }

@__param_str_debug = internal constant [13 x i8] c"mt2063.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"mt2063.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [38 x i8] c"mt2063.parm=debug:Set Verbosity level\00", section ".modinfo", align 1
@mt2063_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017mt2063 %s: \0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2063_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/mt2063.c\00", [34 x i8] zeroinitializer }, align 32
@mt2063_attach._entry_ptr = internal global ptr @mt2063_attach._entry, section ".printk_index", align 4
@mt2063_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MT2063 Silicon Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 865000000, i32 0, i32 0, i32 0, i32 0 }, ptr @mt2063_release, ptr @mt2063_init, ptr @MT2063_Sleep, ptr null, ptr null, ptr @mt2063_set_params, ptr @mt2063_set_analog_params, ptr null, ptr null, ptr @mt2063_get_bandwidth, ptr @mt2063_get_if_frequency, ptr @mt2063_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt2063_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Attaching MT2063\0A\00", [40 x i8] zeroinitializer }, align 32
@mt2063_attach._entry_ptr.5 = internal global ptr @mt2063_attach._entry.3, section ".printk_index", align 4
@__kstrtab_mt2063_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2063_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2063_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2063_attach to i32), ptr @__kstrtab_mt2063_attach, ptr @__kstrtabns_mt2063_attach }, section "___ksymtab_gpl+mt2063_attach", align 4
@__UNIQUE_ID_author298 = internal constant [36 x i8] c"mt2063.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [40 x i8] c"mt2063.description=MT2063 Silicon tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [40 x i8] c"mt2063.file=drivers/media/tuners/mt2063\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [19 x i8] c"mt2063.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt2063_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt2063_release\00", [17 x i8] zeroinitializer }, align 32
@mt2063_release._entry_ptr = internal global ptr @mt2063_release._entry, section ".printk_index", align 4
@mt2063_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 1784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt2063_init\00", [20 x i8] zeroinitializer }, align 32
@mt2063_init._entry_ptr = internal global ptr @mt2063_init._entry, section ".printk_index", align 4
@mt2063_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Can't read mt2063 part ID\0A\00", [35 x i8] zeroinitializer }, align 32
@mt2063_init._entry_ptr.10 = internal global ptr @mt2063_init._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B0\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B1\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B2\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"B3\00", [29 x i8] zeroinitializer }, align 32
@mt2063_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013mt2063: Unknown mt2063 device ID (0x%02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@mt2063_init._entry_ptr.17 = internal global ptr @mt2063_init._entry.15, section ".printk_index", align 4
@mt2063_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013mt2063: Unknown part ID (0x%02x%02x)\0A\00", [56 x i8] zeroinitializer }, align 32
@mt2063_init._entry_ptr.20 = internal global ptr @mt2063_init._entry.18, section ".printk_index", align 4
@mt2063_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.2, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016mt2063: detected a mt2063 %s\0A\00", [32 x i8] zeroinitializer }, align 32
@mt2063_init._entry_ptr.23 = internal global ptr @mt2063_init._entry.21, section ".printk_index", align 4
@MT2063B3_defaults = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\05\F0\19=,$,\04(\E1(\E0\00", [19 x i8] zeroinitializer }, align 32
@MT2063B1_defaults = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\05\F0\11\10\19\05\1Al\1B$\1C(\1D\8F\1E\14\1F\8F W\22!#<$ ,$-\87/\F30\0C1\1B,\04(\E1(\E0\00", [53 x i8] zeroinitializer }, align 32
@MT2063B0_defaults = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\19\05\1B\1D\1C\1F\1D\0F\1E?\1F\0F ?\22!#?$ %?'\EE,'0\03,\07-\87.\AA(\E1(\E0\00", [57 x i8] zeroinitializer }, align 32
@mt2063_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017mt2063 %s: addr 0x%02x, cnt %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt2063_read\00", [20 x i8] zeroinitializer }, align 32
@mt2063_read._entry_ptr = internal global ptr @mt2063_read._entry, section ".printk_index", align 4
@mt2063_read._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017mt2063 %s: addr 0x%02x, ret = %d, val = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@mt2063_read._entry_ptr.28 = internal global ptr @mt2063_read._entry.26, section ".printk_index", align 4
@mt2063_read._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Can't read from address 0x%02x,\0A\00", [61 x i8] zeroinitializer }, align 32
@mt2063_read._entry_ptr.31 = internal global ptr @mt2063_read._entry.29, section ".printk_index", align 4
@mt2063_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt2063_write\00", [19 x i8] zeroinitializer }, align 32
@mt2063_write._entry_ptr = internal global ptr @mt2063_write._entry, section ".printk_index", align 4
@mt2063_write._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s error ret=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mt2063_write._entry_ptr.35 = internal global ptr @mt2063_write._entry.33, section ".printk_index", align 4
@MT2063_SoftwareShutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.36, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MT2063_SoftwareShutdown\00", [40 x i8] zeroinitializer }, align 32
@MT2063_SoftwareShutdown._entry_ptr = internal global ptr @MT2063_SoftwareShutdown._entry, section ".printk_index", align 4
@MT2063_ClearPowerMaskBits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MT2063_ClearPowerMaskBits\00", [38 x i8] zeroinitializer }, align 32
@MT2063_ClearPowerMaskBits._entry_ptr = internal global ptr @MT2063_ClearPowerMaskBits._entry, section ".printk_index", align 4
@mt2063_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 2111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2063_set_params\00", [46 x i8] zeroinitializer }, align 32
@mt2063_set_params._entry_ptr = internal global ptr @mt2063_set_params._entry, section ".printk_index", align 4
@mt2063_set_params._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 2147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017mt2063 %s: Tuning to frequency: %d, bandwidth %d, foffset %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mt2063_set_params._entry_ptr.41 = internal global ptr @mt2063_set_params._entry.39, section ".printk_index", align 4
@MT2063_SetReceiverMode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.42, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MT2063_SetReceiverMode\00", [41 x i8] zeroinitializer }, align 32
@MT2063_SetReceiverMode._entry_ptr = internal global ptr @MT2063_SetReceiverMode._entry, section ".printk_index", align 4
@RFAGCEN = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@LNARIN = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\00\03\03\03\03", [26 x i8] zeroinitializer }, align 32
@FIFFQEN = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\01\01\01\01\01", [26 x i8] zeroinitializer }, align 32
@FIFFQ = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@ACLNAMAX = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1F\1F\1F\1F\1F\1F", [26 x i8] zeroinitializer }, align 32
@LNATGT = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",+++++", [26 x i8] zeroinitializer }, align 32
@ACRFMAX = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1F\1F\1F\1F\1F\1F", [26 x i8] zeroinitializer }, align 32
@PD1TGT = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"$$&&$&", [26 x i8] zeroinitializer }, align 32
@ACFIFMAX = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1D\1D\1D\1D\1D\1D", [26 x i8] zeroinitializer }, align 32
@PD2TGT = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(!&*\1E&", [26 x i8] zeroinitializer }, align 32
@RFOVDIS = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@FIFOVDIS = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@MT2063_SetReceiverMode._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017mt2063 %s: mt2063 mode changed to %s\0A\00", [56 x i8] zeroinitializer }, align 32
@MT2063_SetReceiverMode._entry_ptr.45 = internal global ptr @MT2063_SetReceiverMode._entry.43, section ".printk_index", align 4
@mt2063_mode_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [40 x i8] zeroinitializer }, align 32
@mt2063_setreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2063_setreg\00", [18 x i8] zeroinitializer }, align 32
@mt2063_setreg._entry_ptr = internal global ptr @mt2063_setreg._entry, section ".printk_index", align 4
@mt2063_get_dnc_output_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.47, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt2063_get_dnc_output_enable\00", [35 x i8] zeroinitializer }, align 32
@mt2063_get_dnc_output_enable._entry_ptr = internal global ptr @mt2063_get_dnc_output_enable._entry, section ".printk_index", align 4
@mt2063_set_dnc_output_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt2063_set_dnc_output_enable\00", [35 x i8] zeroinitializer }, align 32
@mt2063_set_dnc_output_enable._entry_ptr = internal global ptr @mt2063_set_dnc_output_enable._entry, section ".printk_index", align 4
@DNC1GC = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@DNC2GC = internal constant { [6 x i8], [26 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digital cable\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"analog cable\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"digital offair\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"digital offair without SAW\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"analog offair\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"analog offair 8vsb\00", [45 x i8] zeroinitializer }, align 32
@MT2063_Tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.55, ptr @.str.2, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MT2063_Tune\00", [20 x i8] zeroinitializer }, align 32
@MT2063_Tune._entry_ptr = internal global ptr @MT2063_Tune._entry, section ".printk_index", align 4
@MT2063_ResetExclZones._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.56, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MT2063_ResetExclZones\00", [42 x i8] zeroinitializer }, align 32
@MT2063_ResetExclZones._entry_ptr = internal global ptr @MT2063_ResetExclZones._entry, section ".printk_index", align 4
@MT2063_AddExclZone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.57, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MT2063_AddExclZone\00", [45 x i8] zeroinitializer }, align 32
@MT2063_AddExclZone._entry_ptr = internal global ptr @MT2063_AddExclZone._entry, section ".printk_index", align 4
@InsertNode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.58, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InsertNode\00", [21 x i8] zeroinitializer }, align 32
@InsertNode._entry_ptr = internal global ptr @InsertNode._entry, section ".printk_index", align 4
@RemoveNode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.59, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RemoveNode\00", [21 x i8] zeroinitializer }, align 32
@RemoveNode._entry_ptr = internal global ptr @RemoveNode._entry, section ".printk_index", align 4
@MT2063_ChooseFirstIF._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MT2063_ChooseFirstIF\00", [43 x i8] zeroinitializer }, align 32
@MT2063_ChooseFirstIF._entry_ptr = internal global ptr @MT2063_ChooseFirstIF._entry, section ".printk_index", align 4
@MT2063_AvoidSpurs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.61, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MT2063_AvoidSpurs\00", [46 x i8] zeroinitializer }, align 32
@MT2063_AvoidSpurs._entry_ptr = internal global ptr @MT2063_AvoidSpurs._entry, section ".printk_index", align 4
@IsSpurInBand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.62, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IsSpurInBand\00", [19 x i8] zeroinitializer }, align 32
@IsSpurInBand._entry_ptr = internal global ptr @IsSpurInBand._entry, section ".printk_index", align 4
@mt2063_lockStatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.63, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2063_lockStatus\00", [46 x i8] zeroinitializer }, align 32
@mt2063_lockStatus._entry_ptr = internal global ptr @mt2063_lockStatus._entry, section ".printk_index", align 4
@mt2063_set_analog_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 2031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt2063_set_analog_params\00", [39 x i8] zeroinitializer }, align 32
@mt2063_set_analog_params._entry_ptr = internal global ptr @mt2063_set_analog_params._entry, section ".printk_index", align 4
@mt2063_set_analog_params._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.64, ptr @.str.2, i32 2075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt2063_set_analog_params._entry_ptr.66 = internal global ptr @mt2063_set_analog_params._entry.65, section ".printk_index", align 4
@mt2063_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt2063_get_bandwidth\00", [43 x i8] zeroinitializer }, align 32
@mt2063_get_bandwidth._entry_ptr = internal global ptr @mt2063_get_bandwidth._entry, section ".printk_index", align 4
@mt2063_get_bandwidth._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 2185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017mt2063 %s: bandwidth: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mt2063_get_bandwidth._entry_ptr.70 = internal global ptr @mt2063_get_bandwidth._entry.68, section ".printk_index", align 4
@mt2063_get_if_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.71, ptr @.str.2, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt2063_get_if_frequency\00", [40 x i8] zeroinitializer }, align 32
@mt2063_get_if_frequency._entry_ptr = internal global ptr @mt2063_get_if_frequency._entry, section ".printk_index", align 4
@mt2063_get_if_frequency._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017mt2063 %s: IF frequency: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt2063_get_if_frequency._entry_ptr.74 = internal global ptr @mt2063_get_if_frequency._entry.72, section ".printk_index", align 4
@mt2063_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.75, ptr @.str.2, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt2063_get_status\00", [46 x i8] zeroinitializer }, align 32
@mt2063_get_status._entry_ptr = internal global ptr @mt2063_get_status._entry, section ".printk_index", align 4
@mt2063_get_status._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017mt2063 %s: Tuner status: %d\00", [34 x i8] zeroinitializer }, align 32
@mt2063_get_status._entry_ptr.78 = internal global ptr @mt2063_get_status._entry.76, section ".printk_index", align 4
@switch.table.mt2063_init = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 155, i64 156, i64 158]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 18]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 22, i32 21 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2213, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [11 x i8] c"mt2063_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2190, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2226, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2014, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1784, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1792, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1799, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1802, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1805, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1808, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1811, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1822, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1828, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"MT2063B3_defaults\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1761, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"MT2063B1_defaults\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1734, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"MT2063B0_defaults\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1709, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 299, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 321, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 330, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 251, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 263, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1349, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1320, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2111, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2146, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1180, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant [8 x i8] c"RFAGCEN\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 999, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"LNARIN\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1000, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"FIFFQEN\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1001, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"FIFFQ\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1002, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant [9 x i8] c"ACLNAMAX\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1005, i32 17 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"LNATGT\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1006, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant [8 x i8] c"ACRFMAX\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1008, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant [7 x i8] c"PD1TGT\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1009, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant [9 x i8] c"ACFIFMAX\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1011, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"PD2TGT\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1012, i32 17 }
@___asan_gen_.256 = private unnamed_addr constant [8 x i8] c"RFOVDIS\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1007, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant [9 x i8] c"FIFOVDIS\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1010, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1299, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"mt2063_mode_name\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 990, i32 20 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 275, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1020, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1045, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"DNC1GC\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1003, i32 17 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"DNC2GC\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1004, i32 17 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 991, i32 24 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 992, i32 27 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 993, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 994, i32 34 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 995, i32 28 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 996, i32 26 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1525, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 483, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 432, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 368, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 401, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 579, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 794, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 696, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 918, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2031, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2074, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2178, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2185, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2162, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2169, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1993, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [33 x i8] c"../drivers/media/tuners/mt2063.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2005, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [25 x i8] c"switch.table.mt2063_init\00", align 1
@llvm.compiler.used = appending global [158 x ptr] [ptr @InsertNode._entry, ptr @InsertNode._entry_ptr, ptr @IsSpurInBand._entry, ptr @IsSpurInBand._entry_ptr, ptr @MT2063_AddExclZone._entry, ptr @MT2063_AddExclZone._entry_ptr, ptr @MT2063_AvoidSpurs._entry, ptr @MT2063_AvoidSpurs._entry_ptr, ptr @MT2063_ChooseFirstIF._entry, ptr @MT2063_ChooseFirstIF._entry_ptr, ptr @MT2063_ClearPowerMaskBits._entry, ptr @MT2063_ClearPowerMaskBits._entry_ptr, ptr @MT2063_ResetExclZones._entry, ptr @MT2063_ResetExclZones._entry_ptr, ptr @MT2063_SetReceiverMode._entry, ptr @MT2063_SetReceiverMode._entry.43, ptr @MT2063_SetReceiverMode._entry_ptr, ptr @MT2063_SetReceiverMode._entry_ptr.45, ptr @MT2063_SoftwareShutdown._entry, ptr @MT2063_SoftwareShutdown._entry_ptr, ptr @MT2063_Tune._entry, ptr @MT2063_Tune._entry_ptr, ptr @RemoveNode._entry, ptr @RemoveNode._entry_ptr, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__ksymtab_mt2063_attach, ptr @__param_debug, ptr @mt2063_attach._entry, ptr @mt2063_attach._entry.3, ptr @mt2063_attach._entry_ptr, ptr @mt2063_attach._entry_ptr.5, ptr @mt2063_get_bandwidth._entry, ptr @mt2063_get_bandwidth._entry.68, ptr @mt2063_get_bandwidth._entry_ptr, ptr @mt2063_get_bandwidth._entry_ptr.70, ptr @mt2063_get_dnc_output_enable._entry, ptr @mt2063_get_dnc_output_enable._entry_ptr, ptr @mt2063_get_if_frequency._entry, ptr @mt2063_get_if_frequency._entry.72, ptr @mt2063_get_if_frequency._entry_ptr, ptr @mt2063_get_if_frequency._entry_ptr.74, ptr @mt2063_get_status._entry, ptr @mt2063_get_status._entry.76, ptr @mt2063_get_status._entry_ptr, ptr @mt2063_get_status._entry_ptr.78, ptr @mt2063_init._entry, ptr @mt2063_init._entry.15, ptr @mt2063_init._entry.18, ptr @mt2063_init._entry.21, ptr @mt2063_init._entry.8, ptr @mt2063_init._entry_ptr, ptr @mt2063_init._entry_ptr.10, ptr @mt2063_init._entry_ptr.17, ptr @mt2063_init._entry_ptr.20, ptr @mt2063_init._entry_ptr.23, ptr @mt2063_lockStatus._entry, ptr @mt2063_lockStatus._entry_ptr, ptr @mt2063_read._entry, ptr @mt2063_read._entry.26, ptr @mt2063_read._entry.29, ptr @mt2063_read._entry_ptr, ptr @mt2063_read._entry_ptr.28, ptr @mt2063_read._entry_ptr.31, ptr @mt2063_release._entry, ptr @mt2063_release._entry_ptr, ptr @mt2063_set_analog_params._entry, ptr @mt2063_set_analog_params._entry.65, ptr @mt2063_set_analog_params._entry_ptr, ptr @mt2063_set_analog_params._entry_ptr.66, ptr @mt2063_set_dnc_output_enable._entry, ptr @mt2063_set_dnc_output_enable._entry_ptr, ptr @mt2063_set_params._entry, ptr @mt2063_set_params._entry.39, ptr @mt2063_set_params._entry_ptr, ptr @mt2063_set_params._entry_ptr.41, ptr @mt2063_setreg._entry, ptr @mt2063_setreg._entry_ptr, ptr @mt2063_write._entry, ptr @mt2063_write._entry.33, ptr @mt2063_write._entry_ptr, ptr @mt2063_write._entry_ptr.35, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mt2063_ops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @MT2063B3_defaults, ptr @MT2063B1_defaults, ptr @MT2063B0_defaults, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @RFAGCEN, ptr @LNARIN, ptr @FIFFQEN, ptr @FIFFQ, ptr @ACLNAMAX, ptr @LNATGT, ptr @ACRFMAX, ptr @PD1TGT, ptr @ACFIFMAX, ptr @PD2TGT, ptr @RFOVDIS, ptr @FIFOVDIS, ptr @.str.44, ptr @mt2063_mode_name, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @DNC1GC, ptr @DNC2GC, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @switch.table.mt2063_init], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063B3_defaults to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063B1_defaults to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063B0_defaults to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_read._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_read._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_write._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_SoftwareShutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_ClearPowerMaskBits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_set_params._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_SetReceiverMode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RFAGCEN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LNARIN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FIFFQEN to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FIFFQ to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ACLNAMAX to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LNATGT to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ACRFMAX to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PD1TGT to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ACFIFMAX to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PD2TGT to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RFOVDIS to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @FIFOVDIS to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_SetReceiverMode._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_mode_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_setreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_dnc_output_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_set_dnc_output_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DNC1GC to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DNC2GC to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_Tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_ResetExclZones._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_AddExclZone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @InsertNode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RemoveNode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_ChooseFirstIF._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MT2063_AvoidSpurs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IsSpurInBand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_lockStatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_set_analog_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_set_analog_params._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_bandwidth._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_if_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_if_frequency._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2063_get_status._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt2063_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt2063_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1132) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %config7 = getelementptr inbounds %struct.mt2063_state, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config7, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %frontend = getelementptr inbounds %struct.mt2063_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fe, ptr %frontend, align 8
  %refclock = getelementptr inbounds %struct.mt2063_config, ptr %config, i32 0, i32 1
  %5 = ptrtoint ptr %refclock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refclock, align 4
  %div = udiv i32 %6, 1000
  %reference = getelementptr inbounds %struct.mt2063_state, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %reference to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %reference, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %8 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %9 = call ptr @memcpy(ptr %tuner_ops, ptr @mt2063_ops, i32 220)
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end6 ], [ null, %do.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2063_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2063_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %all_resets = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %all_resets) #7
  %2 = ptrtoint ptr %all_resets to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -16, ptr %all_resets, align 1
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %rcvr_mode = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %rcvr_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rcvr_mode, align 4
  %reg = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 16
  %call4 = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %reg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end12

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end3
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 4
  %switch.tableidx = add i8 %6, 101
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 4
  br i1 %7, label %switch.lookup, label %do.end20

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %6 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end12
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.mt2063_init, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %arrayidx27 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 16, i32 59
  %call28 = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 59, ptr noundef %arrayidx27, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %switch.lookup.do.end39_crit_edge, label %lor.lhs.false

switch.lookup.do.end39_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

lor.lhs.false:                                    ; preds = %switch.lookup
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp34.not = icmp sgt i8 %11, -1
  br i1 %cmp34.not, label %do.end51, label %lor.lhs.false.do.end39_crit_edge

lor.lhs.false.do.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end39:                                         ; preds = %lor.lhs.false.do.end39_crit_edge, %switch.lookup.do.end39_crit_edge
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg, align 4
  %conv43 = zext i8 %13 to i32
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 1
  %conv46 = zext i8 %15 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv43, i32 noundef %conv46) #10
  br label %cleanup

do.end51:                                         ; preds = %lor.lhs.false
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.load) #10
  %call54 = call fastcc i32 @mt2063_write(ptr noundef %1, i8 noundef zeroext 5, ptr noundef nonnull %all_resets, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end51.cleanup_crit_edge, label %if.end58

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %do.end51
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end58.cleanup_crit_edge [
    i8 -98, label %if.end58.land.rhs.preheader_crit_edge
    i8 -100, label %sw.bb63
    i8 -101, label %sw.bb64
  ]

if.end58.land.rhs.preheader_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb63:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

sw.bb64:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %sw.bb64, %sw.bb63, %if.end58.land.rhs.preheader_crit_edge
  %def.1396.ph = phi ptr [ @MT2063B3_defaults, %if.end58.land.rhs.preheader_crit_edge ], [ @MT2063B1_defaults, %sw.bb63 ], [ @MT2063B0_defaults, %sw.bb64 ]
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %def.1396 = phi ptr [ %incdec.ptr71, %while.body.land.rhs_crit_edge ], [ %def.1396.ph, %land.rhs.preheader ]
  %19 = ptrtoint ptr %def.1396 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %def.1396, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %while.body86.lr.ph, label %while.body

while.body86.lr.ph:                               ; preds = %land.rhs
  %arrayidx88 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 16, i32 20
  br label %while.body86

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, ptr %def.1396, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %incdec.ptr71 = getelementptr i8, ptr %def.1396, i32 2
  %21 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr, align 1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %val, align 1
  %call72 = call fastcc i32 @mt2063_write(ptr noundef %1, i8 noundef zeroext %20, ptr noundef nonnull %val, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  %cmp67 = icmp sgt i32 %call72, -1
  br i1 %cmp67, label %while.body.land.rhs_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.body86:                                     ; preds = %while.body86.while.body86_crit_edge, %while.body86.lr.ph
  %maxReads.0399 = phi i32 [ 10, %while.body86.lr.ph ], [ %dec, %while.body86.while.body86_crit_edge ]
  %dec = add nsw i32 %maxReads.0399, -1
  tail call void @msleep(i32 noundef 2) #7
  %call89 = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 20, ptr noundef %arrayidx88, i32 noundef 1)
  %24 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx88, align 4
  %26 = lshr i8 %25, 6
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call89)
  %cmp78 = icmp sgt i32 %call89, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp80.not = icmp ne i8 %27, 0
  %or.cond = select i1 %cmp78, i1 %cmp80.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maxReads.0399)
  %cmp83 = icmp ugt i32 %maxReads.0399, 1
  %or.cond391 = select i1 %or.cond, i1 %cmp83, i1 false
  br i1 %or.cond391, label %while.body86.while.body86_crit_edge, label %while.end94

while.body86.while.body86_crit_edge:              ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body86

while.end94:                                      ; preds = %while.body86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %phi.cmp = icmp ne i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp98 = icmp slt i32 %call89, 0
  %or.cond392 = select i1 %phi.cmp, i1 true, i1 %cmp98
  br i1 %or.cond392, label %while.end94.cleanup_crit_edge, label %if.end101

while.end94.cleanup_crit_edge:                    ; preds = %while.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %while.end94
  %arrayidx103 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 16, i32 8
  %call104 = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 8, ptr noundef %arrayidx103, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.end101.cleanup_crit_edge, label %if.end108

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end108:                                        ; preds = %if.end101
  %call110 = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %reg, i32 noundef 61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end108.cleanup_crit_edge, label %if.end114

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end114:                                        ; preds = %if.end108
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg, align 4
  %conv117 = zext i8 %29 to i32
  %tuner_id = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %tuner_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv117, ptr %tuner_id, align 4
  %AS_Data = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %AS_Data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16000000, ptr %AS_Data, align 4
  %32 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx103, align 4
  %conv122 = zext i8 %33 to i32
  %34 = mul nuw nsw i32 %conv122, 2000000
  %mul = add nuw nsw i32 %34, 1280000000
  %f_if1_Center = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 3
  %35 = ptrtoint ptr %f_if1_Center to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %f_if1_Center, align 4
  %f_if1_bw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 5
  %36 = ptrtoint ptr %f_if1_bw to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 22000000, ptr %f_if1_bw, align 4
  %f_out = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 7
  %37 = ptrtoint ptr %f_out to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 43750000, ptr %f_out, align 4
  %f_out_bw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 8
  %38 = ptrtoint ptr %f_out_bw to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6750000, ptr %f_out_bw, align 4
  %f_zif_bw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 13
  %39 = ptrtoint ptr %f_zif_bw to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2000000, ptr %f_zif_bw, align 4
  %f_LO1_Step = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 9
  %40 = ptrtoint ptr %f_LO1_Step to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 250000, ptr %f_LO1_Step, align 4
  %f_LO2_Step = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 10
  %41 = ptrtoint ptr %f_LO2_Step to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 50000, ptr %f_LO2_Step, align 4
  %maxH1 = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 15
  %42 = ptrtoint ptr %maxH1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 15, ptr %maxH1, align 4
  %maxH2 = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 16
  %43 = ptrtoint ptr %maxH2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %maxH2, align 4
  %f_min_LO_Separation = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 14
  %44 = ptrtoint ptr %f_min_LO_Separation to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1000000, ptr %f_min_LO_Separation, align 4
  %f_if1_Request = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 4
  %45 = ptrtoint ptr %f_if1_Request to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %f_if1_Request, align 4
  %f_LO1 = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 2
  %46 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -2113967296, ptr %f_LO1, align 4
  %f_LO2 = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 6
  %47 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1486249786, ptr %f_LO2, align 4
  %f_IF1_actual = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %f_IF1_actual to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul, ptr %f_IF1_actual, align 4
  %sub = sub nuw nsw i32 901000000, %34
  %f_in = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 1
  %49 = ptrtoint ptr %f_in to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %f_in, align 4
  %f_LO1_FracN_Avoid = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 11
  %50 = ptrtoint ptr %f_LO1_FracN_Avoid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %f_LO1_FracN_Avoid, align 4
  %f_LO2_FracN_Avoid = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 12
  %51 = ptrtoint ptr %f_LO2_FracN_Avoid to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 199999, ptr %f_LO2_FracN_Avoid, align 4
  %num_regs = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 15
  %52 = ptrtoint ptr %num_regs to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 61, ptr %num_regs, align 4
  %avoidDECT = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 17
  %53 = ptrtoint ptr %avoidDECT to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %avoidDECT, align 4
  %ctfilt_sw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %ctfilt_sw to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %ctfilt_sw, align 4
  %CTFiltMax = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 14
  %55 = ptrtoint ptr %CTFiltMax to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 69230000, ptr %CTFiltMax, align 4
  %arrayidx152 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 1
  %56 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 105770000, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 2
  %57 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 140350000, ptr %arrayidx154, align 4
  %arrayidx156 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 3
  %58 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 177110000, ptr %arrayidx156, align 4
  %arrayidx158 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 4
  %59 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 212860000, ptr %arrayidx158, align 4
  %arrayidx160 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 5
  %60 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 241130000, ptr %arrayidx160, align 4
  %arrayidx162 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 6
  %61 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 274370000, ptr %arrayidx162, align 4
  %arrayidx164 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 7
  %62 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 309820000, ptr %arrayidx164, align 4
  %arrayidx166 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 8
  %63 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 342450000, ptr %arrayidx166, align 4
  %arrayidx168 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 9
  %64 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 378870000, ptr %arrayidx168, align 4
  %arrayidx170 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 10
  %65 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 416210000, ptr %arrayidx170, align 4
  %arrayidx172 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 11
  %66 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 456500000, ptr %arrayidx172, align 4
  %arrayidx174 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 12
  %67 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 495790000, ptr %arrayidx174, align 4
  %arrayidx176 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 13
  %68 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 534530000, ptr %arrayidx176, align 4
  %arrayidx178 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 14
  %69 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 572610000, ptr %arrayidx178, align 4
  %arrayidx180 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 15
  %70 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 598970000, ptr %arrayidx180, align 4
  %arrayidx182 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 16
  %71 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 635910000, ptr %arrayidx182, align 4
  %arrayidx184 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 17
  %72 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 672130000, ptr %arrayidx184, align 4
  %arrayidx186 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 18
  %73 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 714840000, ptr %arrayidx186, align 4
  %arrayidx188 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 19
  %74 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 739660000, ptr %arrayidx188, align 4
  %arrayidx190 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 20
  %75 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 770410000, ptr %arrayidx190, align 4
  %arrayidx192 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 21
  %76 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 814660000, ptr %arrayidx192, align 4
  %arrayidx194 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 22
  %77 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 846950000, ptr %arrayidx194, align 4
  %arrayidx196 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 23
  %78 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 867820000, ptr %arrayidx196, align 4
  %arrayidx198 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 24
  %79 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 915980000, ptr %arrayidx198, align 4
  %arrayidx200 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 25
  %80 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 947450000, ptr %arrayidx200, align 4
  %arrayidx202 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 26
  %81 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 983110000, ptr %arrayidx202, align 4
  %arrayidx204 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 27
  %82 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1021630000, ptr %arrayidx204, align 4
  %arrayidx206 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 28
  %83 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1061870000, ptr %arrayidx206, align 4
  %arrayidx208 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 29
  %84 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1098330000, ptr %arrayidx208, align 4
  %arrayidx210 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 30
  %85 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1138990000, ptr %arrayidx210, align 4
  %arrayidx212 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 16, i32 42
  %86 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 10, ptr %arrayidx212, align 2
  %call215 = tail call fastcc i32 @mt2063_write(ptr noundef %1, i8 noundef zeroext 42, ptr noundef %arrayidx212, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %cmp216 = icmp slt i32 %call215, 0
  br i1 %cmp216, label %if.end114.cleanup_crit_edge, label %if.end219

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end219:                                        ; preds = %if.end114
  %call222 = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 8, ptr noundef %arrayidx103, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %cmp223 = icmp slt i32 %call222, 0
  br i1 %cmp223, label %if.end219.cleanup_crit_edge, label %if.end226

if.end219.cleanup_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end226:                                        ; preds = %if.end219
  %87 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx103, align 4
  %89 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx212, align 2
  %call234 = tail call fastcc i32 @mt2063_write(ptr noundef %1, i8 noundef zeroext 42, ptr noundef %arrayidx212, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %if.end226.cleanup_crit_edge, label %for.cond.preheader

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end226
  %conv229 = zext i8 %88 to i32
  %add244 = add nuw nsw i32 %conv229, 640
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %i.0402 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx242 = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 14, i32 %i.0402
  %90 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx242, align 4
  %div243 = udiv i32 %91, 768
  %mul245 = mul i32 %div243, %add244
  store i32 %mul245, ptr %arrayidx242, align 4
  %inc = add nuw nsw i32 %i.0402, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call248 = tail call fastcc i32 @MT2063_SoftwareShutdown(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %cmp249 = icmp slt i32 %call248, 0
  br i1 %cmp249, label %for.end.cleanup_crit_edge, label %if.end252

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end252:                                        ; preds = %for.end
  %call253 = tail call fastcc i32 @MT2063_ClearPowerMaskBits(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.end252.cleanup_crit_edge, label %if.end257

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end257:                                        ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #9
  %init = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %init to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %init, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end257, %if.end252.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end226.cleanup_crit_edge, %if.end219.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %while.end94.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end51.cleanup_crit_edge, %do.end39, %do.end20, %do.end9
  %retval.0 = phi i32 [ %call4, %do.end9 ], [ -19, %do.end20 ], [ -19, %do.end39 ], [ 0, %if.end257 ], [ %call54, %do.end51.cleanup_crit_edge ], [ -19, %if.end58.cleanup_crit_edge ], [ -19, %while.end94.cleanup_crit_edge ], [ %call104, %if.end101.cleanup_crit_edge ], [ %call110, %if.end108.cleanup_crit_edge ], [ %call215, %if.end114.cleanup_crit_edge ], [ %call222, %if.end219.cleanup_crit_edge ], [ %call234, %if.end226.cleanup_crit_edge ], [ %call248, %for.end.cleanup_crit_edge ], [ %call253, %if.end252.cleanup_crit_edge ], [ %call72, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %all_resets) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @MT2063_Sleep(ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 100) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2063_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %init = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %call = tail call i32 @mt2063_init(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3 = icmp ugt i32 %4, 1
  br i1 %cmp3, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp eq i32 %6, 0
  br i1 %cmp10, label %do.end9.cleanup_crit_edge, label %if.end12

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %6)
  %cmp17.inv = icmp ugt i32 %6, 7000000
  %. = select i1 %cmp17.inv, i32 8000000, i32 7000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %6)
  %cmp14.inv = icmp ugt i32 %6, 6000000
  %ch_bw.0 = select i1 %cmp14.inv, i32 %., i32 6000000
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %7 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delivery_system, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %8, label %if.end12.cleanup_crit_edge [
    i32 3, label %if.end12.sw.epilog_crit_edge
    i32 1, label %if.end12.sw.bb22_crit_edge
    i32 18, label %if.end12.sw.bb22_crit_edge91
  ]

if.end12.sw.bb22_crit_edge91:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

if.end12.sw.bb22_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb22:                                          ; preds = %if.end12.sw.bb22_crit_edge, %if.end12.sw.bb22_crit_edge91
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %if.end12.sw.epilog_crit_edge
  %rcvr_mode.0 = phi i32 [ 0, %sw.bb22 ], [ 2, %if.end12.sw.epilog_crit_edge ]
  %div2388.pn = lshr exact i32 %ch_bw.0, 1
  %pict2chanb_vsb.0 = sub nsw i32 0, %div2388.pn
  %f_LO2_Step = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %f_LO2_Step to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 125000, ptr %f_LO2_Step, align 4
  %f_out = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 7
  %11 = ptrtoint ptr %f_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 36125000, ptr %f_out, align 4
  %add28 = add nuw nsw i32 %ch_bw.0, 750000
  %f_out_bw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 8
  %12 = ptrtoint ptr %f_out_bw to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add28, ptr %f_out_bw, align 4
  %call30 = tail call fastcc i32 @MT2063_SetReceiverMode(ptr noundef %1, i32 noundef %rcvr_mode.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %sw.epilog.cleanup_crit_edge, label %do.body34

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body34:                                        ; preds = %sw.epilog
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp35.not = icmp eq i32 %13, 0
  br i1 %cmp35.not, label %do.body34.do.end44_crit_edge, label %do.end39

do.body34.do.end44_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dtv_property_cache, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %15, i32 noundef %ch_bw.0, i32 noundef %pict2chanb_vsb.0) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %do.body34.do.end44_crit_edge
  %16 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtv_property_cache, align 4
  %call49 = tail call fastcc i32 @MT2063_Tune(ptr noundef %1, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.end44.cleanup_crit_edge, label %if.end52

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dtv_property_cache, align 4
  %frequency54 = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %frequency54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %frequency54, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end44.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ %call, %if.then.cleanup_crit_edge ], [ -22, %do.end9.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call30, %sw.epilog.cleanup_crit_edge ], [ %call49, %do.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2063_set_analog_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %init = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %init, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then4, label %do.end3.if.end9_crit_edge

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %do.end3
  %call5 = tail call i32 @mt2063_init(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %do.end3.if.end9_crit_edge
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %6, label %if.end9.cleanup_crit_edge [
    i32 1, label %if.end9.sw.epilog_crit_edge
    i32 2, label %sw.bb10
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.end9
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std, align 8
  %and = and i64 %9, -46849
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool11.not = icmp eq i64 %and, 0
  br i1 %tobool11.not, label %if.else, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = and i64 %9, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp eq i64 %and14, 0
  %. = select i1 %tobool15.not, i32 8000000, i32 7000000
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb10.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %pict2chanb_vsb.0 = phi i32 [ -4000000, %if.end9.sw.epilog_crit_edge ], [ -1250000, %sw.bb10.sw.epilog_crit_edge ], [ -1250000, %if.else ]
  %ch_bw.0 = phi i32 [ 8000000, %if.end9.sw.epilog_crit_edge ], [ 6000000, %sw.bb10.sw.epilog_crit_edge ], [ %., %if.else ]
  %rcvr_mode.0 = phi i32 [ 4, %if.end9.sw.epilog_crit_edge ], [ 1, %sw.bb10.sw.epilog_crit_edge ], [ 1, %if.else ]
  %div2079 = lshr exact i32 %ch_bw.0, 1
  %add = add nsw i32 %div2079, %pict2chanb_vsb.0
  %sub21 = sub nsw i32 38900000, %add
  %f_LO2_Step = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 10
  %10 = ptrtoint ptr %f_LO2_Step to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 125000, ptr %f_LO2_Step, align 4
  %f_out = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 7
  %11 = ptrtoint ptr %f_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub21, ptr %f_out, align 4
  %add23 = add nuw nsw i32 %ch_bw.0, 750000
  %f_out_bw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 8
  %12 = ptrtoint ptr %f_out_bw to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add23, ptr %f_out_bw, align 4
  %call25 = tail call fastcc i32 @MT2063_SetReceiverMode(ptr noundef %1, i32 noundef %rcvr_mode.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %sw.epilog.cleanup_crit_edge, label %do.body29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body29:                                        ; preds = %sw.epilog
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp30.not = icmp eq i32 %13, 0
  br i1 %cmp30.not, label %do.body29.do.end39_crit_edge, label %do.end34

do.body29.do.end39_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.64, i32 noundef %15, i32 noundef %ch_bw.0, i32 noundef %pict2chanb_vsb.0) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body29.do.end39_crit_edge
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params, align 8
  %add43 = add i32 %17, %add
  %call44 = tail call fastcc i32 @MT2063_Tune(ptr noundef %1, i32 noundef %add43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end39.cleanup_crit_edge, label %if.end47

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %params, align 8
  %frequency49 = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %frequency49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %frequency49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end39.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ %call5, %if.then4.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call25, %sw.epilog.cleanup_crit_edge ], [ %call44, %do.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2063_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %init = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %init, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %f_out_bw = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 8
  %5 = ptrtoint ptr %f_out_bw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_out_bw, align 4
  %sub = add i32 %6, -750000
  %7 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %bw, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.67, i32 noundef %sub) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end3.cleanup_crit_edge ], [ 0, %do.end11 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2063_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.71) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %init = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %init, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %f_out = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 10, i32 7
  %5 = ptrtoint ptr %f_out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_out, align 4
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %freq, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %if.end5.cleanup_crit_edge, label %do.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end5.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end3.cleanup_crit_edge ], [ 0, %do.end11 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2063_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %tuner_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %init = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %init, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %5 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tuner_status, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp ugt i32 %6, 1
  br i1 %cmp.i, label %do.end.i, label %if.end5.do.end3.i_crit_edge

if.end5.do.end3.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end5.do.end3.i_crit_edge
  %tuner_id.i = getelementptr inbounds %struct.mt2063_state, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %tuner_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tuner_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 155, i32 %8)
  %cmp4.i = icmp eq i32 %8, 155
  %spec.select.i = select i1 %cmp4.i, i32 192, i32 136
  %arrayidx.i = getelementptr %struct.mt2063_state, ptr %1, i32 0, i32 16, i32 7
  br label %do.body7.i

do.body7.i:                                       ; preds = %if.end20.i.do.body7.i_crit_edge, %do.end3.i
  %nDelays.0.i = phi i32 [ 0, %do.end3.i ], [ %inc.i, %if.end20.i.do.body7.i_crit_edge ]
  %call8.i = tail call fastcc i32 @mt2063_read(ptr noundef %1, i8 noundef zeroext 7, ptr noundef %arrayidx.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.body7.i.cleanup_crit_edge, label %if.end11.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %do.body7.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %spec.select.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %spec.select.i)
  %cmp17.i = icmp eq i32 %and.i, %spec.select.i
  br i1 %cmp17.i, label %if.then11, label %if.end20.i

if.end20.i:                                       ; preds = %if.end11.i
  tail call void @msleep(i32 noundef 2) #7
  %inc.i = add nuw nsw i32 %nDelays.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end20.i.do.body13_crit_edge, label %if.end20.i.do.body7.i_crit_edge

if.end20.i.do.body7.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

if.end20.i.do.body13_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

if.then11:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %tuner_status, align 4
  br label %do.body13

do.body13:                                        ; preds = %if.then11, %if.end20.i.do.body13_crit_edge
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp14.not = icmp eq i32 %12, 0
  br i1 %cmp14.not, label %do.body13.cleanup_crit_edge, label %do.end18

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tuner_status, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.body13.cleanup_crit_edge, %do.body7.i.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end3.cleanup_crit_edge ], [ 0, %do.end18 ], [ 0, %do.body13.cleanup_crit_edge ], [ %call8.i, %do.body7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt2063_read(ptr nocapture noundef readonly %state, i8 noundef zeroext %subAddress, ptr noundef %pData, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %subAddress to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %cnt) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end3.if.end8_crit_edge, label %if.then4

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 %4(ptr noundef %1, i32 noundef 1) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end3.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp990.not = icmp eq i32 %cnt, 0
  br i1 %cmp990.not, label %if.end8.for.end_crit_edge, label %for.body.lr.ph

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end8
  %conv11 = zext i8 %subAddress to i32
  %config = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 2
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %flags19 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %len20 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %buf21 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #7
  %add = add i32 %i.091, %conv11
  %conv12 = trunc i32 %add to i8
  %5 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %6 = call ptr @memset(ptr %msg, i32 255, i32 24)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv14 = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv14, ptr %msg, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0, ptr %buf, align 4
  %15 = load i8, ptr %8, align 4
  %conv18 = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv18, ptr %arrayinit.element, align 4
  %17 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags19, align 2
  %18 = ptrtoint ptr %len20 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len20, align 4
  %add.ptr = getelementptr i8, ptr %pData, i32 %i.091
  %19 = ptrtoint ptr %buf21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %buf21, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %call23 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 2) #7
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp25 = icmp ugt i32 %22, 1
  br i1 %cmp25, label %do.end30, label %for.body.do.end39_crit_edge

for.body.do.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 1
  %conv35 = zext i8 %24 to i32
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %add, i32 noundef %call23, i32 noundef %conv35) #10
  br label %do.end39

do.end39:                                         ; preds = %do.end30, %for.body.do.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp40 = icmp slt i32 %call23, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #7
  br i1 %cmp40, label %do.end39.for.end_crit_edge, label %for.inc

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %do.end39
  %inc = add nuw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, %cnt
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end39.for.end_crit_edge, %if.end8.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %i.091, %do.end39.for.end_crit_edge ], [ %cnt, %for.inc.for.end_crit_edge ]
  %status.1 = phi i32 [ 0, %if.end8.for.end_crit_edge ], [ %call23, %do.end39.for.end_crit_edge ], [ %call23, %for.inc.for.end_crit_edge ]
  %25 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool47.not = icmp eq ptr %26, null
  br i1 %tobool47.not, label %for.end.if.end52_crit_edge, label %if.then48

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 %26(ptr noundef %1, i32 noundef 0) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %for.end.if.end52_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp53 = icmp slt i32 %status.1, 0
  br i1 %cmp53, label %do.end58, label %if.end52.if.end63_crit_edge

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %conv60 = zext i8 %subAddress to i32
  %add61 = add i32 %i.0.lcssa, %conv60
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %add61) #10
  br label %if.end63

if.end63:                                         ; preds = %do.end58, %if.end52.if.end63_crit_edge
  ret i32 %status.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt2063_write(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr nocapture noundef readonly %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [60 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frontend = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frontend, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf) #7
  %2 = call ptr @memset(ptr %buf, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %config = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = trunc i32 %len to i16
  %conv2 = add i16 %11, 1
  %12 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv2, ptr %len1, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %buf3, align 4
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp ugt i32 %14, 1
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %15 = ptrtoint ptr %buf3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %reg, ptr %16, align 1
  %18 = load ptr, ptr %buf3, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 1
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %len)
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1, i32 28
  %20 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %do.end7.if.end14_crit_edge, label %if.then10

do.end7.if.end14_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 %21(ptr noundef %1, i32 noundef 1) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.end7.if.end14_crit_edge
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %call15 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef 1) #7
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool18.not = icmp eq ptr %25, null
  br i1 %tobool18.not, label %if.end14.if.end23_crit_edge, label %if.then19

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 %25(ptr noundef %1, i32 noundef 0) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end14.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp24 = icmp slt i32 %call15, 0
  br i1 %cmp24, label %do.end29, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %call15) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end23.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf) #7
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_SoftwareShutdown(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36) #10
  br label %if.then6

if.then6:                                         ; preds = %do.end, %entry.if.then6_crit_edge
  %arrayidx = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 17
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = or i8 %2, 4
  store i8 %3, ptr %arrayidx, align 1
  %call16 = tail call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 17, ptr noundef %arrayidx, i32 noundef 1)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_ClearPowerMaskBits(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.if.then6_crit_edge

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37) #10
  br label %if.then6

if.then6:                                         ; preds = %do.end, %entry.if.then6_crit_edge
  %arrayidx = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 18
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 2
  %call13 = tail call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 18, ptr noundef %arrayidx, i32 noundef 1)
  %arrayidx24 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 17
  %2 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx24, align 1
  %4 = and i8 %3, -116
  store i8 %4, ptr %arrayidx24, align 1
  %call30 = tail call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 17, ptr noundef %arrayidx24, i32 noundef 1)
  %or31 = or i32 %call30, %call13
  ret i32 %or31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_SetReceiverMode(ptr noundef %state, i32 noundef %Mode) unnamed_addr #0 align 64 {
entry:
  %val.addr.i540 = alloca i8, align 1
  %val.addr.i529 = alloca i8, align 1
  %val.addr.i518 = alloca i8, align 1
  %val.addr.i507 = alloca i8, align 1
  %val.addr.i496 = alloca i8, align 1
  %val.addr.i485 = alloca i8, align 1
  %val.addr.i474 = alloca i8, align 1
  %val.addr.i463 = alloca i8, align 1
  %val.addr.i389.i = alloca i8, align 1
  %val.addr.i378.i = alloca i8, align 1
  %val.addr.i367.i = alloca i8, align 1
  %val.addr.i356.i = alloca i8, align 1
  %val.addr.i345.i = alloca i8, align 1
  %val.addr.i334.i = alloca i8, align 1
  %val.addr.i323.i = alloca i8, align 1
  %val.addr.i312.i = alloca i8, align 1
  %val.addr.i301.i = alloca i8, align 1
  %val.addr.i290.i = alloca i8, align 1
  %val.addr.i279.i = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.addr.i443 = alloca i8, align 1
  %val.addr.i432 = alloca i8, align 1
  %val.addr.i421 = alloca i8, align 1
  %val.addr.i410 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.42) #10
  br label %if.then8

if.then8:                                         ; preds = %do.end, %entry.if.then8_crit_edge
  %arrayidx = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 27
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %and = and i8 %2, -65
  %arrayidx9 = getelementptr [6 x i8], ptr @RFAGCEN, i32 0, i32 %Mode
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, i8 0, i8 64
  %or = or i8 %cond, %and
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %or)
  %cmp16.not = icmp eq i8 %2, %or
  br i1 %cmp16.not, label %if.then8.if.then25_crit_edge, label %if.then18

if.then8.if.then25_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then18:                                        ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %5 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %val.addr.i, align 1
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp ugt i32 %6, 1
  br i1 %cmp.i, label %do.end.i, label %if.then18.do.end3.i_crit_edge

if.then18.do.end3.i_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then18.do.end3.i_crit_edge
  %call8.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 27, ptr noundef nonnull %val.addr.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end46.thread560, label %if.end22.thread554

if.end22.thread554:                               ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %or, ptr %arrayidx, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %if.then25

if.end46.thread560:                               ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %if.end86

if.then25:                                        ; preds = %if.end22.thread554, %if.then8.if.then25_crit_edge
  %arrayidx28 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 44
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx28, align 4
  %and30 = and i8 %9, -4
  %arrayidx31 = getelementptr [6 x i8], ptr @LNARIN, i32 0, i32 %Mode
  %10 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx31, align 1
  %12 = and i8 %11, 3
  %or34 = or i8 %12, %and30
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %or34)
  %cmp40.not = icmp eq i8 %9, %or34
  br i1 %cmp40.not, label %if.then25.if.then49_crit_edge, label %if.then42

if.then25.if.then49_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then49

if.then42:                                        ; preds = %if.then25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i410)
  %13 = ptrtoint ptr %val.addr.i410 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or34, ptr %val.addr.i410, align 1
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i411 = icmp ugt i32 %14, 1
  br i1 %cmp.i411, label %do.end.i413, label %if.then42.do.end3.i416_crit_edge

if.then42.do.end3.i416_crit_edge:                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i416

do.end.i413:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %call.i412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i416

do.end3.i416:                                     ; preds = %do.end.i413, %if.then42.do.end3.i416_crit_edge
  %call8.i414 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 44, ptr noundef nonnull %val.addr.i410, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i414)
  %cmp9.i415 = icmp slt i32 %call8.i414, 0
  br i1 %cmp9.i415, label %if.end46, label %if.end46.thread

if.end46.thread:                                  ; preds = %do.end3.i416
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or34, ptr %arrayidx28, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i410)
  br label %if.then49

if.end46:                                         ; preds = %do.end3.i416
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i410)
  br label %if.end86

if.then49:                                        ; preds = %if.end46.thread, %if.then25.if.then49_crit_edge
  %arrayidx51 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 45
  %16 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx51, align 1
  %and53 = and i8 %17, 15
  %arrayidx54 = getelementptr [6 x i8], ptr @FIFFQEN, i32 0, i32 %Mode
  %18 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx54, align 1
  %shl = shl i8 %19, 7
  %or56 = or i8 %shl, %and53
  %arrayidx57 = getelementptr [6 x i8], ptr @FIFFQ, i32 0, i32 %Mode
  %20 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx57, align 1
  %shl59 = shl i8 %21, 4
  %or60 = or i8 %or56, %shl59
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %or60)
  %cmp66.not = icmp eq i8 %17, %or60
  br i1 %cmp66.not, label %if.then49.if.end86_crit_edge, label %if.then68

if.then49.if.end86_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then68:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i421)
  %22 = ptrtoint ptr %val.addr.i421 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or60, ptr %val.addr.i421, align 1
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i422 = icmp ugt i32 %23, 1
  br i1 %cmp.i422, label %do.end.i424, label %if.then68.do.end3.i427_crit_edge

if.then68.do.end3.i427_crit_edge:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i427

do.end.i424:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %call.i423 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i427

do.end3.i427:                                     ; preds = %do.end.i424, %if.then68.do.end3.i427_crit_edge
  %call8.i425 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 45, ptr noundef nonnull %val.addr.i421, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i425)
  %cmp9.i426 = icmp slt i32 %call8.i425, 0
  br i1 %cmp9.i426, label %do.end3.i427.mt2063_setreg.exit431_crit_edge, label %if.end12.i429

do.end3.i427.mt2063_setreg.exit431_crit_edge:     ; preds = %do.end3.i427
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit431

if.end12.i429:                                    ; preds = %do.end3.i427
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or60, ptr %arrayidx51, align 1
  br label %mt2063_setreg.exit431

mt2063_setreg.exit431:                            ; preds = %if.end12.i429, %do.end3.i427.mt2063_setreg.exit431_crit_edge
  %retval.0.i430 = phi i32 [ 0, %if.end12.i429 ], [ %call8.i425, %do.end3.i427.mt2063_setreg.exit431_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i421)
  %arrayidx72 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 40
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 4
  %27 = or i8 %26, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i432)
  %28 = ptrtoint ptr %val.addr.i432 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %val.addr.i432, align 1
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i433 = icmp ugt i32 %29, 1
  br i1 %cmp.i433, label %do.end.i435, label %mt2063_setreg.exit431.do.end3.i438_crit_edge

mt2063_setreg.exit431.do.end3.i438_crit_edge:     ; preds = %mt2063_setreg.exit431
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i438

do.end.i435:                                      ; preds = %mt2063_setreg.exit431
  call void @__sanitizer_cov_trace_pc() #9
  %call.i434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i438

do.end3.i438:                                     ; preds = %do.end.i435, %mt2063_setreg.exit431.do.end3.i438_crit_edge
  %call8.i436 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 40, ptr noundef nonnull %val.addr.i432, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i436)
  %cmp9.i437 = icmp slt i32 %call8.i436, 0
  br i1 %cmp9.i437, label %do.end3.i438.mt2063_setreg.exit442_crit_edge, label %if.end12.i440

do.end3.i438.mt2063_setreg.exit442_crit_edge:     ; preds = %do.end3.i438
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit442

if.end12.i440:                                    ; preds = %do.end3.i438
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %arrayidx72, align 1
  br label %mt2063_setreg.exit442

mt2063_setreg.exit442:                            ; preds = %if.end12.i440, %do.end3.i438.mt2063_setreg.exit442_crit_edge
  %retval.0.i441 = phi i32 [ 0, %if.end12.i440 ], [ %call8.i436, %do.end3.i438.mt2063_setreg.exit442_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i432)
  %or77 = or i32 %retval.0.i430, %retval.0.i441
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx72, align 4
  %33 = and i8 %32, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i443)
  %34 = ptrtoint ptr %val.addr.i443 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %val.addr.i443, align 1
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i444 = icmp ugt i32 %35, 1
  br i1 %cmp.i444, label %do.end.i446, label %mt2063_setreg.exit442.do.end3.i449_crit_edge

mt2063_setreg.exit442.do.end3.i449_crit_edge:     ; preds = %mt2063_setreg.exit442
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i449

do.end.i446:                                      ; preds = %mt2063_setreg.exit442
  call void @__sanitizer_cov_trace_pc() #9
  %call.i445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i449

do.end3.i449:                                     ; preds = %do.end.i446, %mt2063_setreg.exit442.do.end3.i449_crit_edge
  %call8.i447 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 40, ptr noundef nonnull %val.addr.i443, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i447)
  %cmp9.i448 = icmp slt i32 %call8.i447, 0
  br i1 %cmp9.i448, label %do.end3.i449.mt2063_setreg.exit453_crit_edge, label %if.end12.i451

do.end3.i449.mt2063_setreg.exit453_crit_edge:     ; preds = %do.end3.i449
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit453

if.end12.i451:                                    ; preds = %do.end3.i449
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %33, ptr %arrayidx72, align 1
  br label %mt2063_setreg.exit453

mt2063_setreg.exit453:                            ; preds = %if.end12.i451, %do.end3.i449.mt2063_setreg.exit453_crit_edge
  %retval.0.i452 = phi i32 [ 0, %if.end12.i451 ], [ %call8.i447, %do.end3.i449.mt2063_setreg.exit453_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i443)
  %or84 = or i32 %or77, %retval.0.i452
  br label %if.end86

if.end86:                                         ; preds = %mt2063_setreg.exit453, %if.then49.if.end86_crit_edge, %if.end46, %if.end46.thread560
  %status.4 = phi i32 [ %or84, %mt2063_setreg.exit453 ], [ 0, %if.then49.if.end86_crit_edge ], [ %call8.i414, %if.end46 ], [ %call8.i, %if.end46.thread560 ]
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i454 = icmp ugt i32 %37, 1
  br i1 %cmp.i454, label %do.end.i456, label %if.end86.mt2063_get_dnc_output_enable.exit_crit_edge

if.end86.mt2063_get_dnc_output_enable.exit_crit_edge: ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_get_dnc_output_enable.exit

do.end.i456:                                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %call.i455 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.47) #10
  br label %mt2063_get_dnc_output_enable.exit

mt2063_get_dnc_output_enable.exit:                ; preds = %do.end.i456, %if.end86.mt2063_get_dnc_output_enable.exit_crit_edge
  %arrayidx.i457 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 47
  %38 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i457, align 1
  %40 = and i8 %39, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp3.i = icmp eq i8 %40, 3
  %arrayidx7.i = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 48
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx7.i, align 4
  %43 = and i8 %42, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %43)
  %cmp10.i = icmp eq i8 %43, 3
  %..i = select i1 %cmp10.i, i32 0, i32 2
  %.1.i = select i1 %cmp10.i, i32 1, i32 3
  %.sink.i = select i1 %cmp3.i, i32 %..i, i32 %.1.i
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i458 = icmp ugt i32 %44, 1
  br i1 %cmp.i458, label %do.end.i460, label %mt2063_get_dnc_output_enable.exit.do.end3.i461_crit_edge

mt2063_get_dnc_output_enable.exit.do.end3.i461_crit_edge: ; preds = %mt2063_get_dnc_output_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i461

do.end.i460:                                      ; preds = %mt2063_get_dnc_output_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i459 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  br label %do.end3.i461

do.end3.i461:                                     ; preds = %do.end.i460, %mt2063_get_dnc_output_enable.exit.do.end3.i461_crit_edge
  %45 = zext i32 %.sink.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %.sink.i, label %do.end3.i461.unreachabledefault [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb46.i
    i32 2, label %sw.bb97.i
    i32 3, label %sw.bb149.i
  ]

sw.bb.i:                                          ; preds = %do.end3.i461
  %46 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i457, align 1
  %or.i = or i8 %47, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %or.i)
  %cmp9.not.i = icmp eq i8 %47, %or.i
  br i1 %cmp9.not.i, label %sw.bb.i.if.end14.i_crit_edge, label %if.then11.i

sw.bb.i.if.end14.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then11.i:                                      ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  %48 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or.i, ptr %val.addr.i.i, align 1
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i.i = icmp ugt i32 %49, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then11.i.do.end3.i.i_crit_edge

if.then11.i.do.end3.i.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.then11.i.do.end3.i.i_crit_edge
  %call8.i.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 47, ptr noundef nonnull %val.addr.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %do.end3.i.i.mt2063_setreg.exit.i_crit_edge, label %if.end12.i.i

do.end3.i.i.mt2063_setreg.exit.i_crit_edge:       ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit.i

if.end12.i.i:                                     ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %or.i, ptr %arrayidx.i457, align 1
  br label %mt2063_setreg.exit.i

mt2063_setreg.exit.i:                             ; preds = %if.end12.i.i, %do.end3.i.i.mt2063_setreg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end12.i.i ], [ %call8.i.i, %do.end3.i.i.mt2063_setreg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %mt2063_setreg.exit.i, %sw.bb.i.if.end14.i_crit_edge
  %status.0.i = phi i32 [ %retval.0.i.i, %mt2063_setreg.exit.i ], [ 0, %sw.bb.i.if.end14.i_crit_edge ]
  %51 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx7.i, align 4
  %or19.i = or i8 %52, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %or19.i)
  %cmp25.not.i = icmp eq i8 %52, %or19.i
  br i1 %cmp25.not.i, label %if.end14.i.if.end30.i_crit_edge, label %if.then27.i

if.end14.i.if.end30.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end14.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i279.i) #7
  %53 = ptrtoint ptr %val.addr.i279.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or19.i, ptr %val.addr.i279.i, align 1
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i280.i = icmp ugt i32 %54, 1
  br i1 %cmp.i280.i, label %do.end.i282.i, label %if.then27.i.do.end3.i285.i_crit_edge

if.then27.i.do.end3.i285.i_crit_edge:             ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i285.i

do.end.i282.i:                                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i281.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i285.i

do.end3.i285.i:                                   ; preds = %do.end.i282.i, %if.then27.i.do.end3.i285.i_crit_edge
  %call8.i283.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 48, ptr noundef nonnull %val.addr.i279.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i283.i)
  %cmp9.i284.i = icmp slt i32 %call8.i283.i, 0
  br i1 %cmp9.i284.i, label %do.end3.i285.i.mt2063_setreg.exit289.i_crit_edge, label %if.end12.i287.i

do.end3.i285.i.mt2063_setreg.exit289.i_crit_edge: ; preds = %do.end3.i285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit289.i

if.end12.i287.i:                                  ; preds = %do.end3.i285.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %or19.i, ptr %arrayidx7.i, align 1
  br label %mt2063_setreg.exit289.i

mt2063_setreg.exit289.i:                          ; preds = %if.end12.i287.i, %do.end3.i285.i.mt2063_setreg.exit289.i_crit_edge
  %retval.0.i288.i = phi i32 [ 0, %if.end12.i287.i ], [ %call8.i283.i, %do.end3.i285.i.mt2063_setreg.exit289.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i279.i) #7
  %or29.i = or i32 %retval.0.i288.i, %status.0.i
  br label %if.end30.i

if.end30.i:                                       ; preds = %mt2063_setreg.exit289.i, %if.end14.i.if.end30.i_crit_edge
  %status.1.i = phi i32 [ %or29.i, %mt2063_setreg.exit289.i ], [ %status.0.i, %if.end14.i.if.end30.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 32
  %56 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx32.i, align 4
  %and34.i = and i8 %57, -65
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %and34.i)
  %cmp40.not.i = icmp eq i8 %57, %and34.i
  br i1 %cmp40.not.i, label %if.end30.i.mt2063_set_dnc_output_enable.exit_crit_edge, label %if.then42.i

if.end30.i.mt2063_set_dnc_output_enable.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_set_dnc_output_enable.exit

if.then42.i:                                      ; preds = %if.end30.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i290.i) #7
  %58 = ptrtoint ptr %val.addr.i290.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %and34.i, ptr %val.addr.i290.i, align 1
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp.i291.i = icmp ugt i32 %59, 1
  br i1 %cmp.i291.i, label %do.end.i293.i, label %if.then42.i.do.end3.i296.i_crit_edge

if.then42.i.do.end3.i296.i_crit_edge:             ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i296.i

do.end.i293.i:                                    ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i292.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i296.i

do.end3.i296.i:                                   ; preds = %do.end.i293.i, %if.then42.i.do.end3.i296.i_crit_edge
  %call8.i294.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 32, ptr noundef nonnull %val.addr.i290.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i294.i)
  %cmp9.i295.i = icmp slt i32 %call8.i294.i, 0
  br i1 %cmp9.i295.i, label %do.end3.i296.i.mt2063_setreg.exit300.i_crit_edge, label %if.end12.i298.i

do.end3.i296.i.mt2063_setreg.exit300.i_crit_edge: ; preds = %do.end3.i296.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit300.i

if.end12.i298.i:                                  ; preds = %do.end3.i296.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %and34.i, ptr %arrayidx32.i, align 1
  br label %mt2063_setreg.exit300.i

mt2063_setreg.exit300.i:                          ; preds = %if.end12.i298.i, %do.end3.i296.i.mt2063_setreg.exit300.i_crit_edge
  %retval.0.i299.i = phi i32 [ 0, %if.end12.i298.i ], [ %call8.i294.i, %do.end3.i296.i.mt2063_setreg.exit300.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i290.i) #7
  %or44.i = or i32 %retval.0.i299.i, %status.1.i
  br label %mt2063_set_dnc_output_enable.exit

sw.bb46.i:                                        ; preds = %do.end3.i461
  %61 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i457, align 1
  %and50.i = and i8 %62, -4
  %rcvr_mode.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 12
  %63 = ptrtoint ptr %rcvr_mode.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rcvr_mode.i, align 4
  %arrayidx51.i = getelementptr [6 x i8], ptr @DNC1GC, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx51.i, align 1
  %67 = and i8 %66, 3
  %or54.i = or i8 %67, %and50.i
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %or54.i)
  %cmp60.not.i = icmp eq i8 %62, %or54.i
  br i1 %cmp60.not.i, label %sw.bb46.i.if.end65.i_crit_edge, label %if.then62.i

sw.bb46.i.if.end65.i_crit_edge:                   ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65.i

if.then62.i:                                      ; preds = %sw.bb46.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i301.i) #7
  %68 = ptrtoint ptr %val.addr.i301.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %or54.i, ptr %val.addr.i301.i, align 1
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.i302.i = icmp ugt i32 %69, 1
  br i1 %cmp.i302.i, label %do.end.i304.i, label %if.then62.i.do.end3.i307.i_crit_edge

if.then62.i.do.end3.i307.i_crit_edge:             ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i307.i

do.end.i304.i:                                    ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i303.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i307.i

do.end3.i307.i:                                   ; preds = %do.end.i304.i, %if.then62.i.do.end3.i307.i_crit_edge
  %call8.i305.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 47, ptr noundef nonnull %val.addr.i301.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i305.i)
  %cmp9.i306.i = icmp slt i32 %call8.i305.i, 0
  br i1 %cmp9.i306.i, label %do.end3.i307.i.mt2063_setreg.exit311.i_crit_edge, label %if.end12.i309.i

do.end3.i307.i.mt2063_setreg.exit311.i_crit_edge: ; preds = %do.end3.i307.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit311.i

if.end12.i309.i:                                  ; preds = %do.end3.i307.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %or54.i, ptr %arrayidx.i457, align 1
  br label %mt2063_setreg.exit311.i

mt2063_setreg.exit311.i:                          ; preds = %if.end12.i309.i, %do.end3.i307.i.mt2063_setreg.exit311.i_crit_edge
  %retval.0.i310.i = phi i32 [ 0, %if.end12.i309.i ], [ %call8.i305.i, %do.end3.i307.i.mt2063_setreg.exit311.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i301.i) #7
  br label %if.end65.i

if.end65.i:                                       ; preds = %mt2063_setreg.exit311.i, %sw.bb46.i.if.end65.i_crit_edge
  %status.2.i = phi i32 [ %retval.0.i310.i, %mt2063_setreg.exit311.i ], [ 0, %sw.bb46.i.if.end65.i_crit_edge ]
  %71 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx7.i, align 4
  %or70.i = or i8 %72, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %72, i8 %or70.i)
  %cmp76.not.i = icmp eq i8 %72, %or70.i
  br i1 %cmp76.not.i, label %if.end65.i.if.end81.i_crit_edge, label %if.then78.i

if.end65.i.if.end81.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.then78.i:                                      ; preds = %if.end65.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i312.i) #7
  %73 = ptrtoint ptr %val.addr.i312.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %or70.i, ptr %val.addr.i312.i, align 1
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i313.i = icmp ugt i32 %74, 1
  br i1 %cmp.i313.i, label %do.end.i315.i, label %if.then78.i.do.end3.i318.i_crit_edge

if.then78.i.do.end3.i318.i_crit_edge:             ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i318.i

do.end.i315.i:                                    ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i314.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i318.i

do.end3.i318.i:                                   ; preds = %do.end.i315.i, %if.then78.i.do.end3.i318.i_crit_edge
  %call8.i316.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 48, ptr noundef nonnull %val.addr.i312.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i316.i)
  %cmp9.i317.i = icmp slt i32 %call8.i316.i, 0
  br i1 %cmp9.i317.i, label %do.end3.i318.i.mt2063_setreg.exit322.i_crit_edge, label %if.end12.i320.i

do.end3.i318.i.mt2063_setreg.exit322.i_crit_edge: ; preds = %do.end3.i318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit322.i

if.end12.i320.i:                                  ; preds = %do.end3.i318.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %or70.i, ptr %arrayidx7.i, align 1
  br label %mt2063_setreg.exit322.i

mt2063_setreg.exit322.i:                          ; preds = %if.end12.i320.i, %do.end3.i318.i.mt2063_setreg.exit322.i_crit_edge
  %retval.0.i321.i = phi i32 [ 0, %if.end12.i320.i ], [ %call8.i316.i, %do.end3.i318.i.mt2063_setreg.exit322.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i312.i) #7
  %or80.i = or i32 %retval.0.i321.i, %status.2.i
  br label %if.end81.i

if.end81.i:                                       ; preds = %mt2063_setreg.exit322.i, %if.end65.i.if.end81.i_crit_edge
  %status.3.i = phi i32 [ %or80.i, %mt2063_setreg.exit322.i ], [ %status.2.i, %if.end65.i.if.end81.i_crit_edge ]
  %arrayidx83.i = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 32
  %76 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx83.i, align 4
  %and85.i = and i8 %77, -65
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %and85.i)
  %cmp91.not.i = icmp eq i8 %77, %and85.i
  br i1 %cmp91.not.i, label %if.end81.i.mt2063_set_dnc_output_enable.exit_crit_edge, label %if.then93.i

if.end81.i.mt2063_set_dnc_output_enable.exit_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_set_dnc_output_enable.exit

if.then93.i:                                      ; preds = %if.end81.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i323.i) #7
  %78 = ptrtoint ptr %val.addr.i323.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %and85.i, ptr %val.addr.i323.i, align 1
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp.i324.i = icmp ugt i32 %79, 1
  br i1 %cmp.i324.i, label %do.end.i326.i, label %if.then93.i.do.end3.i329.i_crit_edge

if.then93.i.do.end3.i329.i_crit_edge:             ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i329.i

do.end.i326.i:                                    ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i325.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i329.i

do.end3.i329.i:                                   ; preds = %do.end.i326.i, %if.then93.i.do.end3.i329.i_crit_edge
  %call8.i327.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 32, ptr noundef nonnull %val.addr.i323.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i327.i)
  %cmp9.i328.i = icmp slt i32 %call8.i327.i, 0
  br i1 %cmp9.i328.i, label %do.end3.i329.i.mt2063_setreg.exit333.i_crit_edge, label %if.end12.i331.i

do.end3.i329.i.mt2063_setreg.exit333.i_crit_edge: ; preds = %do.end3.i329.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit333.i

if.end12.i331.i:                                  ; preds = %do.end3.i329.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %and85.i, ptr %arrayidx83.i, align 1
  br label %mt2063_setreg.exit333.i

mt2063_setreg.exit333.i:                          ; preds = %if.end12.i331.i, %do.end3.i329.i.mt2063_setreg.exit333.i_crit_edge
  %retval.0.i332.i = phi i32 [ 0, %if.end12.i331.i ], [ %call8.i327.i, %do.end3.i329.i.mt2063_setreg.exit333.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i323.i) #7
  %or95.i = or i32 %retval.0.i332.i, %status.3.i
  br label %mt2063_set_dnc_output_enable.exit

sw.bb97.i:                                        ; preds = %do.end3.i461
  %81 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i457, align 1
  %or102.i = or i8 %82, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %or102.i)
  %cmp108.not.i = icmp eq i8 %82, %or102.i
  br i1 %cmp108.not.i, label %sw.bb97.i.if.end113.i_crit_edge, label %if.then110.i

sw.bb97.i.if.end113.i_crit_edge:                  ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.then110.i:                                     ; preds = %sw.bb97.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i334.i) #7
  %83 = ptrtoint ptr %val.addr.i334.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %or102.i, ptr %val.addr.i334.i, align 1
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i335.i = icmp ugt i32 %84, 1
  br i1 %cmp.i335.i, label %do.end.i337.i, label %if.then110.i.do.end3.i340.i_crit_edge

if.then110.i.do.end3.i340.i_crit_edge:            ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i340.i

do.end.i337.i:                                    ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i336.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i340.i

do.end3.i340.i:                                   ; preds = %do.end.i337.i, %if.then110.i.do.end3.i340.i_crit_edge
  %call8.i338.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 47, ptr noundef nonnull %val.addr.i334.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i338.i)
  %cmp9.i339.i = icmp slt i32 %call8.i338.i, 0
  br i1 %cmp9.i339.i, label %do.end3.i340.i.mt2063_setreg.exit344.i_crit_edge, label %if.end12.i342.i

do.end3.i340.i.mt2063_setreg.exit344.i_crit_edge: ; preds = %do.end3.i340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit344.i

if.end12.i342.i:                                  ; preds = %do.end3.i340.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %or102.i, ptr %arrayidx.i457, align 1
  br label %mt2063_setreg.exit344.i

mt2063_setreg.exit344.i:                          ; preds = %if.end12.i342.i, %do.end3.i340.i.mt2063_setreg.exit344.i_crit_edge
  %retval.0.i343.i = phi i32 [ 0, %if.end12.i342.i ], [ %call8.i338.i, %do.end3.i340.i.mt2063_setreg.exit344.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i334.i) #7
  br label %if.end113.i

if.end113.i:                                      ; preds = %mt2063_setreg.exit344.i, %sw.bb97.i.if.end113.i_crit_edge
  %status.4.i = phi i32 [ %retval.0.i343.i, %mt2063_setreg.exit344.i ], [ 0, %sw.bb97.i.if.end113.i_crit_edge ]
  %86 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx7.i, align 4
  %and117.i = and i8 %87, -4
  %rcvr_mode118.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 12
  %88 = ptrtoint ptr %rcvr_mode118.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rcvr_mode118.i, align 4
  %arrayidx119.i = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx119.i, align 1
  %92 = and i8 %91, 3
  %or122.i = or i8 %92, %and117.i
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %or122.i)
  %cmp128.not.i = icmp eq i8 %87, %or122.i
  br i1 %cmp128.not.i, label %if.end113.i.if.end133.i_crit_edge, label %if.then130.i

if.end113.i.if.end133.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i

if.then130.i:                                     ; preds = %if.end113.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i345.i) #7
  %93 = ptrtoint ptr %val.addr.i345.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %or122.i, ptr %val.addr.i345.i, align 1
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp.i346.i = icmp ugt i32 %94, 1
  br i1 %cmp.i346.i, label %do.end.i348.i, label %if.then130.i.do.end3.i351.i_crit_edge

if.then130.i.do.end3.i351.i_crit_edge:            ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i351.i

do.end.i348.i:                                    ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i347.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i351.i

do.end3.i351.i:                                   ; preds = %do.end.i348.i, %if.then130.i.do.end3.i351.i_crit_edge
  %call8.i349.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 48, ptr noundef nonnull %val.addr.i345.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i349.i)
  %cmp9.i350.i = icmp slt i32 %call8.i349.i, 0
  br i1 %cmp9.i350.i, label %do.end3.i351.i.mt2063_setreg.exit355.i_crit_edge, label %if.end12.i353.i

do.end3.i351.i.mt2063_setreg.exit355.i_crit_edge: ; preds = %do.end3.i351.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit355.i

if.end12.i353.i:                                  ; preds = %do.end3.i351.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %or122.i, ptr %arrayidx7.i, align 1
  br label %mt2063_setreg.exit355.i

mt2063_setreg.exit355.i:                          ; preds = %if.end12.i353.i, %do.end3.i351.i.mt2063_setreg.exit355.i_crit_edge
  %retval.0.i354.i = phi i32 [ 0, %if.end12.i353.i ], [ %call8.i349.i, %do.end3.i351.i.mt2063_setreg.exit355.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i345.i) #7
  %or132.i = or i32 %retval.0.i354.i, %status.4.i
  br label %if.end133.i

if.end133.i:                                      ; preds = %mt2063_setreg.exit355.i, %if.end113.i.if.end133.i_crit_edge
  %status.5.i = phi i32 [ %or132.i, %mt2063_setreg.exit355.i ], [ %status.4.i, %if.end113.i.if.end133.i_crit_edge ]
  %arrayidx135.i = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 32
  %96 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx135.i, align 4
  %or137.i = or i8 %97, 64
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %or137.i)
  %cmp143.not.i = icmp eq i8 %97, %or137.i
  br i1 %cmp143.not.i, label %if.end133.i.mt2063_set_dnc_output_enable.exit_crit_edge, label %if.then145.i

if.end133.i.mt2063_set_dnc_output_enable.exit_crit_edge: ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_set_dnc_output_enable.exit

if.then145.i:                                     ; preds = %if.end133.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i356.i) #7
  %98 = ptrtoint ptr %val.addr.i356.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %or137.i, ptr %val.addr.i356.i, align 1
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i357.i = icmp ugt i32 %99, 1
  br i1 %cmp.i357.i, label %do.end.i359.i, label %if.then145.i.do.end3.i362.i_crit_edge

if.then145.i.do.end3.i362.i_crit_edge:            ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i362.i

do.end.i359.i:                                    ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i358.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i362.i

do.end3.i362.i:                                   ; preds = %do.end.i359.i, %if.then145.i.do.end3.i362.i_crit_edge
  %call8.i360.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 32, ptr noundef nonnull %val.addr.i356.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i360.i)
  %cmp9.i361.i = icmp slt i32 %call8.i360.i, 0
  br i1 %cmp9.i361.i, label %do.end3.i362.i.mt2063_setreg.exit366.i_crit_edge, label %if.end12.i364.i

do.end3.i362.i.mt2063_setreg.exit366.i_crit_edge: ; preds = %do.end3.i362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit366.i

if.end12.i364.i:                                  ; preds = %do.end3.i362.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %or137.i, ptr %arrayidx135.i, align 1
  br label %mt2063_setreg.exit366.i

mt2063_setreg.exit366.i:                          ; preds = %if.end12.i364.i, %do.end3.i362.i.mt2063_setreg.exit366.i_crit_edge
  %retval.0.i365.i = phi i32 [ 0, %if.end12.i364.i ], [ %call8.i360.i, %do.end3.i362.i.mt2063_setreg.exit366.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i356.i) #7
  %or147.i = or i32 %retval.0.i365.i, %status.5.i
  br label %mt2063_set_dnc_output_enable.exit

sw.bb149.i:                                       ; preds = %do.end3.i461
  %101 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i457, align 1
  %and153.i = and i8 %102, -4
  %rcvr_mode154.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 12
  %103 = ptrtoint ptr %rcvr_mode154.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rcvr_mode154.i, align 4
  %arrayidx155.i = getelementptr [6 x i8], ptr @DNC1GC, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx155.i, align 1
  %107 = and i8 %106, 3
  %or158.i = or i8 %107, %and153.i
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %or158.i)
  %cmp164.not.i = icmp eq i8 %102, %or158.i
  br i1 %cmp164.not.i, label %sw.bb149.i.if.end169.i_crit_edge, label %if.then166.i

sw.bb149.i.if.end169.i_crit_edge:                 ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169.i

if.then166.i:                                     ; preds = %sw.bb149.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i367.i) #7
  %108 = ptrtoint ptr %val.addr.i367.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %or158.i, ptr %val.addr.i367.i, align 1
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i368.i = icmp ugt i32 %109, 1
  br i1 %cmp.i368.i, label %do.end.i370.i, label %if.then166.i.do.end3.i373.i_crit_edge

if.then166.i.do.end3.i373.i_crit_edge:            ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i373.i

do.end.i370.i:                                    ; preds = %if.then166.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i369.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i373.i

do.end3.i373.i:                                   ; preds = %do.end.i370.i, %if.then166.i.do.end3.i373.i_crit_edge
  %call8.i371.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 47, ptr noundef nonnull %val.addr.i367.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i371.i)
  %cmp9.i372.i = icmp slt i32 %call8.i371.i, 0
  br i1 %cmp9.i372.i, label %do.end3.i373.i.mt2063_setreg.exit377.i_crit_edge, label %if.end12.i375.i

do.end3.i373.i.mt2063_setreg.exit377.i_crit_edge: ; preds = %do.end3.i373.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit377.i

if.end12.i375.i:                                  ; preds = %do.end3.i373.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %or158.i, ptr %arrayidx.i457, align 1
  br label %mt2063_setreg.exit377.i

mt2063_setreg.exit377.i:                          ; preds = %if.end12.i375.i, %do.end3.i373.i.mt2063_setreg.exit377.i_crit_edge
  %retval.0.i376.i = phi i32 [ 0, %if.end12.i375.i ], [ %call8.i371.i, %do.end3.i373.i.mt2063_setreg.exit377.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i367.i) #7
  br label %if.end169.i

if.end169.i:                                      ; preds = %mt2063_setreg.exit377.i, %sw.bb149.i.if.end169.i_crit_edge
  %status.6.i = phi i32 [ %retval.0.i376.i, %mt2063_setreg.exit377.i ], [ 0, %sw.bb149.i.if.end169.i_crit_edge ]
  %111 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx7.i, align 4
  %and173.i = and i8 %112, -4
  %113 = ptrtoint ptr %rcvr_mode154.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %rcvr_mode154.i, align 4
  %arrayidx175.i = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %114
  %115 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx175.i, align 1
  %117 = and i8 %116, 3
  %or178.i = or i8 %117, %and173.i
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %or178.i)
  %cmp184.not.i = icmp eq i8 %112, %or178.i
  br i1 %cmp184.not.i, label %if.end169.i.if.end189.i_crit_edge, label %if.then186.i

if.end169.i.if.end189.i_crit_edge:                ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189.i

if.then186.i:                                     ; preds = %if.end169.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i378.i) #7
  %118 = ptrtoint ptr %val.addr.i378.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %or178.i, ptr %val.addr.i378.i, align 1
  %119 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp.i379.i = icmp ugt i32 %119, 1
  br i1 %cmp.i379.i, label %do.end.i381.i, label %if.then186.i.do.end3.i384.i_crit_edge

if.then186.i.do.end3.i384.i_crit_edge:            ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i384.i

do.end.i381.i:                                    ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i380.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i384.i

do.end3.i384.i:                                   ; preds = %do.end.i381.i, %if.then186.i.do.end3.i384.i_crit_edge
  %call8.i382.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 48, ptr noundef nonnull %val.addr.i378.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i382.i)
  %cmp9.i383.i = icmp slt i32 %call8.i382.i, 0
  br i1 %cmp9.i383.i, label %do.end3.i384.i.mt2063_setreg.exit388.i_crit_edge, label %if.end12.i386.i

do.end3.i384.i.mt2063_setreg.exit388.i_crit_edge: ; preds = %do.end3.i384.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit388.i

if.end12.i386.i:                                  ; preds = %do.end3.i384.i
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %or178.i, ptr %arrayidx7.i, align 1
  br label %mt2063_setreg.exit388.i

mt2063_setreg.exit388.i:                          ; preds = %if.end12.i386.i, %do.end3.i384.i.mt2063_setreg.exit388.i_crit_edge
  %retval.0.i387.i = phi i32 [ 0, %if.end12.i386.i ], [ %call8.i382.i, %do.end3.i384.i.mt2063_setreg.exit388.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i378.i) #7
  %or188.i = or i32 %retval.0.i387.i, %status.6.i
  br label %if.end189.i

if.end189.i:                                      ; preds = %mt2063_setreg.exit388.i, %if.end169.i.if.end189.i_crit_edge
  %status.7.i = phi i32 [ %or188.i, %mt2063_setreg.exit388.i ], [ %status.6.i, %if.end169.i.if.end189.i_crit_edge ]
  %arrayidx191.i = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 32
  %121 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx191.i, align 4
  %or193.i = or i8 %122, 64
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %or193.i)
  %cmp199.not.i = icmp eq i8 %122, %or193.i
  br i1 %cmp199.not.i, label %if.end189.i.mt2063_set_dnc_output_enable.exit_crit_edge, label %if.then201.i

if.end189.i.mt2063_set_dnc_output_enable.exit_crit_edge: ; preds = %if.end189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_set_dnc_output_enable.exit

if.then201.i:                                     ; preds = %if.end189.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i389.i) #7
  %123 = ptrtoint ptr %val.addr.i389.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %or193.i, ptr %val.addr.i389.i, align 1
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %cmp.i390.i = icmp ugt i32 %124, 1
  br i1 %cmp.i390.i, label %do.end.i392.i, label %if.then201.i.do.end3.i395.i_crit_edge

if.then201.i.do.end3.i395.i_crit_edge:            ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i395.i

do.end.i392.i:                                    ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i391.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i395.i

do.end3.i395.i:                                   ; preds = %do.end.i392.i, %if.then201.i.do.end3.i395.i_crit_edge
  %call8.i393.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 32, ptr noundef nonnull %val.addr.i389.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i393.i)
  %cmp9.i394.i = icmp slt i32 %call8.i393.i, 0
  br i1 %cmp9.i394.i, label %do.end3.i395.i.mt2063_setreg.exit399.i_crit_edge, label %if.end12.i397.i

do.end3.i395.i.mt2063_setreg.exit399.i_crit_edge: ; preds = %do.end3.i395.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit399.i

if.end12.i397.i:                                  ; preds = %do.end3.i395.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %or193.i, ptr %arrayidx191.i, align 1
  br label %mt2063_setreg.exit399.i

mt2063_setreg.exit399.i:                          ; preds = %if.end12.i397.i, %do.end3.i395.i.mt2063_setreg.exit399.i_crit_edge
  %retval.0.i398.i = phi i32 [ 0, %if.end12.i397.i ], [ %call8.i393.i, %do.end3.i395.i.mt2063_setreg.exit399.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i389.i) #7
  %or203.i = or i32 %retval.0.i398.i, %status.7.i
  br label %mt2063_set_dnc_output_enable.exit

do.end3.i461.unreachabledefault:                  ; preds = %do.end3.i461
  unreachable

mt2063_set_dnc_output_enable.exit:                ; preds = %mt2063_setreg.exit399.i, %if.end189.i.mt2063_set_dnc_output_enable.exit_crit_edge, %mt2063_setreg.exit366.i, %if.end133.i.mt2063_set_dnc_output_enable.exit_crit_edge, %mt2063_setreg.exit333.i, %if.end81.i.mt2063_set_dnc_output_enable.exit_crit_edge, %mt2063_setreg.exit300.i, %if.end30.i.mt2063_set_dnc_output_enable.exit_crit_edge
  %status.8.i = phi i32 [ %or203.i, %mt2063_setreg.exit399.i ], [ %status.7.i, %if.end189.i.mt2063_set_dnc_output_enable.exit_crit_edge ], [ %or147.i, %mt2063_setreg.exit366.i ], [ %status.5.i, %if.end133.i.mt2063_set_dnc_output_enable.exit_crit_edge ], [ %or95.i, %mt2063_setreg.exit333.i ], [ %status.3.i, %if.end81.i.mt2063_set_dnc_output_enable.exit_crit_edge ], [ %or44.i, %mt2063_setreg.exit300.i ], [ %status.1.i, %if.end30.i.mt2063_set_dnc_output_enable.exit_crit_edge ]
  %or90 = or i32 %status.8.i, %status.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or90)
  %cmp91 = icmp sgt i32 %or90, -1
  br i1 %cmp91, label %if.then93, label %mt2063_set_dnc_output_enable.exit.if.end310_crit_edge

mt2063_set_dnc_output_enable.exit.if.end310_crit_edge: ; preds = %mt2063_set_dnc_output_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.then93:                                        ; preds = %mt2063_set_dnc_output_enable.exit
  %arrayidx96 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 23
  %126 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx96, align 1
  %and98 = and i8 %127, -32
  %arrayidx99 = getelementptr [6 x i8], ptr @ACLNAMAX, i32 0, i32 %Mode
  %128 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx99, align 1
  %130 = and i8 %129, 31
  %or102 = or i8 %130, %and98
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %or102)
  %cmp108.not = icmp eq i8 %127, %or102
  br i1 %cmp108.not, label %if.then93.if.then117_crit_edge, label %if.then110

if.then93.if.then117_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.then110:                                       ; preds = %if.then93
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i463)
  %131 = ptrtoint ptr %val.addr.i463 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %or102, ptr %val.addr.i463, align 1
  %132 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp.i464 = icmp ugt i32 %132, 1
  br i1 %cmp.i464, label %do.end.i466, label %if.then110.do.end3.i469_crit_edge

if.then110.do.end3.i469_crit_edge:                ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i469

do.end.i466:                                      ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %call.i465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i469

do.end3.i469:                                     ; preds = %do.end.i466, %if.then110.do.end3.i469_crit_edge
  %call8.i467 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 23, ptr noundef nonnull %val.addr.i463, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i467)
  %cmp9.i468 = icmp slt i32 %call8.i467, 0
  br i1 %cmp9.i468, label %do.end3.i469.if.end114_crit_edge, label %if.end12.i471

do.end3.i469.if.end114_crit_edge:                 ; preds = %do.end3.i469
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.end12.i471:                                    ; preds = %do.end3.i469
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %or102, ptr %arrayidx96, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.end12.i471, %do.end3.i469.if.end114_crit_edge
  %retval.0.i472 = phi i32 [ 0, %if.end12.i471 ], [ %call8.i467, %do.end3.i469.if.end114_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i463)
  %or112 = or i32 %retval.0.i472, %or90
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or112)
  %cmp115 = icmp sgt i32 %or112, -1
  br i1 %cmp115, label %if.end114.if.then117_crit_edge, label %if.end114.if.end310_crit_edge

if.end114.if.end310_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end114.if.then117_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.then117:                                       ; preds = %if.end114.if.then117_crit_edge, %if.then93.if.then117_crit_edge
  %status.6565 = phi i32 [ %or112, %if.end114.if.then117_crit_edge ], [ %or90, %if.then93.if.then117_crit_edge ]
  %arrayidx120 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 26
  %134 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx120, align 2
  %and122 = and i8 %135, -64
  %arrayidx123 = getelementptr [6 x i8], ptr @LNATGT, i32 0, i32 %Mode
  %136 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx123, align 1
  %138 = and i8 %137, 63
  %or126 = or i8 %138, %and122
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %or126)
  %cmp132.not = icmp eq i8 %135, %or126
  br i1 %cmp132.not, label %if.then117.if.then141_crit_edge, label %if.then134

if.then117.if.then141_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.then134:                                       ; preds = %if.then117
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i474)
  %139 = ptrtoint ptr %val.addr.i474 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %or126, ptr %val.addr.i474, align 1
  %140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp.i475 = icmp ugt i32 %140, 1
  br i1 %cmp.i475, label %do.end.i477, label %if.then134.do.end3.i480_crit_edge

if.then134.do.end3.i480_crit_edge:                ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i480

do.end.i477:                                      ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  %call.i476 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i480

do.end3.i480:                                     ; preds = %do.end.i477, %if.then134.do.end3.i480_crit_edge
  %call8.i478 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 26, ptr noundef nonnull %val.addr.i474, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i478)
  %cmp9.i479 = icmp slt i32 %call8.i478, 0
  br i1 %cmp9.i479, label %do.end3.i480.if.end138_crit_edge, label %if.end12.i482

do.end3.i480.if.end138_crit_edge:                 ; preds = %do.end3.i480
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.end12.i482:                                    ; preds = %do.end3.i480
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %or126, ptr %arrayidx120, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.end12.i482, %do.end3.i480.if.end138_crit_edge
  %retval.0.i483 = phi i32 [ 0, %if.end12.i482 ], [ %call8.i478, %do.end3.i480.if.end138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i474)
  %or136 = or i32 %retval.0.i483, %status.6565
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or136)
  %cmp139 = icmp sgt i32 %or136, -1
  br i1 %cmp139, label %if.end138.if.then141_crit_edge, label %if.end138.if.end310_crit_edge

if.end138.if.end310_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end138.if.then141_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then141

if.then141:                                       ; preds = %if.end138.if.then141_crit_edge, %if.then117.if.then141_crit_edge
  %status.8574 = phi i32 [ %or136, %if.end138.if.then141_crit_edge ], [ %status.6565, %if.then117.if.then141_crit_edge ]
  %arrayidx144 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 24
  %142 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx144, align 4
  %and146 = and i8 %143, -32
  %arrayidx147 = getelementptr [6 x i8], ptr @ACRFMAX, i32 0, i32 %Mode
  %144 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx147, align 1
  %146 = and i8 %145, 31
  %or150 = or i8 %146, %and146
  call void @__sanitizer_cov_trace_cmp1(i8 %143, i8 %or150)
  %cmp156.not = icmp eq i8 %143, %or150
  br i1 %cmp156.not, label %if.then141.if.then165_crit_edge, label %if.then158

if.then141.if.then165_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then165

if.then158:                                       ; preds = %if.then141
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i485)
  %147 = ptrtoint ptr %val.addr.i485 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %or150, ptr %val.addr.i485, align 1
  %148 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp.i486 = icmp ugt i32 %148, 1
  br i1 %cmp.i486, label %do.end.i488, label %if.then158.do.end3.i491_crit_edge

if.then158.do.end3.i491_crit_edge:                ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i491

do.end.i488:                                      ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %call.i487 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i491

do.end3.i491:                                     ; preds = %do.end.i488, %if.then158.do.end3.i491_crit_edge
  %call8.i489 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 24, ptr noundef nonnull %val.addr.i485, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i489)
  %cmp9.i490 = icmp slt i32 %call8.i489, 0
  br i1 %cmp9.i490, label %do.end3.i491.if.end162_crit_edge, label %if.end12.i493

do.end3.i491.if.end162_crit_edge:                 ; preds = %do.end3.i491
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.end12.i493:                                    ; preds = %do.end3.i491
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %or150, ptr %arrayidx144, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.end12.i493, %do.end3.i491.if.end162_crit_edge
  %retval.0.i494 = phi i32 [ 0, %if.end12.i493 ], [ %call8.i489, %do.end3.i491.if.end162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i485)
  %or160 = or i32 %retval.0.i494, %status.8574
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or160)
  %cmp163 = icmp sgt i32 %or160, -1
  br i1 %cmp163, label %if.end162.if.then165_crit_edge, label %if.end162.if.end310_crit_edge

if.end162.if.end310_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end162.if.then165_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then165

if.then165:                                       ; preds = %if.end162.if.then165_crit_edge, %if.then141.if.then165_crit_edge
  %status.10580 = phi i32 [ %or160, %if.end162.if.then165_crit_edge ], [ %status.8574, %if.then141.if.then165_crit_edge ]
  %150 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx, align 1
  %and170 = and i8 %151, -64
  %arrayidx171 = getelementptr [6 x i8], ptr @PD1TGT, i32 0, i32 %Mode
  %152 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx171, align 1
  %154 = and i8 %153, 63
  %or174 = or i8 %154, %and170
  call void @__sanitizer_cov_trace_cmp1(i8 %151, i8 %or174)
  %cmp180.not = icmp eq i8 %151, %or174
  br i1 %cmp180.not, label %if.then165.if.then189_crit_edge, label %if.then182

if.then165.if.then189_crit_edge:                  ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then189

if.then182:                                       ; preds = %if.then165
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i496)
  %155 = ptrtoint ptr %val.addr.i496 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %or174, ptr %val.addr.i496, align 1
  %156 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp.i497 = icmp ugt i32 %156, 1
  br i1 %cmp.i497, label %do.end.i499, label %if.then182.do.end3.i502_crit_edge

if.then182.do.end3.i502_crit_edge:                ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i502

do.end.i499:                                      ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  %call.i498 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i502

do.end3.i502:                                     ; preds = %do.end.i499, %if.then182.do.end3.i502_crit_edge
  %call8.i500 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 27, ptr noundef nonnull %val.addr.i496, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i500)
  %cmp9.i501 = icmp slt i32 %call8.i500, 0
  br i1 %cmp9.i501, label %do.end3.i502.if.end186_crit_edge, label %if.end12.i504

do.end3.i502.if.end186_crit_edge:                 ; preds = %do.end3.i502
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.end12.i504:                                    ; preds = %do.end3.i502
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %or174, ptr %arrayidx, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.end12.i504, %do.end3.i502.if.end186_crit_edge
  %retval.0.i505 = phi i32 [ 0, %if.end12.i504 ], [ %call8.i500, %do.end3.i502.if.end186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i496)
  %or184 = or i32 %retval.0.i505, %status.10580
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or184)
  %cmp187 = icmp sgt i32 %or184, -1
  br i1 %cmp187, label %if.end186.if.then189_crit_edge, label %if.end186.if.end310_crit_edge

if.end186.if.end310_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end186.if.then189_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then189

if.then189:                                       ; preds = %if.end186.if.then189_crit_edge, %if.then165.if.then189_crit_edge
  %status.12586 = phi i32 [ %or184, %if.end186.if.then189_crit_edge ], [ %status.10580, %if.then165.if.then189_crit_edge ]
  %arrayidx191 = getelementptr [6 x i8], ptr @ACFIFMAX, i32 0, i32 %Mode
  %158 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx191, align 1
  %reg192 = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 16
  %160 = ptrtoint ptr %reg192 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %reg192, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -98, i8 %161)
  %cmp195.not = icmp eq i8 %161, -98
  %162 = tail call i8 @llvm.umin.i8(i8 %159, i8 5)
  %spec.select = select i1 %cmp195.not, i8 %159, i8 %162
  %arrayidx203 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 25
  %163 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx203, align 1
  %and205 = and i8 %164, -32
  %165 = and i8 %spec.select, 31
  %or208 = or i8 %165, %and205
  call void @__sanitizer_cov_trace_cmp1(i8 %164, i8 %or208)
  %cmp214.not = icmp eq i8 %164, %or208
  br i1 %cmp214.not, label %if.then189.if.then223_crit_edge, label %if.then216

if.then189.if.then223_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then223

if.then216:                                       ; preds = %if.then189
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i507)
  %166 = ptrtoint ptr %val.addr.i507 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %or208, ptr %val.addr.i507, align 1
  %167 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp.i508 = icmp ugt i32 %167, 1
  br i1 %cmp.i508, label %do.end.i510, label %if.then216.do.end3.i513_crit_edge

if.then216.do.end3.i513_crit_edge:                ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i513

do.end.i510:                                      ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #9
  %call.i509 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i513

do.end3.i513:                                     ; preds = %do.end.i510, %if.then216.do.end3.i513_crit_edge
  %call8.i511 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 25, ptr noundef nonnull %val.addr.i507, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i511)
  %cmp9.i512 = icmp slt i32 %call8.i511, 0
  br i1 %cmp9.i512, label %do.end3.i513.if.end220_crit_edge, label %if.end12.i515

do.end3.i513.if.end220_crit_edge:                 ; preds = %do.end3.i513
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220

if.end12.i515:                                    ; preds = %do.end3.i513
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %or208, ptr %arrayidx203, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.end12.i515, %do.end3.i513.if.end220_crit_edge
  %retval.0.i516 = phi i32 [ 0, %if.end12.i515 ], [ %call8.i511, %do.end3.i513.if.end220_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i507)
  %or218 = or i32 %retval.0.i516, %status.12586
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or218)
  %cmp221 = icmp sgt i32 %or218, -1
  br i1 %cmp221, label %if.end220.if.then223_crit_edge, label %if.end220.if.end310_crit_edge

if.end220.if.end310_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end220.if.then223_crit_edge:                   ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then223

if.then223:                                       ; preds = %if.end220.if.then223_crit_edge, %if.then189.if.then223_crit_edge
  %status.14592 = phi i32 [ %or218, %if.end220.if.then223_crit_edge ], [ %status.12586, %if.then189.if.then223_crit_edge ]
  %arrayidx226 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 28
  %169 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx226, align 4
  %and228 = and i8 %170, -64
  %arrayidx229 = getelementptr [6 x i8], ptr @PD2TGT, i32 0, i32 %Mode
  %171 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx229, align 1
  %173 = and i8 %172, 63
  %or232 = or i8 %173, %and228
  call void @__sanitizer_cov_trace_cmp1(i8 %170, i8 %or232)
  %cmp238.not = icmp eq i8 %170, %or232
  br i1 %cmp238.not, label %if.then223.if.then247_crit_edge, label %if.then240

if.then223.if.then247_crit_edge:                  ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then247

if.then240:                                       ; preds = %if.then223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i518)
  %174 = ptrtoint ptr %val.addr.i518 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %or232, ptr %val.addr.i518, align 1
  %175 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp.i519 = icmp ugt i32 %175, 1
  br i1 %cmp.i519, label %do.end.i521, label %if.then240.do.end3.i524_crit_edge

if.then240.do.end3.i524_crit_edge:                ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i524

do.end.i521:                                      ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #9
  %call.i520 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i524

do.end3.i524:                                     ; preds = %do.end.i521, %if.then240.do.end3.i524_crit_edge
  %call8.i522 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 28, ptr noundef nonnull %val.addr.i518, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i522)
  %cmp9.i523 = icmp slt i32 %call8.i522, 0
  br i1 %cmp9.i523, label %do.end3.i524.if.end244_crit_edge, label %if.end12.i526

do.end3.i524.if.end244_crit_edge:                 ; preds = %do.end3.i524
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end244

if.end12.i526:                                    ; preds = %do.end3.i524
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %or232, ptr %arrayidx226, align 1
  br label %if.end244

if.end244:                                        ; preds = %if.end12.i526, %do.end3.i524.if.end244_crit_edge
  %retval.0.i527 = phi i32 [ 0, %if.end12.i526 ], [ %call8.i522, %do.end3.i524.if.end244_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i518)
  %or242 = or i32 %retval.0.i527, %status.14592
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or242)
  %cmp245 = icmp sgt i32 %or242, -1
  br i1 %cmp245, label %if.end244.if.then247_crit_edge, label %if.end244.if.end310_crit_edge

if.end244.if.end310_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end244.if.then247_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then247

if.then247:                                       ; preds = %if.end244.if.then247_crit_edge, %if.then223.if.then247_crit_edge
  %status.16598 = phi i32 [ %or242, %if.end244.if.then247_crit_edge ], [ %status.14592, %if.then223.if.then247_crit_edge ]
  %177 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx120, align 2
  %and251 = and i8 %178, 127
  %arrayidx252 = getelementptr [6 x i8], ptr @RFOVDIS, i32 0, i32 %Mode
  %179 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx252, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool254.not = icmp eq i8 %180, 0
  %cond255 = select i1 %tobool254.not, i8 0, i8 -128
  %or256 = or i8 %cond255, %and251
  call void @__sanitizer_cov_trace_cmp1(i8 %178, i8 %or256)
  %cmp262.not = icmp eq i8 %178, %or256
  br i1 %cmp262.not, label %if.then247.if.then271_crit_edge, label %if.then264

if.then247.if.then271_crit_edge:                  ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then271

if.then264:                                       ; preds = %if.then247
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i529)
  %181 = ptrtoint ptr %val.addr.i529 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %or256, ptr %val.addr.i529, align 1
  %182 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp.i530 = icmp ugt i32 %182, 1
  br i1 %cmp.i530, label %do.end.i532, label %if.then264.do.end3.i535_crit_edge

if.then264.do.end3.i535_crit_edge:                ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i535

do.end.i532:                                      ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  %call.i531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i535

do.end3.i535:                                     ; preds = %do.end.i532, %if.then264.do.end3.i535_crit_edge
  %call8.i533 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 26, ptr noundef nonnull %val.addr.i529, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i533)
  %cmp9.i534 = icmp slt i32 %call8.i533, 0
  br i1 %cmp9.i534, label %do.end3.i535.if.end268_crit_edge, label %if.end12.i537

do.end3.i535.if.end268_crit_edge:                 ; preds = %do.end3.i535
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end268

if.end12.i537:                                    ; preds = %do.end3.i535
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %or256, ptr %arrayidx120, align 1
  br label %if.end268

if.end268:                                        ; preds = %if.end12.i537, %do.end3.i535.if.end268_crit_edge
  %retval.0.i538 = phi i32 [ 0, %if.end12.i537 ], [ %call8.i533, %do.end3.i535.if.end268_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i529)
  %or266 = or i32 %retval.0.i538, %status.16598
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or266)
  %cmp269 = icmp sgt i32 %or266, -1
  br i1 %cmp269, label %if.end268.if.then271_crit_edge, label %if.end268.if.end310_crit_edge

if.end268.if.end310_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end268.if.then271_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then271

if.then271:                                       ; preds = %if.end268.if.then271_crit_edge, %if.then247.if.then271_crit_edge
  %status.17604 = phi i32 [ %or266, %if.end268.if.then271_crit_edge ], [ %status.16598, %if.then247.if.then271_crit_edge ]
  %184 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx, align 1
  %and275 = and i8 %185, 127
  %arrayidx276 = getelementptr [6 x i8], ptr @FIFOVDIS, i32 0, i32 %Mode
  %186 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx276, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool278.not = icmp eq i8 %187, 0
  %cond279 = select i1 %tobool278.not, i8 0, i8 -128
  %or280 = or i8 %cond279, %and275
  call void @__sanitizer_cov_trace_cmp1(i8 %185, i8 %or280)
  %cmp286.not = icmp eq i8 %185, %or280
  br i1 %cmp286.not, label %if.then271.if.then295_crit_edge, label %if.then288

if.then271.if.then295_crit_edge:                  ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then295

if.then288:                                       ; preds = %if.then271
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i540)
  %188 = ptrtoint ptr %val.addr.i540 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %or280, ptr %val.addr.i540, align 1
  %189 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp.i541 = icmp ugt i32 %189, 1
  br i1 %cmp.i541, label %do.end.i543, label %if.then288.do.end3.i546_crit_edge

if.then288.do.end3.i546_crit_edge:                ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i546

do.end.i543:                                      ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  %call.i542 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i546

do.end3.i546:                                     ; preds = %do.end.i543, %if.then288.do.end3.i546_crit_edge
  %call8.i544 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 27, ptr noundef nonnull %val.addr.i540, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i544)
  %cmp9.i545 = icmp slt i32 %call8.i544, 0
  br i1 %cmp9.i545, label %do.end3.i546.if.end292_crit_edge, label %if.end12.i548

do.end3.i546.if.end292_crit_edge:                 ; preds = %do.end3.i546
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end292

if.end12.i548:                                    ; preds = %do.end3.i546
  call void @__sanitizer_cov_trace_pc() #9
  %190 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %or280, ptr %arrayidx, align 1
  br label %if.end292

if.end292:                                        ; preds = %if.end12.i548, %do.end3.i546.if.end292_crit_edge
  %retval.0.i549 = phi i32 [ 0, %if.end12.i548 ], [ %call8.i544, %do.end3.i546.if.end292_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i540)
  %or290 = or i32 %retval.0.i549, %status.17604
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or290)
  %cmp293 = icmp sgt i32 %or290, -1
  br i1 %cmp293, label %if.end292.if.then295_crit_edge, label %if.end292.if.end310_crit_edge

if.end292.if.end310_crit_edge:                    ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.end292.if.then295_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then295

if.then295:                                       ; preds = %if.end292.if.then295_crit_edge, %if.then271.if.then295_crit_edge
  %status.18611 = phi i32 [ %or290, %if.end292.if.then295_crit_edge ], [ %status.17604, %if.then271.if.then295_crit_edge ]
  %rcvr_mode = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 12
  %191 = ptrtoint ptr %rcvr_mode to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %Mode, ptr %rcvr_mode, align 4
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp297.not = icmp eq i32 %192, 0
  br i1 %cmp297.not, label %if.then295.if.end310_crit_edge, label %do.end302

if.then295.if.end310_crit_edge:                   ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

do.end302:                                        ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx305 = getelementptr [6 x ptr], ptr @mt2063_mode_name, i32 0, i32 %Mode
  %193 = ptrtoint ptr %arrayidx305 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx305, align 4
  %call306 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, ptr noundef %194) #10
  br label %if.end310

if.end310:                                        ; preds = %do.end302, %if.then295.if.end310_crit_edge, %if.end292.if.end310_crit_edge, %if.end268.if.end310_crit_edge, %if.end244.if.end310_crit_edge, %if.end220.if.end310_crit_edge, %if.end186.if.end310_crit_edge, %if.end162.if.end310_crit_edge, %if.end138.if.end310_crit_edge, %if.end114.if.end310_crit_edge, %mt2063_set_dnc_output_enable.exit.if.end310_crit_edge
  %status.18607 = phi i32 [ %status.18611, %if.then295.if.end310_crit_edge ], [ %status.18611, %do.end302 ], [ %or290, %if.end292.if.end310_crit_edge ], [ %or266, %if.end268.if.end310_crit_edge ], [ %or242, %if.end244.if.end310_crit_edge ], [ %or218, %if.end220.if.end310_crit_edge ], [ %or184, %if.end186.if.end310_crit_edge ], [ %or160, %if.end162.if.end310_crit_edge ], [ %or136, %if.end138.if.end310_crit_edge ], [ %or112, %if.end114.if.end310_crit_edge ], [ %or90, %mt2063_set_dnc_output_enable.exit.if.end310_crit_edge ]
  ret i32 %status.18607
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_Tune(ptr noundef %state, i32 noundef %f_in) unnamed_addr #0 align 64 {
entry:
  %fm.i = alloca i32, align 4
  %fp.i = alloca i32, align 4
  %val.addr.i383 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.55) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = add i32 %f_in, -1100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1056000001, i32 %1)
  %2 = icmp ult i32 %1, -1056000001
  br i1 %2, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %AS_Data = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10
  %f_out = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 7
  %3 = ptrtoint ptr %f_out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_out, align 4
  %5 = add i32 %4, -57000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21000001, i32 %5)
  %6 = icmp ult i32 %5, -21000001
  br i1 %6, label %if.end7.cleanup_crit_edge, label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %f_LO1 = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_LO1, align 4
  %f_LO2 = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 6
  %9 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_LO2, align 4
  %ctfilt_sw = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 13
  %11 = ptrtoint ptr %ctfilt_sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctfilt_sw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17 = icmp eq i32 %12, 1
  br i1 %cmp17, label %if.then18, label %if.end14.if.then53_crit_edge

if.end14.if.then53_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.then18:                                        ; preds = %if.end14
  %arrayidx = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 42
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 2
  %or = or i8 %14, 8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %or)
  %cmp24.not = icmp eq i8 %14, %or
  br i1 %cmp24.not, label %if.then18.if.end29_crit_edge, label %if.then26

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %if.then18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %15 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or, ptr %val.addr.i, align 1
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp ugt i32 %16, 1
  br i1 %cmp.i, label %do.end.i, label %if.then26.do.end3.i_crit_edge

if.then26.do.end3.i_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then26.do.end3.i_crit_edge
  %call8.i = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 42, ptr noundef nonnull %val.addr.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end3.i.mt2063_setreg.exit_crit_edge, label %if.end12.i

do.end3.i.mt2063_setreg.exit_crit_edge:           ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit

if.end12.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or, ptr %arrayidx, align 1
  br label %mt2063_setreg.exit

mt2063_setreg.exit:                               ; preds = %if.end12.i, %do.end3.i.mt2063_setreg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ %call8.i, %do.end3.i.mt2063_setreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  br label %if.end29

if.end29:                                         ; preds = %mt2063_setreg.exit, %if.then18.if.end29_crit_edge
  %status.0 = phi i32 [ %retval.0.i, %mt2063_setreg.exit ], [ 0, %if.then18.if.end29_crit_edge ]
  %arrayidx31 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 43
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29
  %idx.05.i = phi i32 [ 0, %if.end29 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i382 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 14, i32 %idx.05.i
  %20 = ptrtoint ptr %arrayidx.i382 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i382, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %f_in)
  %cmp1.not.i = icmp ult i32 %21, %f_in
  br i1 %cmp1.not.i, label %for.inc.i, label %for.body.i.FindClearTuneFilter.exit_crit_edge

for.body.i.FindClearTuneFilter.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FindClearTuneFilter.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %for.inc.i.FindClearTuneFilter.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.FindClearTuneFilter.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %FindClearTuneFilter.exit

FindClearTuneFilter.exit:                         ; preds = %for.inc.i.FindClearTuneFilter.exit_crit_edge, %for.body.i.FindClearTuneFilter.exit_crit_edge
  %RFBand.0.i = phi i32 [ 31, %for.inc.i.FindClearTuneFilter.exit_crit_edge ], [ %idx.05.i, %for.body.i.FindClearTuneFilter.exit_crit_edge ]
  %22 = and i8 %19, -32
  %23 = trunc i32 %RFBand.0.i to i8
  %conv37 = or i8 %22, %23
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv37, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv37, i8 %19)
  %cmp44.not = icmp eq i8 %conv37, %19
  br i1 %cmp44.not, label %FindClearTuneFilter.exit.if.end50_crit_edge, label %if.then46

FindClearTuneFilter.exit.if.end50_crit_edge:      ; preds = %FindClearTuneFilter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then46:                                        ; preds = %FindClearTuneFilter.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i383)
  %25 = ptrtoint ptr %val.addr.i383 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %19, ptr %val.addr.i383, align 1
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i384 = icmp ugt i32 %26, 1
  br i1 %cmp.i384, label %do.end.i386, label %if.then46.do.end3.i389_crit_edge

if.then46.do.end3.i389_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i389

do.end.i386:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %call.i385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.46) #10
  br label %do.end3.i389

do.end3.i389:                                     ; preds = %do.end.i386, %if.then46.do.end3.i389_crit_edge
  %call8.i387 = call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 43, ptr noundef nonnull %val.addr.i383, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i387)
  %cmp9.i388 = icmp slt i32 %call8.i387, 0
  br i1 %cmp9.i388, label %do.end3.i389.mt2063_setreg.exit393_crit_edge, label %if.end12.i391

do.end3.i389.mt2063_setreg.exit393_crit_edge:     ; preds = %do.end3.i389
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt2063_setreg.exit393

if.end12.i391:                                    ; preds = %do.end3.i389
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %19, ptr %arrayidx31, align 1
  br label %mt2063_setreg.exit393

mt2063_setreg.exit393:                            ; preds = %if.end12.i391, %do.end3.i389.mt2063_setreg.exit393_crit_edge
  %retval.0.i392 = phi i32 [ 0, %if.end12.i391 ], [ %call8.i387, %do.end3.i389.mt2063_setreg.exit393_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i383)
  %or48 = or i32 %retval.0.i392, %status.0
  br label %if.end50

if.end50:                                         ; preds = %mt2063_setreg.exit393, %FindClearTuneFilter.exit.if.end50_crit_edge
  %status.1 = phi i32 [ %or48, %mt2063_setreg.exit393 ], [ %status.0, %FindClearTuneFilter.exit.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.1)
  %cmp51 = icmp sgt i32 %status.1, -1
  br i1 %cmp51, label %if.end50.if.then53_crit_edge, label %if.end50.if.end60_crit_edge

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end50.if.then53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

if.then53:                                        ; preds = %if.end50.if.then53_crit_edge, %if.end14.if.then53_crit_edge
  %status.1466 = phi i32 [ %status.1, %if.end50.if.then53_crit_edge ], [ 0, %if.end14.if.then53_crit_edge ]
  %arrayidx55 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 8
  %call56 = tail call fastcc i32 @mt2063_read(ptr noundef %state, i8 noundef zeroext 8, ptr noundef %arrayidx55, i32 noundef 1)
  %or57 = or i32 %call56, %status.1466
  %28 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx55, align 4
  %phi.cast = zext i8 %29 to i32
  %phi.bo.neg = mul nsw i32 %phi.cast, -8
  %phi.bo = add nsw i32 %phi.bo.neg, -4992
  br label %if.end60

if.end60:                                         ; preds = %if.then53, %if.end50.if.end60_crit_edge
  %fiffc.0.neg = phi i32 [ %phi.bo, %if.then53 ], [ -6016, %if.end50.if.end60_crit_edge ]
  %status.2 = phi i32 [ %or57, %if.then53 ], [ %status.1, %if.end50.if.end60_crit_edge ]
  %f_in62 = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %f_in62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %f_in, ptr %f_in62, align 4
  %f_if1_Request = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 4
  %31 = ptrtoint ptr %f_if1_Request to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f_if1_Request, align 4
  %add = add i32 %32, %f_in
  %f_LO1_Step = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 9
  %33 = ptrtoint ptr %f_LO1_Step to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_LO1_Step, align 4
  %35 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %AS_Data, align 4
  %37 = urem i32 %add, %36
  %div110.i = lshr i32 %34, 1
  %add.i = add i32 %37, %div110.i
  %38 = urem i32 %add.i, %34
  %39 = add i32 %32, %div110.i
  %sub = sub i32 %39, %38
  store i32 %sub, ptr %f_if1_Request, align 4
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i394 = icmp ugt i32 %40, 1
  br i1 %cmp.i394, label %do.end.i396, label %if.end60.do.end3.i398_crit_edge

if.end60.do.end3.i398_crit_edge:                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i398

do.end.i396:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call.i395 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.56) #10
  br label %do.end3.i398

do.end3.i398:                                     ; preds = %do.end.i396, %if.end60.do.end3.i398_crit_edge
  %nZones.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 21
  %41 = ptrtoint ptr %nZones.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %nZones.i, align 4
  %usedZones.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 23
  %42 = ptrtoint ptr %usedZones.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %usedZones.i, align 4
  %freeZones.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 22
  %43 = ptrtoint ptr %freeZones.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %freeZones.i, align 4
  %44 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %AS_Data, align 4
  %f_if1_Center.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 3
  %46 = ptrtoint ptr %f_if1_Center.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %f_if1_Center.i, align 4
  %f_if1_bw.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 5
  %48 = ptrtoint ptr %f_if1_bw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %f_if1_bw.i, align 4
  %div206.i = lshr i32 %49, 1
  %sub.i = sub i32 %47, %div206.i
  %50 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %f_in62, align 4
  %add.i397 = add i32 %sub.i, %51
  %52 = urem i32 %add.i397, %45
  %53 = add i32 %52, %51
  %sub7.i = sub i32 %add.i397, %53
  %f_LO1_FracN_Avoid.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 11
  %add11215.i = add i32 %div206.i, %47
  %54 = ptrtoint ptr %f_LO1_FracN_Avoid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %f_LO1_FracN_Avoid.i, align 4
  %add12216.i = add i32 %add11215.i, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %add12216.i)
  %cmp13217.i = icmp ult i32 %sub7.i, %add12216.i
  br i1 %cmp13217.i, label %do.end3.i398.while.body.i_crit_edge, label %do.end3.i398.while.end.i_crit_edge

do.end3.i398.while.end.i_crit_edge:               ; preds = %do.end3.i398
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end3.i398.while.body.i_crit_edge:              ; preds = %do.end3.i398
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end3.i398.while.body.i_crit_edge
  %56 = phi i32 [ %66, %while.body.i.while.body.i_crit_edge ], [ %55, %do.end3.i398.while.body.i_crit_edge ]
  %center.0218.i = phi i32 [ %add21.i, %while.body.i.while.body.i_crit_edge ], [ %sub7.i, %do.end3.i398.while.body.i_crit_edge ]
  %sub15.i = sub i32 %center.0218.i, %56
  %sub16.i = add i32 %center.0218.i, -1
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub15.i, i32 noundef %sub16.i) #7
  %add17.i = add nuw i32 %center.0218.i, 1
  %57 = ptrtoint ptr %f_LO1_FracN_Avoid.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %f_LO1_FracN_Avoid.i, align 4
  %add19.i = add i32 %58, %center.0218.i
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %add17.i, i32 noundef %add19.i) #7
  %59 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %AS_Data, align 4
  %add21.i = add i32 %60, %center.0218.i
  %61 = ptrtoint ptr %f_if1_Center.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %f_if1_Center.i, align 4
  %63 = ptrtoint ptr %f_if1_bw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %f_if1_bw.i, align 4
  %div10207.i = lshr i32 %64, 1
  %add11.i = add i32 %div10207.i, %62
  %65 = ptrtoint ptr %f_LO1_FracN_Avoid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %f_LO1_FracN_Avoid.i, align 4
  %add12.i = add i32 %add11.i, %66
  %cmp13.i = icmp ult i32 %add21.i, %add12.i
  br i1 %cmp13.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %do.end3.i398.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %47, %do.end3.i398.while.end.i_crit_edge ], [ %62, %while.body.i.while.end.i_crit_edge ]
  %div10207.lcssa.i = phi i32 [ %div206.i, %do.end3.i398.while.end.i_crit_edge ], [ %div10207.i, %while.body.i.while.end.i_crit_edge ]
  %67 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %AS_Data, align 4
  %69 = ptrtoint ptr %f_out to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %f_out, align 4
  %71 = add i32 %div10207.lcssa.i, %70
  %sub27.i = sub i32 %.lcssa.i, %71
  %72 = urem i32 %sub27.i, %68
  %mul30.i = sub i32 %70, %72
  %add32.i = add i32 %mul30.i, %sub27.i
  %f_LO2_FracN_Avoid.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 12
  %73 = ptrtoint ptr %f_if1_Center.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %f_if1_Center.i, align 4
  %75 = ptrtoint ptr %f_if1_bw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %f_if1_bw.i, align 4
  %div36208220.i = lshr i32 %76, 1
  %add37221.i = add i32 %div36208220.i, %74
  %77 = ptrtoint ptr %f_LO2_FracN_Avoid.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %f_LO2_FracN_Avoid.i, align 4
  %add38222.i = add i32 %add37221.i, %78
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i, i32 %add38222.i)
  %cmp39223.i = icmp ult i32 %add32.i, %add38222.i
  br i1 %cmp39223.i, label %while.end.i.while.body40.i_crit_edge, label %while.end.i.while.end49.i_crit_edge

while.end.i.while.end49.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end49.i

while.end.i.while.body40.i_crit_edge:             ; preds = %while.end.i
  br label %while.body40.i

while.body40.i:                                   ; preds = %while.body40.i.while.body40.i_crit_edge, %while.end.i.while.body40.i_crit_edge
  %79 = phi i32 [ %89, %while.body40.i.while.body40.i_crit_edge ], [ %78, %while.end.i.while.body40.i_crit_edge ]
  %center.1224.i = phi i32 [ %add48.i, %while.body40.i.while.body40.i_crit_edge ], [ %add32.i, %while.end.i.while.body40.i_crit_edge ]
  %sub42.i = sub i32 %center.1224.i, %79
  %sub43.i = add i32 %center.1224.i, -1
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub42.i, i32 noundef %sub43.i) #7
  %add44.i = add nuw i32 %center.1224.i, 1
  %80 = ptrtoint ptr %f_LO2_FracN_Avoid.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %f_LO2_FracN_Avoid.i, align 4
  %add46.i = add i32 %81, %center.1224.i
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %add44.i, i32 noundef %add46.i) #7
  %82 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %AS_Data, align 4
  %add48.i = add i32 %83, %center.1224.i
  %84 = ptrtoint ptr %f_if1_Center.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %f_if1_Center.i, align 4
  %86 = ptrtoint ptr %f_if1_bw.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %f_if1_bw.i, align 4
  %div36208.i = lshr i32 %87, 1
  %add37.i = add i32 %div36208.i, %85
  %88 = ptrtoint ptr %f_LO2_FracN_Avoid.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %f_LO2_FracN_Avoid.i, align 4
  %add38.i = add i32 %add37.i, %89
  %cmp39.i = icmp ult i32 %add48.i, %add38.i
  br i1 %cmp39.i, label %while.body40.i.while.body40.i_crit_edge, label %while.body40.i.while.end49.i_crit_edge

while.body40.i.while.end49.i_crit_edge:           ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end49.i

while.body40.i.while.body40.i_crit_edge:          ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body40.i

while.end49.i:                                    ; preds = %while.body40.i.while.end49.i_crit_edge, %while.end.i.while.end49.i_crit_edge
  %avoidDECT.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 17
  %90 = ptrtoint ptr %avoidDECT.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %avoidDECT.i, align 4
  %and.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp50.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp50.not.i, label %while.end49.i.if.end72.i_crit_edge, label %if.then51.i

while.end49.i.if.end72.i_crit_edge:               ; preds = %while.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then51.i:                                      ; preds = %while.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %f_in62, align 4
  %sub53.i = sub i32 1920836000, %93
  %sub55.i = sub i32 1922236000, %93
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub53.i, i32 noundef %sub55.i) #7
  %94 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %f_in62, align 4
  %sub57.i = sub i32 1922564000, %95
  %sub59.i = sub i32 1923964000, %95
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub57.i, i32 noundef %sub59.i) #7
  %96 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %f_in62, align 4
  %sub61.i = sub i32 1924292000, %97
  %sub63.i = sub i32 1925692000, %97
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub61.i, i32 noundef %sub63.i) #7
  %98 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %f_in62, align 4
  %sub65.i = sub i32 1926020000, %99
  %sub67.i = sub i32 1927420000, %99
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub65.i, i32 noundef %sub67.i) #7
  %100 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %f_in62, align 4
  %sub69.i = sub i32 1927748000, %101
  %sub71.i = sub i32 1929148000, %101
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub69.i, i32 noundef %sub71.i) #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then51.i, %while.end49.i.if.end72.i_crit_edge
  %102 = ptrtoint ptr %avoidDECT.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %avoidDECT.i, align 4
  %and74.i = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i)
  %cmp75.not.i = icmp eq i32 %and74.i, 0
  br i1 %cmp75.not.i, label %if.end72.i.MT2063_ResetExclZones.exit_crit_edge, label %if.then76.i

if.end72.i.MT2063_ResetExclZones.exit_crit_edge:  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %MT2063_ResetExclZones.exit

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %f_in62, align 4
  %sub78.i = sub i32 1896644000, %105
  %sub80.i = sub i32 1898044000, %105
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub78.i, i32 noundef %sub80.i) #7
  %106 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %f_in62, align 4
  %sub82.i = sub i32 1894916000, %107
  %sub84.i = sub i32 1896316000, %107
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub82.i, i32 noundef %sub84.i) #7
  %108 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %f_in62, align 4
  %sub86.i = sub i32 1893188000, %109
  %sub88.i = sub i32 1894588000, %109
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub86.i, i32 noundef %sub88.i) #7
  %110 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %f_in62, align 4
  %sub90.i = sub i32 1891460000, %111
  %sub92.i = sub i32 1892860000, %111
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub90.i, i32 noundef %sub92.i) #7
  %112 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %f_in62, align 4
  %sub94.i = sub i32 1889732000, %113
  %sub96.i = sub i32 1891132000, %113
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub94.i, i32 noundef %sub96.i) #7
  %114 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %f_in62, align 4
  %sub98.i = sub i32 1888004000, %115
  %sub100.i = sub i32 1889404000, %115
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub98.i, i32 noundef %sub100.i) #7
  %116 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %f_in62, align 4
  %sub102.i = sub i32 1886276000, %117
  %sub104.i = sub i32 1887676000, %117
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub102.i, i32 noundef %sub104.i) #7
  %118 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %f_in62, align 4
  %sub106.i = sub i32 1884548000, %119
  %sub108.i = sub i32 1885948000, %119
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub106.i, i32 noundef %sub108.i) #7
  %120 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %f_in62, align 4
  %sub110.i = sub i32 1882820000, %121
  %sub112.i = sub i32 1884220000, %121
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub110.i, i32 noundef %sub112.i) #7
  %122 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %f_in62, align 4
  %sub114.i = sub i32 1881092000, %123
  %sub116.i = sub i32 1882492000, %123
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub114.i, i32 noundef %sub116.i) #7
  br label %MT2063_ResetExclZones.exit

MT2063_ResetExclZones.exit:                       ; preds = %if.then76.i, %if.end72.i.MT2063_ResetExclZones.exit_crit_edge
  %call71 = tail call fastcc i32 @MT2063_ChooseFirstIF(ptr noundef %AS_Data)
  %add72 = add i32 %call71, %f_in
  %124 = ptrtoint ptr %f_LO1_Step to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %f_LO1_Step, align 4
  %126 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %AS_Data, align 4
  %128 = urem i32 %add72, %127
  %div110.i399 = lshr i32 %125, 1
  %add.i400 = add i32 %128, %div110.i399
  %129 = urem i32 %add.i400, %125
  %130 = add i32 %128, %129
  %mul.i401 = sub i32 %add72, %130
  %add4.i402 = add i32 %mul.i401, %add.i400
  %131 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add4.i402, ptr %f_LO1, align 4
  %132 = ptrtoint ptr %f_out to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %f_out, align 4
  %134 = add i32 %133, %f_in
  %sub85 = sub i32 %add4.i402, %134
  %f_LO2_Step = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 10
  %135 = ptrtoint ptr %f_LO2_Step to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %f_LO2_Step, align 4
  %137 = urem i32 %sub85, %127
  %div110.i403 = lshr i32 %136, 1
  %add.i404 = add i32 %137, %div110.i403
  %138 = urem i32 %add.i404, %136
  %139 = add i32 %137, %138
  %mul.i405 = sub i32 %sub85, %139
  %add4.i406 = add i32 %mul.i405, %add.i404
  %140 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add4.i406, ptr %f_LO2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fm.i) #7
  %141 = ptrtoint ptr %fm.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %fm.i, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fp.i) #7
  %142 = ptrtoint ptr %fp.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %fp.i, align 4, !annotation !243
  %bSpurAvoided.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 19
  %143 = ptrtoint ptr %bSpurAvoided.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %bSpurAvoided.i, align 4
  %nSpursFound.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 20
  %144 = ptrtoint ptr %nSpursFound.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %nSpursFound.i, align 4
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp.i407 = icmp ugt i32 %145, 1
  br i1 %cmp.i407, label %do.end.i409, label %MT2063_ResetExclZones.exit.do.end3.i410_crit_edge

MT2063_ResetExclZones.exit.do.end3.i410_crit_edge: ; preds = %MT2063_ResetExclZones.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i410

do.end.i409:                                      ; preds = %MT2063_ResetExclZones.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.61) #10
  br label %do.end3.i410

do.end3.i410:                                     ; preds = %do.end.i409, %MT2063_ResetExclZones.exit.do.end3.i410_crit_edge
  %maxH1.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 15
  %146 = ptrtoint ptr %maxH1.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %maxH1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp4.i = icmp eq i32 %147, 0
  br i1 %cmp4.i, label %do.end3.i410.MT2063_AvoidSpurs.exit_crit_edge, label %if.end6.i

do.end3.i410.MT2063_AvoidSpurs.exit_crit_edge:    ; preds = %do.end3.i410
  call void @__sanitizer_cov_trace_pc() #9
  br label %MT2063_AvoidSpurs.exit

if.end6.i:                                        ; preds = %do.end3.i410
  %call7.i = call fastcc i32 @IsSpurInBand(ptr noundef %AS_Data, ptr noundef nonnull %fm.i, ptr noundef nonnull %fp.i) #7
  %bSpurPresent.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 18
  %148 = ptrtoint ptr %bSpurPresent.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call7.i, ptr %bSpurPresent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end6.i.if.end54.i_crit_edge, label %if.then9.i

if.end6.i.if.end54.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then9.i:                                       ; preds = %if.end6.i
  %149 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %f_LO1, align 4
  %151 = ptrtoint ptr %f_in62 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %f_in62, align 4
  %sub.i412 = sub i32 %150, %152
  %f_out_bw.i = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 10, i32 8
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.end29.i.do.body11.i_crit_edge, %if.then9.i
  %zfIF1.0.i = phi i32 [ %sub.i412, %if.then9.i ], [ %call14.i, %if.end29.i.do.body11.i_crit_edge ]
  %153 = ptrtoint ptr %nSpursFound.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nSpursFound.i, align 4
  %inc.i415 = add i32 %154, 1
  store i32 %inc.i415, ptr %nSpursFound.i, align 4
  %155 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %fm.i, align 4
  %sub13.i = sub i32 %zfIF1.0.i, %156
  %157 = ptrtoint ptr %fp.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %fp.i, align 4
  %add.i416 = add i32 %158, %zfIF1.0.i
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %AS_Data, i32 noundef %sub13.i, i32 noundef %add.i416) #7
  %call14.i = tail call fastcc i32 @MT2063_ChooseFirstIF(ptr noundef %AS_Data) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i, i32 %zfIF1.0.i)
  %cmp15.i = icmp ugt i32 %call14.i, %zfIF1.0.i
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub17.i = sub i32 %call14.i, %zfIF1.0.i
  %159 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %f_LO1, align 4
  %add19.i417 = add i32 %160, %sub17.i
  store i32 %add19.i417, ptr %f_LO1, align 4
  %161 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %f_LO2, align 4
  %add22.i = add i32 %162, %sub17.i
  br label %if.end29.i

if.else.i:                                        ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub23.i = sub i32 %zfIF1.0.i, %call14.i
  %163 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %f_LO1, align 4
  %sub25.i = sub i32 %164, %sub23.i
  store i32 %sub25.i, ptr %f_LO1, align 4
  %165 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %f_LO2, align 4
  %sub28.i = sub i32 %166, %sub23.i
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i, %if.then16.i
  %storemerge.i = phi i32 [ %sub28.i, %if.else.i ], [ %add22.i, %if.then16.i ]
  %167 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %storemerge.i, ptr %f_LO2, align 4
  %168 = ptrtoint ptr %f_if1_Center.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %f_if1_Center.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i, i32 %169)
  %cmp30.i = icmp ugt i32 %call14.i, %169
  %sub33.i = sub i32 %call14.i, %169
  %sub36.i = sub i32 %169, %call14.i
  %delta_IF1.0.i = select i1 %cmp30.i, i32 %sub33.i, i32 %sub36.i
  %call38.i = call fastcc i32 @IsSpurInBand(ptr noundef %AS_Data, ptr noundef nonnull %fm.i, ptr noundef nonnull %fp.i) #7
  %170 = ptrtoint ptr %bSpurPresent.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %call38.i, ptr %bSpurPresent.i, align 4
  %mul.i418 = shl i32 %delta_IF1.0.i, 1
  %171 = ptrtoint ptr %f_out_bw.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %f_out_bw.i, align 4
  %add41.i = add i32 %mul.i418, %172
  %173 = ptrtoint ptr %f_if1_bw.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %f_if1_bw.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %174)
  %cmp42.not.i = icmp ugt i32 %add41.i, %174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool44.not.i = icmp eq i32 %call38.i, 0
  %or.cond.i = select i1 %cmp42.not.i, i1 true, i1 %tobool44.not.i
  br i1 %or.cond.i, label %do.end45.i, label %if.end29.i.do.body11.i_crit_edge

if.end29.i.do.body11.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11.i

do.end45.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38.i)
  %cmp47.i = icmp eq i32 %call38.i, 1
  br i1 %cmp47.i, label %if.then48.i, label %if.else51.i

if.then48.i:                                      ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %175 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %150, ptr %f_LO1, align 4
  br label %if.end54.i

if.else51.i:                                      ; preds = %do.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %bSpurAvoided.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %bSpurAvoided.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else51.i, %if.then48.i, %if.end6.i.if.end54.i_crit_edge
  %status.1.i = phi i32 [ 0, %if.end6.i.if.end54.i_crit_edge ], [ 8388608, %if.then48.i ], [ 0, %if.else51.i ]
  %177 = ptrtoint ptr %nSpursFound.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %nSpursFound.i, align 4
  %shl.i = shl i32 %178, 16
  %and.i419 = and i32 %shl.i, 2031616
  %or56.i = or i32 %and.i419, %status.1.i
  br label %MT2063_AvoidSpurs.exit

MT2063_AvoidSpurs.exit:                           ; preds = %if.end54.i, %do.end3.i410.MT2063_AvoidSpurs.exit_crit_edge
  %retval.0.i420 = phi i32 [ %or56.i, %if.end54.i ], [ 0, %do.end3.i410.MT2063_AvoidSpurs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fm.i) #7
  %or94 = or i32 %retval.0.i420, %status.2
  %179 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %f_LO1, align 4
  %181 = ptrtoint ptr %f_LO1_Step to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %f_LO1_Step, align 4
  %183 = ptrtoint ptr %AS_Data to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %AS_Data, align 4
  %.frozen = freeze i32 %180
  %.frozen496 = freeze i32 %184
  %div.i = udiv i32 %.frozen, %.frozen496
  %185 = mul i32 %div.i, %.frozen496
  %rem.i.decomposed = sub i32 %.frozen, %185
  %div121.i = lshr i32 %182, 1
  %add.i421 = add i32 %rem.i.decomposed, %div121.i
  %div2.i = udiv i32 %add.i421, %182
  %mul.i422 = shl i32 %div2.i, 6
  %div3.i = udiv i32 %184, %182
  %div422.i = lshr i32 %div3.i, 1
  %add5.i = add i32 %div422.i, %mul.i422
  %div7.i = udiv i32 %add5.i, %div3.i
  %mul8.i = mul i32 %div.i, %184
  %shr.i.i = lshr i32 %184, 14
  %mul.i.i = mul i32 %div7.i, %shr.i.i
  %and.i.i = and i32 %184, 16383
  %mul1.i.i = mul i32 %div7.i, %and.i.i
  %rem.i.i = shl i32 %mul.i.i, 14
  %shl.i.i = and i32 %rem.i.i, 1032192
  %add.i.i = add i32 %mul1.i.i, 32
  %add3.i.i = add i32 %add.i.i, %shl.i.i
  %div4.i24.i = lshr i32 %add3.i.i, 6
  %186 = shl i32 %mul.i.i, 8
  %shl5.i.i = and i32 %186, -16384
  %add6.i.i = add i32 %shl5.i.i, %mul8.i
  %add9.i = add i32 %add6.i.i, %div4.i24.i
  store i32 %add9.i, ptr %f_LO1, align 4
  %187 = ptrtoint ptr %f_out to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %f_out, align 4
  %189 = add i32 %188, %f_in
  %sub109 = sub i32 %add9.i, %189
  %190 = ptrtoint ptr %f_LO2_Step to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %f_LO2_Step, align 4
  %192 = urem i32 %sub109, %184
  %div110.i423 = lshr i32 %191, 1
  %add.i424 = add i32 %192, %div110.i423
  %193 = urem i32 %add.i424, %191
  %194 = add i32 %193, %192
  %mul.i425 = sub i32 %add.i424, %194
  %add4.i426 = add i32 %mul.i425, %sub109
  %add4.i426.frozen = freeze i32 %add4.i426
  %.frozen497 = freeze i32 %184
  %div.i427 = udiv i32 %add4.i426.frozen, %.frozen497
  %195 = mul i32 %div.i427, %.frozen497
  %rem.i428.decomposed = sub i32 %add4.i426.frozen, %195
  %add.i430 = add i32 %rem.i428.decomposed, %div110.i423
  %div2.i431 = udiv i32 %add.i430, %191
  %mul.i432 = mul i32 %div2.i431, 8191
  %div3.i433 = udiv i32 %184, %191
  %div422.i434 = lshr i32 %div3.i433, 1
  %add5.i435 = add i32 %div422.i434, %mul.i432
  %div7.i436 = udiv i32 %add5.i435, %div3.i433
  %mul8.i437 = mul i32 %div.i427, %184
  %mul.i.i439 = mul i32 %div7.i436, %shr.i.i
  %mul.i.i439.frozen = freeze i32 %mul.i.i439
  %div.i.i = udiv i32 %mul.i.i439.frozen, 8191
  %196 = mul i32 %div.i.i, 8191
  %rem.i.i440.decomposed = sub i32 %mul.i.i439.frozen, %196
  %mul1.i.i442 = mul i32 %div7.i436, %and.i.i
  %shl.i.i443 = shl nuw nsw i32 %rem.i.i440.decomposed, 14
  %add.i.i444 = add i32 %mul1.i.i442, 4095
  %add3.i.i445 = add i32 %add.i.i444, %shl.i.i443
  %div4.i.i = udiv i32 %add3.i.i445, 8191
  %shl5.i.i446 = shl i32 %div.i.i, 14
  %add6.i.i447 = add i32 %shl5.i.i446, %mul8.i437
  %add9.i448 = add i32 %add6.i.i447, %div4.i.i
  %197 = ptrtoint ptr %f_LO2 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %add9.i448, ptr %f_LO2, align 4
  %198 = add i32 %add9.i, 1544967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1354000001, i32 %198)
  %199 = icmp ult i32 %198, -1354000001
  %or136 = or i32 %or94, 67108864
  %status.3 = select i1 %199, i32 %or136, i32 %or94
  %200 = add i32 %add9.i448, -1614000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -321000001, i32 %200)
  %201 = icmp ult i32 %200, -321000001
  %or148 = or i32 %status.3, 134217728
  %status.4 = select i1 %201, i32 %or148, i32 %status.3
  %tuner_id = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 9
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add9.i)
  %cmp156.not = icmp eq i32 %8, %add9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add9.i448)
  %cmp161.not = icmp eq i32 %10, %add9.i448
  %or.cond474 = select i1 %cmp156.not, i1 %cmp161.not, i1 false
  br i1 %or.cond474, label %lor.lhs.false163, label %MT2063_AvoidSpurs.exit.if.then174_crit_edge

MT2063_AvoidSpurs.exit.if.then174_crit_edge:      ; preds = %MT2063_AvoidSpurs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then174

lor.lhs.false163:                                 ; preds = %MT2063_AvoidSpurs.exit
  %202 = ptrtoint ptr %tuner_id to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %tuner_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 155, i32 %203)
  %cmp150 = icmp eq i32 %203, 155
  %LO2LK.0 = select i1 %cmp150, i32 192, i32 136
  %arrayidx165 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 7
  %204 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %205 to i32
  %and169 = and i32 %LO2LK.0, %conv166
  call void @__sanitizer_cov_trace_cmp4(i32 %and169, i32 %LO2LK.0)
  %cmp172.not = icmp eq i32 %and169, %LO2LK.0
  br i1 %cmp172.not, label %lor.lhs.false163.cleanup_crit_edge, label %lor.lhs.false163.if.then174_crit_edge

lor.lhs.false163.if.then174_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then174

lor.lhs.false163.cleanup_crit_edge:               ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then174:                                       ; preds = %lor.lhs.false163.if.then174_crit_edge, %MT2063_AvoidSpurs.exit.if.then174_crit_edge
  %sub177 = sub i32 %add9.i, %f_in
  %div378 = lshr i32 %184, 6
  %div180 = udiv i32 %sub177, %div378
  %sub183 = add i32 %fiffc.0.neg, %div180
  %206 = tail call i32 @llvm.umin.i32(i32 %sub183, i32 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.4)
  %cmp188 = icmp sgt i32 %status.4, -1
  br i1 %cmp188, label %if.then190, label %if.then174.cleanup_crit_edge

if.then174.cleanup_crit_edge:                     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then190:                                       ; preds = %if.then174
  %conv192 = trunc i32 %div.i to i8
  %arrayidx194 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 1
  %207 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv192, ptr %arrayidx194, align 1
  %208 = trunc i32 %div7.i to i8
  %conv196 = and i8 %208, 63
  %arrayidx198 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 2
  %209 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv196, ptr %arrayidx198, align 2
  %and199 = shl i32 %div.i427, 1
  %shr = lshr i32 %div7.i436, 12
  %or200 = or i32 %shr, %and199
  %conv201 = trunc i32 %or200 to i8
  %arrayidx203 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 3
  %210 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv201, ptr %arrayidx203, align 1
  %and204 = lshr i32 %div7.i436, 4
  %conv206 = trunc i32 %and204 to i8
  %arrayidx208 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 4
  %211 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv206, ptr %arrayidx208, align 4
  %212 = trunc i32 %div7.i436 to i8
  %213 = and i8 %212, 15
  %conv211 = or i8 %213, -32
  %arrayidx213 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 5
  %214 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv211, ptr %arrayidx213, align 1
  %call216 = tail call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 1, ptr noundef %arrayidx194, i32 noundef 5)
  %or217 = or i32 %call216, %status.4
  %215 = ptrtoint ptr %tuner_id to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %tuner_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 155, i32 %216)
  %cmp219 = icmp eq i32 %216, 155
  br i1 %cmp219, label %if.then221, label %if.then190.if.end226_crit_edge

if.then190.if.end226_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then221:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #9
  %call224 = tail call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 5, ptr noundef %arrayidx213, i32 noundef 1)
  %or225 = or i32 %call224, %or217
  br label %if.end226

if.end226:                                        ; preds = %if.then221, %if.then190.if.end226_crit_edge
  %status.5 = phi i32 [ %or225, %if.then221 ], [ %or217, %if.then190.if.end226_crit_edge ]
  %arrayidx228 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 41
  %217 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %218 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %conv229)
  %cmp232.not = icmp eq i32 %206, %conv229
  br i1 %cmp232.not, label %if.end226.if.end243_crit_edge, label %if.then234

if.end226.if.end243_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

if.then234:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  %conv230 = trunc i32 %206 to i8
  %219 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv230, ptr %arrayidx228, align 1
  %call240 = tail call fastcc i32 @mt2063_write(ptr noundef %state, i8 noundef zeroext 41, ptr noundef %arrayidx228, i32 noundef 1)
  %or241 = or i32 %call240, %status.5
  br label %if.end243

if.end243:                                        ; preds = %if.then234, %if.end226.if.end243_crit_edge
  %status.6 = phi i32 [ %or241, %if.then234 ], [ %status.5, %if.end226.if.end243_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.6)
  %cmp244 = icmp slt i32 %status.6, 0
  br i1 %cmp244, label %if.end243.cleanup_crit_edge, label %if.end247

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end247:                                        ; preds = %if.end243
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp.i449 = icmp ugt i32 %220, 1
  br i1 %cmp.i449, label %do.end.i451, label %if.end247.do.end3.i454_crit_edge

if.end247.do.end3.i454_crit_edge:                 ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i454

do.end.i451:                                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #9
  %call.i450 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #10
  br label %do.end3.i454

do.end3.i454:                                     ; preds = %do.end.i451, %if.end247.do.end3.i454_crit_edge
  %221 = ptrtoint ptr %tuner_id to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %tuner_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 155, i32 %222)
  %cmp4.i452 = icmp eq i32 %222, 155
  %spec.select.i = select i1 %cmp4.i452, i32 192, i32 136
  %arrayidx.i453 = getelementptr %struct.mt2063_state, ptr %state, i32 0, i32 16, i32 7
  br label %do.body7.i

do.body7.i:                                       ; preds = %if.end20.i.do.body7.i_crit_edge, %do.end3.i454
  %nDelays.0.i = phi i32 [ 0, %do.end3.i454 ], [ %inc.i458, %if.end20.i.do.body7.i_crit_edge ]
  %call8.i455 = tail call fastcc i32 @mt2063_read(ptr noundef %state, i8 noundef zeroext 7, ptr noundef %arrayidx.i453, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i455)
  %cmp9.i456 = icmp slt i32 %call8.i455, 0
  br i1 %cmp9.i456, label %do.body7.i.cleanup_crit_edge, label %if.end11.i

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %do.body7.i
  %223 = ptrtoint ptr %arrayidx.i453 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx.i453, align 1
  %conv.i = zext i8 %224 to i32
  %and.i457 = and i32 %spec.select.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i457, i32 %spec.select.i)
  %cmp17.i = icmp eq i32 %and.i457, %spec.select.i
  br i1 %cmp17.i, label %if.end254, label %if.end20.i

if.end20.i:                                       ; preds = %if.end11.i
  tail call void @msleep(i32 noundef 2) #7
  %inc.i458 = add nuw nsw i32 %nDelays.0.i, 1
  %exitcond.not.i459 = icmp eq i32 %inc.i458, 50
  br i1 %exitcond.not.i459, label %if.end20.i.cleanup_crit_edge, label %if.end20.i.do.body7.i_crit_edge

if.end20.i.do.body7.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7.i

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end254:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %225 = ptrtoint ptr %f_LO1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %f_LO1, align 4
  %sub257 = sub i32 %226, %f_in
  %f_IF1_actual = getelementptr inbounds %struct.mt2063_state, ptr %state, i32 0, i32 11
  %227 = ptrtoint ptr %f_IF1_actual to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %sub257, ptr %f_IF1_actual, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end254, %if.end20.i.cleanup_crit_edge, %do.body7.i.cleanup_crit_edge, %if.end243.cleanup_crit_edge, %if.then174.cleanup_crit_edge, %lor.lhs.false163.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %status.6, %if.end243.cleanup_crit_edge ], [ 3, %if.end254 ], [ %status.4, %lor.lhs.false163.cleanup_crit_edge ], [ %status.4, %if.then174.cleanup_crit_edge ], [ -22, %if.end20.i.cleanup_crit_edge ], [ %call8.i455, %do.body7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_ChooseFirstIF(ptr nocapture noundef readonly %pAS_Info) unnamed_addr #0 align 64 {
entry:
  %zones = alloca [48 x %struct.MT2063_FIFZone_t], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_LO1_Step = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 9
  %0 = ptrtoint ptr %f_LO1_Step to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_LO1_Step, align 4
  %f_if1_Request = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 4
  %2 = ptrtoint ptr %f_if1_Request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_if1_Request, align 4
  %f_in = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 1
  %4 = ptrtoint ptr %f_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_in, align 4
  %div278 = lshr i32 %1, 1
  %add = add i32 %div278, %3
  %add2 = add i32 %add, %5
  %6 = urem i32 %add2, %1
  %7 = add i32 %6, %5
  %sub = sub i32 %add2, %7
  %f_LO2_Step = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 10
  %8 = ptrtoint ptr %f_LO2_Step to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_LO2_Step, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %1, i32 %9)
  %usedZones = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 23
  %11 = ptrtoint ptr %usedZones to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usedZones, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %zones) #7
  %13 = call ptr @memset(ptr %zones, i32 255, i32 384)
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp9 = icmp ugt i32 %14, 1
  br i1 %cmp9, label %do.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.60) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %nZones = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 21
  %15 = ptrtoint ptr %nZones to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nZones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %do.end12.cleanup_crit_edge, label %if.end15

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %do.end12
  %f_if1_Center = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 3
  %17 = ptrtoint ptr %f_if1_Center to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_if1_Center, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub)
  %cmp16 = icmp ugt i32 %18, %sub
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %sub19 = sub i32 %18, %sub
  %div20280 = lshr i32 %10, 1
  %add21 = add i32 %sub19, %div20280
  %19 = urem i32 %add21, %10
  %mul23 = add i32 %18, %div20280
  %add24 = sub i32 %mul23, %19
  br label %if.end32

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %sub26 = sub i32 %sub, %18
  %div27279 = lshr i32 %10, 1
  %add28 = add i32 %sub26, %div27279
  %20 = urem i32 %add28, %10
  %mul30.neg = sub i32 %sub, %add28
  %sub31 = add i32 %mul30.neg, %20
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then17
  %f_Center.0 = phi i32 [ %add24, %if.then17 ], [ %sub31, %if.else ]
  %cmp33.not285 = icmp eq ptr %12, null
  br i1 %cmp33.not285, label %if.end32.cleanup_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  br label %while.body

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %if.end104.while.body_crit_edge, %if.end32.while.body_crit_edge
  %pNode.0290 = phi ptr [ %33, %if.end104.while.body_crit_edge ], [ %12, %if.end32.while.body_crit_edge ]
  %bZeroExcluded.0289 = phi i32 [ %bZeroExcluded.1, %if.end104.while.body_crit_edge ], [ 0, %if.end32.while.body_crit_edge ]
  %bDesiredExcluded.0288 = phi i32 [ %bDesiredExcluded.1, %if.end104.while.body_crit_edge ], [ 0, %if.end32.while.body_crit_edge ]
  %j.0286 = phi i32 [ %j.1, %if.end104.while.body_crit_edge ], [ 0, %if.end32.while.body_crit_edge ]
  %21 = ptrtoint ptr %pNode.0290 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pNode.0290, align 4
  %sub34 = sub i32 %22, %f_Center.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34)
  %cmp35 = icmp slt i32 %sub34, 0
  br i1 %cmp35, label %cond.true36, label %cond.false46

cond.true36:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub39 = sub i32 0, %sub34
  %div40 = sdiv i32 %sub39, %10
  %rem = srem i32 %sub34, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp44 = icmp ne i32 %rem, 0
  %conv.neg = sext i1 %cmp44 to i32
  %sub45 = sub i32 %conv.neg, %div40
  br label %cond.end50

cond.false46:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %div49 = sdiv i32 %sub34, %10
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false46, %cond.true36
  %cond51 = phi i32 [ %sub45, %cond.true36 ], [ %div49, %cond.false46 ]
  %max_ = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.0290, i32 0, i32 1
  %23 = ptrtoint ptr %max_ to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_, align 4
  %sub52 = sub i32 %24, %f_Center.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub52)
  %cmp53 = icmp slt i32 %sub52, 0
  br i1 %cmp53, label %cond.true55, label %cond.false61

cond.true55:                                      ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #9
  %sub58 = sub i32 0, %sub52
  %div59 = sdiv i32 %sub58, %10
  %sub60 = sub i32 0, %div59
  br label %cond.end71

cond.false61:                                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #9
  %sub52.frozen = freeze i32 %sub52
  %.frozen = freeze i32 %10
  %div64 = sdiv i32 %sub52.frozen, %.frozen
  %25 = mul i32 %div64, %.frozen
  %rem67.decomposed = sub i32 %sub52.frozen, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem67.decomposed)
  %cmp68 = icmp ne i32 %rem67.decomposed, 0
  %conv69 = zext i1 %cmp68 to i32
  %add70 = add i32 %div64, %conv69
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false61, %cond.true55
  %cond72 = phi i32 [ %sub60, %cond.true55 ], [ %add70, %cond.false61 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %sub)
  %cmp74 = icmp ult i32 %22, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub)
  %cmp77 = icmp ugt i32 %24, %sub
  %26 = select i1 %cmp74, i1 %cmp77, i1 false
  %bDesiredExcluded.1 = select i1 %26, i32 1, i32 %bDesiredExcluded.0288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond51)
  %cmp81 = icmp slt i32 %cond51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond72)
  %cmp84 = icmp sgt i32 %cond72, 0
  %or.cond = select i1 %cmp81, i1 %cmp84, i1 false
  %bZeroExcluded.1 = select i1 %or.cond, i32 1, i32 %bZeroExcluded.0289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0286)
  %cmp88 = icmp sgt i32 %j.0286, 0
  br i1 %cmp88, label %land.lhs.true90, label %cond.end71.if.else99_crit_edge

cond.end71.if.else99_crit_edge:                   ; preds = %cond.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else99

land.lhs.true90:                                  ; preds = %cond.end71
  %sub91 = add nsw i32 %j.0286, -1
  %max_92 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %zones, i32 0, i32 %sub91, i32 1
  %27 = ptrtoint ptr %max_92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond51, i32 %28)
  %cmp93 = icmp slt i32 %cond51, %28
  br i1 %cmp93, label %if.then95, label %land.lhs.true90.if.else99_crit_edge

land.lhs.true90.if.else99_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else99

if.then95:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %max_92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond72, ptr %max_92, align 4
  br label %if.end104

if.else99:                                        ; preds = %land.lhs.true90.if.else99_crit_edge, %cond.end71.if.else99_crit_edge
  %arrayidx100 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %zones, i32 0, i32 %j.0286
  %30 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond51, ptr %arrayidx100, align 4
  %max_103 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %zones, i32 0, i32 %j.0286, i32 1
  %31 = ptrtoint ptr %max_103 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond72, ptr %max_103, align 4
  %inc = add i32 %j.0286, 1
  br label %if.end104

if.end104:                                        ; preds = %if.else99, %if.then95
  %j.1 = phi i32 [ %j.0286, %if.then95 ], [ %inc, %if.else99 ]
  %next_ = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.0290, i32 0, i32 2
  %32 = ptrtoint ptr %next_ to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next_, align 4
  %cmp33.not = icmp eq ptr %33, null
  br i1 %cmp33.not, label %while.end, label %if.end104.while.body_crit_edge

if.end104.while.body_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bDesiredExcluded.1)
  %phi.cmp = icmp eq i32 %bDesiredExcluded.1, 0
  br i1 %phi.cmp, label %while.end.cleanup_crit_edge, label %if.end108

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end108:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bZeroExcluded.1)
  %cmp109 = icmp eq i32 %bZeroExcluded.1, 0
  br i1 %cmp109, label %if.end108.cleanup_crit_edge, label %if.end112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  %34 = ptrtoint ptr %zones to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %zones, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp115293 = icmp sgt i32 %j.1, 0
  br i1 %cmp115293, label %if.end112.for.body_crit_edge, label %if.end112.for.end_crit_edge

if.end112.for.end_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end112.for.body_crit_edge:                     ; preds = %if.end112
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end112.for.body_crit_edge
  %i.0295 = phi i32 [ %inc168, %for.body.for.body_crit_edge ], [ 0, %if.end112.for.body_crit_edge ]
  %bestDiff.0294 = phi i32 [ %bestDiff.2, %for.body.for.body_crit_edge ], [ %35, %if.end112.for.body_crit_edge ]
  %arrayidx117 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %zones, i32 0, i32 %i.0295
  %36 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx117, align 4
  %38 = tail call i32 @llvm.abs.i32(i32 %37, i1 false)
  %39 = tail call i32 @llvm.abs.i32(i32 %bestDiff.0294, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %39)
  %cmp136 = icmp slt i32 %38, %39
  %spec.select281 = select i1 %cmp136, i32 %37, i32 %bestDiff.0294
  %max_144 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %zones, i32 0, i32 %i.0295, i32 1
  %40 = ptrtoint ptr %max_144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_144, align 4
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 false)
  %43 = tail call i32 @llvm.abs.i32(i32 %spec.select281, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %43)
  %cmp162 = icmp slt i32 %42, %43
  %bestDiff.2 = select i1 %cmp162, i32 %41, i32 %spec.select281
  %inc168 = add nuw nsw i32 %i.0295, 1
  %exitcond.not = icmp eq i32 %inc168, %j.1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end112.for.end_crit_edge
  %bestDiff.0.lcssa = phi i32 [ %35, %if.end112.for.end_crit_edge ], [ %bestDiff.2, %for.body.for.end_crit_edge ]
  %44 = mul i32 %bestDiff.0.lcssa, %10
  %sub174 = add i32 %44, %f_Center.0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end108.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %do.end12.cleanup_crit_edge ], [ %sub, %while.end.cleanup_crit_edge ], [ %f_Center.0, %if.end108.cleanup_crit_edge ], [ %sub, %if.end32.cleanup_crit_edge ], [ %sub174, %for.end ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %zones) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @MT2063_AddExclZone(ptr noundef %pAS_Info, i32 noundef %f_min, i32 noundef %f_max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usedZones = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 23
  %0 = ptrtoint ptr %usedZones to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usedZones, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.57) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %f_if1_Center = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 3
  %3 = ptrtoint ptr %f_if1_Center to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_if1_Center, align 4
  %f_if1_bw = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 5
  %5 = ptrtoint ptr %f_if1_bw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_if1_bw, align 4
  %div89 = lshr i32 %6, 1
  %sub = sub i32 %4, %div89
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %f_max)
  %cmp4 = icmp ult i32 %sub, %f_max
  %add = add i32 %div89, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %f_min)
  %cmp8 = icmp ugt i32 %add, %f_min
  %or.cond = and i1 %cmp4, %cmp8
  call void @__sanitizer_cov_trace_cmp4(i32 %f_min, i32 %f_max)
  %cmp10 = icmp ult i32 %f_min, %f_max
  %or.cond90 = and i1 %cmp10, %or.cond
  br i1 %or.cond90, label %while.cond.preheader, label %do.end3.if.end50_crit_edge

do.end3.if.end50_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

while.cond.preheader:                             ; preds = %do.end3
  %cmp12.not104 = icmp eq ptr %1, null
  br i1 %cmp12.not104, label %while.cond.preheader.if.else_crit_edge, label %land.rhs.preheader

while.cond.preheader.if.else_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.rhs.preheader:                               ; preds = %while.cond.preheader
  %max_119 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %max_119 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_119, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %f_min)
  %cmp13120 = icmp ult i32 %8, %f_min
  br i1 %cmp13120, label %land.rhs.preheader.while.body_crit_edge, label %land.rhs.preheader.land.lhs.true15.critedge_crit_edge

land.rhs.preheader.land.lhs.true15.critedge_crit_edge: ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true15.critedge

land.rhs.preheader.while.body_crit_edge:          ; preds = %land.rhs.preheader
  br label %while.body

land.rhs:                                         ; preds = %while.body
  %max_ = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %12, i32 0, i32 1
  %9 = ptrtoint ptr %max_ to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_, align 4
  %cmp13 = icmp ult i32 %10, %f_min
  br i1 %cmp13, label %land.rhs.while.body_crit_edge, label %land.rhs.land.lhs.true15.critedge_crit_edge

land.rhs.land.lhs.true15.critedge_crit_edge:      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true15.critedge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.preheader.while.body_crit_edge
  %pNode.0106121 = phi ptr [ %12, %land.rhs.while.body_crit_edge ], [ %1, %land.rhs.preheader.while.body_crit_edge ]
  %next_ = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.0106121, i32 0, i32 2
  %11 = ptrtoint ptr %next_ to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_, align 4
  %cmp12.not = icmp eq ptr %12, null
  br i1 %cmp12.not, label %while.body.if.else_crit_edge, label %land.rhs

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true15.critedge:                         ; preds = %land.rhs.land.lhs.true15.critedge_crit_edge, %land.rhs.preheader.land.lhs.true15.critedge_crit_edge
  %pNode.0106.lcssa = phi ptr [ %1, %land.rhs.preheader.land.lhs.true15.critedge_crit_edge ], [ %12, %land.rhs.land.lhs.true15.critedge_crit_edge ]
  %pPrev.0105.lcssa = phi ptr [ null, %land.rhs.preheader.land.lhs.true15.critedge_crit_edge ], [ %pNode.0106121, %land.rhs.land.lhs.true15.critedge_crit_edge ]
  %max_.le = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.0106.lcssa, i32 0, i32 1
  %13 = ptrtoint ptr %pNode.0106.lcssa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pNode.0106.lcssa, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %f_max)
  %cmp16 = icmp ult i32 %14, %f_max
  br i1 %cmp16, label %if.then17, label %land.lhs.true15.critedge.if.else_crit_edge

land.lhs.true15.critedge.if.else_crit_edge:       ; preds = %land.lhs.true15.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true15.critedge
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %f_min)
  %cmp19 = icmp ugt i32 %14, %f_min
  br i1 %cmp19, label %if.then20, label %if.then17.if.end22_crit_edge

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pNode.0106.lcssa to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %f_min, ptr %pNode.0106.lcssa, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.then17.if.end22_crit_edge
  %16 = ptrtoint ptr %max_.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %f_max)
  %cmp24 = icmp ult i32 %17, %f_max
  br i1 %cmp24, label %if.end22.if.end31.sink.split_crit_edge, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end22.if.end31.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.sink.split

if.else:                                          ; preds = %land.lhs.true15.critedge.if.else_crit_edge, %while.body.if.else_crit_edge, %while.cond.preheader.if.else_crit_edge
  %pPrev.0103 = phi ptr [ %pPrev.0105.lcssa, %land.lhs.true15.critedge.if.else_crit_edge ], [ null, %while.cond.preheader.if.else_crit_edge ], [ %pNode.0106121, %while.body.if.else_crit_edge ]
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp ugt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %if.else.do.end3.i_crit_edge

if.else.do.end3.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.58) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.else.do.end3.i_crit_edge
  %freeZones.i = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 22
  %19 = ptrtoint ptr %freeZones.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %freeZones.i, align 4
  %cmp4.not.i = icmp eq ptr %20, null
  br i1 %cmp4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %next_.i = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %next_.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next_.i, align 4
  %23 = ptrtoint ptr %freeZones.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %freeZones.i, align 4
  br label %InsertNode.exit

if.else.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %nZones.i = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 21
  %24 = ptrtoint ptr %nZones.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nZones.i, align 4
  %arrayidx.i = getelementptr %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 24, i32 %25
  br label %InsertNode.exit

InsertNode.exit:                                  ; preds = %if.else.i, %if.then5.i
  %pNode.0.i = phi ptr [ %20, %if.then5.i ], [ %arrayidx.i, %if.else.i ]
  %cmp9.not.i = icmp eq ptr %pPrev.0103, null
  %next_11.i = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pPrev.0103, i32 0, i32 2
  %usedZones.sink33.i = select i1 %cmp9.not.i, ptr %usedZones, ptr %next_11.i
  %26 = ptrtoint ptr %usedZones.sink33.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usedZones.sink33.i, align 4
  %next_15.i = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %next_15.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %next_15.i, align 4
  store ptr %pNode.0.i, ptr %usedZones.sink33.i, align 4
  %nZones18.i = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 21
  %29 = ptrtoint ptr %nZones18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nZones18.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %nZones18.i, align 4
  %31 = ptrtoint ptr %pNode.0.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %f_min, ptr %pNode.0.i, align 4
  %max_30 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.0.i, i32 0, i32 1
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %InsertNode.exit, %if.end22.if.end31.sink.split_crit_edge
  %max_.le.sink = phi ptr [ %max_30, %InsertNode.exit ], [ %max_.le, %if.end22.if.end31.sink.split_crit_edge ]
  %pNode.1.ph = phi ptr [ %pNode.0.i, %InsertNode.exit ], [ %pNode.0106.lcssa, %if.end22.if.end31.sink.split_crit_edge ]
  %32 = ptrtoint ptr %max_.le.sink to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %f_max, ptr %max_.le.sink, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end22.if.end31_crit_edge
  %pNode.1 = phi ptr [ %pNode.0106.lcssa, %if.end22.if.end31_crit_edge ], [ %pNode.1.ph, %if.end31.sink.split ]
  %next_32 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.1, i32 0, i32 2
  %33 = ptrtoint ptr %next_32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_32, align 4
  %cmp34.not107 = icmp eq ptr %34, null
  br i1 %cmp34.not107, label %if.end31.if.end50_crit_edge, label %land.rhs35.lr.ph

if.end31.if.end50_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.rhs35.lr.ph:                                 ; preds = %if.end31
  %max_37 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNode.1, i32 0, i32 1
  %cmp4.not.i95 = icmp eq ptr %pNode.1, null
  %freeZones.i98 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 22
  %nZones.i99 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 21
  br label %land.rhs35

land.rhs35:                                       ; preds = %RemoveNode.exit.land.rhs35_crit_edge, %land.rhs35.lr.ph
  %pNext.0108 = phi ptr [ %34, %land.rhs35.lr.ph ], [ %43, %RemoveNode.exit.land.rhs35_crit_edge ]
  %35 = ptrtoint ptr %pNext.0108 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pNext.0108, align 4
  %37 = ptrtoint ptr %max_37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp38 = icmp ult i32 %36, %38
  br i1 %cmp38, label %while.body40, label %land.rhs35.if.end50_crit_edge

land.rhs35.if.end50_crit_edge:                    ; preds = %land.rhs35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

while.body40:                                     ; preds = %land.rhs35
  %max_41 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNext.0108, i32 0, i32 1
  %39 = ptrtoint ptr %max_41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp43 = icmp ugt i32 %40, %38
  br i1 %cmp43, label %if.then44, label %while.body40.if.end47_crit_edge

while.body40.if.end47_crit_edge:                  ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then44:                                        ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %max_37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_37, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %while.body40.if.end47_crit_edge
  %next_.i91 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %pNext.0108, i32 0, i32 2
  %42 = ptrtoint ptr %next_.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %next_.i91, align 4
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i92 = icmp ugt i32 %44, 1
  br i1 %cmp.i92, label %do.end.i94, label %if.end47.do.end3.i96_crit_edge

if.end47.do.end3.i96_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i96

do.end.i94:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.59) #10
  br label %do.end3.i96

do.end3.i96:                                      ; preds = %do.end.i94, %if.end47.do.end3.i96_crit_edge
  br i1 %cmp4.not.i95, label %do.end3.i96.RemoveNode.exit_crit_edge, label %if.then5.i97

do.end3.i96.RemoveNode.exit_crit_edge:            ; preds = %do.end3.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %RemoveNode.exit

if.then5.i97:                                     ; preds = %do.end3.i96
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %next_32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %next_32, align 4
  br label %RemoveNode.exit

RemoveNode.exit:                                  ; preds = %if.then5.i97, %do.end3.i96.RemoveNode.exit_crit_edge
  %46 = ptrtoint ptr %freeZones.i98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %freeZones.i98, align 4
  %48 = ptrtoint ptr %next_.i91 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %next_.i91, align 4
  store ptr %pNext.0108, ptr %freeZones.i98, align 4
  %49 = ptrtoint ptr %nZones.i99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nZones.i99, align 4
  %dec.i = add i32 %50, -1
  store i32 %dec.i, ptr %nZones.i99, align 4
  %cmp34.not = icmp eq ptr %43, null
  br i1 %cmp34.not, label %RemoveNode.exit.if.end50_crit_edge, label %RemoveNode.exit.land.rhs35_crit_edge

RemoveNode.exit.land.rhs35_crit_edge:             ; preds = %RemoveNode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs35

RemoveNode.exit.if.end50_crit_edge:               ; preds = %RemoveNode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.end50:                                         ; preds = %RemoveNode.exit.if.end50_crit_edge, %land.rhs35.if.end50_crit_edge, %if.end31.if.end50_crit_edge, %do.end3.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @IsSpurInBand(ptr nocapture noundef readonly %pAS_Info, ptr nocapture noundef writeonly %fm, ptr nocapture noundef writeonly %fp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_LO11 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 2
  %0 = ptrtoint ptr %f_LO11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_LO11, align 4
  %f_LO22 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 6
  %2 = ptrtoint ptr %f_LO22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_LO22, align 4
  %f_out = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 7
  %4 = ptrtoint ptr %f_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_out, align 4
  %f_out_bw = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 8
  %6 = ptrtoint ptr %f_out_bw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_out_bw, align 4
  %div350 = lshr i32 %7, 1
  %add = add i32 %div350, %5
  %sub = sub i32 %add, %7
  %f_zif_bw = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 13
  %8 = ptrtoint ptr %f_zif_bw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_zif_bw, align 4
  %div4351 = lshr i32 %9, 1
  %maxH1 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %pAS_Info, i32 0, i32 15
  %10 = ptrtoint ptr %maxH1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxH1, align 4
  %div5 = udiv i32 2147483647, %11
  %div6 = udiv i32 %1, %div5
  %add7 = add i32 %div6, 1
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  br i1 %cmp, label %do.end, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.62) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %13 = ptrtoint ptr %fm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fm, align 4
  %call11 = tail call i32 @gcd(i32 noundef %1, i32 noundef %3) #12
  %call16 = tail call i32 @gcd(i32 noundef %call11, i32 noundef %sub) #12
  %14 = tail call i32 @llvm.umax.i32(i32 %call16, i32 %add7)
  %call24 = tail call i32 @gcd(i32 noundef %call11, i32 noundef %div4351) #12
  %15 = tail call i32 @llvm.umax.i32(i32 %call24, i32 %add7)
  %sub33 = sub i32 %1, %3
  %16 = xor i32 %add, -1
  %sub35 = add i32 %1, %16
  %div37 = udiv i32 %sub35, %sub33
  %17 = ptrtoint ptr %maxH1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxH1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div37, i32 %18)
  %cmp39.not363 = icmp ugt i32 %div37, %18
  br i1 %cmp39.not363, label %do.end10.cleanup_crit_edge, label %for.body.lr.ph

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end10
  %div31354 = lshr i32 %15, 1
  %div23353 = lshr i32 %14, 1
  %call12 = tail call i32 @gcd(i32 noundef %call11, i32 noundef %add) #12
  %19 = tail call i32 @llvm.umax.i32(i32 %call12, i32 %add7)
  %div15352 = lshr i32 %19, 1
  %add40 = add i32 %div15352, %1
  %div41 = udiv i32 %add40, %19
  %add42 = add i32 %div15352, %add
  %div43 = udiv i32 %add42, %19
  %add45 = add i32 %div15352, %3
  %div46 = udiv i32 %add45, %19
  %add64 = add i32 %div23353, %1
  %add67 = add i32 %div23353, %sub
  %add70 = add i32 %div23353, %3
  %add95 = add i32 %div31354, %1
  %add98 = add nuw i32 %div31354, %div4351
  %add101 = add i32 %div31354, %3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0364 = phi i32 [ %div37, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %div41, %n.0364
  %sub44 = sub i32 %mul, %div43
  %div47 = udiv i32 %sub44, %div46
  call void @__sanitizer_cov_trace_cmp4(i32 %div47, i32 %18)
  %cmp49.not = icmp ult i32 %div47, %18
  br i1 %cmp49.not, label %if.end51, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %for.body
  %add57 = add i32 %mul, %div43
  %div60 = udiv i32 %add57, %div46
  call void @__sanitizer_cov_trace_cmp4(i32 %div47, i32 %div60)
  %cmp61 = icmp eq i32 %div47, %div60
  br i1 %cmp61, label %if.end51.for.inc_crit_edge, label %if.end63

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end63:                                         ; preds = %if.end51
  %div65 = udiv i32 %add64, %14
  %mul66 = mul i32 %div65, %n.0364
  %div68 = udiv i32 %add67, %14
  %sub69 = sub i32 %mul66, %div68
  %div71 = udiv i32 %add70, %14
  %div72 = udiv i32 %sub69, %div71
  call void @__sanitizer_cov_trace_cmp4(i32 %div72, i32 %div47)
  %cmp73.not = icmp eq i32 %div72, %div47
  br i1 %cmp73.not, label %if.end94, label %if.then74

if.then74:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %div75 = udiv i32 %1, %14
  %mul76 = mul i32 %div75, %n.0364
  %div77 = udiv i32 %3, %14
  %mul78 = mul i32 %div77, %div72
  %sub79 = sub i32 %mul76, %mul78
  %mul80 = mul i32 %sub79, %14
  %rem = urem i32 %1, %14
  %mul81 = mul i32 %rem, %n.0364
  %add82 = add i32 %mul80, %mul81
  %rem83 = urem i32 %3, %14
  %mul84 = mul i32 %rem83, %div72
  %sub85 = sub i32 %add82, %mul84
  %sub86 = sub i32 %sub85, %sub
  %sub87 = sub i32 %div72, %n.0364
  %div88 = udiv i32 %sub86, %sub87
  %add89 = add i32 %div88, 1
  %20 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add89, ptr %fp, align 4
  %sub90 = sub i32 %add, %sub85
  %div92 = udiv i32 %sub90, %sub87
  br label %cleanup.sink.split

if.end94:                                         ; preds = %if.end63
  %div96 = udiv i32 %add95, %15
  %mul97 = mul i32 %div96, %n.0364
  %div99 = udiv i32 %add98, %15
  %add100 = add i32 %mul97, %div99
  %div102 = udiv i32 %add101, %15
  %div103 = udiv i32 %add100, %div102
  %sub109 = sub i32 %mul97, %div99
  %div112 = udiv i32 %sub109, %div102
  call void @__sanitizer_cov_trace_cmp4(i32 %div103, i32 %div112)
  %cmp113.not = icmp eq i32 %div103, %div112
  br i1 %cmp113.not, label %if.end135, label %if.then114

if.then114:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen409 = freeze i32 %1
  %.frozen410 = freeze i32 %15
  %div115 = udiv i32 %.frozen409, %.frozen410
  %mul116 = mul i32 %div115, %n.0364
  %.frozen411 = freeze i32 %3
  %.frozen412 = freeze i32 %15
  %div117 = udiv i32 %.frozen411, %.frozen412
  %mul118 = mul i32 %div117, %div103
  %sub119 = sub i32 %mul116, %mul118
  %mul120 = mul i32 %sub119, %15
  %21 = mul i32 %div115, %.frozen410
  %rem121.decomposed = sub i32 %.frozen409, %21
  %mul122 = mul i32 %rem121.decomposed, %n.0364
  %add123 = add i32 %mul120, %mul122
  %22 = mul i32 %div117, %.frozen412
  %rem124.decomposed = sub i32 %.frozen411, %22
  %mul125 = mul i32 %rem124.decomposed, %div103
  %sub126 = sub i32 %add123, %mul125
  %add127 = add i32 %sub126, %div4351
  %sub128 = sub i32 %div103, %n.0364
  %div129 = udiv i32 %add127, %sub128
  %add130 = add i32 %div129, 1
  %23 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add130, ptr %fp, align 4
  %sub131 = sub i32 %div4351, %sub126
  %div133 = udiv i32 %sub131, %sub128
  br label %cleanup.sink.split

if.end135:                                        ; preds = %if.end94
  %add141 = add i32 %mul66, %div68
  %div144 = udiv i32 %add141, %div71
  call void @__sanitizer_cov_trace_cmp4(i32 %div60, i32 %div144)
  %cmp145.not = icmp eq i32 %div60, %div144
  br i1 %cmp145.not, label %if.end135.for.inc_crit_edge, label %if.then146

if.end135.for.inc_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then146:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen = freeze i32 %1
  %.frozen406 = freeze i32 %14
  %div147 = udiv i32 %.frozen, %.frozen406
  %mul148 = mul i32 %div147, %n.0364
  %.frozen407 = freeze i32 %3
  %.frozen408 = freeze i32 %14
  %div149 = udiv i32 %.frozen407, %.frozen408
  %mul150 = mul i32 %div149, %div60
  %sub151 = sub i32 %mul148, %mul150
  %mul152 = mul i32 %sub151, %14
  %24 = mul i32 %div147, %.frozen406
  %rem153.decomposed = sub i32 %.frozen, %24
  %mul154 = mul i32 %rem153.decomposed, %n.0364
  %add155 = add i32 %mul152, %mul154
  %25 = mul i32 %div149, %.frozen408
  %rem156.decomposed = sub i32 %.frozen407, %25
  %mul157 = mul i32 %rem156.decomposed, %div60
  %sub158 = sub i32 %add155, %mul157
  %add159 = add i32 %sub158, %add
  %sub160 = sub i32 %div60, %n.0364
  %div161 = udiv i32 %add159, %sub160
  %add162 = add i32 %div161, 1
  %26 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add162, ptr %fp, align 4
  %add163 = add i32 %sub, %sub158
  %sub164 = sub i32 0, %add163
  %div166 = udiv i32 %sub164, %sub160
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end135.for.inc_crit_edge, %if.end51.for.inc_crit_edge
  %inc = add i32 %n.0364, 1
  %cmp39.not = icmp ugt i32 %inc, %18
  br i1 %cmp39.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then146, %if.then114, %if.then74
  %div166.sink = phi i32 [ %div166, %if.then146 ], [ %div133, %if.then114 ], [ %div92, %if.then74 ]
  %add167 = add i32 %div166.sink, 1
  %27 = ptrtoint ptr %fm to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add167, ptr %fm, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end10.cleanup_crit_edge ], [ 1, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !120, !122, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/mt2063.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/mt2063.c", i32 24, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/mt2063.c", i32 2213, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mt2063_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @mt2063_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/tuners/mt2063.c", i32 2226, i32 2}
!13 = !{ptr @mt2063_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mt2063_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_mt2063_attach, !16, !"__ksymtab_mt2063_attach", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/mt2063.c", i32 2229, i32 1}
!17 = !{ptr @__UNIQUE_ID_author298, !18, !"__UNIQUE_ID_author298", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/mt2063.c", i32 2265, i32 1}
!19 = !{ptr @__UNIQUE_ID_description299, !20, !"__UNIQUE_ID_description299", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/mt2063.c", i32 2266, i32 1}
!21 = !{ptr @__UNIQUE_ID_file300, !22, !"__UNIQUE_ID_file300", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/mt2063.c", i32 2267, i32 1}
!23 = !{ptr @__UNIQUE_ID_license301, !22, !"__UNIQUE_ID_license301", i1 false, i1 false}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/mt2063.c", i32 22, i32 21}
!26 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @mt2063_ops, !28, !"mt2063_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/mt2063.c", i32 2190, i32 35}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/mt2063.c", i32 2014, i32 2}
!31 = !{ptr @mt2063_release._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mt2063_release._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/mt2063.c", i32 1784, i32 2}
!35 = !{ptr @mt2063_init._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mt2063_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/mt2063.c", i32 1792, i32 3}
!39 = !{ptr @mt2063_init._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt2063_init._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/mt2063.c", i32 1799, i32 10}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/mt2063.c", i32 1802, i32 10}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/mt2063.c", i32 1805, i32 10}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/mt2063.c", i32 1808, i32 10}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/mt2063.c", i32 1811, i32 3}
!51 = !{ptr @mt2063_init._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt2063_init._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/tuners/mt2063.c", i32 1822, i32 3}
!55 = !{ptr @mt2063_init._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mt2063_init._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/mt2063.c", i32 1828, i32 2}
!59 = !{ptr @mt2063_init._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mt2063_init._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/mt2063.c", i32 299, i32 2}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mt2063_read._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mt2063_read._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/mt2063.c", i32 321, i32 3}
!68 = !{ptr @mt2063_read._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mt2063_read._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/mt2063.c", i32 330, i32 3}
!72 = !{ptr @mt2063_read._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mt2063_read._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/mt2063.c", i32 251, i32 2}
!76 = !{ptr @mt2063_write._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @mt2063_write._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/mt2063.c", i32 263, i32 3}
!80 = !{ptr @mt2063_write._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mt2063_write._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @MT2063B3_defaults, !83, !"MT2063B3_defaults", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/mt2063.c", i32 1761, i32 17}
!84 = !{ptr @MT2063B1_defaults, !85, !"MT2063B1_defaults", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/mt2063.c", i32 1734, i32 17}
!86 = !{ptr @MT2063B0_defaults, !87, !"MT2063B0_defaults", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/mt2063.c", i32 1709, i32 17}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/mt2063.c", i32 1349, i32 2}
!90 = !{ptr @MT2063_SoftwareShutdown._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @MT2063_SoftwareShutdown._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/mt2063.c", i32 1320, i32 2}
!94 = !{ptr @MT2063_ClearPowerMaskBits._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @MT2063_ClearPowerMaskBits._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/mt2063.c", i32 2111, i32 2}
!98 = !{ptr @mt2063_set_params._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mt2063_set_params._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/mt2063.c", i32 2146, i32 2}
!102 = !{ptr @mt2063_set_params._entry.39, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mt2063_set_params._entry_ptr.41, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/mt2063.c", i32 1180, i32 2}
!106 = !{ptr @MT2063_SetReceiverMode._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @MT2063_SetReceiverMode._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/mt2063.c", i32 1299, i32 3}
!110 = !{ptr @MT2063_SetReceiverMode._entry.43, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @MT2063_SetReceiverMode._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @RFAGCEN, !113, !"RFAGCEN", i1 false, i1 false}
!113 = !{!"../drivers/media/tuners/mt2063.c", i32 999, i32 17}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/mt2063.c", i32 275, i32 2}
!116 = !{ptr @mt2063_setreg._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mt2063_setreg._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @LNARIN, !119, !"LNARIN", i1 false, i1 false}
!119 = !{!"../drivers/media/tuners/mt2063.c", i32 1000, i32 17}
!120 = !{ptr @FIFFQEN, !121, !"FIFFQEN", i1 false, i1 false}
!121 = !{!"../drivers/media/tuners/mt2063.c", i32 1001, i32 17}
!122 = !{ptr @FIFFQ, !123, !"FIFFQ", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/mt2063.c", i32 1002, i32 17}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/tuners/mt2063.c", i32 1020, i32 2}
!126 = !{ptr @mt2063_get_dnc_output_enable._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @mt2063_get_dnc_output_enable._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/tuners/mt2063.c", i32 1045, i32 2}
!130 = !{ptr @mt2063_set_dnc_output_enable._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @mt2063_set_dnc_output_enable._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @DNC1GC, !133, !"DNC1GC", i1 false, i1 false}
!133 = !{!"../drivers/media/tuners/mt2063.c", i32 1003, i32 17}
!134 = !{ptr @DNC2GC, !135, !"DNC2GC", i1 false, i1 false}
!135 = !{!"../drivers/media/tuners/mt2063.c", i32 1004, i32 17}
!136 = !{ptr @ACLNAMAX, !137, !"ACLNAMAX", i1 false, i1 false}
!137 = !{!"../drivers/media/tuners/mt2063.c", i32 1005, i32 17}
!138 = !{ptr @LNATGT, !139, !"LNATGT", i1 false, i1 false}
!139 = !{!"../drivers/media/tuners/mt2063.c", i32 1006, i32 17}
!140 = !{ptr @ACRFMAX, !141, !"ACRFMAX", i1 false, i1 false}
!141 = !{!"../drivers/media/tuners/mt2063.c", i32 1008, i32 17}
!142 = !{ptr @PD1TGT, !143, !"PD1TGT", i1 false, i1 false}
!143 = !{!"../drivers/media/tuners/mt2063.c", i32 1009, i32 17}
!144 = !{ptr @ACFIFMAX, !145, !"ACFIFMAX", i1 false, i1 false}
!145 = !{!"../drivers/media/tuners/mt2063.c", i32 1011, i32 17}
!146 = !{ptr @PD2TGT, !147, !"PD2TGT", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/mt2063.c", i32 1012, i32 17}
!148 = !{ptr @RFOVDIS, !149, !"RFOVDIS", i1 false, i1 false}
!149 = !{!"../drivers/media/tuners/mt2063.c", i32 1007, i32 17}
!150 = !{ptr @FIFOVDIS, !151, !"FIFOVDIS", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/mt2063.c", i32 1010, i32 17}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/tuners/mt2063.c", i32 991, i32 24}
!154 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/mt2063.c", i32 992, i32 27}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/tuners/mt2063.c", i32 993, i32 27}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/tuners/mt2063.c", i32 994, i32 34}
!160 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/tuners/mt2063.c", i32 995, i32 28}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/tuners/mt2063.c", i32 996, i32 26}
!164 = !{ptr @mt2063_mode_name, !165, !"mt2063_mode_name", i1 false, i1 false}
!165 = !{!"../drivers/media/tuners/mt2063.c", i32 990, i32 20}
!166 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/tuners/mt2063.c", i32 1525, i32 2}
!168 = !{ptr @MT2063_Tune._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @MT2063_Tune._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/tuners/mt2063.c", i32 483, i32 2}
!172 = !{ptr @MT2063_ResetExclZones._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @MT2063_ResetExclZones._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.57, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/tuners/mt2063.c", i32 432, i32 2}
!176 = !{ptr @MT2063_AddExclZone._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @MT2063_AddExclZone._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.58, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/tuners/mt2063.c", i32 368, i32 2}
!180 = !{ptr @InsertNode._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @InsertNode._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.59, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/tuners/mt2063.c", i32 401, i32 2}
!184 = !{ptr @RemoveNode._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @RemoveNode._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.60, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/tuners/mt2063.c", i32 579, i32 2}
!188 = !{ptr @MT2063_ChooseFirstIF._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @MT2063_ChooseFirstIF._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/tuners/mt2063.c", i32 794, i32 2}
!192 = !{ptr @MT2063_AvoidSpurs._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @MT2063_AvoidSpurs._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.62, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/tuners/mt2063.c", i32 696, i32 2}
!196 = !{ptr @IsSpurInBand._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @IsSpurInBand._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.63, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/tuners/mt2063.c", i32 918, i32 2}
!200 = !{ptr @mt2063_lockStatus._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @mt2063_lockStatus._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.64, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/tuners/mt2063.c", i32 2031, i32 2}
!204 = !{ptr @mt2063_set_analog_params._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @mt2063_set_analog_params._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @mt2063_set_analog_params._entry.65, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/tuners/mt2063.c", i32 2074, i32 2}
!208 = !{ptr @mt2063_set_analog_params._entry_ptr.66, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.67, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/tuners/mt2063.c", i32 2178, i32 2}
!211 = !{ptr @mt2063_get_bandwidth._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @mt2063_get_bandwidth._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.69, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/tuners/mt2063.c", i32 2185, i32 2}
!215 = !{ptr @mt2063_get_bandwidth._entry.68, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @mt2063_get_bandwidth._entry_ptr.70, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.71, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/tuners/mt2063.c", i32 2162, i32 2}
!219 = !{ptr @mt2063_get_if_frequency._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @mt2063_get_if_frequency._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.73, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/tuners/mt2063.c", i32 2169, i32 2}
!223 = !{ptr @mt2063_get_if_frequency._entry.72, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @mt2063_get_if_frequency._entry_ptr.74, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.75, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/tuners/mt2063.c", i32 1993, i32 2}
!227 = !{ptr @mt2063_get_status._entry, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @mt2063_get_status._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.77, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/tuners/mt2063.c", i32 2005, i32 2}
!231 = !{ptr @mt2063_get_status._entry.76, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @mt2063_get_status._entry_ptr.78, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{i8 0, i8 2}
!243 = !{!"auto-init"}
